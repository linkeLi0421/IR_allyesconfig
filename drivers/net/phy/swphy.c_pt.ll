; ModuleID = '/llk/IR_all_yes/drivers/net/phy/swphy.c_pt.bc'
source_filename = "../drivers/net/phy/swphy.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+swphy_validate_state\22, \22a\22\09"
module asm "\09.weak\09__crc_swphy_validate_state\09\09\09\09"
module asm "\09.long\09__crc_swphy_validate_state\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_swphy_validate_state:\09\09\09\09\09"
module asm "\09.asciz \09\22swphy_validate_state\22\09\09\09\09\09"
module asm "__kstrtabns_swphy_validate_state:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+swphy_read_reg\22, \22a\22\09"
module asm "\09.weak\09__crc_swphy_read_reg\09\09\09\09"
module asm "\09.long\09__crc_swphy_read_reg\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_swphy_read_reg:\09\09\09\09\09"
module asm "\09.asciz \09\22swphy_read_reg\22\09\09\09\09\09"
module asm "__kstrtabns_swphy_read_reg:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.swmii_regs = type { i16, i16, i16, i16 }
%struct.fixed_phy_status = type { i32, i32, i32, i32, i32 }

@swphy_validate_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 100, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\014swphy: unknown speed\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"swphy_validate_state\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/net/phy/swphy.c\00", [40 x i8] zeroinitializer }, align 32
@swphy_validate_state._entry_ptr = internal global ptr @swphy_validate_state._entry, section ".printk_index", align 4
@__kstrtab_swphy_validate_state = external dso_local constant [0 x i8], align 1
@__kstrtabns_swphy_validate_state = external dso_local constant [0 x i8], align 1
@__ksymtab_swphy_validate_state = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @swphy_validate_state to i32), ptr @__kstrtab_swphy_validate_state, ptr @__kstrtabns_swphy_validate_state }, section "___ksymtab_gpl+swphy_validate_state", align 4
@speed = internal constant { [3 x %struct.swmii_regs], [40 x i8] } { [3 x %struct.swmii_regs] [%struct.swmii_regs { i16 0, i16 96, i16 0, i16 0 }, %struct.swmii_regs { i16 24576, i16 384, i16 0, i16 0 }, %struct.swmii_regs { i16 256, i16 0, i16 3072, i16 12288 }], [40 x i8] zeroinitializer }, align 32
@duplex = internal constant { [2 x %struct.swmii_regs], [16 x i8] } { [2 x %struct.swmii_regs] [%struct.swmii_regs { i16 8448, i16 160, i16 1024, i16 4096 }, %struct.swmii_regs { i16 16640, i16 320, i16 2048, i16 8192 }], [16 x i8] zeroinitializer }, align 32
@__kstrtab_swphy_read_reg = external dso_local constant [0 x i8], align 1
@__kstrtabns_swphy_read_reg = external dso_local constant [0 x i8], align 1
@__ksymtab_swphy_read_reg = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @swphy_read_reg to i32), ptr @__kstrtab_swphy_read_reg, ptr @__kstrtabns_swphy_read_reg }, section "___ksymtab_gpl+swphy_read_reg", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 10, i64 100, i64 1000]
@__sancov_gen_cov_switch_values.3 = internal global [5 x i64] [i64 3, i64 32, i64 10, i64 100, i64 1000]
@__sancov_gen_cov_switch_values.4 = internal global [11 x i64] [i64 9, i64 32, i64 0, i64 1, i64 2, i64 3, i64 5, i64 10, i64 13, i64 14, i64 15]
@___asan_gen_.5 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.14 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 100, i32 4 }
@___asan_gen_.17 = private unnamed_addr constant [6 x i8] c"speed\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 41, i32 32 }
@___asan_gen_.20 = private unnamed_addr constant [7 x i8] c"duplex\00", align 1
@___asan_gen_.21 = private constant [27 x i8] c"../drivers/net/phy/swphy.c\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 56, i32 32 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @__ksymtab_swphy_read_reg, ptr @__ksymtab_swphy_validate_state, ptr @swphy_validate_state._entry, ptr @swphy_validate_state._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @speed, ptr @duplex], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @swphy_validate_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @speed to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @duplex to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @swphy_validate_state(ptr nocapture noundef readonly %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then:                                          ; preds = %entry
  %speed = getelementptr inbounds %struct.fixed_phy_status, ptr %state, i32 0, i32 1
  %2 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %speed, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %do.end [
    i32 1000, label %if.then.cleanup_crit_edge
    i32 100, label %if.then.cleanup_crit_edge7
    i32 10, label %if.then.cleanup_crit_edge8
  ]

if.then.cleanup_crit_edge8:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then.cleanup_crit_edge7:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then.cleanup_crit_edge, %if.then.cleanup_crit_edge7, %if.then.cleanup_crit_edge8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.then.cleanup_crit_edge ], [ 0, %if.then.cleanup_crit_edge7 ], [ 0, %if.then.cleanup_crit_edge8 ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @swphy_read_reg(i32 noundef %reg, ptr nocapture noundef readonly %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 29, i32 %reg)
  %cmp = icmp sgt i32 %reg, 29
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %speed = getelementptr inbounds %struct.fixed_phy_status, ptr %state, i32 0, i32 1
  %0 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %speed, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.3)
  switch i32 %1, label %do.end [
    i32 1000, label %if.end.if.end24_crit_edge
    i32 100, label %sw.bb1.i
    i32 10, label %sw.bb2.i
  ]

if.end.if.end24_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end24

sw.bb1.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end24

sw.bb2.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end24

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 127, i32 noundef 9, ptr noundef null) #3
  br label %cleanup

if.end24:                                         ; preds = %sw.bb2.i, %sw.bb1.i, %if.end.if.end24_crit_edge
  %retval.0.i.ph = phi i32 [ 2, %if.end.if.end24_crit_edge ], [ 1, %sw.bb1.i ], [ 0, %sw.bb2.i ]
  %duplex = getelementptr inbounds %struct.fixed_phy_status, ptr %state, i32 0, i32 2
  %3 = ptrtoint ptr %duplex to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %duplex, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool25.not = icmp ne i32 %4, 0
  %cond = zext i1 %tobool25.not to i32
  %arrayidx = getelementptr [3 x %struct.swmii_regs], ptr @speed, i32 0, i32 %retval.0.i.ph
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %arrayidx, align 2
  %arrayidx27 = getelementptr [2 x %struct.swmii_regs], ptr @duplex, i32 0, i32 %cond
  %7 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %arrayidx27, align 2
  %and115 = and i16 %8, %6
  %9 = or i16 %and115, 8
  %estat33 = getelementptr [3 x %struct.swmii_regs], ptr @speed, i32 0, i32 %retval.0.i.ph, i32 3
  %10 = ptrtoint ptr %estat33 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %estat33, align 2
  %estat36 = getelementptr [2 x %struct.swmii_regs], ptr @duplex, i32 0, i32 %cond, i32 3
  %12 = ptrtoint ptr %estat36 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %estat36, align 2
  %and38116 = and i16 %13, %11
  %14 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool42.not = icmp eq i32 %15, 0
  br i1 %tobool42.not, label %if.end24.if.end79_crit_edge, label %if.then43

if.end24.if.end79_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end79

if.then43:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #5
  %16 = or i16 %and115, 44
  %lpa48 = getelementptr [3 x %struct.swmii_regs], ptr @speed, i32 0, i32 %retval.0.i.ph, i32 1
  %17 = ptrtoint ptr %lpa48 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %lpa48, align 2
  %lpa51 = getelementptr [2 x %struct.swmii_regs], ptr @duplex, i32 0, i32 %cond, i32 1
  %19 = ptrtoint ptr %lpa51 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %lpa51, align 2
  %and53117 = and i16 %20, %18
  %lpagb58 = getelementptr [3 x %struct.swmii_regs], ptr @speed, i32 0, i32 %retval.0.i.ph, i32 2
  %21 = ptrtoint ptr %lpagb58 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %lpagb58, align 2
  %lpagb61 = getelementptr [2 x %struct.swmii_regs], ptr @duplex, i32 0, i32 %cond, i32 2
  %23 = ptrtoint ptr %lpagb61 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %lpagb61, align 2
  %and63118 = and i16 %24, %22
  %pause = getelementptr inbounds %struct.fixed_phy_status, ptr %state, i32 0, i32 3
  %25 = ptrtoint ptr %pause to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pause, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool67.not = icmp eq i32 %26, 0
  %27 = or i16 %and53117, 1024
  %spec.select = select i1 %tobool67.not, i16 %and53117, i16 %27
  %asym_pause = getelementptr inbounds %struct.fixed_phy_status, ptr %state, i32 0, i32 4
  %28 = ptrtoint ptr %asym_pause to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %asym_pause, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool73.not = icmp eq i32 %29, 0
  %30 = or i16 %spec.select, 2048
  %spec.select119 = select i1 %tobool73.not, i16 %spec.select, i16 %30
  %phi.cast = zext i16 %and63118 to i32
  %phi.cast123 = zext i16 %spec.select119 to i32
  br label %if.end79

if.end79:                                         ; preds = %if.then43, %if.end24.if.end79_crit_edge
  %bmsr.0 = phi i16 [ %9, %if.end24.if.end79_crit_edge ], [ %16, %if.then43 ]
  %lpagb.0.shrunk = phi i32 [ 0, %if.end24.if.end79_crit_edge ], [ %phi.cast, %if.then43 ]
  %lpa.1 = phi i32 [ 0, %if.end24.if.end79_crit_edge ], [ %phi.cast123, %if.then43 ]
  %31 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.4)
  switch i32 %reg, label %sw.default [
    i32 0, label %if.end79.cleanup_crit_edge
    i32 1, label %sw.bb80
    i32 2, label %if.end79.sw.bb82_crit_edge
    i32 3, label %if.end79.sw.bb82_crit_edge124
    i32 5, label %sw.bb83
    i32 10, label %sw.bb85
    i32 15, label %sw.bb87
    i32 13, label %if.end79.sw.bb89_crit_edge
    i32 14, label %if.end79.sw.bb89_crit_edge125
  ]

if.end79.sw.bb89_crit_edge125:                    ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb89

if.end79.sw.bb89_crit_edge:                       ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb89

if.end79.sw.bb82_crit_edge124:                    ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb82

if.end79.sw.bb82_crit_edge:                       ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb82

if.end79.cleanup_crit_edge:                       ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

sw.bb80:                                          ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #5
  %conv81 = zext i16 %bmsr.0 to i32
  br label %cleanup

sw.bb82:                                          ; preds = %if.end79.sw.bb82_crit_edge, %if.end79.sw.bb82_crit_edge124
  br label %cleanup

sw.bb83:                                          ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

sw.bb85:                                          ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

sw.bb87:                                          ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #5
  %conv88 = zext i16 %and38116 to i32
  br label %cleanup

sw.bb89:                                          ; preds = %if.end79.sw.bb89_crit_edge, %if.end79.sw.bb89_crit_edge125
  br label %cleanup

sw.default:                                       ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %sw.bb89, %sw.bb87, %sw.bb85, %sw.bb83, %sw.bb82, %sw.bb80, %if.end79.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ 65535, %sw.default ], [ -1, %sw.bb89 ], [ %conv88, %sw.bb87 ], [ %lpagb.0.shrunk, %sw.bb85 ], [ %lpa.1, %sw.bb83 ], [ 0, %sw.bb82 ], [ %conv81, %sw.bb80 ], [ -1, %entry.cleanup_crit_edge ], [ 4096, %if.end79.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !12}
!llvm.module.flags = !{!14, !15, !16, !17, !18, !19, !20, !21}
!llvm.ident = !{!22}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/phy/swphy.c", i32 100, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @swphy_validate_state._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @swphy_validate_state._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @__ksymtab_swphy_validate_state, !7, !"__ksymtab_swphy_validate_state", i1 false, i1 false}
!7 = !{!"../drivers/net/phy/swphy.c", i32 106, i32 1}
!8 = !{ptr @__ksymtab_swphy_read_reg, !9, !"__ksymtab_swphy_read_reg", i1 false, i1 false}
!9 = !{!"../drivers/net/phy/swphy.c", i32 175, i32 1}
!10 = !{ptr @speed, !11, !"speed", i1 false, i1 false}
!11 = !{!"../drivers/net/phy/swphy.c", i32 41, i32 32}
!12 = !{ptr @duplex, !13, !"duplex", i1 false, i1 false}
!13 = !{!"../drivers/net/phy/swphy.c", i32 56, i32 32}
!14 = !{i32 1, !"wchar_size", i32 2}
!15 = !{i32 1, !"min_enum_size", i32 4}
!16 = !{i32 8, !"branch-target-enforcement", i32 0}
!17 = !{i32 8, !"sign-return-address", i32 0}
!18 = !{i32 8, !"sign-return-address-all", i32 0}
!19 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!20 = !{i32 7, !"uwtable", i32 1}
!21 = !{i32 7, !"frame-pointer", i32 2}
!22 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
