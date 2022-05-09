; ModuleID = '/llk/IR_all_yes/arch/arm/mach-omap2/cm2xxx.c_pt.bc'
source_filename = "../arch/arm/mach-omap2/cm2xxx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.clkdm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cm_ll_data = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.omap_domain_base = type { i32, ptr, i16 }
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
%struct.clk_omap_reg = type { ptr, i16, i8, i8 }

@omap2xxx_cm_idlest_offs = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c" $(,", [28 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@omap2_clkdm_operations = dso_local global { %struct.clkdm_ops, [32 x i8] } { %struct.clkdm_ops { ptr @omap2_clkdm_add_wkdep, ptr @omap2_clkdm_del_wkdep, ptr @omap2_clkdm_read_wkdep, ptr @omap2_clkdm_clear_all_wkdeps, ptr null, ptr null, ptr null, ptr null, ptr @omap2xxx_clkdm_sleep, ptr @omap2xxx_clkdm_wakeup, ptr @omap2xxx_clkdm_allow_idle, ptr @omap2xxx_clkdm_deny_idle, ptr @omap2xxx_clkdm_clk_enable, ptr @omap2xxx_clkdm_clk_disable, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@omap2xxx_cm_ll_data = internal constant { %struct.cm_ll_data, [40 x i8] } { %struct.cm_ll_data { ptr @omap2xxx_cm_split_idlest_reg, ptr @omap2xxx_cm_wait_module_ready, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@__exitcall_omap2xxx_cm_exit = internal global ptr @omap2xxx_cm_exit, section ".exitcall.exit", align 4
@cm_base = external dso_local local_unnamed_addr global %struct.omap_domain_base, align 4
@___asan_gen_.1 = private unnamed_addr constant [24 x i8] c"omap2xxx_cm_idlest_offs\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 35, i32 17 }
@___asan_gen_.4 = private unnamed_addr constant [23 x i8] c"omap2_clkdm_operations\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 311, i32 18 }
@___asan_gen_.7 = private unnamed_addr constant [20 x i8] c"omap2xxx_cm_ll_data\00", align 1
@___asan_gen_.8 = private constant [32 x i8] c"../arch/arm/mach-omap2/cm2xxx.c\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 385, i32 32 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @__exitcall_omap2xxx_cm_exit, ptr @omap2xxx_cm_exit, ptr @omap2xxx_cm_idlest_offs, ptr @omap2_clkdm_operations, ptr @omap2xxx_cm_ll_data], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap2xxx_cm_idlest_offs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap2_clkdm_operations to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap2xxx_cm_ll_data to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap2xxx_cm_set_dpll_disable_autoidle() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr2.i.i = getelementptr i8, ptr %0, i32 1328
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i) #5, !srcloc !17
  %2 = or i32 %1, 50331648
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr2.i4.i = getelementptr i8, ptr %3, i32 1328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i4.i, i32 %2) #5, !srcloc !18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap2xxx_cm_set_dpll_auto_low_power_stop() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr2.i.i = getelementptr i8, ptr %0, i32 1328
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i) #5, !srcloc !17
  %2 = and i32 %1, -50331649
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr2.i4.i = getelementptr i8, ptr %3, i32 1328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i4.i, i32 %2) #5, !srcloc !18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap2xxx_cm_set_apll54_disable_autoidle() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr2.i.i = getelementptr i8, ptr %0, i32 1328
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i) #5, !srcloc !17
  %2 = or i32 %1, -1073741824
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr2.i6.i = getelementptr i8, ptr %3, i32 1328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i6.i, i32 %2) #5, !srcloc !18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap2xxx_cm_set_apll54_auto_low_power_stop() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr2.i.i = getelementptr i8, ptr %0, i32 1328
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i) #5, !srcloc !17
  %2 = and i32 %1, 1073741823
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr2.i6.i = getelementptr i8, ptr %3, i32 1328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i6.i, i32 %2) #5, !srcloc !18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap2xxx_cm_set_apll96_disable_autoidle() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr2.i.i = getelementptr i8, ptr %0, i32 1328
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i) #5, !srcloc !17
  %2 = or i32 %1, 201326592
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr2.i6.i = getelementptr i8, ptr %3, i32 1328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i6.i, i32 %2) #5, !srcloc !18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap2xxx_cm_set_apll96_auto_low_power_stop() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr2.i.i = getelementptr i8, ptr %0, i32 1328
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i) #5, !srcloc !17
  %2 = and i32 %1, -201326593
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr2.i6.i = getelementptr i8, ptr %3, i32 1328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i6.i, i32 %2) #5, !srcloc !18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap2xxx_cm_apll54_enable() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr.i.i = getelementptr i8, ptr %0, i32 1280
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !17
  %2 = tail call i32 @llvm.bswap.i32(i32 %1) #5
  %and.i = and i32 %2, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry._omap2xxx_apll_enable.exit_crit_edge

entry._omap2xxx_apll_enable.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %_omap2xxx_apll_enable.exit

if.end.i:                                         ; preds = %entry
  %or.i = or i32 %2, 192
  %3 = tail call i32 @llvm.bswap.i32(i32 %or.i) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr.i1.i = getelementptr i8, ptr %4, i32 1280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1.i, i32 %3) #5, !srcloc !18
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end10.i.i.for.body.i.i_crit_edge, %if.end.i
  %i.021.i.i = phi i32 [ 0, %if.end.i ], [ %inc.i.i, %if.end10.i.i.for.body.i.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr2.i.i.i = getelementptr i8, ptr %5, i32 1312
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i.i) #5, !srcloc !17
  %7 = and i32 %6, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp7.i.i.not = icmp eq i32 %7, 0
  br i1 %cmp7.i.i.not, label %if.end10.i.i, label %for.body.i.i._omap2xxx_apll_enable.exit_crit_edge

for.body.i.i._omap2xxx_apll_enable.exit_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %_omap2xxx_apll_enable.exit

if.end10.i.i:                                     ; preds = %for.body.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748) #5
  %inc.i.i = add nuw nsw i32 %i.021.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 2000
  br i1 %exitcond.not.i.i, label %if.end10.i.i._omap2xxx_apll_enable.exit_crit_edge, label %if.end10.i.i.for.body.i.i_crit_edge

if.end10.i.i.for.body.i.i_crit_edge:              ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i

if.end10.i.i._omap2xxx_apll_enable.exit_crit_edge: ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %_omap2xxx_apll_enable.exit

_omap2xxx_apll_enable.exit:                       ; preds = %if.end10.i.i._omap2xxx_apll_enable.exit_crit_edge, %for.body.i.i._omap2xxx_apll_enable.exit_crit_edge, %entry._omap2xxx_apll_enable.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap2xxx_cm_apll96_enable() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr.i.i = getelementptr i8, ptr %0, i32 1280
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !17
  %2 = tail call i32 @llvm.bswap.i32(i32 %1) #5
  %and.i = and i32 %2, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry._omap2xxx_apll_enable.exit_crit_edge

entry._omap2xxx_apll_enable.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %_omap2xxx_apll_enable.exit

if.end.i:                                         ; preds = %entry
  %or.i = or i32 %2, 12
  %3 = tail call i32 @llvm.bswap.i32(i32 %or.i) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr.i1.i = getelementptr i8, ptr %4, i32 1280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1.i, i32 %3) #5, !srcloc !18
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end10.i.i.for.body.i.i_crit_edge, %if.end.i
  %i.021.i.i = phi i32 [ 0, %if.end.i ], [ %inc.i.i, %if.end10.i.i.for.body.i.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr2.i.i.i = getelementptr i8, ptr %5, i32 1312
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i.i) #5, !srcloc !17
  %7 = and i32 %6, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp7.i.i.not = icmp eq i32 %7, 0
  br i1 %cmp7.i.i.not, label %if.end10.i.i, label %for.body.i.i._omap2xxx_apll_enable.exit_crit_edge

for.body.i.i._omap2xxx_apll_enable.exit_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %_omap2xxx_apll_enable.exit

if.end10.i.i:                                     ; preds = %for.body.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748) #5
  %inc.i.i = add nuw nsw i32 %i.021.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 2000
  br i1 %exitcond.not.i.i, label %if.end10.i.i._omap2xxx_apll_enable.exit_crit_edge, label %if.end10.i.i.for.body.i.i_crit_edge

if.end10.i.i.for.body.i.i_crit_edge:              ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i

if.end10.i.i._omap2xxx_apll_enable.exit_crit_edge: ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %_omap2xxx_apll_enable.exit

_omap2xxx_apll_enable.exit:                       ; preds = %if.end10.i.i._omap2xxx_apll_enable.exit_crit_edge, %for.body.i.i._omap2xxx_apll_enable.exit_crit_edge, %entry._omap2xxx_apll_enable.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap2xxx_cm_apll54_disable() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr.i.i = getelementptr i8, ptr %0, i32 1280
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !17
  %2 = and i32 %1, 1073741823
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr.i2.i = getelementptr i8, ptr %3, i32 1280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i, i32 %2) #5, !srcloc !18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap2xxx_cm_apll96_disable() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr.i.i = getelementptr i8, ptr %0, i32 1280
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !17
  %2 = and i32 %1, -201326593
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr.i2.i = getelementptr i8, ptr %3, i32 1280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i, i32 %2) #5, !srcloc !18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap2xxx_cm_wait_module_ready(i8 zeroext %part, i16 noundef signext %prcm_mod, i16 noundef zeroext %idlest_id, i8 noundef zeroext %idlest_shift) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i16 %idlest_id, -5
  call void @__sanitizer_cov_trace_const_cmp2(i16 -4, i16 %0)
  %1 = icmp ult i16 %0, -4
  br i1 %1, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = zext i16 %idlest_id to i32
  %sub = add nsw i32 %conv, -1
  %arrayidx = getelementptr [4 x i8], ptr @omap2xxx_cm_idlest_offs, i32 0, i32 %sub
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv3 = zext i8 %idlest_shift to i32
  %shl = shl nuw i32 1, %conv3
  %conv.i = sext i16 %prcm_mod to i32
  %conv1.i = zext i8 %3 to i32
  br label %for.body

for.body:                                         ; preds = %if.end10.for.body_crit_edge, %if.end
  %i.021 = phi i32 [ 0, %if.end ], [ %inc, %if.end10.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 %conv.i
  %add.ptr2.i = getelementptr i8, ptr %add.ptr.i, i32 %conv1.i
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #5, !srcloc !17
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #5
  %and = and i32 %6, %shl
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %shl)
  %cmp7 = icmp eq i32 %and, %shl
  br i1 %cmp7, label %for.body.cleanup_crit_edge, label %if.end10

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end10:                                         ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 214748) #5
  %inc = add nuw nsw i32 %i.021, 1
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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap2_clkdm_add_wkdep(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap2_clkdm_del_wkdep(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap2_clkdm_read_wkdep(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap2_clkdm_clear_all_wkdeps(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap2xxx_clkdm_sleep(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap2xxx_clkdm_wakeup(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @omap2xxx_clkdm_allow_idle(ptr nocapture noundef readonly %clkdm) #0 align 64 {
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
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i.i) #5, !srcloc !17
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #5
  %neg.i.i = xor i32 %conv, -1
  %and.i.i = and i32 %8, %neg.i.i
  %9 = tail call i32 @llvm.cttz.i32(i32 %conv, i1 false) #5, !range !19
  %shl.i.i = shl nuw i32 1, %9
  %or.i.i = or i32 %and.i.i, %shl.i.i
  %10 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr.i7.i.i = getelementptr i8, ptr %11, i32 %conv.i.i.i
  %add.ptr2.i8.i.i = getelementptr i8, ptr %add.ptr.i7.i.i, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i8.i.i, i32 %10) #5, !srcloc !18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @omap2xxx_clkdm_deny_idle(ptr nocapture noundef readonly %clkdm) #0 align 64 {
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
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i.i) #5, !srcloc !17
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #5
  %neg.i.i = xor i32 %conv, -1
  %and.i.i = and i32 %8, %neg.i.i
  %9 = tail call i32 @llvm.bswap.i32(i32 %and.i.i) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr.i7.i.i = getelementptr i8, ptr %10, i32 %conv.i.i.i
  %add.ptr2.i8.i.i = getelementptr i8, ptr %add.ptr.i7.i.i, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i8.i.i, i32 %9) #5, !srcloc !18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap2xxx_clkdm_clk_enable(ptr noundef %clkdm) #0 align 64 {
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
  %pwrdm = getelementptr inbounds %struct.clockdomain, ptr %clkdm, i32 0, i32 1
  %2 = ptrtoint ptr %pwrdm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pwrdm, align 4
  %prcm_offs = getelementptr inbounds %struct.powerdomain, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %prcm_offs to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %prcm_offs, align 8
  %conv = zext i16 %1 to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %conv.i.i = sext i16 %5 to i32
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 %conv.i.i
  %add.ptr2.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 72
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i) #5, !srcloc !17
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #5
  %and.i = and i32 %8, %conv
  %9 = tail call i32 @llvm.cttz.i32(i32 %conv, i1 true) #5, !range !19
  %shr.i = lshr i32 %and.i, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %shr.i)
  %cmp.i = icmp eq i32 %shr.i, 1
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %land.lhs.true

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end
  %flags = getelementptr inbounds %struct.clockdomain, ptr %clkdm, i32 0, i32 3
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %flags, align 2
  %12 = and i8 %11, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool4.not = icmp eq i8 %12, 0
  br i1 %tobool4.not, label %land.lhs.true.cleanup_crit_edge, label %if.then5

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then5:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %call6 = tail call i32 @omap2xxx_clkdm_wakeup(ptr noundef %clkdm) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap2xxx_clkdm_clk_disable(ptr noundef %clkdm) #0 align 64 {
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
  %pwrdm = getelementptr inbounds %struct.clockdomain, ptr %clkdm, i32 0, i32 1
  %2 = ptrtoint ptr %pwrdm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pwrdm, align 4
  %prcm_offs = getelementptr inbounds %struct.powerdomain, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %prcm_offs to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %prcm_offs, align 8
  %conv = zext i16 %1 to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %conv.i.i = sext i16 %5 to i32
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 %conv.i.i
  %add.ptr2.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 72
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i) #5, !srcloc !17
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #5
  %and.i = and i32 %8, %conv
  %9 = tail call i32 @llvm.cttz.i32(i32 %conv, i1 true) #5, !range !19
  %shr.i = lshr i32 %and.i, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %shr.i)
  %cmp.i = icmp eq i32 %shr.i, 1
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %land.lhs.true

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end
  %flags = getelementptr inbounds %struct.clockdomain, ptr %clkdm, i32 0, i32 3
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %flags, align 2
  %12 = and i8 %11, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool4.not = icmp eq i8 %12, 0
  br i1 %tobool4.not, label %land.lhs.true.cleanup_crit_edge, label %if.then5

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then5:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %call6 = tail call i32 @omap2xxx_clkdm_sleep(ptr noundef %clkdm) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap2xxx_cm_fclks_active() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr.i = getelementptr i8, ptr %0, i32 512
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr2.i = getelementptr i8, ptr %2, i32 516
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #5, !srcloc !17
  %4 = or i32 %3, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp ne i32 %4, 0
  %cond = zext i1 %tobool.not to i32
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap2xxx_cm_mpu_retention_allowed() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr.i = getelementptr i8, ptr %0, i32 512
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !17
  %2 = and i32 %1, 16803332
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr2.i = getelementptr i8, ptr %3, i32 516
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #5, !srcloc !17
  %5 = lshr i32 %4, 26
  %.lobit = and i32 %5, 1
  %6 = xor i32 %.lobit, 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %6, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap2xxx_cm_get_core_clk_src() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr2.i = getelementptr i8, ptr %0, i32 1348
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #5, !srcloc !17
  %2 = lshr i32 %1, 24
  %and = and i32 %2, 3
  ret i32 %and
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap2xxx_cm_get_core_pll_config() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr2.i = getelementptr i8, ptr %0, i32 1348
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #5, !srcloc !17
  %2 = tail call i32 @llvm.bswap.i32(i32 %1) #5
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap2xxx_cm_set_mod_dividers(i32 noundef %mpu, i32 noundef %dsp, i32 noundef %gfx, i32 noundef %core, i32 noundef %mdm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.bswap.i32(i32 %mpu) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr2.i = getelementptr i8, ptr %1, i32 320
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %0) #5, !srcloc !18
  %2 = tail call i32 @llvm.bswap.i32(i32 %dsp) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr2.i3 = getelementptr i8, ptr %3, i32 2112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i3, i32 %2) #5, !srcloc !18
  %4 = tail call i32 @llvm.bswap.i32(i32 %gfx) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr2.i5 = getelementptr i8, ptr %5, i32 832
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i5, i32 %4) #5, !srcloc !18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr2.i7 = getelementptr i8, ptr %6, i32 576
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i7) #5, !srcloc !17
  %8 = lshr i32 %7, 8
  %and = and i32 %8, 8192
  %or = or i32 %and, %core
  %9 = tail call i32 @llvm.bswap.i32(i32 %or) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr2.i9 = getelementptr i8, ptr %10, i32 576
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i9, i32 %9) #5, !srcloc !18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mdm)
  %tobool.not = icmp eq i32 %mdm, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %11 = tail call i32 @llvm.bswap.i32(i32 %mdm) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr2.i11 = getelementptr i8, ptr %12, i32 3136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i11, i32 %11) #5, !srcloc !18
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap2xxx_cm_init(ptr nocapture noundef readnone %data) local_unnamed_addr #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @cm_register(ptr noundef nonnull @omap2xxx_cm_ll_data) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cm_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @omap2xxx_cm_exit() #2 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 @cm_unregister(ptr noundef nonnull @omap2xxx_cm_ll_data) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cm_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap2xxx_cm_split_idlest_reg(ptr nocapture noundef readonly %idlest_reg, ptr nocapture noundef writeonly %prcm_inst, ptr nocapture noundef writeonly %idlest_reg_id) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %offset = getelementptr inbounds %struct.clk_omap_reg, ptr %idlest_reg, i32 0, i32 1
  %0 = ptrtoint ptr %offset to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %offset, align 4
  %2 = trunc i16 %1 to i8
  %3 = add i8 %2, -32
  %4 = call i8 @llvm.fshl.i8(i8 %3, i8 %3, i8 6)
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %4)
  %5 = icmp ult i8 %4, 4
  br i1 %5, label %switch.lookup, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %switch.offset = add i8 %4, 1
  %6 = ptrtoint ptr %idlest_reg_id to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %switch.offset, ptr %idlest_reg_id, align 1
  %7 = ptrtoint ptr %offset to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %offset, align 4
  %9 = and i16 %8, -256
  %10 = ptrtoint ptr %prcm_inst to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %prcm_inst, align 2
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %switch.lookup ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.fshl.i8(i8, i8, i8) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !{ptr @omap2_clkdm_operations, !1, !"omap2_clkdm_operations", i1 false, i1 false}
!1 = !{!"../arch/arm/mach-omap2/cm2xxx.c", i32 311, i32 18}
!2 = !{ptr @__exitcall_omap2xxx_cm_exit, !3, !"__exitcall_omap2xxx_cm_exit", i1 false, i1 false}
!3 = !{!"../arch/arm/mach-omap2/cm2xxx.c", i32 399, i32 1}
!4 = !{ptr @omap2xxx_cm_idlest_offs, !5, !"omap2xxx_cm_idlest_offs", i1 false, i1 false}
!5 = !{!"../arch/arm/mach-omap2/cm2xxx.c", i32 35, i32 17}
!6 = !{ptr @omap2xxx_cm_ll_data, !7, !"omap2xxx_cm_ll_data", i1 false, i1 false}
!7 = !{!"../arch/arm/mach-omap2/cm2xxx.c", i32 385, i32 32}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 8, !"branch-target-enforcement", i32 0}
!11 = !{i32 8, !"sign-return-address", i32 0}
!12 = !{i32 8, !"sign-return-address-all", i32 0}
!13 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!17 = !{i64 2983954}
!18 = !{i64 2983536}
!19 = !{i32 0, i32 33}
