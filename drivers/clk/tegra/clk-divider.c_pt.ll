; ModuleID = '/llk/IR_all_yes/drivers/clk/tegra/clk-divider.c_pt.bc'
source_filename = "../drivers/clk/tegra/clk-divider.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.clk_div_table = type { i32, i32 }
%struct.tegra_clk_frac_div = type { %struct.clk_hw, ptr, i8, i8, i8, i8, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }

@tegra_clk_frac_div_ops = dso_local constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_divider_restore_context, ptr @clk_frac_div_recalc_rate, ptr @clk_frac_div_round_rate, ptr null, ptr null, ptr null, ptr @clk_frac_div_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@tegra_clk_register_divider._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 146, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013%s: could not allocate fractional divider clk\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"tegra_clk_register_divider\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/clk/tegra/clk-divider.c\00", [32 x i8] zeroinitializer }, align 32
@tegra_clk_register_divider._entry_ptr = internal global ptr @tegra_clk_register_divider._entry, section ".printk_index", align 4
@mc_div_table = internal constant { [3 x %struct.clk_div_table], [40 x i8] } { [3 x %struct.clk_div_table] [%struct.clk_div_table { i32 0, i32 2 }, %struct.clk_div_table { i32 1, i32 1 }, %struct.clk_div_table zeroinitializer], [40 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.3 = private unnamed_addr constant [23 x i8] c"tegra_clk_frac_div_ops\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 127, i32 22 }
@___asan_gen_.6 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.15 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 145, i32 3 }
@___asan_gen_.18 = private unnamed_addr constant [13 x i8] c"mc_div_table\00", align 1
@___asan_gen_.19 = private constant [35 x i8] c"../drivers/clk/tegra/clk-divider.c\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 173, i32 35 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @tegra_clk_register_divider._entry, ptr @tegra_clk_register_divider._entry_ptr, ptr @tegra_clk_frac_div_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @mc_div_table], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_clk_frac_div_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_clk_register_divider._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mc_div_table to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @clk_divider_restore_context(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @clk_hw_get_parent(ptr noundef %hw) #6
  %call1 = tail call i32 @clk_hw_get_rate(ptr noundef %call) #6
  %call2 = tail call i32 @clk_hw_get_rate(ptr noundef %hw) #6
  %call3 = tail call i32 @clk_frac_div_set_rate(ptr noundef %hw, i32 noundef %call2, i32 noundef %call1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_frac_div_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %reg1 = getelementptr inbounds %struct.tegra_clk_frac_div, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %reg1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg1, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #6, !srcloc !19
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %flags = getelementptr inbounds %struct.tegra_clk_frac_div, ptr %hw, i32 0, i32 2
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %flags, align 4
  %6 = and i8 %5, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp ne i8 %6, 0
  %and4 = and i32 %3, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  %or.cond = select i1 %tobool.not, i1 %tobool5.not, i1 false
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = zext i32 %parent_rate to i64
  %shift = getelementptr inbounds %struct.tegra_clk_frac_div, ptr %hw, i32 0, i32 3
  %7 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %shift, align 1
  %conv7 = zext i8 %8 to i32
  %shr = lshr i32 %3, %conv7
  %width = getelementptr inbounds %struct.tegra_clk_frac_div, ptr %hw, i32 0, i32 4
  %9 = ptrtoint ptr %width to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %width, align 2
  %conv8 = zext i8 %10 to i32
  %notmask = shl nsw i32 -1, %conv8
  %sub = xor i32 %notmask, -1
  %and9 = and i32 %shr, %sub
  %frac_width = getelementptr inbounds %struct.tegra_clk_frac_div, ptr %hw, i32 0, i32 5
  %11 = ptrtoint ptr %frac_width to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %frac_width, align 1
  %conv10 = zext i8 %12 to i32
  %shl11 = shl nuw i32 1, %conv10
  %add = add i32 %and9, %shl11
  %conv12 = sext i32 %shl11 to i64
  %mul13 = mul nsw i64 %conv12, %conv
  %sub14 = add i32 %add, -1
  %conv15 = sext i32 %sub14 to i64
  %add16 = add nsw i64 %mul13, %conv15
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add16)
  %cmp195 = icmp ult i64 %add16, 4294967296
  br i1 %cmp195, label %if.then199, label %if.else205, !prof !20

if.then199:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %conv200 = trunc i64 %add16 to i32
  %div203 = udiv i32 %conv200, %add
  br label %cleanup

if.else205:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %13 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %add, i64 %add16) #9, !srcloc !21
  %asmresult1.i = extractvalue { i64, i64 } %13, 1
  %extract.t331 = trunc i64 %asmresult1.i to i32
  br label %cleanup

cleanup:                                          ; preds = %if.else205, %if.then199, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %parent_rate, %entry.cleanup_crit_edge ], [ %div203, %if.then199 ], [ %extract.t331, %if.else205 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_frac_div_round_rate(ptr nocapture noundef readonly %hw, i32 noundef %rate, ptr nocapture noundef readonly %prate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %prate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %prate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rate)
  %tobool.not = icmp eq i32 %rate, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %width.i = getelementptr inbounds %struct.tegra_clk_frac_div, ptr %hw, i32 0, i32 4
  %2 = ptrtoint ptr %width.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %width.i, align 2
  %frac_width.i = getelementptr inbounds %struct.tegra_clk_frac_div, ptr %hw, i32 0, i32 5
  %4 = ptrtoint ptr %frac_width.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %frac_width.i, align 1
  %flags.i = getelementptr inbounds %struct.tegra_clk_frac_div, ptr %hw, i32 0, i32 2
  %6 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %flags.i, align 4
  %call.i = tail call i32 @div_frac_get(i32 noundef %rate, i32 noundef %1, i8 noundef zeroext %3, i8 noundef zeroext %5, i8 noundef zeroext %7) #6
  %8 = tail call i32 @llvm.smax.i32(i32 %call.i, i32 0) #6
  %9 = ptrtoint ptr %frac_width.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %frac_width.i, align 1
  %conv = zext i8 %10 to i32
  %shl = shl nuw i32 1, %conv
  %mul3 = shl i32 %1, %conv
  %add = add nuw i32 %shl, %8
  %add4 = add i32 %mul3, -1
  %sub = add i32 %add4, %add
  %div6 = udiv i32 %sub, %add
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %div6, %if.end ], [ %1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_frac_div_set_rate(ptr nocapture noundef readonly %hw, i32 noundef %rate, i32 noundef %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %width.i = getelementptr inbounds %struct.tegra_clk_frac_div, ptr %hw, i32 0, i32 4
  %0 = ptrtoint ptr %width.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %width.i, align 2
  %frac_width.i = getelementptr inbounds %struct.tegra_clk_frac_div, ptr %hw, i32 0, i32 5
  %2 = ptrtoint ptr %frac_width.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %frac_width.i, align 1
  %flags.i = getelementptr inbounds %struct.tegra_clk_frac_div, ptr %hw, i32 0, i32 2
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %flags.i, align 4
  %call.i = tail call i32 @div_frac_get(i32 noundef %rate, i32 noundef %parent_rate, i8 noundef zeroext %1, i8 noundef zeroext %3, i8 noundef zeroext %5) #6
  %6 = tail call i32 @llvm.smax.i32(i32 %call.i, i32 0) #6
  %lock = getelementptr inbounds %struct.tegra_clk_frac_div, ptr %hw, i32 0, i32 6
  %7 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %lock, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %entry.if.end10_crit_edge, label %do.body2

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %8) #6
  br label %if.end10

if.end10:                                         ; preds = %do.body2, %entry.if.end10_crit_edge
  %flags.0 = phi i32 [ %call7, %do.body2 ], [ 0, %entry.if.end10_crit_edge ]
  %reg = getelementptr inbounds %struct.tegra_clk_frac_div, ptr %hw, i32 0, i32 1
  %9 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reg, align 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #6, !srcloc !19
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  %13 = ptrtoint ptr %width.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %width.i, align 2
  %conv13 = zext i8 %14 to i32
  %notmask = shl nsw i32 -1, %conv13
  %sub = xor i32 %notmask, -1
  %shift = getelementptr inbounds %struct.tegra_clk_frac_div, ptr %hw, i32 0, i32 3
  %15 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %shift, align 1
  %conv14 = zext i8 %16 to i32
  %shl15 = shl i32 %sub, %conv14
  %neg = xor i32 %shl15, -1
  %and = and i32 %12, %neg
  %shl18 = shl i32 %6, %conv14
  %or = or i32 %and, %shl18
  %17 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %flags.i, align 4
  %19 = and i8 %18, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool22.not = icmp eq i8 %19, 0
  br i1 %tobool22.not, label %if.end10.if.end29_crit_edge, label %if.then23

if.end10.if.end29_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

if.then23:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %tobool24.not = icmp slt i32 %call.i, 1
  br i1 %tobool24.not, label %if.else, label %if.then25

if.then25:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #8
  %or26 = or i32 %or, 16777216
  br label %if.end29

if.else:                                          ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #8
  %and27 = and i32 %or, -16777217
  br label %if.end29

if.end29:                                         ; preds = %if.else, %if.then25, %if.end10.if.end29_crit_edge
  %val.0 = phi i32 [ %or26, %if.then25 ], [ %and27, %if.else ], [ %or, %if.end10.if.end29_crit_edge ]
  %20 = and i8 %18, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool33.not = icmp eq i8 %20, 0
  %sub37 = add nsw i32 %conv14, -6
  %shl38 = shl nuw i32 1, %sub37
  %or39 = select i1 %tobool33.not, i32 0, i32 %shl38
  %val.1 = or i32 %val.0, %or39
  %21 = tail call i32 @llvm.bswap.i32(i32 %val.1)
  %22 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %reg, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %21) #6, !srcloc !22
  %24 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %lock, align 4
  %tobool43.not = icmp eq ptr %25, null
  br i1 %tobool43.not, label %if.end29.cleanup_crit_edge, label %if.then44

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then44:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %25, i32 noundef %flags.0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then44, %if.end29.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @tegra_clk_register_divider(ptr noundef %name, ptr noundef %parent_name, ptr noundef %reg, i32 noundef %flags, i8 noundef zeroext %clk_divider_flags, i8 noundef zeroext %shift, i8 noundef zeroext %width, i8 noundef zeroext %frac_width, ptr noundef %lock) local_unnamed_addr #0 align 64 {
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
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 24) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %name, ptr %init, align 4
  %ops = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  %5 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @tegra_clk_frac_div_ops, ptr %ops, align 4
  %flags4 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 6
  %6 = ptrtoint ptr %flags4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %flags, ptr %flags4, align 4
  %7 = ptrtoint ptr %parent_name.addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %parent_name.addr, align 4
  %tobool5.not = icmp eq ptr %8, null
  %parent_name.addr. = select i1 %tobool5.not, ptr null, ptr %parent_name.addr
  %parent_names = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 2
  %9 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %parent_name.addr., ptr %parent_names, align 4
  %tobool6.not = icmp ne ptr %8, null
  %conv = zext i1 %tobool6.not to i8
  %num_parents = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 5
  %10 = ptrtoint ptr %num_parents to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv, ptr %num_parents, align 4
  %reg8 = getelementptr inbounds %struct.tegra_clk_frac_div, ptr %call7.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %reg8 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %reg, ptr %reg8, align 4
  %shift9 = getelementptr inbounds %struct.tegra_clk_frac_div, ptr %call7.i.i, i32 0, i32 3
  %12 = ptrtoint ptr %shift9 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %shift, ptr %shift9, align 1
  %width10 = getelementptr inbounds %struct.tegra_clk_frac_div, ptr %call7.i.i, i32 0, i32 4
  %13 = ptrtoint ptr %width10 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %width, ptr %width10, align 2
  %frac_width11 = getelementptr inbounds %struct.tegra_clk_frac_div, ptr %call7.i.i, i32 0, i32 5
  %14 = ptrtoint ptr %frac_width11 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %frac_width, ptr %frac_width11, align 1
  %lock12 = getelementptr inbounds %struct.tegra_clk_frac_div, ptr %call7.i.i, i32 0, i32 6
  %15 = ptrtoint ptr %lock12 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %lock, ptr %lock12, align 4
  %flags13 = getelementptr inbounds %struct.tegra_clk_frac_div, ptr %call7.i.i, i32 0, i32 2
  %16 = ptrtoint ptr %flags13 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %clk_divider_flags, ptr %flags13, align 8
  %init14 = getelementptr inbounds %struct.clk_hw, ptr %call7.i.i, i32 0, i32 2
  %17 = ptrtoint ptr %init14 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %init, ptr %init14, align 8
  %call16 = call ptr @clk_register(ptr noundef null, ptr noundef nonnull %call7.i.i) #6
  %cmp.i = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then18, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then18:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then18, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi ptr [ inttoptr (i32 -12 to ptr), %do.end ], [ %call16, %if.then18 ], [ %call16, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #6
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @tegra_clk_register_mc(ptr noundef %name, ptr noundef %parent_name, ptr noundef %reg, ptr noundef %lock) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @clk_register_divider_table(ptr noundef null, ptr noundef %name, ptr noundef %parent_name, i32 noundef 2048, ptr noundef %reg, i8 noundef zeroext 16, i8 noundef zeroext 1, i8 noundef zeroext 32, ptr noundef nonnull @mc_div_table, ptr noundef %lock) #6
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_divider_table(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_parent(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_rate(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @div_frac_get(i32 noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind readnone }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !{ptr @tegra_clk_frac_div_ops, !1, !"tegra_clk_frac_div_ops", i1 false, i1 false}
!1 = !{!"../drivers/clk/tegra/clk-divider.c", i32 127, i32 22}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/clk/tegra/clk-divider.c", i32 145, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @tegra_clk_register_divider._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @tegra_clk_register_divider._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @mc_div_table, !9, !"mc_div_table", i1 false, i1 false}
!9 = !{!"../drivers/clk/tegra/clk-divider.c", i32 173, i32 35}
!10 = !{i32 1, !"wchar_size", i32 2}
!11 = !{i32 1, !"min_enum_size", i32 4}
!12 = !{i32 8, !"branch-target-enforcement", i32 0}
!13 = !{i32 8, !"sign-return-address", i32 0}
!14 = !{i32 8, !"sign-return-address-all", i32 0}
!15 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!19 = !{i64 1248721}
!20 = !{!"branch_weights", i32 2000, i32 1}
!21 = !{i64 2148602694, i64 2148602974, i64 2148603308, i64 2148603642}
!22 = !{i64 1248303}
