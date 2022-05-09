; ModuleID = '/llk/IR_all_yes/arch/arm/mach-omap2/prm2xxx.c_pt.bc'
source_filename = "../arch/arm/mach-omap2/prm2xxx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pwrdm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.prm_ll_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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

@omap2_pwrdm_operations = dso_local global { %struct.pwrdm_ops, [44 x i8] } { %struct.pwrdm_ops { ptr @omap2xxx_pwrdm_set_next_pwrst, ptr @omap2xxx_pwrdm_read_next_pwrst, ptr @omap2xxx_pwrdm_read_pwrst, ptr null, ptr @omap2_pwrdm_set_logic_retst, ptr @omap2_pwrdm_set_mem_onst, ptr @omap2_pwrdm_set_mem_retst, ptr null, ptr null, ptr null, ptr @omap2_pwrdm_read_mem_pwrst, ptr null, ptr @omap2_pwrdm_read_mem_retst, ptr null, ptr null, ptr null, ptr null, ptr @omap2_pwrdm_wait_transition, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@omap2xxx_prm_ll_data = internal global { %struct.prm_ll_data, [52 x i8] } { %struct.prm_ll_data { ptr @omap2xxx_prm_read_reset_sources, ptr null, ptr null, ptr null, ptr @omap2_prm_assert_hardreset, ptr @omap2_prm_deassert_hardreset, ptr @omap2_prm_is_hardreset_asserted, ptr @omap2xxx_prm_dpll_reset, ptr @omap2xxx_prm_clear_mod_irqs, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__exitcall_omap2xxx_prm_exit = internal global ptr @omap2xxx_prm_exit, section ".exitcall.exit", align 4
@prm_base = external dso_local local_unnamed_addr global %struct.omap_domain_base, align 4
@switch.table.omap2xxx_pwrdm_read_next_pwrst = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 0, i32 3, i32 1], [20 x i8] zeroinitializer }, align 32
@switch.table.omap2xxx_pwrdm_read_pwrst = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 0, i32 3, i32 1], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 3]
@___asan_gen_.1 = private unnamed_addr constant [23 x i8] c"omap2_pwrdm_operations\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 195, i32 18 }
@___asan_gen_.4 = private unnamed_addr constant [21 x i8] c"omap2xxx_prm_ll_data\00", align 1
@___asan_gen_.5 = private constant [33 x i8] c"../arch/arm/mach-omap2/prm2xxx.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 211, i32 27 }
@___asan_gen_.7 = private unnamed_addr constant [44 x i8] c"switch.table.omap2xxx_pwrdm_read_next_pwrst\00", align 1
@___asan_gen_.8 = private unnamed_addr constant [39 x i8] c"switch.table.omap2xxx_pwrdm_read_pwrst\00", align 1
@llvm.compiler.used = appending global [6 x ptr] [ptr @__exitcall_omap2xxx_prm_exit, ptr @omap2xxx_prm_exit, ptr @omap2_pwrdm_operations, ptr @omap2xxx_prm_ll_data, ptr @switch.table.omap2xxx_pwrdm_read_next_pwrst, ptr @switch.table.omap2xxx_pwrdm_read_pwrst], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap2_pwrdm_operations to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap2xxx_prm_ll_data to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.omap2xxx_pwrdm_read_next_pwrst to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.omap2xxx_pwrdm_read_pwrst to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap2xxx_clkdm_sleep(ptr nocapture noundef readonly %clkdm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %pwrdm = getelementptr inbounds %struct.clockdomain, ptr %clkdm, i32 0, i32 1
  %0 = ptrtoint ptr %pwrdm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pwrdm, align 4
  %prcm_offs = getelementptr inbounds %struct.powerdomain, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %prcm_offs to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %prcm_offs, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %conv.i.i.i = sext i16 %3 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %4, i32 %conv.i.i.i
  %add.ptr2.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 224
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i.i) #4, !srcloc !17
  %6 = or i32 %5, 1024
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %add.ptr.i2.i.i = getelementptr i8, ptr %7, i32 %conv.i.i.i
  %add.ptr2.i4.i.i = getelementptr i8, ptr %add.ptr.i2.i.i, i32 224
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i4.i.i, i32 %6) #4, !srcloc !18
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap2xxx_clkdm_wakeup(ptr nocapture noundef readonly %clkdm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %pwrdm = getelementptr inbounds %struct.clockdomain, ptr %clkdm, i32 0, i32 1
  %0 = ptrtoint ptr %pwrdm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pwrdm, align 4
  %prcm_offs = getelementptr inbounds %struct.powerdomain, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %prcm_offs to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %prcm_offs, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %conv.i.i.i = sext i16 %3 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %4, i32 %conv.i.i.i
  %add.ptr2.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 224
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i.i) #4, !srcloc !17
  %6 = and i32 %5, -1025
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %add.ptr.i2.i.i = getelementptr i8, ptr %7, i32 %conv.i.i.i
  %add.ptr2.i4.i.i = getelementptr i8, ptr %add.ptr.i2.i.i, i32 224
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i4.i.i, i32 %6) #4, !srcloc !18
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap2xxx_pwrdm_set_next_pwrst(ptr nocapture noundef readonly %pwrdm, i8 noundef zeroext %pwrst) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i8 %pwrst to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i8 %pwrst, label %entry.cleanup_crit_edge [
    i8 0, label %entry.sw.epilog_crit_edge
    i8 1, label %sw.bb1
    i8 3, label %sw.bb2
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %sw.bb1, %entry.sw.epilog_crit_edge
  %omap24xx_pwrst.0 = phi i32 [ 0, %sw.bb2 ], [ 1, %sw.bb1 ], [ 3, %entry.sw.epilog_crit_edge ]
  %prcm_offs = getelementptr inbounds %struct.powerdomain, ptr %pwrdm, i32 0, i32 2
  %1 = ptrtoint ptr %prcm_offs to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %prcm_offs, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %conv.i.i = sext i16 %2 to i32
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 %conv.i.i
  %add.ptr2.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 224
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i) #4, !srcloc !17
  %5 = and i32 %4, -50331649
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %or.i = or i32 %6, %omap24xx_pwrst.0
  %7 = tail call i32 @llvm.bswap.i32(i32 %or.i) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %add.ptr.i2.i = getelementptr i8, ptr %8, i32 %conv.i.i
  %add.ptr2.i4.i = getelementptr i8, ptr %add.ptr.i2.i, i32 224
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i4.i, i32 %7) #4, !srcloc !18
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap2xxx_pwrdm_read_next_pwrst(ptr nocapture noundef readonly %pwrdm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %prcm_offs = getelementptr inbounds %struct.powerdomain, ptr %pwrdm, i32 0, i32 2
  %0 = ptrtoint ptr %prcm_offs to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %prcm_offs, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %conv.i.i = sext i16 %1 to i32
  %add.ptr.i.i = getelementptr i8, ptr %2, i32 %conv.i.i
  %add.ptr2.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 224
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i) #4, !srcloc !17
  %4 = lshr i32 %3, 24
  %5 = trunc i32 %4 to i2
  %switch.tableidx = add i2 %5, 1
  %6 = sext i2 %switch.tableidx to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %6)
  %.not = icmp eq i2 %switch.tableidx, -1
  br i1 %.not, label %entry.omap2xxx_pwrst_to_common_pwrst.exit_crit_edge, label %switch.lookup

entry.omap2xxx_pwrst_to_common_pwrst.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %omap2xxx_pwrst_to_common_pwrst.exit

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %7 = zext i2 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.omap2xxx_pwrdm_read_next_pwrst, i32 0, i32 %7
  %8 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %8)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %omap2xxx_pwrst_to_common_pwrst.exit

omap2xxx_pwrst_to_common_pwrst.exit:              ; preds = %switch.lookup, %entry.omap2xxx_pwrst_to_common_pwrst.exit_crit_edge
  %retval.0.i = phi i32 [ %switch.load, %switch.lookup ], [ -22, %entry.omap2xxx_pwrst_to_common_pwrst.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap2xxx_pwrdm_read_pwrst(ptr nocapture noundef readonly %pwrdm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %prcm_offs = getelementptr inbounds %struct.powerdomain, ptr %pwrdm, i32 0, i32 2
  %0 = ptrtoint ptr %prcm_offs to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %prcm_offs, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %conv.i.i = sext i16 %1 to i32
  %add.ptr.i.i = getelementptr i8, ptr %2, i32 %conv.i.i
  %add.ptr2.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 228
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i) #4, !srcloc !17
  %4 = lshr i32 %3, 24
  %5 = trunc i32 %4 to i2
  %switch.tableidx = add i2 %5, 1
  %6 = sext i2 %switch.tableidx to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %6)
  %.not = icmp eq i2 %switch.tableidx, -1
  br i1 %.not, label %entry.omap2xxx_pwrst_to_common_pwrst.exit_crit_edge, label %switch.lookup

entry.omap2xxx_pwrst_to_common_pwrst.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %omap2xxx_pwrst_to_common_pwrst.exit

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %7 = zext i2 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.omap2xxx_pwrdm_read_pwrst, i32 0, i32 %7
  %8 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %8)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %omap2xxx_pwrst_to_common_pwrst.exit

omap2xxx_pwrst_to_common_pwrst.exit:              ; preds = %switch.lookup, %entry.omap2xxx_pwrst_to_common_pwrst.exit_crit_edge
  %retval.0.i = phi i32 [ %switch.load, %switch.lookup ], [ -22, %entry.omap2xxx_pwrst_to_common_pwrst.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap2_pwrdm_set_logic_retst(ptr noundef, i8 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap2_pwrdm_set_mem_onst(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap2_pwrdm_set_mem_retst(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap2_pwrdm_read_mem_pwrst(ptr noundef, i8 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap2_pwrdm_read_mem_retst(ptr noundef, i8 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap2_pwrdm_wait_transition(ptr noundef) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap2xxx_prm_init(ptr nocapture noundef readnone %data) local_unnamed_addr #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @prm_register(ptr noundef nonnull @omap2xxx_prm_ll_data) #4
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prm_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @omap2xxx_prm_exit() #2 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 @prm_unregister(ptr noundef nonnull @omap2xxx_prm_ll_data) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prm_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap2xxx_prm_read_reset_sources() #0 align 64 {
while.end:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %add.ptr2.i = getelementptr i8, ptr %0, i32 1112
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #4, !srcloc !17
  %2 = tail call i32 @llvm.bswap.i32(i32 %1) #4
  %and.4 = lshr i32 %2, 1
  %3 = and i32 %and.4, 16
  %and.3 = lshr i32 %2, 1
  %4 = and i32 %and.3, 8
  %and.2 = lshr i32 %2, 1
  %5 = and i32 %and.2, 4
  %r.1.1 = and i32 %2, 3
  %r.1.2 = or i32 %5, %r.1.1
  %r.1.3 = or i32 %4, %r.1.2
  %r.1.4 = or i32 %3, %r.1.3
  %and.5 = lshr i32 %2, 1
  %6 = and i32 %and.5, 32
  %r.1.5 = or i32 %6, %r.1.4
  ret i32 %r.1.5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap2_prm_assert_hardreset(i8 noundef zeroext, i8 noundef zeroext, i16 noundef signext, i16 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap2_prm_deassert_hardreset(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i16 noundef signext, i16 noundef zeroext, i16 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap2_prm_is_hardreset_asserted(i8 noundef zeroext, i8 noundef zeroext, i16 noundef signext, i16 noundef zeroext) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @omap2xxx_prm_dpll_reset() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %add.ptr2.i.i.i = getelementptr i8, ptr %0, i32 1104
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i.i) #4, !srcloc !17
  %2 = or i32 %1, 67108864
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %add.ptr2.i4.i.i = getelementptr i8, ptr %3, i32 1104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i4.i.i, i32 %2) #4, !srcloc !18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %add.ptr2.i = getelementptr i8, ptr %4, i32 1104
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #4, !srcloc !17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap2xxx_prm_clear_mod_irqs(i16 noundef signext %module, i8 noundef zeroext %regs, i32 noundef %wkst_mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %conv.i = sext i16 %module to i32
  %add.ptr.i = getelementptr i8, ptr %0, i32 %conv.i
  %conv1.i = zext i8 %regs to i32
  %add.ptr2.i = getelementptr i8, ptr %add.ptr.i, i32 %conv1.i
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #4, !srcloc !17
  %2 = tail call i32 @llvm.bswap.i32(i32 %1) #4
  %and = and i32 %2, %wkst_mask
  %3 = tail call i32 @llvm.bswap.i32(i32 %and) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %add.ptr.i6 = getelementptr i8, ptr %4, i32 %conv.i
  %add.ptr2.i8 = getelementptr i8, ptr %add.ptr.i6, i32 %conv1.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i8, i32 %3) #4, !srcloc !18
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !{ptr @omap2_pwrdm_operations, !1, !"omap2_pwrdm_operations", i1 false, i1 false}
!1 = !{!"../arch/arm/mach-omap2/prm2xxx.c", i32 195, i32 18}
!2 = !{ptr @__exitcall_omap2xxx_prm_exit, !3, !"__exitcall_omap2xxx_prm_exit", i1 false, i1 false}
!3 = !{!"../arch/arm/mach-omap2/prm2xxx.c", i32 229, i32 1}
!4 = !{ptr @omap2xxx_prm_ll_data, !5, !"omap2xxx_prm_ll_data", i1 false, i1 false}
!5 = !{!"../arch/arm/mach-omap2/prm2xxx.c", i32 211, i32 27}
!6 = distinct !{null, !7, !"omap2xxx_prm_reset_src_map", i1 false, i1 false}
!7 = !{!"../arch/arm/mach-omap2/prm2xxx.c", i32 38, i32 33}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 8, !"branch-target-enforcement", i32 0}
!11 = !{i32 8, !"sign-return-address", i32 0}
!12 = !{i32 8, !"sign-return-address-all", i32 0}
!13 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!17 = !{i64 1252040}
!18 = !{i64 1251622}
