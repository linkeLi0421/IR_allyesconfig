; ModuleID = '/llk/IR_all_yes/drivers/clk/tegra/clk-periph-gate.c_pt.bc'
source_filename = "../drivers/clk/tegra/clk-periph-gate.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.tegra_clk_periph_regs = type { i32, i32, i32, i32, i32, i32 }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.tegra_clk_periph_gate = type { i32, %struct.clk_hw, ptr, i8, i32, ptr, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }

@tegra_clk_periph_gate_ops = dso_local constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @clk_periph_enable, ptr @clk_periph_disable, ptr @clk_periph_is_enabled, ptr @clk_periph_disable_unused, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@tegra_clk_register_periph_gate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 151, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013%s: could not allocate periph gate clk\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"tegra_clk_register_periph_gate\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/clk/tegra/clk-periph-gate.c\00", [60 x i8] zeroinitializer }, align 32
@tegra_clk_register_periph_gate._entry_ptr = internal global ptr @tegra_clk_register_periph_gate._entry, section ".printk_index", align 4
@periph_ref_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.1 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"periph_ref_lock\00", [16 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.4 = private unnamed_addr constant [26 x i8] c"tegra_clk_periph_gate_ops\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 129, i32 22 }
@___asan_gen_.7 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 151, i32 3 }
@___asan_gen_.19 = private unnamed_addr constant [16 x i8] c"periph_ref_lock\00", align 1
@___asan_gen_.22 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.23 = private constant [39 x i8] c"../drivers/clk/tegra/clk-periph-gate.c\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 16, i32 8 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @tegra_clk_register_periph_gate._entry, ptr @tegra_clk_register_periph_gate._entry_ptr, ptr @tegra_clk_periph_gate_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @periph_ref_lock, ptr @.str.3], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_clk_periph_gate_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_clk_register_periph_gate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @periph_ref_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_periph_enable(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @periph_ref_lock) #6
  %enable_refcnt = getelementptr i8, ptr %hw, i32 24
  %0 = ptrtoint ptr %enable_refcnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %enable_refcnt, align 4
  %clk_num = getelementptr i8, ptr %hw, i32 20
  %2 = ptrtoint ptr %clk_num to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %clk_num, align 4
  %arrayidx = getelementptr i32, ptr %1, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  %6 = ptrtoint ptr %clk_num to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %clk_num, align 4
  %rem14.i = and i32 %7, 31
  %shl.i = shl nuw i32 1, %rem14.i
  %8 = tail call i32 @llvm.bswap.i32(i32 %shl.i) #6
  %clk_base.i = getelementptr i8, ptr %hw, i32 12
  %9 = ptrtoint ptr %clk_base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %clk_base.i, align 4
  %regs.i = getelementptr i8, ptr %hw, i32 28
  %11 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs.i, align 4
  %enb_set_reg.i = getelementptr inbounds %struct.tegra_clk_periph_regs, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %enb_set_reg.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %enb_set_reg.i, align 4
  %add.ptr1.i = getelementptr i8, ptr %10, i32 %14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i, i32 %8) #6, !srcloc !20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 429496) #6
  %flags.i = getelementptr i8, ptr %hw, i32 16
  %16 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %flags.i, align 4
  %18 = and i8 %17, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i = icmp eq i8 %18, 0
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %if.then.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %clk_base.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %clk_base.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %20, i32 1364
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 0) #6, !srcloc !20
  %21 = ptrtoint ptr %clk_base.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %clk_base.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %22, i32 1364
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 16384) #6, !srcloc !20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 214748) #6
  %24 = ptrtoint ptr %clk_base.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %clk_base.i, align 4
  %add.ptr7.i = getelementptr i8, ptr %25, i32 1364
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i, i32 0) #6, !srcloc !20
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @periph_ref_lock, i32 noundef %call3) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @clk_periph_disable(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @periph_ref_lock) #6
  %enable_refcnt = getelementptr i8, ptr %hw, i32 24
  %0 = ptrtoint ptr %enable_refcnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %enable_refcnt, align 4
  %clk_num = getelementptr i8, ptr %hw, i32 20
  %2 = ptrtoint ptr %clk_num to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %clk_num, align 4
  %arrayidx = getelementptr i32, ptr %1, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %do.end17, label %entry.if.end_crit_edge, !prof !21

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end17:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 103, i32 noundef 9, ptr noundef null) #6
  br label %if.end

if.end:                                           ; preds = %do.end17, %entry.if.end_crit_edge
  %6 = ptrtoint ptr %enable_refcnt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %enable_refcnt, align 4
  %8 = ptrtoint ptr %clk_num to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %clk_num, align 4
  %arrayidx32 = getelementptr i32, ptr %7, i32 %9
  %10 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx32, align 4
  %dec = add i32 %11, -1
  store i32 %dec, ptr %arrayidx32, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp33 = icmp eq i32 %dec, 0
  br i1 %cmp33, label %if.then35, label %if.end.if.end36_crit_edge

if.end.if.end36_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36

if.then35:                                        ; preds = %if.end
  %flags.i = getelementptr i8, ptr %hw, i32 16
  %12 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %flags.i, align 4
  %14 = and i8 %13, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.i = icmp eq i8 %14, 0
  br i1 %tobool.not.i, label %if.then35.clk_periph_disable_locked.exit_crit_edge, label %if.then.i

if.then35.clk_periph_disable_locked.exit_crit_edge: ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #8
  br label %clk_periph_disable_locked.exit

if.then.i:                                        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 @tegra_read_chipid() #6
  br label %clk_periph_disable_locked.exit

clk_periph_disable_locked.exit:                   ; preds = %if.then.i, %if.then35.clk_periph_disable_locked.exit_crit_edge
  %15 = ptrtoint ptr %clk_num to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %clk_num, align 4
  %rem5.i = and i32 %16, 31
  %shl.i = shl nuw i32 1, %rem5.i
  %17 = tail call i32 @llvm.bswap.i32(i32 %shl.i) #6
  %clk_base.i = getelementptr i8, ptr %hw, i32 12
  %18 = ptrtoint ptr %clk_base.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %clk_base.i, align 4
  %regs.i = getelementptr i8, ptr %hw, i32 28
  %20 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs.i, align 4
  %enb_clr_reg.i = getelementptr inbounds %struct.tegra_clk_periph_regs, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %enb_clr_reg.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %enb_clr_reg.i, align 4
  %add.ptr1.i = getelementptr i8, ptr %19, i32 %23
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i, i32 %17) #6, !srcloc !20
  br label %if.end36

if.end36:                                         ; preds = %clk_periph_disable_locked.exit, %if.end.if.end36_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @periph_ref_lock, i32 noundef %call3) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_periph_is_enabled(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %clk_base = getelementptr i8, ptr %hw, i32 12
  %0 = ptrtoint ptr %clk_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk_base, align 4
  %regs = getelementptr i8, ptr %hw, i32 28
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %add.ptr1 = getelementptr i8, ptr %1, i32 %5
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #6, !srcloc !22
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %clk_num = getelementptr i8, ptr %hw, i32 20
  %8 = ptrtoint ptr %clk_num to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %clk_num, align 4
  %rem26 = and i32 %9, 31
  %10 = lshr i32 %7, %rem26
  %11 = and i32 %10, 1
  %flags = getelementptr i8, ptr %hw, i32 16
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %flags, align 4
  %14 = and i8 %13, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool4.not = icmp eq i8 %14, 0
  br i1 %tobool4.not, label %if.then5, label %entry.if.end19_crit_edge

entry.if.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

if.then5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %clk_base to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %clk_base, align 4
  %17 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs, align 4
  %rst_reg = getelementptr inbounds %struct.tegra_clk_periph_regs, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %rst_reg to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rst_reg, align 4
  %add.ptr9 = getelementptr i8, ptr %16, i32 %20
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9) #6, !srcloc !22
  %22 = tail call i32 @llvm.bswap.i32(i32 %21)
  %23 = ptrtoint ptr %clk_num to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %clk_num, align 4
  %rem1327 = and i32 %24, 31
  %shl14 = shl nuw i32 1, %rem1327
  %and15 = and i32 %shl14, %22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  %spec.select28 = select i1 %tobool16.not, i32 %11, i32 0
  br label %if.end19

if.end19:                                         ; preds = %if.then5, %entry.if.end19_crit_edge
  %state.1 = phi i32 [ %11, %entry.if.end19_crit_edge ], [ %spec.select28, %if.then5 ]
  ret i32 %state.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @clk_periph_disable_unused(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @periph_ref_lock) #6
  %enable_refcnt = getelementptr i8, ptr %hw, i32 24
  %0 = ptrtoint ptr %enable_refcnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %enable_refcnt, align 4
  %clk_num = getelementptr i8, ptr %hw, i32 20
  %2 = ptrtoint ptr %clk_num to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %clk_num, align 4
  %arrayidx = getelementptr i32, ptr %1, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  %flags.i = getelementptr i8, ptr %hw, i32 16
  %6 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %flags.i, align 4
  %8 = and i8 %7, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i = icmp eq i8 %8, 0
  br i1 %tobool.not.i, label %if.then.clk_periph_disable_locked.exit_crit_edge, label %if.then.i

if.then.clk_periph_disable_locked.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %clk_periph_disable_locked.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 @tegra_read_chipid() #6
  br label %clk_periph_disable_locked.exit

clk_periph_disable_locked.exit:                   ; preds = %if.then.i, %if.then.clk_periph_disable_locked.exit_crit_edge
  %9 = ptrtoint ptr %clk_num to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %clk_num, align 4
  %rem5.i = and i32 %10, 31
  %shl.i = shl nuw i32 1, %rem5.i
  %11 = tail call i32 @llvm.bswap.i32(i32 %shl.i) #6
  %clk_base.i = getelementptr i8, ptr %hw, i32 12
  %12 = ptrtoint ptr %clk_base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %clk_base.i, align 4
  %regs.i = getelementptr i8, ptr %hw, i32 28
  %14 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs.i, align 4
  %enb_clr_reg.i = getelementptr inbounds %struct.tegra_clk_periph_regs, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %enb_clr_reg.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %enb_clr_reg.i, align 4
  %add.ptr1.i = getelementptr i8, ptr %13, i32 %17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i, i32 %11) #6, !srcloc !20
  br label %if.end

if.end:                                           ; preds = %clk_periph_disable_locked.exit, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @periph_ref_lock, i32 noundef %call3) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @tegra_clk_register_periph_gate(ptr noundef %name, ptr noundef %parent_name, i8 noundef zeroext %gate_flags, ptr noundef %clk_base, i32 noundef %flags, i32 noundef %clk_num, ptr noundef %enable_refcnt) local_unnamed_addr #0 align 64 {
entry:
  %parent_name.addr = alloca ptr, align 4
  %init = alloca %struct.clk_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %parent_name.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %parent_name, ptr %parent_name.addr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init) #6
  %1 = getelementptr inbounds i8, ptr %init, i32 12
  %2 = call ptr @memset(ptr %1, i32 255, i32 12)
  %call = tail call ptr @get_reg_bank(i32 noundef %clk_num) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 36) #9
  %tobool3.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool3.not, label %do.end, label %if.end7

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #10
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %4 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %name, ptr %init, align 4
  %flags9 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 6
  %5 = ptrtoint ptr %flags9 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %flags, ptr %flags9, align 4
  %6 = ptrtoint ptr %parent_name.addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent_name.addr, align 4
  %tobool10.not = icmp eq ptr %7, null
  %parent_name.addr. = select i1 %tobool10.not, ptr null, ptr %parent_name.addr
  %parent_names = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 2
  %8 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %parent_name.addr., ptr %parent_names, align 4
  %tobool11.not = icmp ne ptr %7, null
  %conv = zext i1 %tobool11.not to i8
  %num_parents = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 5
  %9 = ptrtoint ptr %num_parents to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv, ptr %num_parents, align 4
  %ops = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  %10 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @tegra_clk_periph_gate_ops, ptr %ops, align 4
  %11 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 393609993, ptr %call7.i.i, align 8
  %clk_base13 = getelementptr inbounds %struct.tegra_clk_periph_gate, ptr %call7.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %clk_base13 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %clk_base, ptr %clk_base13, align 8
  %clk_num14 = getelementptr inbounds %struct.tegra_clk_periph_gate, ptr %call7.i.i, i32 0, i32 4
  %13 = ptrtoint ptr %clk_num14 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %clk_num, ptr %clk_num14, align 8
  %flags15 = getelementptr inbounds %struct.tegra_clk_periph_gate, ptr %call7.i.i, i32 0, i32 3
  %14 = ptrtoint ptr %flags15 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %gate_flags, ptr %flags15, align 4
  %enable_refcnt16 = getelementptr inbounds %struct.tegra_clk_periph_gate, ptr %call7.i.i, i32 0, i32 5
  %15 = ptrtoint ptr %enable_refcnt16 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %enable_refcnt, ptr %enable_refcnt16, align 4
  %regs = getelementptr inbounds %struct.tegra_clk_periph_gate, ptr %call7.i.i, i32 0, i32 6
  %16 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call, ptr %regs, align 8
  %hw = getelementptr inbounds %struct.tegra_clk_periph_gate, ptr %call7.i.i, i32 0, i32 1
  %init17 = getelementptr inbounds %struct.tegra_clk_periph_gate, ptr %call7.i.i, i32 0, i32 1, i32 2
  %17 = ptrtoint ptr %init17 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %init, ptr %init17, align 4
  %call19 = call ptr @clk_register(ptr noundef null, ptr noundef %hw) #6
  %cmp.i = icmp ugt ptr %call19, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then21, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then21:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then21, %if.end7.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -12 to ptr), %do.end ], [ %call19, %if.then21 ], [ %call19, %if.end7.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #6
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_reg_bank(i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_read_chipid() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10}
!llvm.module.flags = !{!11, !12, !13, !14, !15, !16, !17, !18}
!llvm.ident = !{!19}

!0 = !{ptr @tegra_clk_periph_gate_ops, !1, !"tegra_clk_periph_gate_ops", i1 false, i1 false}
!1 = !{!"../drivers/clk/tegra/clk-periph-gate.c", i32 129, i32 22}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/clk/tegra/clk-periph-gate.c", i32 151, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @tegra_clk_register_periph_gate._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @tegra_clk_register_periph_gate._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/clk/tegra/clk-periph-gate.c", i32 16, i32 8}
!10 = !{ptr @periph_ref_lock, !9, !"periph_ref_lock", i1 false, i1 false}
!11 = !{i32 1, !"wchar_size", i32 2}
!12 = !{i32 1, !"min_enum_size", i32 4}
!13 = !{i32 8, !"branch-target-enforcement", i32 0}
!14 = !{i32 8, !"sign-return-address", i32 0}
!15 = !{i32 8, !"sign-return-address-all", i32 0}
!16 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!17 = !{i32 7, !"uwtable", i32 1}
!18 = !{i32 7, !"frame-pointer", i32 2}
!19 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!20 = !{i64 4949649}
!21 = !{!"branch_weights", i32 1, i32 2000}
!22 = !{i64 4950067}
