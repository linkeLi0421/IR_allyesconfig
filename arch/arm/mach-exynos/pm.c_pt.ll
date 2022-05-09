; ModuleID = '/llk/IR_all_yes/arch/arm/mach-exynos/pm.c_pt.bc'
source_filename = "../arch/arm/mach-exynos/pm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.cpuidle_exynos_data = type { ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.cpu_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.firmware_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.processor = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr }

@save_arm_register.0 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@save_arm_register.1 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@firmware_ops = external dso_local local_unnamed_addr global ptr, align 4
@cpuidle_coupled_exynos_data = dso_local global { %struct.cpuidle_exynos_data, [16 x i8] } { %struct.cpuidle_exynos_data { ptr @exynos_cpu0_enter_aftr, ptr @exynos_cpu1_powerdown, ptr @exynos_pre_enter_aftr, ptr @exynos_post_enter_aftr }, [16 x i8] zeroinitializer }, align 32
@pmu_base_addr = external dso_local local_unnamed_addr global ptr, align 4
@exynos_cpu_id = external dso_local local_unnamed_addr global i32, align 4
@cpu_vtable = external dso_local local_unnamed_addr global [0 x ptr], align 4
@sysram_base_addr = external dso_local local_unnamed_addr global ptr, align 4
@cpu1_wakeup = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@cpu_cache = external dso_local local_unnamed_addr global %struct.cpu_cache_fns, align 4
@___asan_gen_.1 = private unnamed_addr constant [20 x i8] c"save_arm_register.0\00", align 1
@___asan_gen_.2 = private unnamed_addr constant [20 x i8] c"save_arm_register.1\00", align 1
@___asan_gen_.3 = private unnamed_addr constant [28 x i8] c"cpuidle_coupled_exynos_data\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.7, i32 332, i32 28 }
@___asan_gen_.6 = private unnamed_addr constant [12 x i8] c"cpu1_wakeup\00", align 1
@___asan_gen_.7 = private constant [29 x i8] c"../arch/arm/mach-exynos/pm.c\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.7, i32 187, i32 17 }
@___asan_gen_.9 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.10 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 108, i32 2 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @save_arm_register.0, ptr @save_arm_register.1, ptr @cpuidle_coupled_exynos_data, ptr @cpu1_wakeup, ptr @.str], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @save_arm_register.0 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @save_arm_register.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpuidle_coupled_exynos_data to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpu1_wakeup to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync)
define dso_local void @exynos_cpu_save_register() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm "mrc p15, 0, $0, c15, c0, 0", "=r,~{cc}"() #9, !srcloc !19
  store i32 %0, ptr @save_arm_register.0, align 4
  %1 = tail call i32 asm "mrc p15, 0, $0, c15, c0, 1", "=r,~{cc}"() #9, !srcloc !20
  store i32 %1, ptr @save_arm_register.1, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @exynos_cpu_restore_register() local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @save_arm_register.0, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c15, c0, 0", "r,~{cc}"(i32 %0) #6, !srcloc !21
  %1 = load i32, ptr @save_arm_register.1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c15, c0, 1", "r,~{cc}"(i32 %1) #6, !srcloc !22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @exynos_pm_central_suspend() local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pmu_base_addr to i32))
  %0 = load ptr, ptr @pmu_base_addr, align 4
  %add.ptr.i = getelementptr i8, ptr %0, i32 512
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !23
  %2 = and i32 %1, -257
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pmu_base_addr to i32))
  %3 = load ptr, ptr @pmu_base_addr, align 4
  %add.ptr.i2 = getelementptr i8, ptr %3, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2, i32 %2) #6, !srcloc !24
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @exynos_pm_central_resume() local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pmu_base_addr to i32))
  %0 = load ptr, ptr @pmu_base_addr, align 4
  %add.ptr.i = getelementptr i8, ptr %0, i32 512
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !23
  %2 = tail call i32 @llvm.bswap.i32(i32 %1) #6
  %and = and i32 %2, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %or = or i32 %2, 65536
  %3 = tail call i32 @llvm.bswap.i32(i32 %or) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pmu_base_addr to i32))
  %4 = load ptr, ptr @pmu_base_addr, align 4
  %add.ptr.i3 = getelementptr i8, ptr %4, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3, i32 %3) #6, !srcloc !24
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pmu_base_addr to i32))
  %5 = load ptr, ptr @pmu_base_addr, align 4
  %add.ptr.i4 = getelementptr i8, ptr %5, i32 1536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4, i32 0) #6, !srcloc !24
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %if.then ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @exynos_enter_aftr() local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !9) #6
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  %call1 = tail call i32 @cpu_pm_enter() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @exynos_cpu_id to i32))
  %4 = load i32, ptr @exynos_cpu_id, align 4
  %and.i24 = and i32 %4, -4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 -481878016, i32 %and.i24)
  %cmp.i.not = icmp eq i32 %and.i24, -481878016
  br i1 %cmp.i.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @exynos_set_boot_flag(i32 noundef %3, i32 noundef 8) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pmu_base_addr to i32))
  %5 = load ptr, ptr @pmu_base_addr, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 512
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !23
  %7 = and i32 %6, -257
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pmu_base_addr to i32))
  %8 = load ptr, ptr @pmu_base_addr, align 4
  %add.ptr.i2.i = getelementptr i8, ptr %8, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i, i32 %7) #6, !srcloc !24
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @exynos_cpu_id to i32))
  %9 = load i32, ptr @exynos_cpu_id, align 4
  %and.i25 = and i32 %9, -131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 -465567744, i32 %and.i25)
  %cmp.i26.not = icmp eq i32 %and.i25, -465567744
  br i1 %cmp.i26.not, label %if.then5, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pmu_base_addr to i32))
  %10 = load ptr, ptr @pmu_base_addr, align 4
  %add.ptr.i = getelementptr i8, ptr %10, i32 520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 257) #6, !srcloc !24
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end.if.end6_crit_edge
  %call7 = tail call i32 @cpu_suspend(i32 noundef 0, ptr noundef nonnull @exynos_aftr_finisher) #6
  %11 = tail call i32 asm "mrc\09p15, 0, $0, c0, c0, 0", "=r,~{cc}"() #9, !srcloc !25
  %and.i28 = and i32 %11, -16711696
  call void @__sanitizer_cov_trace_const_cmp4(i32 1090568336, i32 %and.i28)
  %cmp = icmp eq i32 %and.i28, 1090568336
  br i1 %cmp, label %if.then9, label %if.end6.if.end16_crit_edge

if.end6.if.end16_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

if.then9:                                         ; preds = %if.end6
  tail call void @exynos_scu_enable() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @firmware_ops to i32))
  %12 = load ptr, ptr @firmware_ops, align 4
  %resume = getelementptr inbounds %struct.firmware_ops, ptr %12, i32 0, i32 7
  %13 = ptrtoint ptr %resume to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %resume, align 4
  %tobool10.not = icmp eq ptr %14, null
  br i1 %tobool10.not, label %if.then9.if.then14_crit_edge, label %cond.true

if.then9.if.then14_crit_edge:                     ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then14

cond.true:                                        ; preds = %if.then9
  %call12 = tail call i32 %14() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -38, i32 %call12)
  %phi.cmp = icmp eq i32 %call12, -38
  br i1 %phi.cmp, label %cond.true.if.then14_crit_edge, label %cond.true.if.end16_crit_edge

cond.true.if.end16_crit_edge:                     ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

cond.true.if.then14_crit_edge:                    ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then14

if.then14:                                        ; preds = %cond.true.if.then14_crit_edge, %if.then9.if.then14_crit_edge
  %15 = load i32, ptr @save_arm_register.0, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c15, c0, 0", "r,~{cc}"(i32 %15) #6, !srcloc !21
  %16 = load i32, ptr @save_arm_register.1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c15, c0, 1", "r,~{cc}"(i32 %16) #6, !srcloc !22
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %cond.true.if.end16_crit_edge, %if.end6.if.end16_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pmu_base_addr to i32))
  %17 = load ptr, ptr @pmu_base_addr, align 4
  %add.ptr.i.i29 = getelementptr i8, ptr %17, i32 512
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i29) #6, !srcloc !23
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #6
  %and.i30 = and i32 %19, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i30)
  %tobool.not.i = icmp eq i32 %and.i30, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end16.exynos_pm_central_resume.exit_crit_edge

if.end16.exynos_pm_central_resume.exit_crit_edge: ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %exynos_pm_central_resume.exit

if.then.i:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  %or.i = or i32 %19, 65536
  %20 = tail call i32 @llvm.bswap.i32(i32 %or.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pmu_base_addr to i32))
  %21 = load ptr, ptr @pmu_base_addr, align 4
  %add.ptr.i3.i = getelementptr i8, ptr %21, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.i, i32 %20) #6, !srcloc !24
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pmu_base_addr to i32))
  %22 = load ptr, ptr @pmu_base_addr, align 4
  %add.ptr.i4.i = getelementptr i8, ptr %22, i32 1536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 0) #6, !srcloc !24
  br label %exynos_pm_central_resume.exit

exynos_pm_central_resume.exit:                    ; preds = %if.then.i, %if.end16.exynos_pm_central_resume.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @exynos_cpu_id to i32))
  %23 = load i32, ptr @exynos_cpu_id, align 4
  %and.i31 = and i32 %23, -4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 -481878016, i32 %and.i31)
  %cmp.i32.not = icmp eq i32 %and.i31, -481878016
  br i1 %cmp.i32.not, label %if.then20, label %exynos_pm_central_resume.exit.if.end21_crit_edge

exynos_pm_central_resume.exit.if.end21_crit_edge: ; preds = %exynos_pm_central_resume.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

if.then20:                                        ; preds = %exynos_pm_central_resume.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @exynos_clear_boot_flag(i32 noundef %3, i32 noundef 8) #6
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %exynos_pm_central_resume.exit.if.end21_crit_edge
  %call22 = tail call i32 @cpu_pm_exit() #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpu_pm_enter() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @exynos_set_boot_flag(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpu_suspend(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos_aftr_finisher(i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @exynos_cpu_id to i32))
  %0 = load i32, ptr @exynos_cpu_id, align 4
  %and.i = and i32 %0, -4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 -481878016, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, -481878016
  %cond = select i1 %cmp.i.not, i32 1073758206, i32 65342
  %1 = tail call i32 @llvm.bswap.i32(i32 %cond) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pmu_base_addr to i32))
  %2 = load ptr, ptr @pmu_base_addr, align 4
  %add.ptr.i.i = getelementptr i8, ptr %2, i32 1544
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %1) #6, !srcloc !24
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @exynos_cpu_id to i32))
  %3 = load i32, ptr @exynos_cpu_id, align 4
  %and.i.i = and i32 %3, -4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 -481878016, i32 %and.i.i)
  %cmp.i.not.i = icmp eq i32 %and.i.i, -481878016
  br i1 %cmp.i.not.i, label %if.then.i, label %entry.exynos_set_wakeupmask.exit_crit_edge

entry.exynos_set_wakeupmask.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %exynos_set_wakeupmask.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pmu_base_addr to i32))
  %4 = load ptr, ptr @pmu_base_addr, align 4
  %add.ptr.i1.i = getelementptr i8, ptr %4, i32 1556
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1.i, i32 0) #6, !srcloc !24
  br label %exynos_set_wakeupmask.exit

exynos_set_wakeupmask.exit:                       ; preds = %if.then.i, %entry.exynos_set_wakeupmask.exit_crit_edge
  tail call void @exynos_sys_powerdown_conf(i32 noundef 0) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @firmware_ops to i32))
  %5 = load ptr, ptr @firmware_ops, align 4
  %do_idle = getelementptr inbounds %struct.firmware_ops, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %do_idle to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %do_idle, align 4
  %tobool1.not = icmp eq ptr %7, null
  br i1 %tobool1.not, label %exynos_set_wakeupmask.exit.if.then_crit_edge, label %cond.true

exynos_set_wakeupmask.exit.if.then_crit_edge:     ; preds = %exynos_set_wakeupmask.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

cond.true:                                        ; preds = %exynos_set_wakeupmask.exit
  %call3 = tail call i32 %7(i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -38, i32 %call3)
  %phi.cmp = icmp eq i32 %call3, -38
  br i1 %phi.cmp, label %cond.true.if.then_crit_edge, label %cond.true.if.end10_crit_edge

cond.true.if.end10_crit_edge:                     ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

cond.true.if.then_crit_edge:                      ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then:                                          ; preds = %cond.true.if.then_crit_edge, %exynos_set_wakeupmask.exit.if.then_crit_edge
  %8 = tail call i32 asm "mrc\09p15, 0, $0, c0, c0, 0", "=r,~{cc}"() #9, !srcloc !25
  %and.i11 = and i32 %8, -16711696
  call void @__sanitizer_cov_trace_const_cmp4(i32 1090568336, i32 %and.i11)
  %cmp6 = icmp eq i32 %and.i11, 1090568336
  br i1 %cmp6, label %if.then7, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %9 = tail call i32 asm "mrc p15, 0, $0, c15, c0, 0", "=r,~{cc}"() #9, !srcloc !19
  store i32 %9, ptr @save_arm_register.0, align 4
  %10 = tail call i32 asm "mrc p15, 0, $0, c15, c0, 1", "=r,~{cc}"() #9, !srcloc !20
  store i32 %10, ptr @save_arm_register.1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then7, %if.then.if.end_crit_edge
  %call.i = tail call i32 @__phys_addr_symbol(i32 noundef ptrtoint (ptr @exynos_cpu_resume to i32)) #6
  %11 = tail call i32 @llvm.bswap.i32(i32 %call.i) #6
  %call.i.i = tail call i32 @exynos_rev() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, 17
  br i1 %cmp.i.i, label %if.end.exynos_boot_vector_addr.exit.i_crit_edge, label %if.else.i.i

if.end.exynos_boot_vector_addr.exit.i_crit_edge:  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %exynos_boot_vector_addr.exit.i

if.else.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call1.i.i = tail call i32 @exynos_rev() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %call1.i.i)
  %cmp2.i.i = icmp eq i32 %call1.i.i, 16
  %sysram_base_addr.pmu_base_addr.i.i = select i1 %cmp2.i.i, ptr @sysram_base_addr, ptr @pmu_base_addr
  %..i.i = select i1 %cmp2.i.i, i32 36, i32 2048
  br label %exynos_boot_vector_addr.exit.i

exynos_boot_vector_addr.exit.i:                   ; preds = %if.else.i.i, %if.end.exynos_boot_vector_addr.exit.i_crit_edge
  %pmu_base_addr.sink.i.i = phi ptr [ @pmu_base_addr, %if.end.exynos_boot_vector_addr.exit.i_crit_edge ], [ %sysram_base_addr.pmu_base_addr.i.i, %if.else.i.i ]
  %.sink7.i.i = phi i32 [ 2076, %if.end.exynos_boot_vector_addr.exit.i_crit_edge ], [ %..i.i, %if.else.i.i ]
  %12 = ptrtoint ptr %pmu_base_addr.sink.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pmu_base_addr.sink.i.i, align 4
  %add.ptr6.i.i = getelementptr i8, ptr %13, i32 %.sink7.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i.i, i32 %11) #6, !srcloc !24
  %call.i1.i = tail call i32 @exynos_rev() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %call.i1.i)
  %cmp.i2.i = icmp eq i32 %call.i1.i, 17
  br i1 %cmp.i2.i, label %exynos_boot_vector_addr.exit.i.exynos_cpu_set_boot_vector.exit_crit_edge, label %if.else.i7.i

exynos_boot_vector_addr.exit.i.exynos_cpu_set_boot_vector.exit_crit_edge: ; preds = %exynos_boot_vector_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %exynos_cpu_set_boot_vector.exit

if.else.i7.i:                                     ; preds = %exynos_boot_vector_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %call1.i3.i = tail call i32 @exynos_rev() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %call1.i3.i)
  %cmp2.i4.i = icmp eq i32 %call1.i3.i, 16
  %sysram_base_addr.pmu_base_addr.i5.i = select i1 %cmp2.i4.i, ptr @sysram_base_addr, ptr @pmu_base_addr
  %..i6.i = select i1 %cmp2.i4.i, i32 32, i32 2052
  br label %exynos_cpu_set_boot_vector.exit

exynos_cpu_set_boot_vector.exit:                  ; preds = %if.else.i7.i, %exynos_boot_vector_addr.exit.i.exynos_cpu_set_boot_vector.exit_crit_edge
  %pmu_base_addr.sink.i8.i = phi ptr [ @pmu_base_addr, %exynos_boot_vector_addr.exit.i.exynos_cpu_set_boot_vector.exit_crit_edge ], [ %sysram_base_addr.pmu_base_addr.i5.i, %if.else.i7.i ]
  %.sink7.i9.i = phi i32 [ 2072, %exynos_boot_vector_addr.exit.i.exynos_cpu_set_boot_vector.exit_crit_edge ], [ %..i6.i, %if.else.i7.i ]
  %14 = ptrtoint ptr %pmu_base_addr.sink.i8.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pmu_base_addr.sink.i8.i, align 4
  %add.ptr6.i10.i = getelementptr i8, ptr %15, i32 %.sink7.i9.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i10.i, i32 269335292) #6, !srcloc !24
  %16 = tail call i32 @llvm.read_register.i32(metadata !9) #6
  %and.i12 = and i32 %16, -16384
  %17 = inttoptr i32 %and.i12 to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [0 x ptr], ptr @cpu_vtable, i32 0, i32 %19
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx, align 4
  %_do_idle = getelementptr inbounds %struct.processor, ptr %21, i32 0, i32 6
  %22 = ptrtoint ptr %_do_idle to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %_do_idle, align 4
  %call9 = tail call i32 %23() #6
  br label %if.end10

if.end10:                                         ; preds = %exynos_cpu_set_boot_vector.exit, %cond.true.if.end10_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @exynos_scu_enable() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @exynos_clear_boot_flag(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpu_pm_exit() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos_cpu0_enter_aftr() #2 align 64 {
entry:
  %boot_addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %0)
  %cmp.i.i.i.i = icmp ult i32 %0, 2
  br i1 %cmp.i.i.i.i, label %land.rhs.i.i.i.i, label %entry.cpu_online.exit_crit_edge

entry.cpu_online.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %entry
  %.b1.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b1.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !26

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 108, i32 noundef 9, ptr noundef null) #6
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %entry.cpu_online.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__cpu_online_mask to i32))
  %1 = load volatile i32, ptr @__cpu_online_mask, align 4
  %2 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.i.not = icmp eq i32 %2, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end17_crit_edge, label %while.cond.preheader

cpu_online.exit.if.end17_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

while.cond.preheader:                             ; preds = %cpu_online.exit
  %call1107 = call i32 @exynos_cpu_power_state(i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1107)
  %tobool.not108 = icmp eq i32 %call1107, 0
  br i1 %tobool.not108, label %while.cond.preheader.if.end17_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.if.end17_crit_edge:          ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %boot_addr) #6
  %3 = ptrtoint ptr %boot_addr to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %boot_addr, align 4, !annotation !27
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @cpu1_wakeup, i32 noundef 4) #6
  %4 = load volatile i32, ptr @cpu1_wakeup, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool3.not = icmp eq i32 %4, 0
  br i1 %tobool3.not, label %if.end, label %while.body.cleanup.thread_crit_edge

while.body.cleanup.thread_crit_edge:              ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread

if.end:                                           ; preds = %while.body
  %call5 = call i32 @exynos_get_boot_addr(i32 noundef 1, ptr noundef nonnull %boot_addr) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %cleanup.thread104

cleanup.thread104:                                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %boot_addr) #6
  br label %cleanup87

if.end8:                                          ; preds = %if.end
  %5 = ptrtoint ptr %boot_addr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %boot_addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %if.end8.cleanup.thread_crit_edge, label %cleanup

if.end8.cleanup.thread_crit_edge:                 ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.end8.cleanup.thread_crit_edge, %while.body.cleanup.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %boot_addr) #6
  br label %abort

cleanup:                                          ; preds = %if.end8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !28
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #6, !srcloc !29
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %boot_addr) #6
  %call1 = call i32 @exynos_cpu_power_state(i32 noundef 1) #6
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cleanup.if.end17_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

cleanup.if.end17_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

if.end17:                                         ; preds = %cleanup.if.end17_crit_edge, %while.cond.preheader.if.end17_crit_edge, %cpu_online.exit.if.end17_crit_edge
  call void @exynos_enter_aftr()
  br label %abort

abort:                                            ; preds = %if.end17, %cleanup.thread
  %ret.2 = phi i32 [ 0, %if.end17 ], [ -1, %cleanup.thread ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %7 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp.i.i.i.i96 = icmp ult i32 %7, 2
  br i1 %cmp.i.i.i.i96, label %land.rhs.i.i.i.i98, label %abort.cpu_online.exit101_crit_edge

abort.cpu_online.exit101_crit_edge:               ; preds = %abort
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit101

land.rhs.i.i.i.i98:                               ; preds = %abort
  %.b1.i.i.i.i97 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b1.i.i.i.i97, label %land.rhs.i.i.i.i98.cpu_online.exit101_crit_edge, label %if.then.i.i.i.i99, !prof !26

land.rhs.i.i.i.i98.cpu_online.exit101_crit_edge:  ; preds = %land.rhs.i.i.i.i98
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit101

if.then.i.i.i.i99:                                ; preds = %land.rhs.i.i.i.i98
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 108, i32 noundef 9, ptr noundef null) #6
  br label %cpu_online.exit101

cpu_online.exit101:                               ; preds = %if.then.i.i.i.i99, %land.rhs.i.i.i.i98.cpu_online.exit101_crit_edge, %abort.cpu_online.exit101_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__cpu_online_mask to i32))
  %8 = load volatile i32, ptr @__cpu_online_mask, align 4
  %9 = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.i100.not = icmp eq i32 %9, 0
  br i1 %tobool.i100.not, label %cpu_online.exit101.cleanup87_crit_edge, label %if.then19

cpu_online.exit101.cleanup87_crit_edge:           ; preds = %cpu_online.exit101
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup87

if.then19:                                        ; preds = %cpu_online.exit101
  %call21 = call i32 @__phys_addr_symbol(i32 noundef ptrtoint (ptr @exynos_cpu_resume to i32)) #6
  %call22 = call i32 @exynos_set_boot_addr(i32 noundef 1, i32 noundef %call21) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %if.then19.cleanup87_crit_edge

if.then19.cleanup87_crit_edge:                    ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup87

if.end25:                                         ; preds = %if.then19
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !30
  call void @exynos_cpu_power_up(i32 noundef 1) #6
  %call27109 = call i32 @exynos_cpu_power_state(i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call27109)
  %cmp28.not110 = icmp eq i32 %call27109, 3
  br i1 %cmp28.not110, label %if.end25.while.end39_crit_edge, label %if.end25.do.end34_crit_edge

if.end25.do.end34_crit_edge:                      ; preds = %if.end25
  br label %do.end34

if.end25.while.end39_crit_edge:                   ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end39

do.end34:                                         ; preds = %do.end34.do.end34_crit_edge, %if.end25.do.end34_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !31
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #6, !srcloc !32
  %call27 = call i32 @exynos_cpu_power_state(i32 noundef 1) #6
  %cmp28.not = icmp eq i32 %call27, 3
  br i1 %cmp28.not, label %do.end34.while.end39_crit_edge, label %do.end34.do.end34_crit_edge

do.end34.do.end34_crit_edge:                      ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end34

do.end34.while.end39_crit_edge:                   ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end39

while.end39:                                      ; preds = %do.end34.while.end39_crit_edge, %if.end25.while.end39_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @exynos_cpu_id to i32))
  %10 = load i32, ptr @exynos_cpu_id, align 4
  %and.i = and i32 %10, -4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 -481878016, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, -481878016
  br i1 %cmp.i.not, label %while.cond43.preheader, label %while.end39.if.end63_crit_edge

while.end39.if.end63_crit_edge:                   ; preds = %while.end39
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end63

while.cond43.preheader:                           ; preds = %while.end39
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pmu_base_addr to i32))
  %11 = load ptr, ptr @pmu_base_addr, align 4
  %add.ptr.i111 = getelementptr i8, ptr %11, i32 2312
  %12 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i111) #6, !srcloc !23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool45.not112 = icmp eq i32 %12, 0
  br i1 %tobool45.not112, label %while.cond43.preheader.land.rhs_crit_edge, label %while.cond43.preheader.while.end58_crit_edge

while.cond43.preheader.while.end58_crit_edge:     ; preds = %while.cond43.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end58

while.cond43.preheader.land.rhs_crit_edge:        ; preds = %while.cond43.preheader
  br label %land.rhs

land.rhs:                                         ; preds = %do.end53.land.rhs_crit_edge, %while.cond43.preheader.land.rhs_crit_edge
  %call.i.i93 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @cpu1_wakeup, i32 noundef 4) #6
  %13 = load volatile i32, ptr @cpu1_wakeup, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool47.not = icmp eq i32 %13, 0
  br i1 %tobool47.not, label %do.end53, label %land.rhs.while.end58_crit_edge

land.rhs.while.end58_crit_edge:                   ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end58

do.end53:                                         ; preds = %land.rhs
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !33
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #6, !srcloc !34
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pmu_base_addr to i32))
  %14 = load ptr, ptr @pmu_base_addr, align 4
  %add.ptr.i = getelementptr i8, ptr %14, i32 2312
  %15 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !23
  %tobool45.not = icmp eq i32 %15, 0
  br i1 %tobool45.not, label %do.end53.land.rhs_crit_edge, label %do.end53.while.end58_crit_edge

do.end53.while.end58_crit_edge:                   ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end58

do.end53.land.rhs_crit_edge:                      ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs

while.end58:                                      ; preds = %do.end53.while.end58_crit_edge, %land.rhs.while.end58_crit_edge, %while.cond43.preheader.while.end58_crit_edge
  %call.i.i94 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @cpu1_wakeup, i32 noundef 4) #6
  %16 = load volatile i32, ptr @cpu1_wakeup, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool60.not = icmp eq i32 %16, 0
  br i1 %tobool60.not, label %if.then61, label %while.end58.if.end63_crit_edge

while.end58.if.end63_crit_edge:                   ; preds = %while.end58
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end63

if.then61:                                        ; preds = %while.end58
  call void @__sanitizer_cov_trace_pc() #8
  call void @exynos_core_restart(i32 noundef 1) #6
  br label %if.end63

if.end63:                                         ; preds = %if.then61, %while.end58.if.end63_crit_edge, %while.end39.if.end63_crit_edge
  %call.i.i95113 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @cpu1_wakeup, i32 noundef 4) #6
  %17 = load volatile i32, ptr @cpu1_wakeup, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool66.not114 = icmp eq i32 %17, 0
  br i1 %tobool66.not114, label %if.end63.do.end72_crit_edge, label %if.end63.cleanup87_crit_edge

if.end63.cleanup87_crit_edge:                     ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup87

if.end63.do.end72_crit_edge:                      ; preds = %if.end63
  br label %do.end72

do.end72:                                         ; preds = %cond.end.do.end72_crit_edge, %if.end63.do.end72_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !35
  %call75 = call i32 @exynos_set_boot_addr(i32 noundef 1, i32 noundef %call21) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %if.end78, label %do.end72.cleanup87_crit_edge

do.end72.cleanup87_crit_edge:                     ; preds = %do.end72
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup87

if.end78:                                         ; preds = %do.end72
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @firmware_ops to i32))
  %18 = load ptr, ptr @firmware_ops, align 4
  %cpu_boot = getelementptr inbounds %struct.firmware_ops, ptr %18, i32 0, i32 4
  %19 = ptrtoint ptr %cpu_boot to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cpu_boot, align 4
  %tobool79.not = icmp eq ptr %20, null
  br i1 %tobool79.not, label %if.end78.cond.end_crit_edge, label %cond.true

if.end78.cond.end_crit_edge:                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.true:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #8
  %call81 = call i32 %20(i32 noundef 1) #6
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end78.cond.end_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !36
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !37
  %call.i.i95 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @cpu1_wakeup, i32 noundef 4) #6
  %21 = load volatile i32, ptr @cpu1_wakeup, align 4
  %tobool66.not = icmp eq i32 %21, 0
  br i1 %tobool66.not, label %cond.end.do.end72_crit_edge, label %cond.end.cleanup87_crit_edge

cond.end.cleanup87_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup87

cond.end.do.end72_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end72

cleanup87:                                        ; preds = %cond.end.cleanup87_crit_edge, %do.end72.cleanup87_crit_edge, %if.end63.cleanup87_crit_edge, %if.then19.cleanup87_crit_edge, %cpu_online.exit101.cleanup87_crit_edge, %cleanup.thread104
  %retval.0 = phi i32 [ %ret.2, %cpu_online.exit101.cleanup87_crit_edge ], [ %call22, %if.then19.cleanup87_crit_edge ], [ %call5, %cleanup.thread104 ], [ 0, %if.end63.cleanup87_crit_edge ], [ 0, %cond.end.cleanup87_crit_edge ], [ %call75, %do.end72.cleanup87_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos_cpu1_powerdown() #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @cpu_pm_enter() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cpu1_aborted_crit_edge

entry.cpu1_aborted_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu1_aborted

if.end:                                           ; preds = %entry
  tail call void @exynos_cpu_power_down(i32 noundef 1) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @exynos_cpu_id to i32))
  %0 = load i32, ptr @exynos_cpu_id, align 4
  %and.i = and i32 %0, -4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 -481878016, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, -481878016
  br i1 %cmp.i.not, label %if.then3, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pmu_base_addr to i32))
  %1 = load ptr, ptr @pmu_base_addr, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 2312
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #6, !srcloc !24
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  %call5 = tail call i32 @cpu_suspend(i32 noundef 0, ptr noundef nonnull @exynos_wfi_finisher) #6
  %call6 = tail call i32 @cpu_pm_exit() #6
  br label %cpu1_aborted

cpu1_aborted:                                     ; preds = %if.end4, %entry.cpu1_aborted_crit_edge
  %ret.0 = phi i32 [ -1, %entry.cpu1_aborted_crit_edge ], [ %call5, %if.end4 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !38
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @cpu1_wakeup, i32 noundef 4) #6
  store volatile i32 1, ptr @cpu1_wakeup, align 4
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @exynos_pre_enter_aftr() #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__phys_addr_symbol(i32 noundef ptrtoint (ptr @exynos_cpu_resume to i32)) #6
  %call1 = tail call i32 @exynos_set_boot_addr(i32 noundef 1, i32 noundef %call) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @exynos_post_enter_aftr() #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @cpu1_wakeup, i32 noundef 4) #6
  store volatile i32 0, ptr @cpu1_wakeup, align 4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @exynos_sys_powerdown_conf(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__phys_addr_symbol(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @exynos_cpu_resume() #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @exynos_rev() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @exynos_cpu_power_state(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @exynos_get_boot_addr(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @exynos_set_boot_addr(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @exynos_cpu_power_up(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @exynos_core_restart(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @exynos_cpu_power_down(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos_wfi_finisher(i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @exynos_cpu_id to i32))
  %0 = load i32, ptr @exynos_cpu_id, align 4
  %and.i = and i32 %0, -4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 -481878016, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, -481878016
  br i1 %cmp.i.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 1) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 1), align 4
  tail call void %1() #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %2 = tail call i32 @llvm.read_register.i32(metadata !9) #6
  %and.i3 = and i32 %2, -16384
  %3 = inttoptr i32 %and.i3 to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [0 x ptr], ptr @cpu_vtable, i32 0, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %_do_idle = getelementptr inbounds %struct.processor, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %_do_idle to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %_do_idle, align 4
  %call2 = tail call i32 %9() #6
  ret i32 -1
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !7}
!llvm.named.register.sp = !{!9}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !{ptr @cpuidle_coupled_exynos_data, !1, !"cpuidle_coupled_exynos_data", i1 false, i1 false}
!1 = !{!"../arch/arm/mach-exynos/pm.c", i32 332, i32 28}
!2 = distinct !{null, !3, !"save_arm_register", i1 false, i1 false}
!3 = !{!"../arch/arm/mach-exynos/pm.c", i32 48, i32 21}
!4 = distinct !{null, !5, !"__already_done", i1 false, i1 false}
!5 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!6 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @cpu1_wakeup, !8, !"cpu1_wakeup", i1 false, i1 false}
!8 = !{!"../arch/arm/mach-exynos/pm.c", i32 187, i32 17}
!9 = !{!"sp"}
!10 = !{i32 1, !"wchar_size", i32 2}
!11 = !{i32 1, !"min_enum_size", i32 4}
!12 = !{i32 8, !"branch-target-enforcement", i32 0}
!13 = !{i32 8, !"sign-return-address", i32 0}
!14 = !{i32 8, !"sign-return-address-all", i32 0}
!15 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!19 = !{i64 1373}
!20 = !{i64 1501}
!21 = !{i64 1738}
!22 = !{i64 1887}
!23 = !{i64 5368814}
!24 = !{i64 5368396}
!25 = !{i64 2154973347}
!26 = !{!"branch_weights", i32 2000, i32 1}
!27 = !{!"auto-init"}
!28 = !{i64 2154988478}
!29 = !{i64 2154988320}
!30 = !{i64 2154988820}
!31 = !{i64 2154989099}
!32 = !{i64 2154988941}
!33 = !{i64 2154989405}
!34 = !{i64 2154989247}
!35 = !{i64 2154989570}
!36 = !{i64 2149172187}
!37 = !{i64 2149172286, i64 2149172313, i64 2149172360, i64 2149172382, i64 2149172410, i64 2149172430}
!38 = !{i64 2154989986}
