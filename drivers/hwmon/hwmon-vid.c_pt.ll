; ModuleID = '/llk/IR_all_yes/drivers/hwmon/hwmon-vid.c_pt.bc'
source_filename = "../drivers/hwmon/hwmon-vid.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+vid_from_reg\22, \22a\22\09"
module asm "\09.weak\09__crc_vid_from_reg\09\09\09\09"
module asm "\09.long\09__crc_vid_from_reg\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vid_from_reg:\09\09\09\09\09"
module asm "\09.asciz \09\22vid_from_reg\22\09\09\09\09\09"
module asm "__kstrtabns_vid_from_reg:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+vid_which_vrm\22, \22a\22\09"
module asm "\09.weak\09__crc_vid_which_vrm\09\09\09\09"
module asm "\09.long\09__crc_vid_which_vrm\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vid_which_vrm:\09\09\09\09\09"
module asm "\09.asciz \09\22vid_which_vrm\22\09\09\09\09\09"
module asm "__kstrtabns_vid_which_vrm:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }

@vid_from_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 149, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\014hwmon_vid: Requested unsupported VRM version (%u)\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"vid_from_reg\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/hwmon/hwmon-vid.c\00", [38 x i8] zeroinitializer }, align 32
@vid_from_reg._entry_ptr = internal global ptr @vid_from_reg._entry, section ".printk_index", align 4
@__kstrtab_vid_from_reg = external dso_local constant [0 x i8], align 1
@__kstrtabns_vid_from_reg = external dso_local constant [0 x i8], align 1
@__ksymtab_vid_from_reg = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vid_from_reg to i32), ptr @__kstrtab_vid_from_reg, ptr @__kstrtabns_vid_from_reg }, section "___ksymtab+vid_from_reg", align 4
@vid_which_vrm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 295, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016hwmon_vid: Unknown VRM version of your CPU\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"vid_which_vrm\00", [18 x i8] zeroinitializer }, align 32
@vid_which_vrm._entry_ptr = internal global ptr @vid_which_vrm._entry, section ".printk_index", align 4
@__kstrtab_vid_which_vrm = external dso_local constant [0 x i8], align 1
@__kstrtabns_vid_which_vrm = external dso_local constant [0 x i8], align 1
@__ksymtab_vid_which_vrm = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vid_which_vrm to i32), ptr @__kstrtab_vid_which_vrm, ptr @__kstrtabns_vid_which_vrm }, section "___ksymtab+vid_which_vrm", align 4
@__UNIQUE_ID_author106 = internal constant [53 x i8] c"hwmon_vid.author=Rudolf Marek <r.marek@assembler.cz>\00", section ".modinfo", align 1
@__UNIQUE_ID_description107 = internal constant [39 x i8] c"hwmon_vid.description=hwmon-vid driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file108 = internal constant [39 x i8] c"hwmon_vid.file=drivers/hwmon/hwmon-vid\00", section ".modinfo", align 1
@__UNIQUE_ID_license109 = internal constant [22 x i8] c"hwmon_vid.license=GPL\00", section ".modinfo", align 1
@__sancov_gen_cov_switch_values = internal global [17 x i64] [i64 15, i64 8, i64 0, i64 13, i64 14, i64 17, i64 24, i64 25, i64 26, i64 82, i64 84, i64 85, i64 90, i64 91, i64 100, i64 110, i64 131]
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 148, i32 4 }
@___asan_gen_.17 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.23 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.24 = private constant [29 x i8] c"../drivers/hwmon/hwmon-vid.c\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 295, i32 2 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @__UNIQUE_ID_author106, ptr @__UNIQUE_ID_description107, ptr @__UNIQUE_ID_file108, ptr @__UNIQUE_ID_license109, ptr @__ksymtab_vid_from_reg, ptr @__ksymtab_vid_which_vrm, ptr @vid_from_reg._entry, ptr @vid_from_reg._entry_ptr, ptr @vid_which_vrm._entry, ptr @vid_which_vrm._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vid_from_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vid_which_vrm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vid_from_reg(i32 noundef %val, i8 noundef zeroext %vrm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i8 %vrm to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i8 %vrm, label %do.end [
    i8 100, label %sw.bb
    i8 110, label %sw.bb18
    i8 24, label %sw.bb32
    i8 25, label %entry.sw.bb38_crit_edge
    i8 26, label %sw.bb48
    i8 91, label %entry.sw.bb72_crit_edge
    i8 90, label %entry.sw.bb72_crit_edge218
    i8 85, label %sw.bb82
    i8 84, label %sw.bb95
    i8 82, label %entry.sw.bb97_crit_edge
    i8 17, label %sw.bb115
    i8 13, label %entry.sw.bb128_crit_edge
    i8 -125, label %entry.sw.bb128_crit_edge219
    i8 14, label %sw.bb139
    i8 0, label %entry.cleanup_crit_edge
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

entry.sw.bb128_crit_edge219:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.bb128

entry.sw.bb128_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.bb128

entry.sw.bb97_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.bb97

entry.sw.bb72_crit_edge218:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.bb72

entry.sw.bb72_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.bb72

entry.sw.bb38_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.bb38

sw.bb:                                            ; preds = %entry
  %and1 = and i32 %val, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %and1)
  %cmp = icmp eq i32 %and1, 31
  br i1 %cmp, label %sw.bb.cleanup_crit_edge, label %if.end

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #4
  %and = and i32 %val, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %and1)
  %cmp4 = icmp ult i32 %and1, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %and)
  %cmp6 = icmp eq i32 %and, 10
  %or.cond = or i1 %cmp4, %cmp6
  %mul.neg = mul nsw i32 %and1, -25000
  %vid.0.v = select i1 %or.cond, i32 1087500, i32 1862500
  %vid.0 = add nsw i32 %vid.0.v, %mul.neg
  %and14 = and i32 %val, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool.not = icmp eq i32 %and14, 0
  %sub16 = add nsw i32 %vid.0, -12500
  %vid.1 = select i1 %tobool.not, i32 %vid.0, i32 %sub16
  %add = add nuw nsw i32 %vid.1, 500
  %div211 = udiv i32 %add, 1000
  br label %cleanup

sw.bb18:                                          ; preds = %entry
  %and19 = and i32 %val, 255
  %1 = add nsw i32 %and19, -179
  call void @__sanitizer_cov_trace_const_cmp4(i32 -177, i32 %1)
  %2 = icmp ult i32 %1, -177
  br i1 %2, label %sw.bb18.cleanup_crit_edge, label %if.end26

sw.bb18.cleanup_crit_edge:                        ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end26:                                         ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #4
  %.neg = mul nsw i32 %and19, -6250
  %add30 = add nsw i32 %.neg, 1613000
  %div31212 = udiv i32 %add30, 1000
  br label %cleanup

sw.bb32:                                          ; preds = %entry
  %and33 = and i32 %val, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %and33)
  %cmp34 = icmp eq i32 %and33, 31
  br i1 %cmp34, label %sw.bb32.cleanup_crit_edge, label %sw.bb32.sw.bb38_crit_edge

sw.bb32.sw.bb38_crit_edge:                        ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.bb38

sw.bb32.cleanup_crit_edge:                        ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

sw.bb38:                                          ; preds = %sw.bb32.sw.bb38_crit_edge, %entry.sw.bb38_crit_edge
  %val.addr.0 = phi i32 [ %val, %entry.sw.bb38_crit_edge ], [ %and33, %sw.bb32.sw.bb38_crit_edge ]
  %and39 = and i32 %val.addr.0, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %and39)
  %cmp40 = icmp ult i32 %and39, 32
  br i1 %cmp40, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_pc() #4
  %mul42.neg = mul nsw i32 %and39, -25
  %sub43 = add nsw i32 %mul42.neg, 1550
  br label %cleanup

cond.false:                                       ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_pc() #4
  %3 = mul nuw nsw i32 %and39, 25
  %div46.neg213.lhs.trunc = add nuw nsw i32 %3, 64761
  %div46.neg213214217 = lshr i32 %div46.neg213.lhs.trunc, 1
  %div46.neg213.zext = and i32 %div46.neg213214217, 32767
  %sub47 = sub nsw i32 775, %div46.neg213.zext
  br label %cleanup

sw.bb48:                                          ; preds = %entry
  %and49 = and i32 %val, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 123, i32 %and49)
  %cmp50 = icmp ugt i32 %and49, 123
  br i1 %cmp50, label %sw.bb48.cleanup_crit_edge, label %cond.end70

sw.bb48.cleanup_crit_edge:                        ; preds = %sw.bb48
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

cond.end70:                                       ; preds = %sw.bb48
  call void @__sanitizer_cov_trace_pc() #4
  %4 = trunc i32 %and49 to i16
  %5 = mul nsw i16 %4, -125
  %div65215.lhs.trunc = add nsw i16 %5, 15505
  %div65215216 = udiv i16 %div65215.lhs.trunc, 10
  %div65215.zext = zext i16 %div65215216 to i32
  br label %cleanup

sw.bb72:                                          ; preds = %entry.sw.bb72_crit_edge, %entry.sw.bb72_crit_edge218
  %and73 = and i32 %val, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %and73)
  %cmp74 = icmp eq i32 %and73, 31
  %mul78.neg = mul nsw i32 %and73, -25
  %sub79 = add nsw i32 %mul78.neg, 1850
  %cond81 = select i1 %cmp74, i32 0, i32 %sub79
  br label %cleanup

sw.bb82:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %and84 = and i32 %val, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and84)
  %tobool85.not = icmp eq i32 %and84, 0
  %cond86 = select i1 %tobool85.not, i32 0, i32 25
  %and87 = and i32 %val, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and87)
  %cmp88 = icmp ugt i32 %and87, 4
  %cond90 = select i1 %cmp88, i32 2050, i32 1250
  %mul93.neg = mul nsw i32 %and87, -50
  %add91 = add nsw i32 %cond90, %mul93.neg
  %sub94 = add nuw nsw i32 %add91, %cond86
  br label %cleanup

sw.bb95:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %and96 = and i32 %val, 15
  br label %sw.bb97

sw.bb97:                                          ; preds = %sw.bb95, %entry.sw.bb97_crit_edge
  %val.addr.1 = phi i32 [ %val, %entry.sw.bb97_crit_edge ], [ %and96, %sw.bb95 ]
  %and98 = and i32 %val.addr.1, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %and98)
  %cmp99 = icmp eq i32 %and98, 31
  br i1 %cmp99, label %sw.bb97.cleanup_crit_edge, label %cond.false102

sw.bb97.cleanup_crit_edge:                        ; preds = %sw.bb97
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

cond.false102:                                    ; preds = %sw.bb97
  %and103 = and i32 %val.addr.1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and103)
  %tobool104.not = icmp eq i32 %and103, 0
  br i1 %tobool104.not, label %cond.false108, label %cond.true105

cond.true105:                                     ; preds = %cond.false102
  call void @__sanitizer_cov_trace_pc() #4
  %mul106.neg = mul nsw i32 %and98, -100
  %sub107 = add nsw i32 %mul106.neg, 5100
  br label %cleanup

cond.false108:                                    ; preds = %cond.false102
  call void @__sanitizer_cov_trace_pc() #4
  %mul109.neg = mul nsw i32 %and98, -50
  %sub110 = add nsw i32 %mul109.neg, 2050
  br label %cleanup

sw.bb115:                                         ; preds = %entry
  %and117 = and i32 %val, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and117)
  %tobool118.not = icmp eq i32 %and117, 0
  br i1 %tobool118.not, label %cond.false123, label %cond.true119

cond.true119:                                     ; preds = %sw.bb115
  call void @__sanitizer_cov_trace_pc() #4
  %and120 = and i32 %val, 15
  %mul121.neg = mul nsw i32 %and120, -25
  %sub122 = add nsw i32 %mul121.neg, 975
  br label %cleanup

cond.false123:                                    ; preds = %sw.bb115
  call void @__sanitizer_cov_trace_pc() #4
  %and116 = and i32 %val, 31
  %mul124.neg = mul nsw i32 %and116, -50
  %sub125 = add nsw i32 %mul124.neg, 1750
  br label %cleanup

sw.bb128:                                         ; preds = %entry.sw.bb128_crit_edge, %entry.sw.bb128_crit_edge219
  %and129 = and i32 %val, 63
  call void @__sanitizer_cov_trace_const_cmp1(i8 -125, i8 %vrm)
  %cmp131 = icmp eq i8 %vrm, -125
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %and129)
  %cmp133 = icmp eq i32 %and129, 63
  %or.cond210 = and i1 %cmp131, %cmp133
  %and129.op = mul nsw i32 %and129, -16
  %and129.op.op = add nsw i32 %and129.op, 1708
  %sub138 = select i1 %or.cond210, i32 684, i32 %and129.op.op
  br label %cleanup

sw.bb139:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %and140 = and i32 %val, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 119, i32 %and140)
  %cmp141 = icmp ugt i32 %and140, 119
  %mul145.neg = mul nsw i32 %and140, -12500
  %add147 = add nsw i32 %mul145.neg, 1500500
  %div148 = sdiv i32 %add147, 1000
  %cond150 = select i1 %cmp141, i32 0, i32 %div148
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %conv = zext i8 %vrm to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %conv) #5
  br label %cleanup

cleanup:                                          ; preds = %do.end, %sw.bb139, %sw.bb128, %cond.false123, %cond.true119, %cond.false108, %cond.true105, %sw.bb97.cleanup_crit_edge, %sw.bb82, %sw.bb72, %cond.end70, %sw.bb48.cleanup_crit_edge, %cond.false, %cond.true, %sw.bb32.cleanup_crit_edge, %if.end26, %sw.bb18.cleanup_crit_edge, %if.end, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond150, %sw.bb139 ], [ %sub138, %sw.bb128 ], [ %sub94, %sw.bb82 ], [ %cond81, %sw.bb72 ], [ %div65215.zext, %cond.end70 ], [ %div31212, %if.end26 ], [ %div211, %if.end ], [ 0, %sw.bb.cleanup_crit_edge ], [ 0, %sw.bb18.cleanup_crit_edge ], [ 0, %sw.bb32.cleanup_crit_edge ], [ %sub43, %cond.true ], [ %sub47, %cond.false ], [ 0, %sw.bb48.cleanup_crit_edge ], [ 0, %sw.bb97.cleanup_crit_edge ], [ %sub107, %cond.true105 ], [ %sub110, %cond.false108 ], [ %sub122, %cond.true119 ], [ %sub125, %cond.false123 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @vid_which_vrm() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #5
  ret i8 0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }
attributes #5 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !11, !12, !13, !15, !17, !19, !21}
!llvm.module.flags = !{!22, !23, !24, !25, !26, !27, !28, !29}
!llvm.ident = !{!30}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/hwmon/hwmon-vid.c", i32 148, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @vid_from_reg._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @vid_from_reg._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @__ksymtab_vid_from_reg, !7, !"__ksymtab_vid_from_reg", i1 false, i1 false}
!7 = !{!"../drivers/hwmon/hwmon-vid.c", i32 153, i32 1}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/hwmon/hwmon-vid.c", i32 295, i32 2}
!10 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @vid_which_vrm._entry, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @vid_which_vrm._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @__ksymtab_vid_which_vrm, !14, !"__ksymtab_vid_which_vrm", i1 false, i1 false}
!14 = !{!"../drivers/hwmon/hwmon-vid.c", i32 299, i32 1}
!15 = !{ptr @__UNIQUE_ID_author106, !16, !"__UNIQUE_ID_author106", i1 false, i1 false}
!16 = !{!"../drivers/hwmon/hwmon-vid.c", i32 301, i32 1}
!17 = !{ptr @__UNIQUE_ID_description107, !18, !"__UNIQUE_ID_description107", i1 false, i1 false}
!18 = !{!"../drivers/hwmon/hwmon-vid.c", i32 303, i32 1}
!19 = !{ptr @__UNIQUE_ID_file108, !20, !"__UNIQUE_ID_file108", i1 false, i1 false}
!20 = !{!"../drivers/hwmon/hwmon-vid.c", i32 304, i32 1}
!21 = !{ptr @__UNIQUE_ID_license109, !20, !"__UNIQUE_ID_license109", i1 false, i1 false}
!22 = !{i32 1, !"wchar_size", i32 2}
!23 = !{i32 1, !"min_enum_size", i32 4}
!24 = !{i32 8, !"branch-target-enforcement", i32 0}
!25 = !{i32 8, !"sign-return-address", i32 0}
!26 = !{i32 8, !"sign-return-address-all", i32 0}
!27 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!28 = !{i32 7, !"uwtable", i32 1}
!29 = !{i32 7, !"frame-pointer", i32 2}
!30 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
