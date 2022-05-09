; ModuleID = '/llk/IR_all_yes/drivers/clk/tegra/clk-pll-out.c_pt.bc'
source_filename = "../drivers/clk/tegra/clk-pll-out.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.tegra_clk_pll_out = type { %struct.clk_hw, ptr, i8, i8, ptr, i8 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }

@tegra_clk_pll_out_ops = dso_local constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @clk_pll_out_enable, ptr @clk_pll_out_disable, ptr @clk_pll_out_is_enabled, ptr null, ptr null, ptr @tegra_clk_pll_out_restore_context, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.1 = private unnamed_addr constant [22 x i8] c"tegra_clk_pll_out_ops\00", align 1
@___asan_gen_.2 = private constant [35 x i8] c"../drivers/clk/tegra/clk-pll-out.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 80, i32 22 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @tegra_clk_pll_out_ops], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_clk_pll_out_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_pll_out_enable(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.tegra_clk_pll_out, ptr %hw, i32 0, i32 4
  %0 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lock, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body1

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %1) #5
  br label %if.end

if.end:                                           ; preds = %do.body1, %entry.if.end_crit_edge
  %flags.0 = phi i32 [ %call4, %do.body1 ], [ 0, %entry.if.end_crit_edge ]
  %reg = getelementptr inbounds %struct.tegra_clk_pll_out, ptr %hw, i32 0, i32 1
  %2 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #5, !srcloc !11
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %enb_bit_idx = getelementptr inbounds %struct.tegra_clk_pll_out, ptr %hw, i32 0, i32 2
  %6 = ptrtoint ptr %enb_bit_idx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %enb_bit_idx, align 4
  %conv9 = zext i8 %7 to i32
  %shl = shl nuw i32 1, %conv9
  %rst_bit_idx = getelementptr inbounds %struct.tegra_clk_pll_out, ptr %hw, i32 0, i32 3
  %8 = ptrtoint ptr %rst_bit_idx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %rst_bit_idx, align 1
  %conv10 = zext i8 %9 to i32
  %shl11 = shl nuw i32 1, %conv10
  %or = or i32 %shl, %5
  %or12 = or i32 %or, %shl11
  %10 = tail call i32 @llvm.bswap.i32(i32 %or12)
  %11 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %reg, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %10) #5, !srcloc !12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 429496) #5
  %14 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %lock, align 4
  %tobool15.not = icmp eq ptr %15, null
  br i1 %tobool15.not, label %if.end.if.end18_crit_edge, label %if.then16

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

if.then16:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %15, i32 noundef %flags.0) #5
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.end.if.end18_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @clk_pll_out_disable(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.tegra_clk_pll_out, ptr %hw, i32 0, i32 4
  %0 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lock, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body1

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %1) #5
  br label %if.end

if.end:                                           ; preds = %do.body1, %entry.if.end_crit_edge
  %flags.0 = phi i32 [ %call4, %do.body1 ], [ 0, %entry.if.end_crit_edge ]
  %reg = getelementptr inbounds %struct.tegra_clk_pll_out, ptr %hw, i32 0, i32 1
  %2 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #5, !srcloc !11
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %enb_bit_idx = getelementptr inbounds %struct.tegra_clk_pll_out, ptr %hw, i32 0, i32 2
  %6 = ptrtoint ptr %enb_bit_idx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %enb_bit_idx, align 4
  %conv9 = zext i8 %7 to i32
  %shl = shl nuw i32 1, %conv9
  %rst_bit_idx = getelementptr inbounds %struct.tegra_clk_pll_out, ptr %hw, i32 0, i32 3
  %8 = ptrtoint ptr %rst_bit_idx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %rst_bit_idx, align 1
  %conv10 = zext i8 %9 to i32
  %shl11 = shl nuw i32 1, %conv10
  %or = or i32 %shl11, %shl
  %neg = xor i32 %or, -1
  %and = and i32 %5, %neg
  %10 = tail call i32 @llvm.bswap.i32(i32 %and)
  %11 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %reg, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %10) #5, !srcloc !12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 429496) #5
  %14 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %lock, align 4
  %tobool14.not = icmp eq ptr %15, null
  br i1 %tobool14.not, label %if.end.if.end17_crit_edge, label %if.then15

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17

if.then15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %15, i32 noundef %flags.0) #5
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.end.if.end17_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_pll_out_is_enabled(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %reg = getelementptr inbounds %struct.tegra_clk_pll_out, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #5, !srcloc !11
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %enb_bit_idx = getelementptr inbounds %struct.tegra_clk_pll_out, ptr %hw, i32 0, i32 2
  %4 = ptrtoint ptr %enb_bit_idx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %enb_bit_idx, align 4
  %conv = zext i8 %5 to i32
  %6 = lshr i32 %3, %conv
  %7 = and i32 %6, 1
  %rst_bit_idx = getelementptr inbounds %struct.tegra_clk_pll_out, ptr %hw, i32 0, i32 3
  %8 = ptrtoint ptr %rst_bit_idx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %rst_bit_idx, align 1
  %conv2 = zext i8 %9 to i32
  %shl3 = shl nuw i32 1, %conv2
  %and4 = and i32 %shl3, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  %spec.select = select i1 %tobool5.not, i32 0, i32 %7
  ret i32 %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra_clk_pll_out_restore_context(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %clk = getelementptr inbounds %struct.clk_hw, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk, align 4
  %call = tail call i32 @__clk_get_enable_count(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %lock.i = getelementptr inbounds %struct.tegra_clk_pll_out, ptr %hw, i32 0, i32 4
  %2 = ptrtoint ptr %lock.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lock.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br i1 %tobool.not.i, label %if.then.if.end.i_crit_edge, label %do.body1.i

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

do.body1.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %3) #5
  br label %if.end.i

if.end.i:                                         ; preds = %do.body1.i, %if.then.if.end.i_crit_edge
  %flags.0.i = phi i32 [ %call4.i, %do.body1.i ], [ 0, %if.then.if.end.i_crit_edge ]
  %reg.i = getelementptr inbounds %struct.tegra_clk_pll_out, ptr %hw, i32 0, i32 1
  %4 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg.i, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #5, !srcloc !11
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #5
  %enb_bit_idx.i = getelementptr inbounds %struct.tegra_clk_pll_out, ptr %hw, i32 0, i32 2
  %8 = ptrtoint ptr %enb_bit_idx.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %enb_bit_idx.i, align 4
  %conv9.i = zext i8 %9 to i32
  %shl.i = shl nuw i32 1, %conv9.i
  %rst_bit_idx.i = getelementptr inbounds %struct.tegra_clk_pll_out, ptr %hw, i32 0, i32 3
  %10 = ptrtoint ptr %rst_bit_idx.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %rst_bit_idx.i, align 1
  %conv10.i = zext i8 %11 to i32
  %shl11.i = shl nuw i32 1, %conv10.i
  %or.i = or i32 %shl11.i, %shl.i
  %neg.i = xor i32 %or.i, -1
  %and.i = and i32 %7, %neg.i
  %12 = tail call i32 @llvm.bswap.i32(i32 %and.i) #5
  %13 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %reg.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %12) #5, !srcloc !12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 429496) #5
  %16 = ptrtoint ptr %lock.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %lock.i, align 4
  %tobool14.not.i = icmp eq ptr %17, null
  br i1 %tobool14.not.i, label %if.end.i.if.end_crit_edge, label %if.then15.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then15.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %17, i32 noundef %flags.0.i) #5
  br label %if.end

if.else:                                          ; preds = %entry
  br i1 %tobool.not.i, label %if.else.if.end.i17_crit_edge, label %do.body1.i7

if.else.if.end.i17_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i17

do.body1.i7:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %3) #5
  br label %if.end.i17

if.end.i17:                                       ; preds = %do.body1.i7, %if.else.if.end.i17_crit_edge
  %flags.0.i8 = phi i32 [ %call4.i6, %do.body1.i7 ], [ 0, %if.else.if.end.i17_crit_edge ]
  %reg.i9 = getelementptr inbounds %struct.tegra_clk_pll_out, ptr %hw, i32 0, i32 1
  %18 = ptrtoint ptr %reg.i9 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %reg.i9, align 4
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #5, !srcloc !11
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #5
  %enb_bit_idx.i10 = getelementptr inbounds %struct.tegra_clk_pll_out, ptr %hw, i32 0, i32 2
  %22 = ptrtoint ptr %enb_bit_idx.i10 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %enb_bit_idx.i10, align 4
  %conv9.i11 = zext i8 %23 to i32
  %shl.i12 = shl nuw i32 1, %conv9.i11
  %rst_bit_idx.i13 = getelementptr inbounds %struct.tegra_clk_pll_out, ptr %hw, i32 0, i32 3
  %24 = ptrtoint ptr %rst_bit_idx.i13 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %rst_bit_idx.i13, align 1
  %conv10.i14 = zext i8 %25 to i32
  %shl11.i15 = shl nuw i32 1, %conv10.i14
  %or.i16 = or i32 %shl.i12, %21
  %or12.i = or i32 %or.i16, %shl11.i15
  %26 = tail call i32 @llvm.bswap.i32(i32 %or12.i) #5
  %27 = ptrtoint ptr %reg.i9 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %reg.i9, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %26) #5, !srcloc !12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 429496) #5
  %30 = ptrtoint ptr %lock.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %lock.i, align 4
  %tobool15.not.i = icmp eq ptr %31, null
  br i1 %tobool15.not.i, label %if.end.i17.if.end_crit_edge, label %if.then16.i

if.end.i17.if.end_crit_edge:                      ; preds = %if.end.i17
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then16.i:                                      ; preds = %if.end.i17
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %31, i32 noundef %flags.0.i8) #5
  br label %if.end

if.end:                                           ; preds = %if.then16.i, %if.end.i17.if.end_crit_edge, %if.then15.i, %if.end.i.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @tegra_clk_register_pll_out(ptr noundef %name, ptr noundef %parent_name, ptr noundef %reg, i8 noundef zeroext %enb_bit_idx, i8 noundef zeroext %rst_bit_idx, i32 noundef %flags, i8 noundef zeroext %pll_out_flags, ptr noundef %lock) local_unnamed_addr #0 align 64 {
entry:
  %parent_name.addr = alloca ptr, align 4
  %init = alloca %struct.clk_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %parent_name.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %parent_name, ptr %parent_name.addr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init) #5
  %1 = getelementptr inbounds i8, ptr %init, i32 12
  %2 = call ptr @memset(ptr %1, i32 255, i32 12)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 28) #8
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %name, ptr %init, align 4
  %ops = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  %5 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @tegra_clk_pll_out_ops, ptr %ops, align 4
  %6 = ptrtoint ptr %parent_name.addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent_name.addr, align 4
  %tobool3.not = icmp eq ptr %7, null
  %parent_name.addr. = select i1 %tobool3.not, ptr null, ptr %parent_name.addr
  %parent_names = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 2
  %8 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %parent_name.addr., ptr %parent_names, align 4
  %tobool4.not = icmp ne ptr %7, null
  %conv = zext i1 %tobool4.not to i8
  %num_parents = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 5
  %9 = ptrtoint ptr %num_parents to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv, ptr %num_parents, align 4
  %flags6 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 6
  %10 = ptrtoint ptr %flags6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %flags, ptr %flags6, align 4
  %reg7 = getelementptr inbounds %struct.tegra_clk_pll_out, ptr %call7.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %reg7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %reg, ptr %reg7, align 4
  %enb_bit_idx8 = getelementptr inbounds %struct.tegra_clk_pll_out, ptr %call7.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %enb_bit_idx8 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %enb_bit_idx, ptr %enb_bit_idx8, align 8
  %rst_bit_idx9 = getelementptr inbounds %struct.tegra_clk_pll_out, ptr %call7.i.i, i32 0, i32 3
  %13 = ptrtoint ptr %rst_bit_idx9 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %rst_bit_idx, ptr %rst_bit_idx9, align 1
  %flags10 = getelementptr inbounds %struct.tegra_clk_pll_out, ptr %call7.i.i, i32 0, i32 5
  %14 = ptrtoint ptr %flags10 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %pll_out_flags, ptr %flags10, align 8
  %lock11 = getelementptr inbounds %struct.tegra_clk_pll_out, ptr %call7.i.i, i32 0, i32 4
  %15 = ptrtoint ptr %lock11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %lock, ptr %lock11, align 4
  %init12 = getelementptr inbounds %struct.clk_hw, ptr %call7.i.i, i32 0, i32 2
  %16 = ptrtoint ptr %init12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %init, ptr %init12, align 8
  %call14 = call ptr @clk_register(ptr noundef null, ptr noundef nonnull %call7.i.i) #5
  %cmp.i = icmp ugt ptr %call14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then16, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then16:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  call void @kfree(ptr noundef nonnull %call7.i.i) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then16, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call14, %if.then16 ], [ %call14, %if.end.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #5
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__clk_get_enable_count(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

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
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @tegra_clk_pll_out_ops, !1, !"tegra_clk_pll_out_ops", i1 false, i1 false}
!1 = !{!"../drivers/clk/tegra/clk-pll-out.c", i32 80, i32 22}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!11 = !{i64 1247141}
!12 = !{i64 1246723}
