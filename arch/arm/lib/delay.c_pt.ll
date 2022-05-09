; ModuleID = '/llk/IR_all_yes/arch/arm/lib/delay.c_pt.bc'
source_filename = "../arch/arm/lib/delay.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+read_current_timer\22, \22a\22\09"
module asm "\09.weak\09__crc_read_current_timer\09\09\09\09"
module asm "\09.long\09__crc_read_current_timer\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_read_current_timer:\09\09\09\09\09"
module asm "\09.asciz \09\22read_current_timer\22\09\09\09\09\09"
module asm "__kstrtabns_read_current_timer:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.delay_timer = type { ptr, i32 }

@arm_delay_ops = dso_local local_unnamed_addr global %struct.arm_delay_ops { ptr @__loop_delay, ptr @__loop_const_udelay, ptr @__loop_udelay, i32 0 }, section ".data..ro_after_init", align 4
@delay_timer = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__kstrtab_read_current_timer = external dso_local constant [0 x i8], align 1
@__kstrtabns_read_current_timer = external dso_local constant [0 x i8], align 1
@__ksymtab_read_current_timer = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @read_current_timer to i32), ptr @__kstrtab_read_current_timer, ptr @__kstrtabns_read_current_timer }, section "___ksymtab_gpl+read_current_timer", align 4
@register_current_timer_delay._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 76, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"\013Ignoring delay timer %ps, which has insufficient resolution of %lluns\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"register_current_timer_delay\00", [35 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"arch/arm/lib/delay.c\00", [43 x i8] zeroinitializer }, align 32
@register_current_timer_delay._entry_ptr = internal global ptr @register_current_timer_delay._entry, section ".printk_index", align 4
@delay_calibrated = internal global { i1, [31 x i8] } zeroinitializer, align 32
@delay_res = internal global { i64, [24 x i8] } zeroinitializer, align 32
@register_current_timer_delay._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 81, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\016Switching to timer-based delay loop, resolution %lluns\0A\00", [38 x i8] zeroinitializer }, align 32
@register_current_timer_delay._entry_ptr.5 = internal global ptr @register_current_timer_delay._entry.3, section ".printk_index", align 4
@lpj_fine = external dso_local local_unnamed_addr global i32, align 4
@register_current_timer_delay._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 92, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\016Ignoring duplicate/late registration of read_current_timer delay\0A\00", [60 x i8] zeroinitializer }, align 32
@register_current_timer_delay._entry_ptr.8 = internal global ptr @register_current_timer_delay._entry.6, section ".printk_index", align 4
@___asan_gen_.9 = private unnamed_addr constant [12 x i8] c"delay_timer\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 26, i32 34 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 75, i32 3 }
@___asan_gen_.24 = private unnamed_addr constant [17 x i8] c"delay_calibrated\00", align 1
@___asan_gen_.25 = private unnamed_addr constant [10 x i8] c"delay_res\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 28, i32 12 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 81, i32 3 }
@___asan_gen_.34 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.37 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.38 = private constant [24 x i8] c"../arch/arm/lib/delay.c\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 92, i32 3 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @__ksymtab_read_current_timer, ptr @register_current_timer_delay._entry, ptr @register_current_timer_delay._entry.3, ptr @register_current_timer_delay._entry.6, ptr @register_current_timer_delay._entry_ptr, ptr @register_current_timer_delay._entry_ptr.5, ptr @register_current_timer_delay._entry_ptr.8, ptr @delay_timer, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @delay_calibrated, ptr @delay_res, ptr @.str.4, ptr @.str.7], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @delay_timer to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @register_current_timer_delay._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @delay_calibrated to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @delay_res to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @register_current_timer_delay._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @register_current_timer_delay._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local void @__loop_delay(i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__loop_const_udelay(i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__loop_udelay(i32 noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @read_current_timer(ptr nocapture noundef writeonly %timer_val) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @delay_timer, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %call = tail call i32 %2() #6
  %3 = ptrtoint ptr %timer_val to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %call, ptr %timer_val, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -6, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @register_current_timer_delay(ptr noundef %timer) local_unnamed_addr #2 section ".init.text" align 64 {
entry:
  %new_mult = alloca i32, align 4
  %new_shift = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %new_mult) #6
  %0 = ptrtoint ptr %new_mult to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %new_mult, align 4, !annotation !33
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %new_shift) #6
  %1 = ptrtoint ptr %new_shift to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %new_shift, align 4, !annotation !33
  %freq = getelementptr inbounds %struct.delay_timer, ptr %timer, i32 0, i32 1
  %2 = ptrtoint ptr %freq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %freq, align 4
  call void @clocks_calc_mult_shift(ptr noundef nonnull %new_mult, ptr noundef nonnull %new_shift, i32 noundef %3, i32 noundef 1000000000, i32 noundef 3600) #6
  %4 = ptrtoint ptr %new_mult to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %new_mult, align 4
  %6 = ptrtoint ptr %new_shift to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %new_shift, align 4
  %conv.i = zext i32 %5 to i64
  %sh_prom.i = zext i32 %7 to i64
  %shr.i = lshr i64 %conv.i, %sh_prom.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 1000, i64 %shr.i)
  %cmp = icmp ugt i64 %shr.i, 1000
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %timer, i64 noundef %shr.i) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %.b26 = load i1, ptr @delay_calibrated, align 1
  br i1 %.b26, label %if.end.do.end13_crit_edge, label %land.lhs.true

if.end.do.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end13

land.lhs.true:                                    ; preds = %if.end
  %8 = load i64, ptr @delay_res, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %8)
  %tobool2.not = icmp eq i64 %8, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %shr.i, i64 %8)
  %cmp3 = icmp ult i64 %shr.i, %8
  %or.cond = select i1 %tobool2.not, i1 true, i1 %cmp3
  br i1 %or.cond, label %do.end7, label %land.lhs.true.do.end13_crit_edge

land.lhs.true.do.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end13

do.end7:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %call9 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i64 noundef %shr.i) #9
  store ptr %timer, ptr @delay_timer, align 4
  %9 = ptrtoint ptr %freq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %freq, align 4
  %div = udiv i32 %10, 100
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @lpj_fine to i32))
  store i32 %div, ptr @lpj_fine, align 4
  store i64 %shr.i, ptr @delay_res, align 8
  store i32 %div, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 3), align 4
  store ptr @__timer_delay, ptr @arm_delay_ops, align 4
  store ptr @__timer_const_udelay, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  store ptr @__timer_udelay, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  br label %cleanup

do.end13:                                         ; preds = %land.lhs.true.do.end13_crit_edge, %if.end.do.end13_crit_edge
  %call15 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end13, %do.end7, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %new_shift) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %new_mult) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clocks_calc_mult_shift(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__timer_delay(i32 noundef %cycles) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @delay_timer, align 4
  %tobool.not.i = icmp eq ptr %0, null
  br i1 %tobool.not.i, label %entry.cond.end_crit_edge, label %cond.false

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %call.i = tail call i32 %2() #6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi i32 [ %call.i, %cond.false ], [ 0, %entry.cond.end_crit_edge ]
  br label %while.cond

while.cond:                                       ; preds = %do.end, %cond.end
  %3 = load ptr, ptr @delay_timer, align 4
  %tobool.not.i15 = icmp eq ptr %3, null
  br i1 %tobool.not.i15, label %while.cond.cond.end7_crit_edge, label %cond.false6

while.cond.cond.end7_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end7

cond.false6:                                      ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call.i16 = tail call i32 %5() #6
  br label %cond.end7

cond.end7:                                        ; preds = %cond.false6, %while.cond.cond.end7_crit_edge
  %cond8 = phi i32 [ %call.i16, %cond.false6 ], [ 0, %while.cond.cond.end7_crit_edge ]
  %sub = sub i32 %cond8, %cond
  %cmp = icmp ult i32 %sub, %cycles
  br i1 %cmp, label %do.end, label %while.end

do.end:                                           ; preds = %cond.end7
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !34
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #6, !srcloc !35
  br label %while.cond

while.end:                                        ; preds = %cond.end7
  call void @__sanitizer_cov_trace_pc() #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__timer_const_udelay(i32 noundef %xloops) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i32 %xloops to i64
  %0 = load i32, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 3), align 4
  %conv1 = zext i32 %0 to i64
  %mul = mul nuw i64 %conv1, %conv
  %shr = lshr i64 %mul, 31
  %conv2 = trunc i64 %shr to i32
  %1 = load ptr, ptr @delay_timer, align 4
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %entry.cond.end.i_crit_edge, label %cond.false.i

entry.cond.end.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end.i

cond.false.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call.i.i = tail call i32 %3() #6
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %entry.cond.end.i_crit_edge
  %cond.i = phi i32 [ %call.i.i, %cond.false.i ], [ 0, %entry.cond.end.i_crit_edge ]
  br label %while.cond.i

while.cond.i:                                     ; preds = %do.end.i, %cond.end.i
  %4 = load ptr, ptr @delay_timer, align 4
  %tobool.not.i15.i = icmp eq ptr %4, null
  br i1 %tobool.not.i15.i, label %while.cond.i.cond.end7.i_crit_edge, label %cond.false6.i

while.cond.i.cond.end7.i_crit_edge:               ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end7.i

cond.false6.i:                                    ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %call.i16.i = tail call i32 %6() #6
  br label %cond.end7.i

cond.end7.i:                                      ; preds = %cond.false6.i, %while.cond.i.cond.end7.i_crit_edge
  %cond8.i = phi i32 [ %call.i16.i, %cond.false6.i ], [ 0, %while.cond.i.cond.end7.i_crit_edge ]
  %sub.i = sub i32 %cond8.i, %cond.i
  %cmp.i = icmp ult i32 %sub.i, %conv2
  br i1 %cmp.i, label %do.end.i, label %__timer_delay.exit

do.end.i:                                         ; preds = %cond.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !34
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #6, !srcloc !35
  br label %while.cond.i

__timer_delay.exit:                               ; preds = %cond.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__timer_udelay(i32 noundef %usecs) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = mul i32 %usecs, 214748
  %conv.i = zext i32 %mul to i64
  %0 = load i32, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 3), align 4
  %conv1.i = zext i32 %0 to i64
  %mul.i = mul nuw i64 %conv1.i, %conv.i
  %shr.i = lshr i64 %mul.i, 31
  %conv2.i = trunc i64 %shr.i to i32
  %1 = load ptr, ptr @delay_timer, align 4
  %tobool.not.i.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i.i, label %entry.cond.end.i.i_crit_edge, label %cond.false.i.i

entry.cond.end.i.i_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end.i.i

cond.false.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call.i.i.i = tail call i32 %3() #6
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %cond.false.i.i, %entry.cond.end.i.i_crit_edge
  %cond.i.i = phi i32 [ %call.i.i.i, %cond.false.i.i ], [ 0, %entry.cond.end.i.i_crit_edge ]
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %do.end.i.i, %cond.end.i.i
  %4 = load ptr, ptr @delay_timer, align 4
  %tobool.not.i15.i.i = icmp eq ptr %4, null
  br i1 %tobool.not.i15.i.i, label %while.cond.i.i.cond.end7.i.i_crit_edge, label %cond.false6.i.i

while.cond.i.i.cond.end7.i.i_crit_edge:           ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end7.i.i

cond.false6.i.i:                                  ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %call.i16.i.i = tail call i32 %6() #6
  br label %cond.end7.i.i

cond.end7.i.i:                                    ; preds = %cond.false6.i.i, %while.cond.i.i.cond.end7.i.i_crit_edge
  %cond8.i.i = phi i32 [ %call.i16.i.i, %cond.false6.i.i ], [ 0, %while.cond.i.i.cond.end7.i.i_crit_edge ]
  %sub.i.i = sub i32 %cond8.i.i, %cond.i.i
  %cmp.i.i = icmp ult i32 %sub.i.i, %conv2.i
  br i1 %cmp.i.i, label %do.end.i.i, label %__timer_const_udelay.exit

do.end.i.i:                                       ; preds = %cond.end7.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !34
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #6, !srcloc !35
  br label %while.cond.i.i

__timer_const_udelay.exit:                        ; preds = %cond.end7.i.i
  call void @__sanitizer_cov_trace_pc() #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @calibrate_delay_is_known() local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  store i1 true, ptr @delay_calibrated, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lpj_fine to i32))
  %0 = load i32, ptr @lpj_fine, align 4
  ret i32 %0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define weak dso_local void @calibration_delay_done() local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  store i1 true, ptr @delay_calibrated, align 1
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !22}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = !{ptr @arm_delay_ops, !1, !"arm_delay_ops", i1 false, i1 false}
!1 = !{!"../arch/arm/lib/delay.c", i32 20, i32 22}
!2 = !{ptr @__ksymtab_read_current_timer, !3, !"__ksymtab_read_current_timer", i1 false, i1 false}
!3 = !{!"../arch/arm/lib/delay.c", i32 38, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../arch/arm/lib/delay.c", i32 75, i32 3}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @register_current_timer_delay._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @register_current_timer_delay._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../arch/arm/lib/delay.c", i32 81, i32 3}
!12 = !{ptr @register_current_timer_delay._entry.3, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @register_current_timer_delay._entry_ptr.5, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../arch/arm/lib/delay.c", i32 92, i32 3}
!16 = !{ptr @register_current_timer_delay._entry.6, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @register_current_timer_delay._entry_ptr.8, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @delay_timer, !19, !"delay_timer", i1 false, i1 false}
!19 = !{!"../arch/arm/lib/delay.c", i32 26, i32 34}
!20 = distinct !{null, !21, !"delay_calibrated", i1 false, i1 false}
!21 = !{!"../arch/arm/lib/delay.c", i32 27, i32 13}
!22 = !{ptr @delay_res, !23, !"delay_res", i1 false, i1 false}
!23 = !{!"../arch/arm/lib/delay.c", i32 28, i32 12}
!24 = !{i32 1, !"wchar_size", i32 2}
!25 = !{i32 1, !"min_enum_size", i32 4}
!26 = !{i32 8, !"branch-target-enforcement", i32 0}
!27 = !{i32 8, !"sign-return-address", i32 0}
!28 = !{i32 8, !"sign-return-address-all", i32 0}
!29 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!30 = !{i32 7, !"uwtable", i32 1}
!31 = !{i32 7, !"frame-pointer", i32 2}
!32 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!33 = !{!"auto-init"}
!34 = !{i64 2152225483}
!35 = !{i64 2152225325}
