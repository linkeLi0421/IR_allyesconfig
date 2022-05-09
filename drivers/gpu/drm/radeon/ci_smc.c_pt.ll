; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/radeon/ci_smc.c_pt.bc'
source_filename = "../drivers/gpu/drm/radeon/ci_smc.c"
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
%struct.firmware = type { i32, ptr, ptr }
%struct.smc_firmware_header_v1_0 = type { %struct.common_firmware_header, i32 }
%struct.common_firmware_header = type { i32, i32, i16, i16, i16, i16, i32, i32, i32, i32 }

@ci_program_jump_on_start.data = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\E0\00\80@", [28 x i8] zeroinitializer }, align 32
@.str = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"unknown asic in smc ucode loader\0A\00", [62 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 57, i64 60]
@___asan_gen_.1 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 132, i32 18 }
@___asan_gen_.4 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.5 = private constant [35 x i8] c"../drivers/gpu/drm/radeon/ci_smc.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 218, i32 4 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @ci_program_jump_on_start.data, ptr @.str], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_program_jump_on_start.data to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ci_copy_bytes_to_smc(ptr noundef %rdev, i32 noundef %smc_start_address, ptr nocapture noundef readonly %src, i32 noundef %byte_count, i32 noundef %limit) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %smc_start_address, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp ne i32 %and, 0
  %add = add i32 %byte_count, %smc_start_address
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %limit)
  %cmp = icmp ugt i32 %add, %limit
  %or.cond = or i1 %tobool.not, %cmp
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end2:                                          ; preds = %entry
  %smc_idx_lock = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 20
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %smc_idx_lock) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %byte_count)
  %cmp8129 = icmp ugt i32 %byte_count, 3
  br i1 %cmp8129, label %while.body.lr.ph, label %if.end2.while.end_crit_edge

if.end2.while.end_crit_edge:                      ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end2
  %rmmio.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  br label %while.body

while.body:                                       ; preds = %if.end24.while.body_crit_edge, %while.body.lr.ph
  %addr.0132 = phi i32 [ %smc_start_address, %while.body.lr.ph ], [ %add25, %if.end24.while.body_crit_edge ]
  %src.addr.0131 = phi ptr [ %src, %while.body.lr.ph ], [ %add.ptr, %if.end24.while.body_crit_edge ]
  %byte_count.addr.0130 = phi i32 [ %byte_count, %while.body.lr.ph ], [ %sub, %if.end24.while.body_crit_edge ]
  %add.i = add i32 %addr.0132, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %limit)
  %cmp.i = icmp ugt i32 %add.i, %limit
  br i1 %cmp.i, label %while.body.done_crit_edge, label %if.end24

while.body.done_crit_edge:                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %done

if.end24:                                         ; preds = %while.body
  %arrayidx18 = getelementptr i8, ptr %src.addr.0131, i32 3
  %0 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx18, align 1
  %arrayidx14 = getelementptr i8, ptr %src.addr.0131, i32 2
  %2 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx14, align 1
  %arrayidx11 = getelementptr i8, ptr %src.addr.0131, i32 1
  %4 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx11, align 1
  %6 = ptrtoint ptr %src.addr.0131 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %src.addr.0131, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !13
  tail call void @arm_heavy_mb() #3
  %8 = tail call i32 @llvm.bswap.i32(i32 %addr.0132) #3
  %9 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %10, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %8) #3, !srcloc !14
  %11 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i11.i = getelementptr i8, ptr %12, i32 576
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i11.i) #3, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  %14 = and i32 %13, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !13
  tail call void @arm_heavy_mb() #3
  %15 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i13.i = getelementptr i8, ptr %16, i32 576
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13.i, i32 %14) #3, !srcloc !14
  %conv10 = zext i8 %7 to i32
  %shl = shl nuw i32 %conv10, 24
  %conv12 = zext i8 %5 to i32
  %shl13 = shl nuw nsw i32 %conv12, 16
  %conv15 = zext i8 %3 to i32
  %shl16 = shl nuw nsw i32 %conv15, 8
  %conv19 = zext i8 %1 to i32
  %or = or i32 %shl16, %conv19
  %or17 = or i32 %or, %shl13
  %or20 = or i32 %or17, %shl
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !13
  tail call void @arm_heavy_mb() #3
  %17 = tail call i32 @llvm.bswap.i32(i32 %or20) #3
  %18 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %19, i32 516
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %17) #3, !srcloc !14
  %add.ptr = getelementptr i8, ptr %src.addr.0131, i32 4
  %sub = add i32 %byte_count.addr.0130, -4
  %add25 = add i32 %addr.0132, 4
  %cmp8 = icmp ugt i32 %sub, 3
  br i1 %cmp8, label %if.end24.while.body_crit_edge, label %if.end24.while.end_crit_edge

if.end24.while.end_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end

if.end24.while.body_crit_edge:                    ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body

while.end:                                        ; preds = %if.end24.while.end_crit_edge, %if.end2.while.end_crit_edge
  %byte_count.addr.0.lcssa = phi i32 [ %byte_count, %if.end2.while.end_crit_edge ], [ %sub, %if.end24.while.end_crit_edge ]
  %src.addr.0.lcssa = phi ptr [ %src, %if.end2.while.end_crit_edge ], [ %add.ptr, %if.end24.while.end_crit_edge ]
  %addr.0.lcssa = phi i32 [ %smc_start_address, %if.end2.while.end_crit_edge ], [ %add25, %if.end24.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %byte_count.addr.0.lcssa)
  %cmp26.not = icmp eq i32 %byte_count.addr.0.lcssa, 0
  br i1 %cmp26.not, label %while.end.done_crit_edge, label %if.then28

while.end.done_crit_edge:                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %done

if.then28:                                        ; preds = %while.end
  %and.i92 = and i32 %addr.0.lcssa, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i92)
  %tobool.not.i93 = icmp ne i32 %and.i92, 0
  %add.i94 = add i32 %addr.0.lcssa, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i94, i32 %limit)
  %cmp.i95 = icmp ugt i32 %add.i94, %limit
  %or.cond.i96 = or i1 %tobool.not.i93, %cmp.i95
  br i1 %or.cond.i96, label %if.then28.done_crit_edge, label %while.body38.preheader

if.then28.done_crit_edge:                         ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #5
  br label %done

while.body38.preheader:                           ; preds = %if.then28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !13
  tail call void @arm_heavy_mb() #3
  %20 = tail call i32 @llvm.bswap.i32(i32 %addr.0.lcssa) #3
  %rmmio.i.i97 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %21 = ptrtoint ptr %rmmio.i.i97 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rmmio.i.i97, align 4
  %add.ptr.i.i98 = getelementptr i8, ptr %22, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i98, i32 %20) #3, !srcloc !14
  %23 = ptrtoint ptr %rmmio.i.i97 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rmmio.i.i97, align 4
  %add.ptr.i11.i99 = getelementptr i8, ptr %24, i32 576
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i11.i99) #3, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  %26 = and i32 %25, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !13
  tail call void @arm_heavy_mb() #3
  %27 = ptrtoint ptr %rmmio.i.i97 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %rmmio.i.i97, align 4
  %add.ptr.i13.i100 = getelementptr i8, ptr %28, i32 576
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13.i100, i32 %26) #3, !srcloc !14
  %29 = ptrtoint ptr %rmmio.i.i97 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %rmmio.i.i97, align 4
  %add.ptr.i105 = getelementptr i8, ptr %30, i32 516
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i105) #3, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #3
  %.neg = mul nsw i32 %byte_count.addr.0.lcssa, -8
  %mul = add nsw i32 %.neg, 32
  br label %while.body38

while.body38:                                     ; preds = %while.body38.while.body38_crit_edge, %while.body38.preheader
  %data.0138 = phi i32 [ %add41, %while.body38.while.body38_crit_edge ], [ 0, %while.body38.preheader ]
  %src.addr.1137 = phi ptr [ %incdec.ptr, %while.body38.while.body38_crit_edge ], [ %src.addr.0.lcssa, %while.body38.preheader ]
  %byte_count.addr.1136 = phi i32 [ %dec, %while.body38.while.body38_crit_edge ], [ %byte_count.addr.0.lcssa, %while.body38.preheader ]
  %shl39 = shl i32 %data.0138, 8
  %incdec.ptr = getelementptr i8, ptr %src.addr.1137, i32 1
  %33 = ptrtoint ptr %src.addr.1137 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %src.addr.1137, align 1
  %conv40 = zext i8 %34 to i32
  %add41 = or i32 %shl39, %conv40
  %dec = add i32 %byte_count.addr.1136, -1
  %cmp36.not = icmp eq i32 %dec, 0
  br i1 %cmp36.not, label %if.end50, label %while.body38.while.body38_crit_edge

while.body38.while.body38_crit_edge:              ; preds = %while.body38
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body38

if.end50:                                         ; preds = %while.body38
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !13
  tail call void @arm_heavy_mb() #3
  %35 = ptrtoint ptr %rmmio.i.i97 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %rmmio.i.i97, align 4
  %add.ptr.i.i112 = getelementptr i8, ptr %36, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i112, i32 %20) #3, !srcloc !14
  %37 = ptrtoint ptr %rmmio.i.i97 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %rmmio.i.i97, align 4
  %add.ptr.i11.i113 = getelementptr i8, ptr %38, i32 576
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i11.i113) #3, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  %40 = and i32 %39, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !13
  tail call void @arm_heavy_mb() #3
  %41 = ptrtoint ptr %rmmio.i.i97 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %rmmio.i.i97, align 4
  %add.ptr.i13.i114 = getelementptr i8, ptr %42, i32 576
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13.i114, i32 %40) #3, !srcloc !14
  %shl43 = shl i32 %add41, %mul
  %shl44 = shl nsw i32 -1, %mul
  %neg = xor i32 %shl44, -1
  %and45 = and i32 %32, %neg
  %or46 = or i32 %shl43, %and45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !13
  tail call void @arm_heavy_mb() #3
  %43 = tail call i32 @llvm.bswap.i32(i32 %or46) #3
  %44 = ptrtoint ptr %rmmio.i.i97 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %rmmio.i.i97, align 4
  %add.ptr.i119 = getelementptr i8, ptr %45, i32 516
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i119, i32 %43) #3, !srcloc !14
  br label %done

done:                                             ; preds = %if.end50, %if.then28.done_crit_edge, %while.end.done_crit_edge, %while.body.done_crit_edge
  %ret.1 = phi i32 [ 0, %if.end50 ], [ 0, %while.end.done_crit_edge ], [ -22, %if.then28.done_crit_edge ], [ -22, %while.body.done_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %smc_idx_lock, i32 noundef %call5) #3
  br label %cleanup

cleanup:                                          ; preds = %done, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %done ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ci_start_smc(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @tn_smc_rreg(ptr noundef %rdev, i32 noundef -2147483648) #3
  %and = and i32 %call, -2
  tail call void @tn_smc_wreg(ptr noundef %rdev, i32 noundef -2147483648, i32 noundef %and) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tn_smc_rreg(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tn_smc_wreg(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ci_reset_smc(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @tn_smc_rreg(ptr noundef %rdev, i32 noundef -2147483648) #3
  %or = or i32 %call, 1
  tail call void @tn_smc_wreg(ptr noundef %rdev, i32 noundef -2147483648, i32 noundef %or) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ci_program_jump_on_start(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ci_copy_bytes_to_smc(ptr noundef %rdev, i32 noundef 0, ptr noundef nonnull @ci_program_jump_on_start.data, i32 noundef 4, i32 noundef 5)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ci_stop_smc_clock(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @tn_smc_rreg(ptr noundef %rdev, i32 noundef -2147483644) #3
  %or = or i32 %call, 1
  tail call void @tn_smc_wreg(ptr noundef %rdev, i32 noundef -2147483644, i32 noundef %or) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ci_start_smc_clock(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @tn_smc_rreg(ptr noundef %rdev, i32 noundef -2147483644) #3
  %and = and i32 %call, -2
  tail call void @tn_smc_wreg(ptr noundef %rdev, i32 noundef -2147483644, i32 noundef %and) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @ci_is_smc_running(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @tn_smc_rreg(ptr noundef %rdev, i32 noundef -2147483644) #3
  %call1 = tail call i32 @tn_smc_rreg(ptr noundef %rdev, i32 noundef -2147482768) #3
  %and = and i32 %call, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 131327, i32 %call1)
  %cmp = icmp ugt i32 %call1, 131327
  %or.cond = select i1 %tobool.not, i1 %cmp, i1 false
  ret i1 %or.cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ci_load_smc_ucode(ptr noundef %rdev, i32 noundef %limit) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %smc_fw = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 79
  %0 = ptrtoint ptr %smc_fw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smc_fw, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %new_fw = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 82
  %2 = ptrtoint ptr %new_fw to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %new_fw, align 4, !range !17
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  br i1 %tobool1.not, label %if.else, label %if.end15

if.else:                                          ; preds = %if.end
  %family = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 6
  %4 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %family, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %sw.default [
    i32 57, label %if.else.if.end15.thread_crit_edge
    i32 60, label %if.else.if.end15.thread_crit_edge105
  ]

if.else.if.end15.thread_crit_edge105:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end15.thread

if.else.if.end15.thread_crit_edge:                ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end15.thread

sw.default:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #3
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/radeon/ci_smc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 219, 0\0A.popsection", ""() #3, !srcloc !18
  unreachable

if.end15.thread:                                  ; preds = %if.else.if.end15.thread_crit_edge, %if.else.if.end15.thread_crit_edge105
  %data14 = getelementptr inbounds %struct.firmware, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %data14 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data14, align 4
  br label %do.body20

if.end15:                                         ; preds = %if.end
  %data4 = getelementptr inbounds %struct.firmware, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %data4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data4, align 4
  tail call void @radeon_ucode_print_smc_hdr(ptr noundef %10) #3
  %ucode_start_addr = getelementptr inbounds %struct.smc_firmware_header_v1_0, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %ucode_start_addr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ucode_start_addr, align 4
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  %ucode_size_bytes = getelementptr inbounds %struct.common_firmware_header, ptr %10, i32 0, i32 7
  %14 = ptrtoint ptr %ucode_size_bytes to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ucode_size_bytes, align 4
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  %17 = ptrtoint ptr %smc_fw to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %smc_fw, align 8
  %data7 = getelementptr inbounds %struct.firmware, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %data7 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data7, align 4
  %ucode_array_offset_bytes = getelementptr inbounds %struct.common_firmware_header, ptr %10, i32 0, i32 8
  %21 = ptrtoint ptr %ucode_array_offset_bytes to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ucode_array_offset_bytes, align 4
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  %add.ptr = getelementptr i8, ptr %20, i32 %23
  %and = and i32 %16, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool16.not = icmp eq i32 %and, 0
  br i1 %tobool16.not, label %if.end15.do.body20_crit_edge, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end15.do.body20_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body20

do.body20:                                        ; preds = %if.end15.do.body20_crit_edge, %if.end15.thread
  %ucode_start_address.1101 = phi i32 [ 131072, %if.end15.thread ], [ %13, %if.end15.do.body20_crit_edge ]
  %ucode_size.1100 = phi i32 [ 130540, %if.end15.thread ], [ %16, %if.end15.do.body20_crit_edge ]
  %src.099 = phi ptr [ %8, %if.end15.thread ], [ %add.ptr, %if.end15.do.body20_crit_edge ]
  %smc_idx_lock = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 20
  %call21 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %smc_idx_lock) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !13
  tail call void @arm_heavy_mb() #3
  %24 = tail call i32 @llvm.bswap.i32(i32 %ucode_start_address.1101) #3
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %25 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %26, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %24) #3, !srcloc !14
  %27 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i85 = getelementptr i8, ptr %28, i32 576
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i85) #3, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  %30 = or i32 %29, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !13
  tail call void @arm_heavy_mb() #3
  %31 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i87 = getelementptr i8, ptr %32, i32 576
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i87, i32 %30) #3, !srcloc !14
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %ucode_size.1100)
  %cmp31102 = icmp ugt i32 %ucode_size.1100, 3
  br i1 %cmp31102, label %do.body20.while.body_crit_edge, label %do.body20.do.body46_crit_edge

do.body20.do.body46_crit_edge:                    ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body46

do.body20.while.body_crit_edge:                   ; preds = %do.body20
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %do.body20.while.body_crit_edge
  %ucode_size.2104 = phi i32 [ %sub, %while.body.while.body_crit_edge ], [ %ucode_size.1100, %do.body20.while.body_crit_edge ]
  %src.1103 = phi ptr [ %add.ptr45, %while.body.while.body_crit_edge ], [ %src.099, %do.body20.while.body_crit_edge ]
  %33 = ptrtoint ptr %src.1103 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %src.1103, align 1
  %conv33 = zext i8 %34 to i32
  %shl = shl nuw i32 %conv33, 24
  %arrayidx34 = getelementptr i8, ptr %src.1103, i32 1
  %35 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx34, align 1
  %conv35 = zext i8 %36 to i32
  %shl36 = shl nuw nsw i32 %conv35, 16
  %or37 = or i32 %shl36, %shl
  %arrayidx38 = getelementptr i8, ptr %src.1103, i32 2
  %37 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx38, align 1
  %conv39 = zext i8 %38 to i32
  %shl40 = shl nuw nsw i32 %conv39, 8
  %or41 = or i32 %or37, %shl40
  %arrayidx42 = getelementptr i8, ptr %src.1103, i32 3
  %39 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx42, align 1
  %conv43 = zext i8 %40 to i32
  %or44 = or i32 %or41, %conv43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !13
  tail call void @arm_heavy_mb() #3
  %41 = tail call i32 @llvm.bswap.i32(i32 %or44) #3
  %42 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i89 = getelementptr i8, ptr %43, i32 516
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i89, i32 %41) #3, !srcloc !14
  %add.ptr45 = getelementptr i8, ptr %src.1103, i32 4
  %sub = add i32 %ucode_size.2104, -4
  %cmp31 = icmp ugt i32 %sub, 3
  br i1 %cmp31, label %while.body.while.body_crit_edge, label %while.body.do.body46_crit_edge

while.body.do.body46_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body46

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body

do.body46:                                        ; preds = %while.body.do.body46_crit_edge, %do.body20.do.body46_crit_edge
  %44 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i91 = getelementptr i8, ptr %45, i32 576
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i91) #3, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  %47 = and i32 %46, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !13
  tail call void @arm_heavy_mb() #3
  %48 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i93 = getelementptr i8, ptr %49, i32 576
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i93, i32 %47) #3, !srcloc !14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %smc_idx_lock, i32 noundef %call21) #3
  br label %cleanup

cleanup:                                          ; preds = %do.body46, %if.end15.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body46 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end15.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_ucode_print_smc_hdr(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ci_read_smc_sram_dword(ptr noundef %rdev, i32 noundef %smc_address, ptr nocapture noundef writeonly %value, i32 noundef %limit) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %smc_idx_lock = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 20
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %smc_idx_lock) #3
  %and.i = and i32 %smc_address, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp ne i32 %and.i, 0
  %add.i = add i32 %smc_address, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %limit)
  %cmp.i = icmp ugt i32 %add.i, %limit
  %or.cond.i = or i1 %tobool.not.i, %cmp.i
  br i1 %or.cond.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !13
  tail call void @arm_heavy_mb() #3
  %0 = tail call i32 @llvm.bswap.i32(i32 %smc_address) #3
  %rmmio.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %1 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %2, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %0) #3, !srcloc !14
  %3 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i11.i = getelementptr i8, ptr %4, i32 576
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i11.i) #3, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  %6 = and i32 %5, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !13
  tail call void @arm_heavy_mb() #3
  %7 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i13.i = getelementptr i8, ptr %8, i32 576
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13.i, i32 %6) #3, !srcloc !14
  %9 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %10, i32 516
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #3, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #3
  %13 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %value, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %retval.0.i16 = phi i32 [ 0, %if.then ], [ -22, %entry.if.end_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %smc_idx_lock, i32 noundef %call2) #3
  ret i32 %retval.0.i16
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ci_write_smc_sram_dword(ptr noundef %rdev, i32 noundef %smc_address, i32 noundef %value, i32 noundef %limit) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %smc_idx_lock = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 20
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %smc_idx_lock) #3
  %and.i = and i32 %smc_address, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp ne i32 %and.i, 0
  %add.i = add i32 %smc_address, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %limit)
  %cmp.i = icmp ugt i32 %add.i, %limit
  %or.cond.i = or i1 %tobool.not.i, %cmp.i
  br i1 %or.cond.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !13
  tail call void @arm_heavy_mb() #3
  %0 = tail call i32 @llvm.bswap.i32(i32 %smc_address) #3
  %rmmio.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %1 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %2, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %0) #3, !srcloc !14
  %3 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i11.i = getelementptr i8, ptr %4, i32 576
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i11.i) #3, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  %6 = and i32 %5, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !13
  tail call void @arm_heavy_mb() #3
  %7 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i13.i = getelementptr i8, ptr %8, i32 576
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13.i, i32 %6) #3, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !13
  tail call void @arm_heavy_mb() #3
  %9 = tail call i32 @llvm.bswap.i32(i32 %value) #3
  %10 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 516
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %9) #3, !srcloc !14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %retval.0.i15 = phi i32 [ 0, %if.then ], [ -22, %entry.if.end_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %smc_idx_lock, i32 noundef %call2) #3
  ret i32 %retval.0.i15
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

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

!0 = !{ptr @ci_program_jump_on_start.data, !1, !"data", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/radeon/ci_smc.c", i32 132, i32 18}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/radeon/ci_smc.c", i32 218, i32 4}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!13 = !{i64 2157416188}
!14 = !{i64 6691117}
!15 = !{i64 6691535}
!16 = !{i64 2157415781}
!17 = !{i8 0, i8 2}
!18 = !{i64 2157709518, i64 2157710014, i64 2157709555, i64 2157709611, i64 2157709645, i64 2157709669, i64 2157709710, i64 2157709731, i64 2157709759, i64 2157709793}
