; ModuleID = '/llk/IR_all_yes/sound/soc/codecs/l3.c_pt.bc'
source_filename = "../sound/soc/codecs/l3.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+l3_write\22, \22a\22\09"
module asm "\09.weak\09__crc_l3_write\09\09\09\09"
module asm "\09.long\09__crc_l3_write\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_l3_write:\09\09\09\09\09"
module asm "\09.asciz \09\22l3_write\22\09\09\09\09\09"
module asm "__kstrtabns_l3_write:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+l3_set_gpio_ops\22, \22a\22\09"
module asm "\09.weak\09__crc_l3_set_gpio_ops\09\09\09\09"
module asm "\09.long\09__crc_l3_set_gpio_ops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_l3_set_gpio_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22l3_set_gpio_ops\22\09\09\09\09\09"
module asm "__kstrtabns_l3_set_gpio_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.l3_pins = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@__kstrtab_l3_write = external dso_local constant [0 x i8], align 1
@__kstrtabns_l3_write = external dso_local constant [0 x i8], align 1
@__ksymtab_l3_write = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @l3_write to i32), ptr @__kstrtab_l3_write, ptr @__kstrtabns_l3_write }, section "___ksymtab_gpl+l3_write", align 4
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"l3_data\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"l3_clk\00", [25 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"l3_mode\00", [24 x i8] zeroinitializer }, align 32
@__kstrtab_l3_set_gpio_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_l3_set_gpio_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_l3_set_gpio_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @l3_set_gpio_ops to i32), ptr @__kstrtab_l3_set_gpio_ops, ptr @__kstrtabns_l3_set_gpio_ops }, section "___ksymtab_gpl+l3_set_gpio_ops", align 4
@__UNIQUE_ID_description223 = internal constant [45 x i8] c"snd_soc_l3.description=L3 bit-banging driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author224 = internal constant [62 x i8] c"snd_soc_l3.author=Christian Pellegrin <chripell@evolware.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_file225 = internal constant [44 x i8] c"snd_soc_l3.file=sound/soc/codecs/snd-soc-l3\00", section ".modinfo", align 1
@__UNIQUE_ID_license226 = internal constant [23 x i8] c"snd_soc_l3.license=GPL\00", section ".modinfo", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 109, i32 25 }
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 115, i32 25 }
@___asan_gen_.9 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.10 = private constant [25 x i8] c"../sound/soc/codecs/l3.c\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 121, i32 25 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @__UNIQUE_ID_author224, ptr @__UNIQUE_ID_description223, ptr @__UNIQUE_ID_file225, ptr @__UNIQUE_ID_license226, ptr @__ksymtab_l3_set_gpio_ops, ptr @__ksymtab_l3_write, ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @l3_write(ptr noundef %adap, i8 noundef zeroext %addr, ptr nocapture noundef readonly %data, i32 noundef returned %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %setclk = getelementptr inbounds %struct.l3_pins, ptr %adap, i32 0, i32 1
  %0 = ptrtoint ptr %setclk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %setclk, align 4
  tail call void %1(ptr noundef %adap, i32 noundef 1) #2
  %2 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adap, align 4
  tail call void %3(ptr noundef %adap, i32 noundef 1) #2
  %setmode = getelementptr inbounds %struct.l3_pins, ptr %adap, i32 0, i32 2
  %4 = ptrtoint ptr %setmode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %setmode, align 4
  tail call void %5(ptr noundef %adap, i32 noundef 1) #2
  %mode = getelementptr inbounds %struct.l3_pins, ptr %adap, i32 0, i32 11
  %6 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mode, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %8(i32 noundef %7) #2
  %9 = ptrtoint ptr %setmode to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %setmode, align 4
  tail call void %10(ptr noundef %adap, i32 noundef 0) #2
  %mode_setup = getelementptr inbounds %struct.l3_pins, ptr %adap, i32 0, i32 12
  %11 = ptrtoint ptr %mode_setup to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mode_setup, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %13(i32 noundef %12) #2
  %conv = zext i8 %addr to i32
  %data_hold.i = getelementptr inbounds %struct.l3_pins, ptr %adap, i32 0, i32 7
  %data_setup.i = getelementptr inbounds %struct.l3_pins, ptr %adap, i32 0, i32 8
  %clock_high.i = getelementptr inbounds %struct.l3_pins, ptr %adap, i32 0, i32 9
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry
  %i.053.i = phi i32 [ 0, %entry ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %byte.addr.052.i = phi i32 [ %conv, %entry ], [ %shr.i, %for.body.i.for.body.i_crit_edge ]
  %14 = ptrtoint ptr %setclk to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %setclk, align 4
  tail call void %15(ptr noundef %adap, i32 noundef 0) #2
  %16 = ptrtoint ptr %data_hold.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %data_hold.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %18(i32 noundef %17) #2
  %19 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %adap, align 4
  %and.i = and i32 %byte.addr.052.i, 1
  tail call void %20(ptr noundef %adap, i32 noundef %and.i) #2
  %21 = ptrtoint ptr %data_setup.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %data_setup.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %23(i32 noundef %22) #2
  %24 = ptrtoint ptr %setclk to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %setclk, align 4
  tail call void %25(ptr noundef %adap, i32 noundef 1) #2
  %26 = ptrtoint ptr %clock_high.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %clock_high.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %28(i32 noundef %27) #2
  %shr.i = lshr i32 %byte.addr.052.i, 1
  %inc.i = add nuw nsw i32 %i.053.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 8
  br i1 %exitcond.not.i, label %sendbyte.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.i

sendbyte.exit:                                    ; preds = %for.body.i
  %mode_hold = getelementptr inbounds %struct.l3_pins, ptr %adap, i32 0, i32 10
  %29 = ptrtoint ptr %mode_hold to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %mode_hold, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %31(i32 noundef %30) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp52.i = icmp sgt i32 %len, 0
  br i1 %cmp52.i, label %sendbyte.exit.for.body.i65_crit_edge, label %sendbyte.exit.sendbytes.exit_crit_edge

sendbyte.exit.sendbytes.exit_crit_edge:           ; preds = %sendbyte.exit
  call void @__sanitizer_cov_trace_pc() #4
  br label %sendbytes.exit

sendbyte.exit.for.body.i65_crit_edge:             ; preds = %sendbyte.exit
  br label %for.body.i65

for.body.i65:                                     ; preds = %sendbyte.exit.i.for.body.i65_crit_edge, %sendbyte.exit.for.body.i65_crit_edge
  %i.053.i64 = phi i32 [ %inc.i86, %sendbyte.exit.i.for.body.i65_crit_edge ], [ 0, %sendbyte.exit.for.body.i65_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.053.i64)
  %tobool.not.i = icmp eq i32 %i.053.i64, 0
  br i1 %tobool.not.i, label %for.body.i65.if.end.i_crit_edge, label %cond.false5.i71

for.body.i65.if.end.i_crit_edge:                  ; preds = %for.body.i65
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end.i

cond.false5.i71:                                  ; preds = %for.body.i65
  call void @__sanitizer_cov_trace_pc() #4
  %32 = ptrtoint ptr %mode_hold to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %mode_hold, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %34(i32 noundef %33) #2
  %35 = ptrtoint ptr %setmode to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %setmode, align 4
  tail call void %36(ptr noundef %adap, i32 noundef 0) #2
  %37 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %mode, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %39 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %39(i32 noundef %38) #2
  br label %if.end.i

if.end.i:                                         ; preds = %cond.false5.i71, %for.body.i65.if.end.i_crit_edge
  %40 = ptrtoint ptr %setmode to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %setmode, align 4
  tail call void %41(ptr noundef %adap, i32 noundef 1) #2
  %42 = ptrtoint ptr %mode_setup to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %mode_setup, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %44 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %44(i32 noundef %43) #2
  %arrayidx.i = getelementptr i8, ptr %data, i32 %i.053.i64
  %45 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %46 to i32
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end.i
  %i.053.i.i = phi i32 [ 0, %if.end.i ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %byte.addr.052.i.i = phi i32 [ %conv.i, %if.end.i ], [ %shr.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %47 = ptrtoint ptr %setclk to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %setclk, align 4
  tail call void %48(ptr noundef %adap, i32 noundef 0) #2
  %49 = ptrtoint ptr %data_hold.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %data_hold.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %51 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %51(i32 noundef %50) #2
  %52 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %adap, align 4
  %and.i.i = and i32 %byte.addr.052.i.i, 1
  tail call void %53(ptr noundef %adap, i32 noundef %and.i.i) #2
  %54 = ptrtoint ptr %data_setup.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %data_setup.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %56 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %56(i32 noundef %55) #2
  %57 = ptrtoint ptr %setclk to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %setclk, align 4
  tail call void %58(ptr noundef %adap, i32 noundef 1) #2
  %59 = ptrtoint ptr %clock_high.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %clock_high.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %61 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %61(i32 noundef %60) #2
  %shr.i.i = lshr i32 %byte.addr.052.i.i, 1
  %inc.i.i = add nuw nsw i32 %i.053.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 8
  br i1 %exitcond.not.i.i, label %sendbyte.exit.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.i.i

sendbyte.exit.i:                                  ; preds = %for.body.i.i
  %inc.i86 = add nuw nsw i32 %i.053.i64, 1
  %exitcond.not.i87 = icmp eq i32 %inc.i86, %len
  br i1 %exitcond.not.i87, label %sendbyte.exit.i.sendbytes.exit_crit_edge, label %sendbyte.exit.i.for.body.i65_crit_edge

sendbyte.exit.i.for.body.i65_crit_edge:           ; preds = %sendbyte.exit.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.i65

sendbyte.exit.i.sendbytes.exit_crit_edge:         ; preds = %sendbyte.exit.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %sendbytes.exit

sendbytes.exit:                                   ; preds = %sendbyte.exit.i.sendbytes.exit_crit_edge, %sendbyte.exit.sendbytes.exit_crit_edge
  %62 = ptrtoint ptr %setclk to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %setclk, align 4
  tail call void %63(ptr noundef %adap, i32 noundef 1) #2
  %64 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %adap, align 4
  tail call void %65(ptr noundef %adap, i32 noundef 1) #2
  %66 = ptrtoint ptr %setmode to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %setmode, align 4
  tail call void %67(ptr noundef %adap, i32 noundef 0) #2
  ret i32 %len
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @l3_set_gpio_ops(ptr noundef %dev, ptr nocapture noundef %adap) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %use_gpios = getelementptr inbounds %struct.l3_pins, ptr %adap, i32 0, i32 6
  %0 = ptrtoint ptr %use_gpios to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %use_gpios, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %gpio_data = getelementptr inbounds %struct.l3_pins, ptr %adap, i32 0, i32 3
  %2 = ptrtoint ptr %gpio_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %gpio_data, align 4
  %call = tail call i32 @devm_gpio_request_one(ptr noundef %dev, i32 noundef %3, i32 noundef 0, ptr noundef nonnull @.str) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %4 = ptrtoint ptr %adap to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @l3_set_data, ptr %adap, align 4
  %gpio_clk = getelementptr inbounds %struct.l3_pins, ptr %adap, i32 0, i32 4
  %5 = ptrtoint ptr %gpio_clk to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %gpio_clk, align 4
  %call3 = tail call i32 @devm_gpio_request_one(ptr noundef %dev, i32 noundef %6, i32 noundef 0, ptr noundef nonnull @.str.1) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.end2.cleanup_crit_edge, label %if.end6

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end6:                                          ; preds = %if.end2
  %setclk = getelementptr inbounds %struct.l3_pins, ptr %adap, i32 0, i32 1
  %7 = ptrtoint ptr %setclk to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @l3_set_clk, ptr %setclk, align 4
  %gpio_mode = getelementptr inbounds %struct.l3_pins, ptr %adap, i32 0, i32 5
  %8 = ptrtoint ptr %gpio_mode to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %gpio_mode, align 4
  %call7 = tail call i32 @devm_gpio_request_one(ptr noundef %dev, i32 noundef %9, i32 noundef 0, ptr noundef nonnull @.str.2) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.end6.cleanup_crit_edge, label %if.end10

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #4
  %setmode = getelementptr inbounds %struct.l3_pins, ptr %adap, i32 0, i32 2
  %10 = ptrtoint ptr %setmode to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @l3_set_mode, ptr %setmode, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.end6.cleanup_crit_edge, %if.end2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end10 ], [ -22, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ %call3, %if.end2.cleanup_crit_edge ], [ %call7, %if.end6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpio_request_one(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @l3_set_data(ptr nocapture noundef readonly %adap, i32 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %gpio_data = getelementptr inbounds %struct.l3_pins, ptr %adap, i32 0, i32 3
  %0 = ptrtoint ptr %gpio_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %gpio_data, align 4
  %call.i = tail call ptr @gpio_to_desc(i32 noundef %1) #2
  tail call void @gpiod_set_raw_value(ptr noundef %call.i, i32 noundef %val) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @l3_set_clk(ptr nocapture noundef readonly %adap, i32 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %gpio_clk = getelementptr inbounds %struct.l3_pins, ptr %adap, i32 0, i32 4
  %0 = ptrtoint ptr %gpio_clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %gpio_clk, align 4
  %call.i = tail call ptr @gpio_to_desc(i32 noundef %1) #2
  tail call void @gpiod_set_raw_value(ptr noundef %call.i, i32 noundef %val) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @l3_set_mode(ptr nocapture noundef readonly %adap, i32 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %gpio_mode = getelementptr inbounds %struct.l3_pins, ptr %adap, i32 0, i32 5
  %0 = ptrtoint ptr %gpio_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %gpio_mode, align 4
  %call.i = tail call ptr @gpio_to_desc(i32 noundef %1) #2
  tail call void @gpiod_set_raw_value(ptr noundef %call.i, i32 noundef %val) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_raw_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpio_to_desc(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16}
!llvm.module.flags = !{!17, !18, !19, !20, !21, !22, !23, !24}
!llvm.ident = !{!25}

!0 = !{ptr @__ksymtab_l3_write, !1, !"__ksymtab_l3_write", i1 false, i1 false}
!1 = !{!"../sound/soc/codecs/l3.c", i32 83, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../sound/soc/codecs/l3.c", i32 109, i32 25}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../sound/soc/codecs/l3.c", i32 115, i32 25}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../sound/soc/codecs/l3.c", i32 121, i32 25}
!8 = !{ptr @__ksymtab_l3_set_gpio_ops, !9, !"__ksymtab_l3_set_gpio_ops", i1 false, i1 false}
!9 = !{!"../sound/soc/codecs/l3.c", i32 128, i32 1}
!10 = !{ptr @__UNIQUE_ID_description223, !11, !"__UNIQUE_ID_description223", i1 false, i1 false}
!11 = !{!"../sound/soc/codecs/l3.c", i32 130, i32 1}
!12 = !{ptr @__UNIQUE_ID_author224, !13, !"__UNIQUE_ID_author224", i1 false, i1 false}
!13 = !{!"../sound/soc/codecs/l3.c", i32 131, i32 1}
!14 = !{ptr @__UNIQUE_ID_file225, !15, !"__UNIQUE_ID_file225", i1 false, i1 false}
!15 = !{!"../sound/soc/codecs/l3.c", i32 132, i32 1}
!16 = !{ptr @__UNIQUE_ID_license226, !15, !"__UNIQUE_ID_license226", i1 false, i1 false}
!17 = !{i32 1, !"wchar_size", i32 2}
!18 = !{i32 1, !"min_enum_size", i32 4}
!19 = !{i32 8, !"branch-target-enforcement", i32 0}
!20 = !{i32 8, !"sign-return-address", i32 0}
!21 = !{i32 8, !"sign-return-address-all", i32 0}
!22 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!23 = !{i32 7, !"uwtable", i32 1}
!24 = !{i32 7, !"frame-pointer", i32 2}
!25 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
