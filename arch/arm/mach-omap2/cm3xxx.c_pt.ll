; ModuleID = '/llk/IR_all_yes/arch/arm/mach-omap2/cm3xxx.c_pt.bc'
source_filename = "../arch/arm/mach-omap2/cm3xxx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clkdm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.omap3_cm_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.omap_domain_base = type { i32, ptr, i16 }
%struct.cm_ll_data = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.clockdomain = type { ptr, %union.anon, i16, i8, i8, i8, i8, i16, i16, ptr, ptr, i32, i32, %struct.list_head, i32 }
%union.anon = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.powerdomain = type { ptr, %union.anon.0, i16, i8, i8, i8, i8, [5 x i8], [5 x i8], i8, [11 x ptr], %struct.list_head, %struct.list_head, i32, [4 x i32], i32, [5 x i32], %struct.spinlock, i32, i8, i8, i32, [5 x i32], [5 x i32], [5 x i32], [5 x i32], i64, [4 x i64], i32 }
%union.anon.0 = type { ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.clkdm_dep = type { ptr, ptr, i16, i16 }
%struct.clk_omap_reg = type { ptr, i16, i8, i8 }

@omap3_clkdm_operations = dso_local global { %struct.clkdm_ops, [32 x i8] } { %struct.clkdm_ops { ptr @omap2_clkdm_add_wkdep, ptr @omap2_clkdm_del_wkdep, ptr @omap2_clkdm_read_wkdep, ptr @omap2_clkdm_clear_all_wkdeps, ptr @omap3xxx_clkdm_add_sleepdep, ptr @omap3xxx_clkdm_del_sleepdep, ptr @omap3xxx_clkdm_read_sleepdep, ptr @omap3xxx_clkdm_clear_all_sleepdeps, ptr @omap3xxx_clkdm_sleep, ptr @omap3xxx_clkdm_wakeup, ptr @omap3xxx_clkdm_allow_idle, ptr @omap3xxx_clkdm_deny_idle, ptr @omap3xxx_clkdm_clk_enable, ptr @omap3xxx_clkdm_clk_disable, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@cm_context = internal global { %struct.omap3_cm_regs, [52 x i8] } zeroinitializer, align 32
@cm_base = external dso_local local_unnamed_addr global %struct.omap_domain_base, align 4
@omap3xxx_cm_ll_data = internal constant { %struct.cm_ll_data, [40 x i8] } { %struct.cm_ll_data { ptr @omap3xxx_cm_split_idlest_reg, ptr @omap3xxx_cm_wait_module_ready, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@__exitcall_omap3xxx_cm_exit = internal global ptr @omap3xxx_cm_exit, section ".exitcall.exit", align 4
@omap3xxx_cm_idlest_offs = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c" $(", [29 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 32, i64 36, i64 40]
@___asan_gen_.1 = private unnamed_addr constant [23 x i8] c"omap3_clkdm_operations\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 294, i32 18 }
@___asan_gen_.4 = private unnamed_addr constant [11 x i8] c"cm_context\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 376, i32 29 }
@___asan_gen_.7 = private unnamed_addr constant [20 x i8] c"omap3xxx_cm_ll_data\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 662, i32 32 }
@___asan_gen_.10 = private unnamed_addr constant [24 x i8] c"omap3xxx_cm_idlest_offs\00", align 1
@___asan_gen_.11 = private constant [32 x i8] c"../arch/arm/mach-omap2/cm3xxx.c\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 24, i32 17 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @__exitcall_omap3xxx_cm_exit, ptr @omap3xxx_cm_exit, ptr @omap3_clkdm_operations, ptr @cm_context, ptr @omap3xxx_cm_ll_data, ptr @omap3xxx_cm_idlest_offs], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap3_clkdm_operations to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cm_context to i32), i32 236, i32 288, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap3xxx_cm_ll_data to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap3xxx_cm_idlest_offs to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap2_clkdm_add_wkdep(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap2_clkdm_del_wkdep(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap2_clkdm_read_wkdep(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap2_clkdm_clear_all_wkdeps(ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap3xxx_clkdm_add_sleepdep(ptr nocapture noundef readonly %clkdm1, ptr nocapture noundef readonly %clkdm2) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dep_bit = getelementptr inbounds %struct.clockdomain, ptr %clkdm2, i32 0, i32 5
  %0 = ptrtoint ptr %dep_bit to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dep_bit, align 4
  %conv = zext i8 %1 to i32
  %shl = shl nuw i32 1, %conv
  %pwrdm = getelementptr inbounds %struct.clockdomain, ptr %clkdm1, i32 0, i32 1
  %2 = ptrtoint ptr %pwrdm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pwrdm, align 4
  %prcm_offs = getelementptr inbounds %struct.powerdomain, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %prcm_offs to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %prcm_offs, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %conv.i.i.i = sext i16 %5 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %6, i32 %conv.i.i.i
  %add.ptr2.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 68
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i.i) #5, !srcloc !19
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #5
  %or.i.i = or i32 %8, %shl
  %9 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr.i2.i.i = getelementptr i8, ptr %10, i32 %conv.i.i.i
  %add.ptr2.i3.i.i = getelementptr i8, ptr %add.ptr.i2.i.i, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i3.i.i, i32 %9) #5, !srcloc !20
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap3xxx_clkdm_del_sleepdep(ptr nocapture noundef readonly %clkdm1, ptr nocapture noundef readonly %clkdm2) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dep_bit = getelementptr inbounds %struct.clockdomain, ptr %clkdm2, i32 0, i32 5
  %0 = ptrtoint ptr %dep_bit to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dep_bit, align 4
  %conv = zext i8 %1 to i32
  %shl = shl nuw i32 1, %conv
  %pwrdm = getelementptr inbounds %struct.clockdomain, ptr %clkdm1, i32 0, i32 1
  %2 = ptrtoint ptr %pwrdm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pwrdm, align 4
  %prcm_offs = getelementptr inbounds %struct.powerdomain, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %prcm_offs to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %prcm_offs, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %conv.i.i.i = sext i16 %5 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %6, i32 %conv.i.i.i
  %add.ptr2.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 68
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i.i) #5, !srcloc !19
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #5
  %neg.i.i = xor i32 %shl, -1
  %and.i.i = and i32 %8, %neg.i.i
  %9 = tail call i32 @llvm.bswap.i32(i32 %and.i.i) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr.i2.i.i = getelementptr i8, ptr %10, i32 %conv.i.i.i
  %add.ptr2.i3.i.i = getelementptr i8, ptr %add.ptr.i2.i.i, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i3.i.i, i32 %9) #5, !srcloc !20
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap3xxx_clkdm_read_sleepdep(ptr nocapture noundef readonly %clkdm1, ptr nocapture noundef readonly %clkdm2) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pwrdm = getelementptr inbounds %struct.clockdomain, ptr %clkdm1, i32 0, i32 1
  %0 = ptrtoint ptr %pwrdm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pwrdm, align 4
  %prcm_offs = getelementptr inbounds %struct.powerdomain, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %prcm_offs to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %prcm_offs, align 8
  %dep_bit = getelementptr inbounds %struct.clockdomain, ptr %clkdm2, i32 0, i32 5
  %4 = ptrtoint ptr %dep_bit to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dep_bit, align 4
  %conv = zext i8 %5 to i32
  %shl = shl nuw i32 1, %conv
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %conv.i.i = sext i16 %3 to i32
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 %conv.i.i
  %add.ptr2.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 68
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i) #5, !srcloc !19
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #5
  %and.i = and i32 %8, %shl
  %shr.i = lshr i32 %and.i, %conv
  ret i32 %shr.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap3xxx_clkdm_clear_all_sleepdeps(ptr nocapture noundef readonly %clkdm) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %sleepdep_srcs = getelementptr inbounds %struct.clockdomain, ptr %clkdm, i32 0, i32 10
  %0 = ptrtoint ptr %sleepdep_srcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sleepdep_srcs, align 4
  %tobool.not12 = icmp eq ptr %1, null
  br i1 %tobool.not12, label %entry.for.end_crit_edge, label %entry.land.rhs_crit_edge

entry.land.rhs_crit_edge:                         ; preds = %entry
  br label %land.rhs

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

land.rhs:                                         ; preds = %for.inc.land.rhs_crit_edge, %entry.land.rhs_crit_edge
  %mask.015 = phi i32 [ %mask.1, %for.inc.land.rhs_crit_edge ], [ 0, %entry.land.rhs_crit_edge ]
  %cd.013 = phi ptr [ %incdec.ptr, %for.inc.land.rhs_crit_edge ], [ %1, %entry.land.rhs_crit_edge ]
  %2 = ptrtoint ptr %cd.013 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cd.013, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %land.rhs.for.end_crit_edge, label %for.body

land.rhs.for.end_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %land.rhs
  %clkdm2 = getelementptr inbounds %struct.clkdm_dep, ptr %cd.013, i32 0, i32 1
  %4 = ptrtoint ptr %clkdm2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clkdm2, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %dep_bit = getelementptr inbounds %struct.clockdomain, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %dep_bit to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %dep_bit, align 4
  %conv = zext i8 %7 to i32
  %shl = shl nuw i32 1, %conv
  %or = or i32 %shl, %mask.015
  %sleepdep_usecount = getelementptr inbounds %struct.clkdm_dep, ptr %cd.013, i32 0, i32 3
  %8 = ptrtoint ptr %sleepdep_usecount to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 0, ptr %sleepdep_usecount, align 2
  br label %for.inc

for.inc:                                          ; preds = %if.end, %for.body.for.inc_crit_edge
  %mask.1 = phi i32 [ %or, %if.end ], [ %mask.015, %for.body.for.inc_crit_edge ]
  %incdec.ptr = getelementptr %struct.clkdm_dep, ptr %cd.013, i32 1
  %tobool.not = icmp eq ptr %incdec.ptr, null
  br i1 %tobool.not, label %for.inc.for.end_crit_edge, label %for.inc.land.rhs_crit_edge

for.inc.land.rhs_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %land.rhs.for.end_crit_edge, %entry.for.end_crit_edge
  %mask.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %mask.1, %for.inc.for.end_crit_edge ], [ %mask.015, %land.rhs.for.end_crit_edge ]
  %pwrdm = getelementptr inbounds %struct.clockdomain, ptr %clkdm, i32 0, i32 1
  %9 = ptrtoint ptr %pwrdm to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pwrdm, align 4
  %prcm_offs = getelementptr inbounds %struct.powerdomain, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %prcm_offs to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %prcm_offs, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %conv.i.i.i = sext i16 %12 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %13, i32 %conv.i.i.i
  %add.ptr2.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 68
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i.i) #5, !srcloc !19
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #5
  %neg.i.i = xor i32 %mask.0.lcssa, -1
  %and.i.i = and i32 %15, %neg.i.i
  %16 = tail call i32 @llvm.bswap.i32(i32 %and.i.i) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr.i2.i.i = getelementptr i8, ptr %17, i32 %conv.i.i.i
  %add.ptr2.i3.i.i = getelementptr i8, ptr %add.ptr.i2.i.i, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i3.i.i, i32 %16) #5, !srcloc !20
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap3xxx_clkdm_sleep(ptr nocapture noundef readonly %clkdm) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pwrdm = getelementptr inbounds %struct.clockdomain, ptr %clkdm, i32 0, i32 1
  %0 = ptrtoint ptr %pwrdm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pwrdm, align 4
  %prcm_offs = getelementptr inbounds %struct.powerdomain, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %prcm_offs to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %prcm_offs, align 8
  %clktrctrl_mask = getelementptr inbounds %struct.clockdomain, ptr %clkdm, i32 0, i32 2
  %4 = ptrtoint ptr %clktrctrl_mask to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %clktrctrl_mask, align 4
  %conv = zext i16 %5 to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %conv.i.i.i = sext i16 %3 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %6, i32 %conv.i.i.i
  %add.ptr2.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 72
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i.i) #5, !srcloc !19
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #5
  %neg.i.i = xor i32 %conv, -1
  %and.i.i = and i32 %8, %neg.i.i
  %9 = tail call i32 @llvm.cttz.i32(i32 %conv, i1 false) #5, !range !21
  %shl.i.i = shl nuw i32 1, %9
  %or.i.i = or i32 %and.i.i, %shl.i.i
  %10 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr.i7.i.i = getelementptr i8, ptr %11, i32 %conv.i.i.i
  %add.ptr2.i8.i.i = getelementptr i8, ptr %add.ptr.i7.i.i, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i8.i.i, i32 %10) #5, !srcloc !20
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap3xxx_clkdm_wakeup(ptr nocapture noundef readonly %clkdm) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pwrdm = getelementptr inbounds %struct.clockdomain, ptr %clkdm, i32 0, i32 1
  %0 = ptrtoint ptr %pwrdm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pwrdm, align 4
  %prcm_offs = getelementptr inbounds %struct.powerdomain, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %prcm_offs to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %prcm_offs, align 8
  %clktrctrl_mask = getelementptr inbounds %struct.clockdomain, ptr %clkdm, i32 0, i32 2
  %4 = ptrtoint ptr %clktrctrl_mask to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %clktrctrl_mask, align 4
  %conv = zext i16 %5 to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %conv.i.i.i = sext i16 %3 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %6, i32 %conv.i.i.i
  %add.ptr2.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 72
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i.i) #5, !srcloc !19
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #5
  %neg.i.i = xor i32 %conv, -1
  %and.i.i = and i32 %8, %neg.i.i
  %9 = tail call i32 @llvm.cttz.i32(i32 %conv, i1 false) #5, !range !21
  %shl.i.i = shl i32 2, %9
  %or.i.i = or i32 %and.i.i, %shl.i.i
  %10 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr.i7.i.i = getelementptr i8, ptr %11, i32 %conv.i.i.i
  %add.ptr2.i8.i.i = getelementptr i8, ptr %add.ptr.i7.i.i, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i8.i.i, i32 %10) #5, !srcloc !20
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @omap3xxx_clkdm_allow_idle(ptr noundef %clkdm) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %usecount = getelementptr inbounds %struct.clockdomain, ptr %clkdm, i32 0, i32 11
  %0 = ptrtoint ptr %usecount to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %usecount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clkdm_add_autodeps(ptr noundef %clkdm) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %pwrdm = getelementptr inbounds %struct.clockdomain, ptr %clkdm, i32 0, i32 1
  %2 = ptrtoint ptr %pwrdm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pwrdm, align 4
  %prcm_offs = getelementptr inbounds %struct.powerdomain, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %prcm_offs to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %prcm_offs, align 8
  %clktrctrl_mask = getelementptr inbounds %struct.clockdomain, ptr %clkdm, i32 0, i32 2
  %6 = ptrtoint ptr %clktrctrl_mask to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %clktrctrl_mask, align 4
  %conv = zext i16 %7 to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %conv.i.i.i = sext i16 %5 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %8, i32 %conv.i.i.i
  %add.ptr2.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 72
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i.i) #5, !srcloc !19
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #5
  %neg.i.i = xor i32 %conv, -1
  %and.i.i = and i32 %10, %neg.i.i
  %11 = tail call i32 @llvm.cttz.i32(i32 %conv, i1 false) #5, !range !21
  %shl.i.i = shl i32 3, %11
  %or.i.i = or i32 %and.i.i, %shl.i.i
  %12 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr.i7.i.i = getelementptr i8, ptr %13, i32 %conv.i.i.i
  %add.ptr2.i8.i.i = getelementptr i8, ptr %add.ptr.i7.i.i, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i8.i.i, i32 %12) #5, !srcloc !20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @omap3xxx_clkdm_deny_idle(ptr noundef %clkdm) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pwrdm = getelementptr inbounds %struct.clockdomain, ptr %clkdm, i32 0, i32 1
  %0 = ptrtoint ptr %pwrdm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pwrdm, align 4
  %prcm_offs = getelementptr inbounds %struct.powerdomain, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %prcm_offs to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %prcm_offs, align 8
  %clktrctrl_mask = getelementptr inbounds %struct.clockdomain, ptr %clkdm, i32 0, i32 2
  %4 = ptrtoint ptr %clktrctrl_mask to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %clktrctrl_mask, align 4
  %conv = zext i16 %5 to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %conv.i.i.i = sext i16 %3 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %6, i32 %conv.i.i.i
  %add.ptr2.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 72
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i.i) #5, !srcloc !19
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #5
  %neg.i.i = xor i32 %conv, -1
  %and.i.i = and i32 %8, %neg.i.i
  %9 = tail call i32 @llvm.bswap.i32(i32 %and.i.i) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr.i7.i.i = getelementptr i8, ptr %10, i32 %conv.i.i.i
  %add.ptr2.i8.i.i = getelementptr i8, ptr %add.ptr.i7.i.i, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i8.i.i, i32 %9) #5, !srcloc !20
  %usecount = getelementptr inbounds %struct.clockdomain, ptr %clkdm, i32 0, i32 11
  %11 = ptrtoint ptr %usecount to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %usecount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp = icmp sgt i32 %12, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clkdm_del_autodeps(ptr noundef %clkdm) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap3xxx_clkdm_clk_enable(ptr noundef %clkdm) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %clktrctrl_mask = getelementptr inbounds %struct.clockdomain, ptr %clkdm, i32 0, i32 2
  %0 = ptrtoint ptr %clktrctrl_mask to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %clktrctrl_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.clockdomain, ptr %clkdm, i32 0, i32 3
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %flags, align 2
  %4 = and i8 %3, 66
  call void @__sanitizer_cov_trace_const_cmp1(i8 66, i8 %4)
  %.not = icmp eq i8 %4, 66
  %pwrdm.i = getelementptr inbounds %struct.clockdomain, ptr %clkdm, i32 0, i32 1
  %5 = ptrtoint ptr %pwrdm.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pwrdm.i, align 4
  %prcm_offs.i = getelementptr inbounds %struct.powerdomain, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %prcm_offs.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %prcm_offs.i, align 8
  %conv.i = zext i16 %1 to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %conv.i.i.i.i = sext i16 %8 to i32
  %add.ptr.i.i.i.i = getelementptr i8, ptr %9, i32 %conv.i.i.i.i
  %add.ptr2.i.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i, i32 72
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i.i.i) #5
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #5
  br i1 %.not, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %neg.i.i.i = xor i32 %conv.i, -1
  %and.i.i.i = and i32 %11, %neg.i.i.i
  %12 = tail call i32 @llvm.cttz.i32(i32 %conv.i, i1 true) #5, !range !21
  %shl.i.i.i = shl i32 2, %12
  %or.i.i.i = or i32 %and.i.i.i, %shl.i.i.i
  %13 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr.i7.i.i.i = getelementptr i8, ptr %14, i32 %conv.i.i.i.i
  %add.ptr2.i8.i.i.i = getelementptr i8, ptr %add.ptr.i7.i.i.i, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i8.i.i.i, i32 %13) #5, !srcloc !20
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %and.i = and i32 %11, %conv.i
  %15 = tail call i32 @llvm.cttz.i32(i32 %conv.i, i1 true) #5, !range !21
  %shr.i = lshr i32 %and.i, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %shr.i)
  %cmp.i = icmp eq i32 %shr.i, 3
  br i1 %cmp.i, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %pwrdm.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pwrdm.i, align 4
  %prcm_offs14 = getelementptr inbounds %struct.powerdomain, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %prcm_offs14 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %prcm_offs14, align 8
  %20 = ptrtoint ptr %clktrctrl_mask to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %clktrctrl_mask, align 4
  %conv16 = zext i16 %21 to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %conv.i.i.i = sext i16 %19 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %22, i32 %conv.i.i.i
  %add.ptr2.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 72
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i.i) #5, !srcloc !19
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #5
  %neg.i.i = xor i32 %conv16, -1
  %and.i.i = and i32 %24, %neg.i.i
  %25 = tail call i32 @llvm.bswap.i32(i32 %and.i.i) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr.i7.i.i = getelementptr i8, ptr %26, i32 %conv.i.i.i
  %add.ptr2.i8.i.i = getelementptr i8, ptr %add.ptr.i7.i.i, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i8.i.i, i32 %25) #5, !srcloc !20
  tail call void @clkdm_add_autodeps(ptr noundef %clkdm) #5
  %27 = ptrtoint ptr %pwrdm.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pwrdm.i, align 4
  %prcm_offs18 = getelementptr inbounds %struct.powerdomain, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %prcm_offs18 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %prcm_offs18, align 8
  %31 = ptrtoint ptr %clktrctrl_mask to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %clktrctrl_mask, align 4
  %conv20 = zext i16 %32 to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %conv.i.i.i41 = sext i16 %30 to i32
  %add.ptr.i.i.i42 = getelementptr i8, ptr %33, i32 %conv.i.i.i41
  %add.ptr2.i.i.i43 = getelementptr i8, ptr %add.ptr.i.i.i42, i32 72
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i.i43) #5, !srcloc !19
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #5
  %neg.i.i44 = xor i32 %conv20, -1
  %and.i.i45 = and i32 %35, %neg.i.i44
  %36 = tail call i32 @llvm.cttz.i32(i32 %conv20, i1 false) #5, !range !21
  %shl.i.i = shl i32 3, %36
  %or.i.i = or i32 %and.i.i45, %shl.i.i
  %37 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %38 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr.i7.i.i46 = getelementptr i8, ptr %38, i32 %conv.i.i.i41
  %add.ptr2.i8.i.i47 = getelementptr i8, ptr %add.ptr.i7.i.i46, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i8.i.i47, i32 %37) #5, !srcloc !20
  br label %cleanup

if.else:                                          ; preds = %if.end7
  %39 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %flags, align 2
  %41 = and i8 %40, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool24.not = icmp eq i8 %41, 0
  br i1 %tobool24.not, label %if.else.cleanup_crit_edge, label %if.then25

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then25:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %42 = ptrtoint ptr %pwrdm.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pwrdm.i, align 4
  %prcm_offs.i49 = getelementptr inbounds %struct.powerdomain, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %prcm_offs.i49 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %prcm_offs.i49, align 8
  %46 = ptrtoint ptr %clktrctrl_mask to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %clktrctrl_mask, align 4
  %conv.i51 = zext i16 %47 to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %48 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %conv.i.i.i.i52 = sext i16 %45 to i32
  %add.ptr.i.i.i.i53 = getelementptr i8, ptr %48, i32 %conv.i.i.i.i52
  %add.ptr2.i.i.i.i54 = getelementptr i8, ptr %add.ptr.i.i.i.i53, i32 72
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i.i.i54) #5, !srcloc !19
  %50 = tail call i32 @llvm.bswap.i32(i32 %49) #5
  %neg.i.i.i55 = xor i32 %conv.i51, -1
  %and.i.i.i56 = and i32 %50, %neg.i.i.i55
  %51 = tail call i32 @llvm.cttz.i32(i32 %conv.i51, i1 false) #5, !range !21
  %shl.i.i.i57 = shl i32 2, %51
  %or.i.i.i58 = or i32 %and.i.i.i56, %shl.i.i.i57
  %52 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i58) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %53 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr.i7.i.i.i59 = getelementptr i8, ptr %53, i32 %conv.i.i.i.i52
  %add.ptr2.i8.i.i.i60 = getelementptr i8, ptr %add.ptr.i7.i.i.i59, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i8.i.i.i60, i32 %52) #5, !srcloc !20
  br label %cleanup

cleanup:                                          ; preds = %if.then25, %if.else.cleanup_crit_edge, %if.then12, %if.then6, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap3xxx_clkdm_clk_disable(ptr noundef %clkdm) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %clktrctrl_mask = getelementptr inbounds %struct.clockdomain, ptr %clkdm, i32 0, i32 2
  %0 = ptrtoint ptr %clktrctrl_mask to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %clktrctrl_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.clockdomain, ptr %clkdm, i32 0, i32 3
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %flags, align 2
  %4 = and i8 %3, 65
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %4)
  %5 = icmp eq i8 %4, 64
  %pwrdm = getelementptr inbounds %struct.clockdomain, ptr %clkdm, i32 0, i32 1
  %6 = ptrtoint ptr %pwrdm to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pwrdm, align 4
  %prcm_offs = getelementptr inbounds %struct.powerdomain, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %prcm_offs to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %prcm_offs, align 8
  %conv8 = zext i16 %1 to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %conv.i.i.i = sext i16 %9 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %10, i32 %conv.i.i.i
  %add.ptr2.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 72
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i.i) #5
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #5
  br i1 %5, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %neg.i.i = xor i32 %conv8, -1
  %and.i.i = and i32 %12, %neg.i.i
  %13 = tail call i32 @llvm.cttz.i32(i32 %conv8, i1 true) #5, !range !21
  %shl.i.i = shl i32 3, %13
  %or.i.i = or i32 %and.i.i, %shl.i.i
  %14 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr.i7.i.i = getelementptr i8, ptr %15, i32 %conv.i.i.i
  %add.ptr2.i8.i.i = getelementptr i8, ptr %add.ptr.i7.i.i, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i8.i.i, i32 %14) #5, !srcloc !20
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %and.i = and i32 %12, %conv8
  %16 = tail call i32 @llvm.cttz.i32(i32 %conv8, i1 true) #5, !range !21
  %shr.i = lshr i32 %and.i, %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %shr.i)
  %cmp.i = icmp eq i32 %shr.i, 3
  br i1 %cmp.i, label %if.then15, label %if.else

if.then15:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %pwrdm to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pwrdm, align 4
  %prcm_offs17 = getelementptr inbounds %struct.powerdomain, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %prcm_offs17 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %prcm_offs17, align 8
  %21 = ptrtoint ptr %clktrctrl_mask to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %clktrctrl_mask, align 4
  %conv19 = zext i16 %22 to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %conv.i.i.i45 = sext i16 %20 to i32
  %add.ptr.i.i.i46 = getelementptr i8, ptr %23, i32 %conv.i.i.i45
  %add.ptr2.i.i.i47 = getelementptr i8, ptr %add.ptr.i.i.i46, i32 72
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i.i47) #5, !srcloc !19
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #5
  %neg.i.i48 = xor i32 %conv19, -1
  %and.i.i49 = and i32 %25, %neg.i.i48
  %26 = tail call i32 @llvm.bswap.i32(i32 %and.i.i49) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr.i7.i.i50 = getelementptr i8, ptr %27, i32 %conv.i.i.i45
  %add.ptr2.i8.i.i51 = getelementptr i8, ptr %add.ptr.i7.i.i50, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i8.i.i51, i32 %26) #5, !srcloc !20
  tail call void @clkdm_del_autodeps(ptr noundef %clkdm) #5
  %28 = ptrtoint ptr %pwrdm to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pwrdm, align 4
  %prcm_offs21 = getelementptr inbounds %struct.powerdomain, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %prcm_offs21 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %prcm_offs21, align 8
  %32 = ptrtoint ptr %clktrctrl_mask to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %clktrctrl_mask, align 4
  %conv23 = zext i16 %33 to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %34 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %conv.i.i.i52 = sext i16 %31 to i32
  %add.ptr.i.i.i53 = getelementptr i8, ptr %34, i32 %conv.i.i.i52
  %add.ptr2.i.i.i54 = getelementptr i8, ptr %add.ptr.i.i.i53, i32 72
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i.i54) #5, !srcloc !19
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #5
  %neg.i.i55 = xor i32 %conv23, -1
  %and.i.i56 = and i32 %36, %neg.i.i55
  %37 = tail call i32 @llvm.cttz.i32(i32 %conv23, i1 false) #5, !range !21
  %shl.i.i57 = shl i32 3, %37
  %or.i.i58 = or i32 %and.i.i56, %shl.i.i57
  %38 = tail call i32 @llvm.bswap.i32(i32 %or.i.i58) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %39 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr.i7.i.i59 = getelementptr i8, ptr %39, i32 %conv.i.i.i52
  %add.ptr2.i8.i.i60 = getelementptr i8, ptr %add.ptr.i7.i.i59, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i8.i.i60, i32 %38) #5, !srcloc !20
  br label %cleanup

if.else:                                          ; preds = %if.end9
  %40 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %flags, align 2
  %42 = and i8 %41, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool27.not = icmp eq i8 %42, 0
  br i1 %tobool27.not, label %if.else.cleanup_crit_edge, label %if.then28

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then28:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %43 = ptrtoint ptr %pwrdm to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pwrdm, align 4
  %prcm_offs.i = getelementptr inbounds %struct.powerdomain, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %prcm_offs.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %prcm_offs.i, align 8
  %47 = ptrtoint ptr %clktrctrl_mask to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %clktrctrl_mask, align 4
  %conv.i = zext i16 %48 to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %49 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %conv.i.i.i.i = sext i16 %46 to i32
  %add.ptr.i.i.i.i = getelementptr i8, ptr %49, i32 %conv.i.i.i.i
  %add.ptr2.i.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i, i32 72
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i.i.i) #5, !srcloc !19
  %51 = tail call i32 @llvm.bswap.i32(i32 %50) #5
  %neg.i.i.i = xor i32 %conv.i, -1
  %and.i.i.i = and i32 %51, %neg.i.i.i
  %52 = tail call i32 @llvm.cttz.i32(i32 %conv.i, i1 false) #5, !range !21
  %shl.i.i.i = shl nuw i32 1, %52
  %or.i.i.i = or i32 %and.i.i.i, %shl.i.i.i
  %53 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %54 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr.i7.i.i.i = getelementptr i8, ptr %54, i32 %conv.i.i.i.i
  %add.ptr2.i8.i.i.i = getelementptr i8, ptr %add.ptr.i7.i.i.i, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i8.i.i.i, i32 %53) #5, !srcloc !20
  br label %cleanup

cleanup:                                          ; preds = %if.then28, %if.else.cleanup_crit_edge, %if.then15, %if.then6, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap3_cm_save_context() local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr2.i = getelementptr i8, ptr %0, i32 -1984
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #5, !srcloc !19
  %2 = tail call i32 @llvm.bswap.i32(i32 %1) #5
  store i32 %2, ptr @cm_context, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr2.i60 = getelementptr i8, ptr %3, i32 -1980
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i60) #5, !srcloc !19
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #5
  store i32 %5, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 1), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr2.i61 = getelementptr i8, ptr %6, i32 16
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i61) #5, !srcloc !19
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #5
  store i32 %8, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 2), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr2.i63 = getelementptr i8, ptr %9, i32 832
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i63) #5, !srcloc !19
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #5
  store i32 %11, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 3), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr2.i65 = getelementptr i8, ptr %12, i32 1600
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i65) #5, !srcloc !19
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #5
  store i32 %14, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 4), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr2.i67 = getelementptr i8, ptr %15, i32 1856
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i67) #5, !srcloc !19
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #5
  store i32 %17, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 5), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr2.i69 = getelementptr i8, ptr %18, i32 2112
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i69) #5, !srcloc !19
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #5
  store i32 %20, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 6), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr2.i71 = getelementptr i8, ptr %21, i32 2368
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i71) #5, !srcloc !19
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #5
  store i32 %23, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 7), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr2.i73 = getelementptr i8, ptr %24, i32 2376
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i73) #5, !srcloc !19
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #5
  store i32 %26, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 8), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr2.i75 = getelementptr i8, ptr %27, i32 1328
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i75) #5, !srcloc !19
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #5
  store i32 %29, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 9), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %30 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr2.i77 = getelementptr i8, ptr %30, i32 1332
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i77) #5, !srcloc !19
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #5
  store i32 %32, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 10), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr2.i79 = getelementptr i8, ptr %33, i32 1356
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i79) #5, !srcloc !19
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #5
  store i32 %35, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 11), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %36 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr2.i81 = getelementptr i8, ptr %36, i32 1360
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i81) #5, !srcloc !19
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #5
  store i32 %38, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 12), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %39 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr2.i83 = getelementptr i8, ptr %39, i32 1284
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i83) #5, !srcloc !19
  %41 = tail call i32 @llvm.bswap.i32(i32 %40) #5
  store i32 %41, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 13), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %42 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr2.i84 = getelementptr i8, ptr %42, i32 156
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i84) #5, !srcloc !19
  %44 = tail call i32 @llvm.bswap.i32(i32 %43) #5
  store i32 %44, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 14), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %45 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr.i85 = getelementptr i8, ptr %45, i32 -2048
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i85) #5, !srcloc !19
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #5
  store i32 %47, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 15), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %48 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr2.i87 = getelementptr i8, ptr %48, i32 -2044
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i87) #5, !srcloc !19
  %50 = tail call i32 @llvm.bswap.i32(i32 %49) #5
  store i32 %50, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 16), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %51 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr.i88 = getelementptr i8, ptr %51, i32 512
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i88) #5, !srcloc !19
  %53 = tail call i32 @llvm.bswap.i32(i32 %52) #5
  store i32 %53, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 17), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %54 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr2.i90 = getelementptr i8, ptr %54, i32 520
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i90) #5, !srcloc !19
  %56 = tail call i32 @llvm.bswap.i32(i32 %55) #5
  store i32 %56, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 18), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %57 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr.i91 = getelementptr i8, ptr %57, i32 768
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i91) #5, !srcloc !19
  %59 = tail call i32 @llvm.bswap.i32(i32 %58) #5
  store i32 %59, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 19), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %60 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr.i92 = getelementptr i8, ptr %60, i32 1024
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i92) #5, !srcloc !19
  %62 = tail call i32 @llvm.bswap.i32(i32 %61) #5
  store i32 %62, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 20), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %63 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr.i93 = getelementptr i8, ptr %63, i32 1536
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i93) #5, !srcloc !19
  %65 = tail call i32 @llvm.bswap.i32(i32 %64) #5
  store i32 %65, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 21), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %66 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr.i94 = getelementptr i8, ptr %66, i32 1792
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i94) #5, !srcloc !19
  %68 = tail call i32 @llvm.bswap.i32(i32 %67) #5
  store i32 %68, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 22), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %69 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr.i95 = getelementptr i8, ptr %69, i32 2048
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i95) #5, !srcloc !19
  %71 = tail call i32 @llvm.bswap.i32(i32 %70) #5
  store i32 %71, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 23), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %72 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr.i96 = getelementptr i8, ptr %72, i32 3072
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i96) #5, !srcloc !19
  %74 = tail call i32 @llvm.bswap.i32(i32 %73) #5
  store i32 %74, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 24), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %75 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr2.i98 = getelementptr i8, ptr %75, i32 528
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i98) #5, !srcloc !19
  %77 = tail call i32 @llvm.bswap.i32(i32 %76) #5
  store i32 %77, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 25), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %78 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr2.i100 = getelementptr i8, ptr %78, i32 532
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i100) #5, !srcloc !19
  %80 = tail call i32 @llvm.bswap.i32(i32 %79) #5
  store i32 %80, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 26), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %81 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr2.i102 = getelementptr i8, ptr %81, i32 536
  %82 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i102) #5, !srcloc !19
  %83 = tail call i32 @llvm.bswap.i32(i32 %82) #5
  store i32 %83, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 27), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %84 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr2.i104 = getelementptr i8, ptr %84, i32 784
  %85 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i104) #5, !srcloc !19
  %86 = tail call i32 @llvm.bswap.i32(i32 %85) #5
  store i32 %86, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 28), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %87 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr2.i106 = getelementptr i8, ptr %87, i32 1040
  %88 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i106) #5, !srcloc !19
  %89 = tail call i32 @llvm.bswap.i32(i32 %88) #5
  store i32 %89, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 29), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %90 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr2.i108 = getelementptr i8, ptr %90, i32 1552
  %91 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i108) #5, !srcloc !19
  %92 = tail call i32 @llvm.bswap.i32(i32 %91) #5
  store i32 %92, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 30), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %93 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr2.i110 = getelementptr i8, ptr %93, i32 1808
  %94 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i110) #5, !srcloc !19
  %95 = tail call i32 @llvm.bswap.i32(i32 %94) #5
  store i32 %95, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 31), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %96 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr2.i112 = getelementptr i8, ptr %96, i32 2064
  %97 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i112) #5, !srcloc !19
  %98 = tail call i32 @llvm.bswap.i32(i32 %97) #5
  store i32 %98, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 32), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %99 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr2.i114 = getelementptr i8, ptr %99, i32 3088
  %100 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i114) #5, !srcloc !19
  %101 = tail call i32 @llvm.bswap.i32(i32 %100) #5
  store i32 %101, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 33), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %102 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr2.i116 = getelementptr i8, ptr %102, i32 -1996
  %103 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i116) #5, !srcloc !19
  %104 = tail call i32 @llvm.bswap.i32(i32 %103) #5
  store i32 %104, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 34), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %105 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr2.i118 = getelementptr i8, ptr %105, i32 308
  %106 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i118) #5, !srcloc !19
  %107 = tail call i32 @llvm.bswap.i32(i32 %106) #5
  store i32 %107, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 35), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %108 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr2.i120 = getelementptr i8, ptr %108, i32 -1976
  %109 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i120) #5, !srcloc !19
  %110 = tail call i32 @llvm.bswap.i32(i32 %109) #5
  store i32 %110, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 36), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %111 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr2.i122 = getelementptr i8, ptr %111, i32 328
  %112 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i122) #5, !srcloc !19
  %113 = tail call i32 @llvm.bswap.i32(i32 %112) #5
  store i32 %113, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 37), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %114 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr2.i124 = getelementptr i8, ptr %114, i32 584
  %115 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i124) #5, !srcloc !19
  %116 = tail call i32 @llvm.bswap.i32(i32 %115) #5
  store i32 %116, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 38), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %117 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr2.i126 = getelementptr i8, ptr %117, i32 840
  %118 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i126) #5, !srcloc !19
  %119 = tail call i32 @llvm.bswap.i32(i32 %118) #5
  store i32 %119, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 39), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %120 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr2.i128 = getelementptr i8, ptr %120, i32 1608
  %121 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i128) #5, !srcloc !19
  %122 = tail call i32 @llvm.bswap.i32(i32 %121) #5
  store i32 %122, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 40), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %123 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr2.i130 = getelementptr i8, ptr %123, i32 1864
  %124 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i130) #5, !srcloc !19
  %125 = tail call i32 @llvm.bswap.i32(i32 %124) #5
  store i32 %125, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 41), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %126 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr2.i132 = getelementptr i8, ptr %126, i32 2120
  %127 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i132) #5, !srcloc !19
  %128 = tail call i32 @llvm.bswap.i32(i32 %127) #5
  store i32 %128, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 42), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %129 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr2.i134 = getelementptr i8, ptr %129, i32 2888
  %130 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i134) #5, !srcloc !19
  %131 = tail call i32 @llvm.bswap.i32(i32 %130) #5
  store i32 %131, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 43), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %132 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr2.i136 = getelementptr i8, ptr %132, i32 3144
  %133 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i136) #5, !srcloc !19
  %134 = tail call i32 @llvm.bswap.i32(i32 %133) #5
  store i32 %134, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 44), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %135 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr2.i138 = getelementptr i8, ptr %135, i32 560
  %136 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i138) #5, !srcloc !19
  %137 = tail call i32 @llvm.bswap.i32(i32 %136) #5
  store i32 %137, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 45), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %138 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr2.i140 = getelementptr i8, ptr %138, i32 564
  %139 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i140) #5, !srcloc !19
  %140 = tail call i32 @llvm.bswap.i32(i32 %139) #5
  store i32 %140, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 46), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %141 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr2.i142 = getelementptr i8, ptr %141, i32 568
  %142 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i142) #5, !srcloc !19
  %143 = tail call i32 @llvm.bswap.i32(i32 %142) #5
  store i32 %143, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 47), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %144 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr2.i144 = getelementptr i8, ptr %144, i32 1072
  %145 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i144) #5, !srcloc !19
  %146 = tail call i32 @llvm.bswap.i32(i32 %145) #5
  store i32 %146, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 48), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %147 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr2.i146 = getelementptr i8, ptr %147, i32 1584
  %148 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i146) #5, !srcloc !19
  %149 = tail call i32 @llvm.bswap.i32(i32 %148) #5
  store i32 %149, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 49), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %150 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr2.i148 = getelementptr i8, ptr %150, i32 1840
  %151 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i148) #5, !srcloc !19
  %152 = tail call i32 @llvm.bswap.i32(i32 %151) #5
  store i32 %152, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 50), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %153 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr2.i150 = getelementptr i8, ptr %153, i32 2096
  %154 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i150) #5, !srcloc !19
  %155 = tail call i32 @llvm.bswap.i32(i32 %154) #5
  store i32 %155, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 51), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %156 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr2.i152 = getelementptr i8, ptr %156, i32 3120
  %157 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i152) #5, !srcloc !19
  %158 = tail call i32 @llvm.bswap.i32(i32 %157) #5
  store i32 %158, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 52), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %159 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr2.i154 = getelementptr i8, ptr %159, i32 836
  %160 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i154) #5, !srcloc !19
  %161 = tail call i32 @llvm.bswap.i32(i32 %160) #5
  store i32 %161, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 53), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %162 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr2.i156 = getelementptr i8, ptr %162, i32 1604
  %163 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i156) #5, !srcloc !19
  %164 = tail call i32 @llvm.bswap.i32(i32 %163) #5
  store i32 %164, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 54), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %165 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr2.i158 = getelementptr i8, ptr %165, i32 1860
  %166 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i158) #5, !srcloc !19
  %167 = tail call i32 @llvm.bswap.i32(i32 %166) #5
  store i32 %167, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 55), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %168 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr2.i160 = getelementptr i8, ptr %168, i32 2116
  %169 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i160) #5, !srcloc !19
  %170 = tail call i32 @llvm.bswap.i32(i32 %169) #5
  store i32 %170, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 56), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %171 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr2.i162 = getelementptr i8, ptr %171, i32 3140
  %172 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i162) #5, !srcloc !19
  %173 = tail call i32 @llvm.bswap.i32(i32 %172) #5
  store i32 %173, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 57), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %174 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr2.i164 = getelementptr i8, ptr %174, i32 1392
  %175 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i164) #5, !srcloc !19
  %176 = tail call i32 @llvm.bswap.i32(i32 %175) #5
  store i32 %176, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 58), align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap3_cm_restore_context() local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @cm_context, align 4
  %1 = tail call i32 @llvm.bswap.i32(i32 %0) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr2.i = getelementptr i8, ptr %2, i32 -1984
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %1) #5, !srcloc !20
  %3 = load i32, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 1), align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr2.i2 = getelementptr i8, ptr %5, i32 -1980
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i2, i32 %4) #5, !srcloc !20
  %6 = load i32, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 2), align 4
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr2.i3 = getelementptr i8, ptr %8, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i3, i32 %7) #5, !srcloc !20
  %9 = load i32, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 3), align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr2.i5 = getelementptr i8, ptr %11, i32 832
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i5, i32 %10) #5, !srcloc !20
  %12 = load i32, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 4), align 4
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr2.i7 = getelementptr i8, ptr %14, i32 1600
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i7, i32 %13) #5, !srcloc !20
  %15 = load i32, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 5), align 4
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr2.i9 = getelementptr i8, ptr %17, i32 1856
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i9, i32 %16) #5, !srcloc !20
  %18 = load i32, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 6), align 4
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr2.i11 = getelementptr i8, ptr %20, i32 2112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i11, i32 %19) #5, !srcloc !20
  %21 = load i32, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 7), align 4
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr2.i13 = getelementptr i8, ptr %23, i32 2368
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i13, i32 %22) #5, !srcloc !20
  %24 = load i32, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 8), align 4
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr2.i15 = getelementptr i8, ptr %26, i32 2376
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i15, i32 %25) #5, !srcloc !20
  %27 = load i32, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 9), align 4
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr2.i17 = getelementptr i8, ptr %29, i32 1328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i17, i32 %28) #5, !srcloc !20
  %30 = load i32, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 10), align 4
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %32 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr2.i19 = getelementptr i8, ptr %32, i32 1332
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i19, i32 %31) #5, !srcloc !20
  %33 = load i32, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 11), align 4
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr2.i21 = getelementptr i8, ptr %35, i32 1356
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i21, i32 %34) #5, !srcloc !20
  %36 = load i32, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 12), align 4
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %38 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr2.i23 = getelementptr i8, ptr %38, i32 1360
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i23, i32 %37) #5, !srcloc !20
  %39 = load i32, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 13), align 4
  %40 = tail call i32 @llvm.bswap.i32(i32 %39) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %41 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr2.i25 = getelementptr i8, ptr %41, i32 1284
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i25, i32 %40) #5, !srcloc !20
  %42 = load i32, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 14), align 4
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %44 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr2.i26 = getelementptr i8, ptr %44, i32 156
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i26, i32 %43) #5, !srcloc !20
  %45 = load i32, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 15), align 4
  %46 = tail call i32 @llvm.bswap.i32(i32 %45) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %47 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr.i27 = getelementptr i8, ptr %47, i32 -2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27, i32 %46) #5, !srcloc !20
  %48 = load i32, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 16), align 4
  %49 = tail call i32 @llvm.bswap.i32(i32 %48) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %50 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr2.i29 = getelementptr i8, ptr %50, i32 -2044
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i29, i32 %49) #5, !srcloc !20
  %51 = load i32, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 17), align 4
  %52 = tail call i32 @llvm.bswap.i32(i32 %51) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %53 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr.i30 = getelementptr i8, ptr %53, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i30, i32 %52) #5, !srcloc !20
  %54 = load i32, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 18), align 4
  %55 = tail call i32 @llvm.bswap.i32(i32 %54) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %56 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr2.i32 = getelementptr i8, ptr %56, i32 520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i32, i32 %55) #5, !srcloc !20
  %57 = load i32, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 19), align 4
  %58 = tail call i32 @llvm.bswap.i32(i32 %57) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %59 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr.i33 = getelementptr i8, ptr %59, i32 768
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i33, i32 %58) #5, !srcloc !20
  %60 = load i32, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 20), align 4
  %61 = tail call i32 @llvm.bswap.i32(i32 %60) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %62 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr.i34 = getelementptr i8, ptr %62, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i34, i32 %61) #5, !srcloc !20
  %63 = load i32, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 21), align 4
  %64 = tail call i32 @llvm.bswap.i32(i32 %63) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %65 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr.i35 = getelementptr i8, ptr %65, i32 1536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i35, i32 %64) #5, !srcloc !20
  %66 = load i32, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 22), align 4
  %67 = tail call i32 @llvm.bswap.i32(i32 %66) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %68 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr.i36 = getelementptr i8, ptr %68, i32 1792
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i36, i32 %67) #5, !srcloc !20
  %69 = load i32, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 23), align 4
  %70 = tail call i32 @llvm.bswap.i32(i32 %69) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %71 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr.i37 = getelementptr i8, ptr %71, i32 2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i37, i32 %70) #5, !srcloc !20
  %72 = load i32, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 24), align 4
  %73 = tail call i32 @llvm.bswap.i32(i32 %72) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %74 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr.i38 = getelementptr i8, ptr %74, i32 3072
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i38, i32 %73) #5, !srcloc !20
  %75 = load i32, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 25), align 4
  %76 = tail call i32 @llvm.bswap.i32(i32 %75) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %77 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr2.i40 = getelementptr i8, ptr %77, i32 528
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i40, i32 %76) #5, !srcloc !20
  %78 = load i32, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 26), align 4
  %79 = tail call i32 @llvm.bswap.i32(i32 %78) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %80 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr2.i42 = getelementptr i8, ptr %80, i32 532
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i42, i32 %79) #5, !srcloc !20
  %81 = load i32, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 27), align 4
  %82 = tail call i32 @llvm.bswap.i32(i32 %81) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %83 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr2.i44 = getelementptr i8, ptr %83, i32 536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i44, i32 %82) #5, !srcloc !20
  %84 = load i32, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 28), align 4
  %85 = tail call i32 @llvm.bswap.i32(i32 %84) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %86 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr2.i46 = getelementptr i8, ptr %86, i32 784
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i46, i32 %85) #5, !srcloc !20
  %87 = load i32, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 29), align 4
  %88 = tail call i32 @llvm.bswap.i32(i32 %87) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %89 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr2.i48 = getelementptr i8, ptr %89, i32 1040
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i48, i32 %88) #5, !srcloc !20
  %90 = load i32, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 30), align 4
  %91 = tail call i32 @llvm.bswap.i32(i32 %90) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %92 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr2.i50 = getelementptr i8, ptr %92, i32 1552
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i50, i32 %91) #5, !srcloc !20
  %93 = load i32, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 31), align 4
  %94 = tail call i32 @llvm.bswap.i32(i32 %93) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %95 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr2.i52 = getelementptr i8, ptr %95, i32 1808
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i52, i32 %94) #5, !srcloc !20
  %96 = load i32, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 32), align 4
  %97 = tail call i32 @llvm.bswap.i32(i32 %96) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %98 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr2.i54 = getelementptr i8, ptr %98, i32 2064
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i54, i32 %97) #5, !srcloc !20
  %99 = load i32, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 33), align 4
  %100 = tail call i32 @llvm.bswap.i32(i32 %99) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %101 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr2.i56 = getelementptr i8, ptr %101, i32 3088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i56, i32 %100) #5, !srcloc !20
  %102 = load i32, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 34), align 4
  %103 = tail call i32 @llvm.bswap.i32(i32 %102) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %104 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr2.i58 = getelementptr i8, ptr %104, i32 -1996
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i58, i32 %103) #5, !srcloc !20
  %105 = load i32, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 35), align 4
  %106 = tail call i32 @llvm.bswap.i32(i32 %105) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %107 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr2.i60 = getelementptr i8, ptr %107, i32 308
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i60, i32 %106) #5, !srcloc !20
  %108 = load i32, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 36), align 4
  %109 = tail call i32 @llvm.bswap.i32(i32 %108) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %110 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr2.i62 = getelementptr i8, ptr %110, i32 -1976
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i62, i32 %109) #5, !srcloc !20
  %111 = load i32, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 37), align 4
  %112 = tail call i32 @llvm.bswap.i32(i32 %111) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %113 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr2.i64 = getelementptr i8, ptr %113, i32 328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i64, i32 %112) #5, !srcloc !20
  %114 = load i32, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 38), align 4
  %115 = tail call i32 @llvm.bswap.i32(i32 %114) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %116 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr2.i66 = getelementptr i8, ptr %116, i32 584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i66, i32 %115) #5, !srcloc !20
  %117 = load i32, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 39), align 4
  %118 = tail call i32 @llvm.bswap.i32(i32 %117) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %119 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr2.i68 = getelementptr i8, ptr %119, i32 840
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i68, i32 %118) #5, !srcloc !20
  %120 = load i32, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 40), align 4
  %121 = tail call i32 @llvm.bswap.i32(i32 %120) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %122 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr2.i70 = getelementptr i8, ptr %122, i32 1608
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i70, i32 %121) #5, !srcloc !20
  %123 = load i32, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 41), align 4
  %124 = tail call i32 @llvm.bswap.i32(i32 %123) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %125 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr2.i72 = getelementptr i8, ptr %125, i32 1864
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i72, i32 %124) #5, !srcloc !20
  %126 = load i32, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 42), align 4
  %127 = tail call i32 @llvm.bswap.i32(i32 %126) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %128 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr2.i74 = getelementptr i8, ptr %128, i32 2120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i74, i32 %127) #5, !srcloc !20
  %129 = load i32, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 43), align 4
  %130 = tail call i32 @llvm.bswap.i32(i32 %129) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %131 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr2.i76 = getelementptr i8, ptr %131, i32 2888
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i76, i32 %130) #5, !srcloc !20
  %132 = load i32, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 44), align 4
  %133 = tail call i32 @llvm.bswap.i32(i32 %132) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %134 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr2.i78 = getelementptr i8, ptr %134, i32 3144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i78, i32 %133) #5, !srcloc !20
  %135 = load i32, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 45), align 4
  %136 = tail call i32 @llvm.bswap.i32(i32 %135) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %137 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr2.i80 = getelementptr i8, ptr %137, i32 560
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i80, i32 %136) #5, !srcloc !20
  %138 = load i32, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 46), align 4
  %139 = tail call i32 @llvm.bswap.i32(i32 %138) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %140 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr2.i82 = getelementptr i8, ptr %140, i32 564
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i82, i32 %139) #5, !srcloc !20
  %141 = load i32, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 47), align 4
  %142 = tail call i32 @llvm.bswap.i32(i32 %141) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %143 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr2.i84 = getelementptr i8, ptr %143, i32 568
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i84, i32 %142) #5, !srcloc !20
  %144 = load i32, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 48), align 4
  %145 = tail call i32 @llvm.bswap.i32(i32 %144) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %146 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr2.i86 = getelementptr i8, ptr %146, i32 1072
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i86, i32 %145) #5, !srcloc !20
  %147 = load i32, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 49), align 4
  %148 = tail call i32 @llvm.bswap.i32(i32 %147) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %149 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr2.i88 = getelementptr i8, ptr %149, i32 1584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i88, i32 %148) #5, !srcloc !20
  %150 = load i32, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 50), align 4
  %151 = tail call i32 @llvm.bswap.i32(i32 %150) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %152 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr2.i90 = getelementptr i8, ptr %152, i32 1840
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i90, i32 %151) #5, !srcloc !20
  %153 = load i32, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 51), align 4
  %154 = tail call i32 @llvm.bswap.i32(i32 %153) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %155 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr2.i92 = getelementptr i8, ptr %155, i32 2096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i92, i32 %154) #5, !srcloc !20
  %156 = load i32, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 52), align 4
  %157 = tail call i32 @llvm.bswap.i32(i32 %156) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %158 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr2.i94 = getelementptr i8, ptr %158, i32 3120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i94, i32 %157) #5, !srcloc !20
  %159 = load i32, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 53), align 4
  %160 = tail call i32 @llvm.bswap.i32(i32 %159) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %161 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr2.i96 = getelementptr i8, ptr %161, i32 836
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i96, i32 %160) #5, !srcloc !20
  %162 = load i32, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 54), align 4
  %163 = tail call i32 @llvm.bswap.i32(i32 %162) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %164 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr2.i98 = getelementptr i8, ptr %164, i32 1604
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i98, i32 %163) #5, !srcloc !20
  %165 = load i32, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 55), align 4
  %166 = tail call i32 @llvm.bswap.i32(i32 %165) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %167 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr2.i100 = getelementptr i8, ptr %167, i32 1860
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i100, i32 %166) #5, !srcloc !20
  %168 = load i32, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 56), align 4
  %169 = tail call i32 @llvm.bswap.i32(i32 %168) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %170 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr2.i102 = getelementptr i8, ptr %170, i32 2116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i102, i32 %169) #5, !srcloc !20
  %171 = load i32, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 57), align 4
  %172 = tail call i32 @llvm.bswap.i32(i32 %171) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %173 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr2.i104 = getelementptr i8, ptr %173, i32 3140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i104, i32 %172) #5, !srcloc !20
  %174 = load i32, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 58), align 4
  %175 = tail call i32 @llvm.bswap.i32(i32 %174) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %176 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr2.i106 = getelementptr i8, ptr %176, i32 1392
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i106, i32 %175) #5, !srcloc !20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap3_cm_save_scratchpad_contents(ptr nocapture noundef writeonly %ptr) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr2.i = getelementptr i8, ptr %0, i32 576
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #5, !srcloc !19
  %2 = tail call i32 @llvm.bswap.i32(i32 %1) #5
  %incdec.ptr = getelementptr i32, ptr %ptr, i32 1
  %3 = ptrtoint ptr %ptr to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %ptr, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr2.i32 = getelementptr i8, ptr %4, i32 1088
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i32) #5, !srcloc !19
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #5
  %incdec.ptr2 = getelementptr i32, ptr %ptr, i32 2
  %7 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %incdec.ptr, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr.i33 = getelementptr i8, ptr %8, i32 1280
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i33) #5, !srcloc !19
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #5
  %incdec.ptr4 = getelementptr i32, ptr %ptr, i32 3
  %11 = ptrtoint ptr %incdec.ptr2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %incdec.ptr2, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr2.i35 = getelementptr i8, ptr %12, i32 1328
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i35) #5, !srcloc !19
  %14 = and i32 %13, -939524097
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  %incdec.ptr6 = getelementptr i32, ptr %ptr, i32 4
  %16 = ptrtoint ptr %incdec.ptr4 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %incdec.ptr4, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr2.i37 = getelementptr i8, ptr %17, i32 1344
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i37) #5, !srcloc !19
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #5
  %incdec.ptr8 = getelementptr i32, ptr %ptr, i32 5
  %20 = ptrtoint ptr %incdec.ptr6 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %incdec.ptr6, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr2.i39 = getelementptr i8, ptr %21, i32 1348
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i39) #5, !srcloc !19
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #5
  %incdec.ptr10 = getelementptr i32, ptr %ptr, i32 6
  %24 = ptrtoint ptr %incdec.ptr8 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %incdec.ptr8, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr2.i41 = getelementptr i8, ptr %25, i32 1352
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i41) #5, !srcloc !19
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #5
  %incdec.ptr12 = getelementptr i32, ptr %ptr, i32 7
  %28 = ptrtoint ptr %incdec.ptr10 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %incdec.ptr10, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr2.i43 = getelementptr i8, ptr %29, i32 260
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i43) #5, !srcloc !19
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #5
  %incdec.ptr14 = getelementptr i32, ptr %ptr, i32 8
  %32 = ptrtoint ptr %incdec.ptr12 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %incdec.ptr12, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr2.i45 = getelementptr i8, ptr %33, i32 308
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i45) #5, !srcloc !19
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #5
  %incdec.ptr16 = getelementptr i32, ptr %ptr, i32 9
  %36 = ptrtoint ptr %incdec.ptr14 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %incdec.ptr14, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %37 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr2.i47 = getelementptr i8, ptr %37, i32 320
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i47) #5, !srcloc !19
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #5
  %incdec.ptr18 = getelementptr i32, ptr %ptr, i32 10
  %40 = ptrtoint ptr %incdec.ptr16 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %incdec.ptr16, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %41 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr2.i49 = getelementptr i8, ptr %41, i32 324
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i49) #5, !srcloc !19
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #5
  %44 = ptrtoint ptr %incdec.ptr18 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %incdec.ptr18, align 4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap3xxx_cm_init(ptr nocapture noundef readnone %data) local_unnamed_addr #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr = getelementptr i8, ptr %0, i32 -2048
  tail call void @omap2_clk_legacy_provider_init(i32 noundef 0, ptr noundef %add.ptr) #5
  %call = tail call i32 @cm_register(ptr noundef nonnull @omap3xxx_cm_ll_data) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap2_clk_legacy_provider_init(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cm_register(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @omap3xxx_cm_exit() #2 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 @cm_unregister(ptr noundef nonnull @omap3xxx_cm_ll_data) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cm_unregister(ptr noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clkdm_add_autodeps(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @clkdm_del_autodeps(ptr noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap3xxx_cm_split_idlest_reg(ptr nocapture noundef readonly %idlest_reg, ptr nocapture noundef writeonly %prcm_inst, ptr nocapture noundef writeonly %idlest_reg_id) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %offset = getelementptr inbounds %struct.clk_omap_reg, ptr %idlest_reg, i32 0, i32 1
  %0 = ptrtoint ptr %offset to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %offset, align 4
  %2 = trunc i16 %1 to i8
  %3 = zext i8 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i8 %2, label %entry.cleanup_crit_edge [
    i8 32, label %entry.if.end11_crit_edge
    i8 36, label %if.end11.fold.split
    i8 40, label %if.end11.fold.split28
  ]

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end11.fold.split:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

if.end11.fold.split28:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

if.end11:                                         ; preds = %if.end11.fold.split28, %if.end11.fold.split, %entry.if.end11_crit_edge
  %i.026.lcssa = phi i8 [ 1, %entry.if.end11_crit_edge ], [ 2, %if.end11.fold.split ], [ 3, %if.end11.fold.split28 ]
  %4 = ptrtoint ptr %idlest_reg_id to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %i.026.lcssa, ptr %idlest_reg_id, align 1
  %5 = ptrtoint ptr %offset to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %offset, align 4
  %7 = and i16 %6, -256
  %8 = ptrtoint ptr %prcm_inst to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %prcm_inst, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end11 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap3xxx_cm_wait_module_ready(i8 noundef zeroext %part, i16 noundef signext %prcm_mod, i16 noundef zeroext %idlest_id, i8 noundef zeroext %idlest_shift) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i16 %idlest_id, -4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -3, i16 %0)
  %1 = icmp ult i16 %0, -3
  br i1 %1, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = zext i16 %idlest_id to i32
  %sub = add nsw i32 %conv, -1
  %arrayidx = getelementptr [3 x i8], ptr @omap3xxx_cm_idlest_offs, i32 0, i32 %sub
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv3 = zext i8 %idlest_shift to i32
  %shl = shl nuw i32 1, %conv3
  %conv.i = sext i16 %prcm_mod to i32
  %conv1.i = zext i8 %3 to i32
  br label %for.body

for.body:                                         ; preds = %if.end10.for.body_crit_edge, %if.end
  %i.020 = phi i32 [ 0, %if.end ], [ %inc, %if.end10.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 %conv.i
  %add.ptr2.i = getelementptr i8, ptr %add.ptr.i, i32 %conv1.i
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #5, !srcloc !19
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #5
  %and = and i32 %6, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp7 = icmp eq i32 %and, 0
  br i1 %cmp7, label %for.body.cleanup_crit_edge, label %if.end10

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end10:                                         ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 214748) #5
  %inc = add nuw nsw i32 %i.020, 1
  %exitcond.not = icmp eq i32 %inc, 2000
  br i1 %exitcond.not, label %if.end10.cleanup_crit_edge, label %if.end10.for.body_crit_edge

if.end10.for.body_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %if.end10.cleanup_crit_edge, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -16, %if.end10.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

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
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !{ptr @omap3_clkdm_operations, !1, !"omap3_clkdm_operations", i1 false, i1 false}
!1 = !{!"../arch/arm/mach-omap2/cm3xxx.c", i32 294, i32 18}
!2 = !{ptr @__exitcall_omap3xxx_cm_exit, !3, !"__exitcall_omap3xxx_cm_exit", i1 false, i1 false}
!3 = !{!"../arch/arm/mach-omap2/cm3xxx.c", i32 678, i32 1}
!4 = !{ptr @cm_context, !5, !"cm_context", i1 false, i1 false}
!5 = !{!"../arch/arm/mach-omap2/cm3xxx.c", i32 376, i32 29}
!6 = !{ptr @omap3xxx_cm_ll_data, !7, !"omap3xxx_cm_ll_data", i1 false, i1 false}
!7 = !{!"../arch/arm/mach-omap2/cm3xxx.c", i32 662, i32 32}
!8 = !{ptr @omap3xxx_cm_idlest_offs, !9, !"omap3xxx_cm_idlest_offs", i1 false, i1 false}
!9 = !{!"../arch/arm/mach-omap2/cm3xxx.c", i32 24, i32 17}
!10 = !{i32 1, !"wchar_size", i32 2}
!11 = !{i32 1, !"min_enum_size", i32 4}
!12 = !{i32 8, !"branch-target-enforcement", i32 0}
!13 = !{i32 8, !"sign-return-address", i32 0}
!14 = !{i32 8, !"sign-return-address-all", i32 0}
!15 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!19 = !{i64 2996710}
!20 = !{i64 2996292}
!21 = !{i32 0, i32 33}
