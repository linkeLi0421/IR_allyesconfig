; ModuleID = '/llk/IR_all_yes/arch/arm/mach-omap2/cm33xx.c_pt.bc'
source_filename = "../arch/arm/mach-omap2/cm33xx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clkdm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cm_ll_data = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.omap_domain_base = type { i32, ptr, i16 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.clockdomain = type { ptr, %union.anon, i16, i8, i8, i8, i8, i16, i16, ptr, ptr, i32, i32, %struct.list_head, i32 }
%union.anon = type { ptr }
%struct.list_head = type { ptr, ptr }

@am33xx_clkdm_operations = dso_local global { %struct.clkdm_ops, [32 x i8] } { %struct.clkdm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @am33xx_clkdm_sleep, ptr @am33xx_clkdm_wakeup, ptr @am33xx_clkdm_allow_idle, ptr @am33xx_clkdm_deny_idle, ptr @am33xx_clkdm_clk_enable, ptr @am33xx_clkdm_clk_disable, ptr @am33xx_clkdm_save_context, ptr @am33xx_clkdm_restore_context }, [32 x i8] zeroinitializer }, align 32
@am33xx_cm_ll_data = internal constant { %struct.cm_ll_data, [40 x i8] } { %struct.cm_ll_data { ptr null, ptr @am33xx_cm_wait_module_ready, ptr @am33xx_cm_wait_module_idle, ptr @am33xx_cm_module_enable, ptr @am33xx_cm_module_disable, ptr @am33xx_cm_xlate_clkctrl }, [40 x i8] zeroinitializer }, align 32
@__exitcall_am33xx_cm_exit = internal global ptr @am33xx_cm_exit, section ".exitcall.exit", align 4
@cm_base = external dso_local local_unnamed_addr global %struct.omap_domain_base, align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.1 = private unnamed_addr constant [24 x i8] c"am33xx_clkdm_operations\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 392, i32 18 }
@___asan_gen_.4 = private unnamed_addr constant [18 x i8] c"am33xx_cm_ll_data\00", align 1
@___asan_gen_.5 = private constant [32 x i8] c"../arch/arm/mach-omap2/cm33xx.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 403, i32 32 }
@llvm.compiler.used = appending global [4 x ptr] [ptr @__exitcall_am33xx_cm_exit, ptr @am33xx_cm_exit, ptr @am33xx_clkdm_operations, ptr @am33xx_cm_ll_data], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @am33xx_clkdm_operations to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @am33xx_cm_ll_data to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @am33xx_clkdm_sleep(ptr nocapture noundef readonly %clkdm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cm_inst = getelementptr inbounds %struct.clockdomain, ptr %clkdm, i32 0, i32 7
  %0 = ptrtoint ptr %cm_inst to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %cm_inst, align 2
  %clkdm_offs = getelementptr inbounds %struct.clockdomain, ptr %clkdm, i32 0, i32 8
  %2 = ptrtoint ptr %clkdm_offs to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %clkdm_offs, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %conv.i.i.i = zext i16 %1 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %4, i32 %conv.i.i.i
  %conv1.i.i.i = zext i16 %3 to i32
  %add.ptr2.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %conv1.i.i.i
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i.i) #5, !srcloc !15
  %6 = and i32 %5, -50331649
  %7 = or i32 %6, 16777216
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr.i6.i.i = getelementptr i8, ptr %8, i32 %conv.i.i.i
  %add.ptr2.i8.i.i = getelementptr i8, ptr %add.ptr.i6.i.i, i32 %conv1.i.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i8.i.i, i32 %7) #5, !srcloc !16
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @am33xx_clkdm_wakeup(ptr nocapture noundef readonly %clkdm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cm_inst = getelementptr inbounds %struct.clockdomain, ptr %clkdm, i32 0, i32 7
  %0 = ptrtoint ptr %cm_inst to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %cm_inst, align 2
  %clkdm_offs = getelementptr inbounds %struct.clockdomain, ptr %clkdm, i32 0, i32 8
  %2 = ptrtoint ptr %clkdm_offs to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %clkdm_offs, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %conv.i.i.i = zext i16 %1 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %4, i32 %conv.i.i.i
  %conv1.i.i.i = zext i16 %3 to i32
  %add.ptr2.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %conv1.i.i.i
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i.i) #5, !srcloc !15
  %6 = and i32 %5, -50331649
  %7 = or i32 %6, 33554432
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr.i6.i.i = getelementptr i8, ptr %8, i32 %conv.i.i.i
  %add.ptr2.i8.i.i = getelementptr i8, ptr %add.ptr.i6.i.i, i32 %conv1.i.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i8.i.i, i32 %7) #5, !srcloc !16
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @am33xx_clkdm_allow_idle(ptr nocapture noundef readonly %clkdm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cm_inst = getelementptr inbounds %struct.clockdomain, ptr %clkdm, i32 0, i32 7
  %0 = ptrtoint ptr %cm_inst to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %cm_inst, align 2
  %clkdm_offs = getelementptr inbounds %struct.clockdomain, ptr %clkdm, i32 0, i32 8
  %2 = ptrtoint ptr %clkdm_offs to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %clkdm_offs, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %conv.i.i.i = zext i16 %1 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %4, i32 %conv.i.i.i
  %conv1.i.i.i = zext i16 %3 to i32
  %add.ptr2.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %conv1.i.i.i
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i.i) #5, !srcloc !15
  %6 = or i32 %5, 50331648
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr.i6.i.i = getelementptr i8, ptr %7, i32 %conv.i.i.i
  %add.ptr2.i8.i.i = getelementptr i8, ptr %add.ptr.i6.i.i, i32 %conv1.i.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i8.i.i, i32 %6) #5, !srcloc !16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @am33xx_clkdm_deny_idle(ptr nocapture noundef readonly %clkdm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cm_inst = getelementptr inbounds %struct.clockdomain, ptr %clkdm, i32 0, i32 7
  %0 = ptrtoint ptr %cm_inst to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %cm_inst, align 2
  %clkdm_offs = getelementptr inbounds %struct.clockdomain, ptr %clkdm, i32 0, i32 8
  %2 = ptrtoint ptr %clkdm_offs to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %clkdm_offs, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %conv.i.i.i = zext i16 %1 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %4, i32 %conv.i.i.i
  %conv1.i.i.i = zext i16 %3 to i32
  %add.ptr2.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %conv1.i.i.i
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i.i) #5, !srcloc !15
  %6 = and i32 %5, -50331649
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr.i6.i.i = getelementptr i8, ptr %7, i32 %conv.i.i.i
  %add.ptr2.i8.i.i = getelementptr i8, ptr %add.ptr.i6.i.i, i32 %conv1.i.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i8.i.i, i32 %6) #5, !srcloc !16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @am33xx_clkdm_clk_enable(ptr nocapture noundef readonly %clkdm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.clockdomain, ptr %clkdm, i32 0, i32 3
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %flags, align 2
  %2 = and i8 %1, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.then

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %cm_inst.i = getelementptr inbounds %struct.clockdomain, ptr %clkdm, i32 0, i32 7
  %3 = ptrtoint ptr %cm_inst.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %cm_inst.i, align 2
  %clkdm_offs.i = getelementptr inbounds %struct.clockdomain, ptr %clkdm, i32 0, i32 8
  %5 = ptrtoint ptr %clkdm_offs.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %clkdm_offs.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %conv.i.i.i.i = zext i16 %4 to i32
  %add.ptr.i.i.i.i = getelementptr i8, ptr %7, i32 %conv.i.i.i.i
  %conv1.i.i.i.i = zext i16 %6 to i32
  %add.ptr2.i.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i, i32 %conv1.i.i.i.i
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i.i.i) #5, !srcloc !15
  %9 = and i32 %8, -50331649
  %10 = or i32 %9, 33554432
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr.i6.i.i.i = getelementptr i8, ptr %11, i32 %conv.i.i.i.i
  %add.ptr2.i8.i.i.i = getelementptr i8, ptr %add.ptr.i6.i.i.i, i32 %conv1.i.i.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i8.i.i.i, i32 %10) #5, !srcloc !16
  br label %return

return:                                           ; preds = %if.then, %entry.return_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @am33xx_clkdm_clk_disable(ptr nocapture noundef readonly %clkdm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cm_inst = getelementptr inbounds %struct.clockdomain, ptr %clkdm, i32 0, i32 7
  %0 = ptrtoint ptr %cm_inst to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %cm_inst, align 2
  %clkdm_offs = getelementptr inbounds %struct.clockdomain, ptr %clkdm, i32 0, i32 8
  %2 = ptrtoint ptr %clkdm_offs to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %clkdm_offs, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %conv.i.i = zext i16 %1 to i32
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 %conv.i.i
  %conv1.i.i = zext i16 %3 to i32
  %add.ptr2.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %conv1.i.i
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i) #5, !srcloc !15
  %6 = and i32 %5, 50331648
  call void @__sanitizer_cov_trace_const_cmp4(i32 50331648, i32 %6)
  %cmp.i = icmp eq i32 %6, 50331648
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %flags = getelementptr inbounds %struct.clockdomain, ptr %clkdm, i32 0, i32 3
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %flags, align 2
  %9 = and i8 %8, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool1.not = icmp eq i8 %9, 0
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %cm_inst to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %cm_inst, align 2
  %12 = ptrtoint ptr %clkdm_offs to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %clkdm_offs, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %conv.i.i.i.i = zext i16 %11 to i32
  %add.ptr.i.i.i.i = getelementptr i8, ptr %14, i32 %conv.i.i.i.i
  %conv1.i.i.i.i = zext i16 %13 to i32
  %add.ptr2.i.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i, i32 %conv1.i.i.i.i
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i.i.i) #5, !srcloc !15
  %16 = and i32 %15, -50331649
  %17 = or i32 %16, 16777216
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr.i6.i.i.i = getelementptr i8, ptr %18, i32 %conv.i.i.i.i
  %add.ptr2.i8.i.i.i = getelementptr i8, ptr %add.ptr.i6.i.i.i, i32 %conv1.i.i.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i8.i.i.i, i32 %17) #5, !srcloc !16
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @am33xx_clkdm_save_context(ptr nocapture noundef %clkdm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cm_inst = getelementptr inbounds %struct.clockdomain, ptr %clkdm, i32 0, i32 7
  %0 = ptrtoint ptr %cm_inst to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %cm_inst, align 2
  %clkdm_offs = getelementptr inbounds %struct.clockdomain, ptr %clkdm, i32 0, i32 8
  %2 = ptrtoint ptr %clkdm_offs to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %clkdm_offs, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %conv.i.i = zext i16 %1 to i32
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 %conv.i.i
  %conv1.i.i = zext i16 %3 to i32
  %add.ptr2.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %conv1.i.i
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i) #5, !srcloc !15
  %6 = lshr i32 %5, 24
  %and.i = and i32 %6, 3
  %context = getelementptr inbounds %struct.clockdomain, ptr %clkdm, i32 0, i32 14
  %7 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %and.i, ptr %context, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @am33xx_clkdm_restore_context(ptr nocapture noundef readonly %clkdm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.clockdomain, ptr %clkdm, i32 0, i32 14
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %context, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb2
    i32 3, label %sw.bb4
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %cm_inst.i = getelementptr inbounds %struct.clockdomain, ptr %clkdm, i32 0, i32 7
  %3 = ptrtoint ptr %cm_inst.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %cm_inst.i, align 2
  %clkdm_offs.i = getelementptr inbounds %struct.clockdomain, ptr %clkdm, i32 0, i32 8
  %5 = ptrtoint ptr %clkdm_offs.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %clkdm_offs.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %conv.i.i.i.i = zext i16 %4 to i32
  %add.ptr.i.i.i.i = getelementptr i8, ptr %7, i32 %conv.i.i.i.i
  %conv1.i.i.i.i = zext i16 %6 to i32
  %add.ptr2.i.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i, i32 %conv1.i.i.i.i
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i.i.i) #5, !srcloc !15
  %9 = and i32 %8, -50331649
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr.i6.i.i.i = getelementptr i8, ptr %10, i32 %conv.i.i.i.i
  %add.ptr2.i8.i.i.i = getelementptr i8, ptr %add.ptr.i6.i.i.i, i32 %conv1.i.i.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i8.i.i.i, i32 %9) #5, !srcloc !16
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %cm_inst.i9 = getelementptr inbounds %struct.clockdomain, ptr %clkdm, i32 0, i32 7
  %11 = ptrtoint ptr %cm_inst.i9 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %cm_inst.i9, align 2
  %clkdm_offs.i10 = getelementptr inbounds %struct.clockdomain, ptr %clkdm, i32 0, i32 8
  %13 = ptrtoint ptr %clkdm_offs.i10 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %clkdm_offs.i10, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %conv.i.i.i.i11 = zext i16 %12 to i32
  %add.ptr.i.i.i.i12 = getelementptr i8, ptr %15, i32 %conv.i.i.i.i11
  %conv1.i.i.i.i13 = zext i16 %14 to i32
  %add.ptr2.i.i.i.i14 = getelementptr i8, ptr %add.ptr.i.i.i.i12, i32 %conv1.i.i.i.i13
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i.i.i14) #5, !srcloc !15
  %17 = and i32 %16, -50331649
  %18 = or i32 %17, 16777216
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr.i6.i.i.i15 = getelementptr i8, ptr %19, i32 %conv.i.i.i.i11
  %add.ptr2.i8.i.i.i16 = getelementptr i8, ptr %add.ptr.i6.i.i.i15, i32 %conv1.i.i.i.i13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i8.i.i.i16, i32 %18) #5, !srcloc !16
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %cm_inst.i17 = getelementptr inbounds %struct.clockdomain, ptr %clkdm, i32 0, i32 7
  %20 = ptrtoint ptr %cm_inst.i17 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %cm_inst.i17, align 2
  %clkdm_offs.i18 = getelementptr inbounds %struct.clockdomain, ptr %clkdm, i32 0, i32 8
  %22 = ptrtoint ptr %clkdm_offs.i18 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %clkdm_offs.i18, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %conv.i.i.i.i19 = zext i16 %21 to i32
  %add.ptr.i.i.i.i20 = getelementptr i8, ptr %24, i32 %conv.i.i.i.i19
  %conv1.i.i.i.i21 = zext i16 %23 to i32
  %add.ptr2.i.i.i.i22 = getelementptr i8, ptr %add.ptr.i.i.i.i20, i32 %conv1.i.i.i.i21
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i.i.i22) #5, !srcloc !15
  %26 = and i32 %25, -50331649
  %27 = or i32 %26, 33554432
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr.i6.i.i.i23 = getelementptr i8, ptr %28, i32 %conv.i.i.i.i19
  %add.ptr2.i8.i.i.i24 = getelementptr i8, ptr %add.ptr.i6.i.i.i23, i32 %conv1.i.i.i.i21
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i8.i.i.i24, i32 %27) #5, !srcloc !16
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %cm_inst.i25 = getelementptr inbounds %struct.clockdomain, ptr %clkdm, i32 0, i32 7
  %29 = ptrtoint ptr %cm_inst.i25 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %cm_inst.i25, align 2
  %clkdm_offs.i26 = getelementptr inbounds %struct.clockdomain, ptr %clkdm, i32 0, i32 8
  %31 = ptrtoint ptr %clkdm_offs.i26 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %clkdm_offs.i26, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %conv.i.i.i.i27 = zext i16 %30 to i32
  %add.ptr.i.i.i.i28 = getelementptr i8, ptr %33, i32 %conv.i.i.i.i27
  %conv1.i.i.i.i29 = zext i16 %32 to i32
  %add.ptr2.i.i.i.i30 = getelementptr i8, ptr %add.ptr.i.i.i.i28, i32 %conv1.i.i.i.i29
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i.i.i30) #5, !srcloc !15
  %35 = or i32 %34, 50331648
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %36 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr.i6.i.i.i31 = getelementptr i8, ptr %36, i32 %conv.i.i.i.i27
  %add.ptr2.i8.i.i.i32 = getelementptr i8, ptr %add.ptr.i6.i.i.i31, i32 %conv1.i.i.i.i29
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i8.i.i.i32, i32 %35) #5, !srcloc !16
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb4, %sw.bb2, %sw.bb1, %sw.bb, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @am33xx_cm_init(ptr nocapture noundef readnone %data) local_unnamed_addr #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @cm_register(ptr noundef nonnull @am33xx_cm_ll_data) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cm_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @am33xx_cm_exit() #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 @cm_unregister(ptr noundef nonnull @am33xx_cm_ll_data) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cm_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @am33xx_cm_wait_module_ready(i8 noundef zeroext %part, i16 noundef signext %inst, i16 noundef zeroext %clkctrl_offs, i8 noundef zeroext %bit_shift) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %conv.i.i.i = zext i16 %inst to i32
  %conv1.i.i.i = zext i16 %clkctrl_offs to i32
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry
  %i.04 = phi i32 [ 0, %entry ], [ %inc, %if.end.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %0, i32 %conv.i.i.i
  %add.ptr2.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %conv1.i.i.i
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i.i) #5, !srcloc !15
  %2 = and i32 %1, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %for.body.for.end_crit_edge, label %if.end

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end:                                           ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748) #5
  %inc = add nuw nsw i32 %i.04, 1
  %exitcond.not = icmp eq i32 %inc, 2000
  br i1 %exitcond.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %for.body.for.end_crit_edge
  %cond = phi i32 [ 0, %for.body.for.end_crit_edge ], [ -16, %if.end.for.end_crit_edge ]
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @am33xx_cm_wait_module_idle(i8 noundef zeroext %part, i16 noundef signext %inst, i16 noundef zeroext %clkctrl_offs, i8 noundef zeroext %bit_shift) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %conv.i.i = zext i16 %inst to i32
  %conv1.i.i = zext i16 %clkctrl_offs to i32
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry
  %i.05 = phi i32 [ 0, %entry ], [ %inc, %if.end.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr.i.i = getelementptr i8, ptr %0, i32 %conv.i.i
  %add.ptr2.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %conv1.i.i
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i) #5, !srcloc !15
  %2 = and i32 %1, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %2)
  %cmp1 = icmp eq i32 %2, 768
  br i1 %cmp1, label %for.body.for.end_crit_edge, label %if.end

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end:                                           ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 214748) #5
  %inc = add nuw nsw i32 %i.05, 1
  %exitcond.not = icmp eq i32 %inc, 2000
  br i1 %exitcond.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %for.body.for.end_crit_edge
  %cond = phi i32 [ 0, %for.body.for.end_crit_edge ], [ -16, %if.end.for.end_crit_edge ]
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @am33xx_cm_module_enable(i8 noundef zeroext %mode, i8 noundef zeroext %part, i16 noundef zeroext %inst, i16 noundef zeroext %clkctrl_offs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %conv.i = zext i16 %inst to i32
  %add.ptr.i = getelementptr i8, ptr %0, i32 %conv.i
  %conv1.i = zext i16 %clkctrl_offs to i32
  %add.ptr2.i = getelementptr i8, ptr %add.ptr.i, i32 %conv1.i
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #5, !srcloc !15
  %2 = and i32 %1, -50331649
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %conv = zext i8 %mode to i32
  %or = or i32 %3, %conv
  %4 = tail call i32 @llvm.bswap.i32(i32 %or) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr.i6 = getelementptr i8, ptr %5, i32 %conv.i
  %add.ptr2.i8 = getelementptr i8, ptr %add.ptr.i6, i32 %conv1.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i8, i32 %4) #5, !srcloc !16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @am33xx_cm_module_disable(i8 noundef zeroext %part, i16 noundef zeroext %inst, i16 noundef zeroext %clkctrl_offs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %conv.i = zext i16 %inst to i32
  %add.ptr.i = getelementptr i8, ptr %0, i32 %conv.i
  %conv1.i = zext i16 %clkctrl_offs to i32
  %add.ptr2.i = getelementptr i8, ptr %add.ptr.i, i32 %conv1.i
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #5, !srcloc !15
  %2 = and i32 %1, -50331649
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr.i5 = getelementptr i8, ptr %3, i32 %conv.i
  %add.ptr2.i7 = getelementptr i8, ptr %add.ptr.i5, i32 %conv1.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i7, i32 %2) #5, !srcloc !16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @am33xx_cm_xlate_clkctrl(i8 noundef zeroext %part, i16 noundef zeroext %inst, i16 noundef zeroext %offset) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cm_base to i32))
  %0 = load i32, ptr @cm_base, align 4
  %conv = zext i16 %inst to i32
  %conv1 = zext i16 %offset to i32
  %add = add nuw nsw i32 %conv1, %conv
  %add2 = add i32 %add, %0
  ret i32 %add2
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

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
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @am33xx_clkdm_operations, !1, !"am33xx_clkdm_operations", i1 false, i1 false}
!1 = !{!"../arch/arm/mach-omap2/cm33xx.c", i32 392, i32 18}
!2 = !{ptr @__exitcall_am33xx_cm_exit, !3, !"__exitcall_am33xx_cm_exit", i1 false, i1 false}
!3 = !{!"../arch/arm/mach-omap2/cm33xx.c", i32 420, i32 1}
!4 = !{ptr @am33xx_cm_ll_data, !5, !"am33xx_cm_ll_data", i1 false, i1 false}
!5 = !{!"../arch/arm/mach-omap2/cm33xx.c", i32 403, i32 32}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!15 = !{i64 1257797}
!16 = !{i64 1257379}
