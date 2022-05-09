; ModuleID = '/llk/IR_all_yes/drivers/isdn/hardware/mISDN/isdnhdlc.c_pt.bc'
source_filename = "../drivers/isdn/hardware/mISDN/isdnhdlc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+isdnhdlc_out_init\22, \22a\22\09"
module asm "\09.weak\09__crc_isdnhdlc_out_init\09\09\09\09"
module asm "\09.long\09__crc_isdnhdlc_out_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_isdnhdlc_out_init:\09\09\09\09\09"
module asm "\09.asciz \09\22isdnhdlc_out_init\22\09\09\09\09\09"
module asm "__kstrtabns_isdnhdlc_out_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+isdnhdlc_rcv_init\22, \22a\22\09"
module asm "\09.weak\09__crc_isdnhdlc_rcv_init\09\09\09\09"
module asm "\09.long\09__crc_isdnhdlc_rcv_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_isdnhdlc_rcv_init:\09\09\09\09\09"
module asm "\09.asciz \09\22isdnhdlc_rcv_init\22\09\09\09\09\09"
module asm "__kstrtabns_isdnhdlc_rcv_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+isdnhdlc_decode\22, \22a\22\09"
module asm "\09.weak\09__crc_isdnhdlc_decode\09\09\09\09"
module asm "\09.long\09__crc_isdnhdlc_decode\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_isdnhdlc_decode:\09\09\09\09\09"
module asm "\09.asciz \09\22isdnhdlc_decode\22\09\09\09\09\09"
module asm "__kstrtabns_isdnhdlc_decode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+isdnhdlc_encode\22, \22a\22\09"
module asm "\09.weak\09__crc_isdnhdlc_encode\09\09\09\09"
module asm "\09.long\09__crc_isdnhdlc_encode\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_isdnhdlc_encode:\09\09\09\09\09"
module asm "\09.asciz \09\22isdnhdlc_encode\22\09\09\09\09\09"
module asm "__kstrtabns_isdnhdlc_encode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.isdnhdlc_vars = type { i32, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8 }

@__UNIQUE_ID_author106 = internal constant [138 x i8] c"isdnhdlc.author=Wolfgang M\C3\BCes <wolfgang@iksw-muees.de>, Frode Isaksen <fisaksen@bewan.com>, Kai Germaschewski <kai.germaschewski@gmx.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description107 = internal constant [55 x i8] c"isdnhdlc.description=General purpose ISDN HDLC decoder\00", section ".modinfo", align 1
@__UNIQUE_ID_file108 = internal constant [51 x i8] c"isdnhdlc.file=drivers/isdn/hardware/mISDN/isdnhdlc\00", section ".modinfo", align 1
@__UNIQUE_ID_license109 = internal constant [21 x i8] c"isdnhdlc.license=GPL\00", section ".modinfo", align 1
@__kstrtab_isdnhdlc_out_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_isdnhdlc_out_init = external dso_local constant [0 x i8], align 1
@__ksymtab_isdnhdlc_out_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @isdnhdlc_out_init to i32), ptr @__kstrtab_isdnhdlc_out_init, ptr @__kstrtabns_isdnhdlc_out_init }, section "___ksymtab+isdnhdlc_out_init", align 4
@__kstrtab_isdnhdlc_rcv_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_isdnhdlc_rcv_init = external dso_local constant [0 x i8], align 1
@__ksymtab_isdnhdlc_rcv_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @isdnhdlc_rcv_init to i32), ptr @__kstrtab_isdnhdlc_rcv_init, ptr @__kstrtabns_isdnhdlc_rcv_init }, section "___ksymtab+isdnhdlc_rcv_init", align 4
@isdnhdlc_decode.fast_flag = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\00\00\00 08<>?", [23 x i8] zeroinitializer }, align 32
@isdnhdlc_decode.fast_flag_value = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\00~\FC\F9\F3\E7\CF\9F?", [23 x i8] zeroinitializer }, align 32
@isdnhdlc_decode.fast_abort = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"\00\00\80\C0\E0\F0\F8\FC\FE\FF", [22 x i8] zeroinitializer }, align 32
@__kstrtab_isdnhdlc_decode = external dso_local constant [0 x i8], align 1
@__kstrtabns_isdnhdlc_decode = external dso_local constant [0 x i8], align 1
@__ksymtab_isdnhdlc_decode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @isdnhdlc_decode to i32), ptr @__kstrtab_isdnhdlc_decode, ptr @__kstrtabns_isdnhdlc_decode }, section "___ksymtab+isdnhdlc_decode", align 4
@isdnhdlc_encode.xfast_flag_value = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"~?\9F\CF\E7\F3\F9\FC~", [23 x i8] zeroinitializer }, align 32
@__kstrtab_isdnhdlc_encode = external dso_local constant [0 x i8], align 1
@__kstrtabns_isdnhdlc_encode = external dso_local constant [0 x i8], align 1
@__ksymtab_isdnhdlc_encode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @isdnhdlc_encode to i32), ptr @__kstrtab_isdnhdlc_encode, ptr @__kstrtabns_isdnhdlc_encode }, section "___ksymtab+isdnhdlc_encode", align 4
@byte_rev_table = external dso_local local_unnamed_addr constant [256 x i8], align 1
@crc_ccitt_table = external dso_local local_unnamed_addr constant [256 x i16], align 2
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 11]
@__sancov_gen_cov_switch_values.1 = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 6]
@__sancov_gen_cov_switch_values.2 = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 6]
@__sancov_gen_cov_switch_values.3 = internal global [15 x i64] [i64 13, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12]
@___asan_gen_.4 = private unnamed_addr constant [10 x i8] c"fast_flag\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 123, i32 29 }
@___asan_gen_.7 = private unnamed_addr constant [16 x i8] c"fast_flag_value\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 127, i32 29 }
@___asan_gen_.10 = private unnamed_addr constant [11 x i8] c"fast_abort\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 131, i32 29 }
@___asan_gen_.13 = private unnamed_addr constant [17 x i8] c"xfast_flag_value\00", align 1
@___asan_gen_.14 = private constant [42 x i8] c"../drivers/isdn/hardware/mISDN/isdnhdlc.c\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 344, i32 29 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @__UNIQUE_ID_author106, ptr @__UNIQUE_ID_description107, ptr @__UNIQUE_ID_file108, ptr @__UNIQUE_ID_license109, ptr @__ksymtab_isdnhdlc_decode, ptr @__ksymtab_isdnhdlc_encode, ptr @__ksymtab_isdnhdlc_out_init, ptr @__ksymtab_isdnhdlc_rcv_init, ptr @isdnhdlc_decode.fast_flag, ptr @isdnhdlc_decode.fast_flag_value, ptr @isdnhdlc_decode.fast_abort, ptr @isdnhdlc_encode.xfast_flag_value], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isdnhdlc_decode.fast_flag to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isdnhdlc_decode.fast_flag_value to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isdnhdlc_decode.fast_abort to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isdnhdlc_encode.xfast_flag_value to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @isdnhdlc_rcv_init(ptr nocapture noundef %hdlc, i32 noundef %features) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %hdlc, i32 0, i32 32)
  %state = getelementptr inbounds %struct.isdnhdlc_vars, ptr %hdlc, i32 0, i32 4
  %1 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 4, ptr %state, align 4
  %and = and i32 %features, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %do_adapt56 = getelementptr inbounds %struct.isdnhdlc_vars, ptr %hdlc, i32 0, i32 10
  %2 = ptrtoint ptr %do_adapt56 to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %do_adapt56, align 1
  %bf.set = or i8 %bf.load, 32
  store i8 %bf.set, ptr %do_adapt56, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and1 = and i32 %features, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.end.if.end7_crit_edge, label %if.then3

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end7

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %do_bitreverse = getelementptr inbounds %struct.isdnhdlc_vars, ptr %hdlc, i32 0, i32 10
  %3 = ptrtoint ptr %do_bitreverse to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load4 = load i8, ptr %do_bitreverse, align 1
  %bf.set6 = or i8 %bf.load4, 8
  store i8 %bf.set6, ptr %do_bitreverse, align 1
  br label %if.end7

if.end7:                                          ; preds = %if.then3, %if.end.if.end7_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @isdnhdlc_out_init(ptr nocapture noundef %hdlc, i32 noundef %features) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %hdlc, i32 0, i32 32)
  %and = and i32 %features, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %dchannel1 = getelementptr inbounds %struct.isdnhdlc_vars, ptr %hdlc, i32 0, i32 10
  %1 = ptrtoint ptr %dchannel1 to i32
  call void @__asan_load1_noabort(i32 %1)
  %bf.load2 = load i8, ptr %dchannel1, align 1
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %bf.set = or i8 %bf.load2, 64
  %2 = ptrtoint ptr %dchannel1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %bf.set, ptr %dchannel1, align 1
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %bf.clear3 = and i8 %bf.load2, -65
  %3 = ptrtoint ptr %dchannel1 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %bf.clear3, ptr %dchannel1, align 1
  %ffvalue = getelementptr inbounds %struct.isdnhdlc_vars, ptr %hdlc, i32 0, i32 9
  %4 = ptrtoint ptr %ffvalue to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 126, ptr %ffvalue, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %.sink = phi i32 [ 2, %if.else ], [ 3, %if.then ]
  %5 = getelementptr inbounds %struct.isdnhdlc_vars, ptr %hdlc, i32 0, i32 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %.sink, ptr %5, align 4
  %cbin = getelementptr inbounds %struct.isdnhdlc_vars, ptr %hdlc, i32 0, i32 7
  %7 = ptrtoint ptr %cbin to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 126, ptr %cbin, align 2
  %and6 = and i32 %features, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.else13, label %if.then8

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %do_adapt56 = getelementptr inbounds %struct.isdnhdlc_vars, ptr %hdlc, i32 0, i32 10
  %8 = ptrtoint ptr %do_adapt56 to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load9 = load i8, ptr %do_adapt56, align 1
  %bf.set11 = or i8 %bf.load9, 32
  store i8 %bf.set11, ptr %do_adapt56, align 1
  br label %if.end14

if.else13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %data_bits = getelementptr inbounds %struct.isdnhdlc_vars, ptr %hdlc, i32 0, i32 2
  br label %if.end14

if.end14:                                         ; preds = %if.else13, %if.then8
  %data_bits.sink = phi ptr [ %data_bits, %if.else13 ], [ %5, %if.then8 ]
  %9 = ptrtoint ptr %data_bits.sink to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 8, ptr %data_bits.sink, align 4
  %and15 = and i32 %features, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.end14.if.end21_crit_edge, label %if.then17

if.end14.if.end21_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end21

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #5
  %do_bitreverse = getelementptr inbounds %struct.isdnhdlc_vars, ptr %hdlc, i32 0, i32 10
  %10 = ptrtoint ptr %do_bitreverse to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load18 = load i8, ptr %do_bitreverse, align 1
  %bf.set20 = or i8 %bf.load18, 8
  store i8 %bf.set20, ptr %do_bitreverse, align 1
  br label %if.end21

if.end21:                                         ; preds = %if.then17, %if.end14.if.end21_crit_edge
  ret void
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @isdnhdlc_decode(ptr noundef %hdlc, ptr nocapture noundef readonly %src, i32 noundef %slen, ptr nocapture noundef %count, ptr nocapture noundef writeonly %dst, i32 noundef %dsize) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %slen, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %slen)
  %cmp448 = icmp sgt i32 %slen, 0
  br i1 %cmp448, label %while.body.lr.ph, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %do_bitreverse = getelementptr inbounds %struct.isdnhdlc_vars, ptr %hdlc, i32 0, i32 10
  %cbin26 = getelementptr inbounds %struct.isdnhdlc_vars, ptr %hdlc, i32 0, i32 7
  %state = getelementptr inbounds %struct.isdnhdlc_vars, ptr %hdlc, i32 0, i32 4
  %ffvalue269 = getelementptr inbounds %struct.isdnhdlc_vars, ptr %hdlc, i32 0, i32 9
  %ffbit_shift284 = getelementptr inbounds %struct.isdnhdlc_vars, ptr %hdlc, i32 0, i32 3
  %shift_reg294 = getelementptr inbounds %struct.isdnhdlc_vars, ptr %hdlc, i32 0, i32 8
  %hdlc_bits1297 = getelementptr inbounds %struct.isdnhdlc_vars, ptr %hdlc, i32 0, i32 1
  %data_bits306 = getelementptr inbounds %struct.isdnhdlc_vars, ptr %hdlc, i32 0, i32 2
  %dstpos.i = getelementptr inbounds %struct.isdnhdlc_vars, ptr %hdlc, i32 0, i32 5
  %crc.i = getelementptr inbounds %struct.isdnhdlc_vars, ptr %hdlc, i32 0, i32 6
  br label %while.body

while.body:                                       ; preds = %sw.epilog318.while.body_crit_edge, %while.body.lr.ph
  %src.addr.0451 = phi ptr [ %src, %while.body.lr.ph ], [ %src.addr.2, %sw.epilog318.while.body_crit_edge ]
  %slen.addr.0450 = phi i32 [ %slen, %while.body.lr.ph ], [ %slen.addr.1, %sw.epilog318.while.body_crit_edge ]
  %status.0449 = phi i32 [ 0, %while.body.lr.ph ], [ %status.6, %sw.epilog318.while.body_crit_edge ]
  %1 = ptrtoint ptr %hdlc to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %hdlc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp1 = icmp eq i32 %2, 0
  br i1 %cmp1, label %if.then, label %while.body.if.end36_crit_edge

while.body.if.end36_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end36

if.then:                                          ; preds = %while.body
  %3 = ptrtoint ptr %do_bitreverse to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load = load i8, ptr %do_bitreverse, align 1
  %4 = and i8 %bf.load, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp2 = icmp eq i8 %4, 0
  %5 = ptrtoint ptr %src.addr.0451 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %src.addr.0451, align 1
  br i1 %cmp2, label %cond.false, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

cond.false:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  %idxprom.i = zext i8 %6 to i32
  %arrayidx.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx.i, align 1
  br label %if.end

if.end:                                           ; preds = %cond.false, %if.then.if.end_crit_edge
  %storemerge = phi i8 [ %8, %cond.false ], [ %6, %if.then.if.end_crit_edge ]
  %9 = ptrtoint ptr %cbin26 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %storemerge, ptr %cbin26, align 2
  %src.addr.1 = getelementptr i8, ptr %src.addr.0451, i32 1
  %dec = add nsw i32 %slen.addr.0450, -1
  %10 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp eq i8 %10, 0
  %spec.store.select = select i1 %tobool.not, i32 8, i32 7
  %11 = ptrtoint ptr %hdlc to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %spec.store.select, ptr %hdlc, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.end, %while.body.if.end36_crit_edge
  %slen.addr.1 = phi i32 [ %slen.addr.0450, %while.body.if.end36_crit_edge ], [ %dec, %if.end ]
  %src.addr.2 = phi ptr [ %src.addr.0451, %while.body.if.end36_crit_edge ], [ %src.addr.1, %if.end ]
  %12 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %state, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i32 %13, label %if.end36.sw.epilog318_crit_edge [
    i32 11, label %if.end36.cleanup_crit_edge
    i32 0, label %sw.bb37
    i32 1, label %sw.bb47
    i32 2, label %sw.bb79
    i32 3, label %sw.bb102
    i32 4, label %sw.bb121
    i32 5, label %sw.bb266
  ]

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end36.sw.epilog318_crit_edge:                  ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog318

sw.bb37:                                          ; preds = %if.end36
  %15 = ptrtoint ptr %cbin26 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %cbin26, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %16)
  %cmp40 = icmp eq i8 %16, -1
  br i1 %cmp40, label %if.then42, label %if.end44

if.then42:                                        ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #5
  %17 = ptrtoint ptr %hdlc to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %hdlc, align 4
  br label %sw.epilog318

if.end44:                                         ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #5
  %18 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %state, align 4
  %19 = ptrtoint ptr %hdlc_bits1297 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %hdlc_bits1297, align 4
  %20 = ptrtoint ptr %hdlc to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 8, ptr %hdlc, align 4
  br label %sw.epilog318

sw.bb47:                                          ; preds = %if.end36
  %21 = ptrtoint ptr %cbin26 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %cbin26, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %22)
  %tobool51.not = icmp sgt i8 %22, -1
  br i1 %tobool51.not, label %if.then52, label %if.else55

if.then52:                                        ; preds = %sw.bb47
  call void @__sanitizer_cov_trace_pc() #5
  %23 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 2, ptr %state, align 4
  br label %if.end72.sink.split

if.else55:                                        ; preds = %sw.bb47
  %24 = ptrtoint ptr %do_bitreverse to i32
  call void @__asan_load1_noabort(i32 %24)
  %bf.load57 = load i8, ptr %do_bitreverse, align 1
  %25 = and i8 %bf.load57, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool61.not = icmp eq i8 %25, 0
  br i1 %tobool61.not, label %land.lhs.true, label %if.else55.if.end72_crit_edge

if.else55.if.end72_crit_edge:                     ; preds = %if.else55
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end72

land.lhs.true:                                    ; preds = %if.else55
  %26 = ptrtoint ptr %hdlc_bits1297 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %hdlc_bits1297, align 4
  %inc = add i32 %27, 1
  store i32 %inc, ptr %hdlc_bits1297, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %inc)
  %cmp63 = icmp sgt i32 %inc, 7
  br i1 %cmp63, label %land.lhs.true65, label %land.lhs.true.if.end72_crit_edge

land.lhs.true.if.end72_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end72

land.lhs.true65:                                  ; preds = %land.lhs.true
  %28 = ptrtoint ptr %hdlc to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %hdlc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %29)
  %cmp67 = icmp eq i32 %29, 1
  br i1 %cmp67, label %land.lhs.true65.if.end72.sink.split_crit_edge, label %land.lhs.true65.if.end72_crit_edge

land.lhs.true65.if.end72_crit_edge:               ; preds = %land.lhs.true65
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end72

land.lhs.true65.if.end72.sink.split_crit_edge:    ; preds = %land.lhs.true65
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end72.sink.split

if.end72.sink.split:                              ; preds = %land.lhs.true65.if.end72.sink.split_crit_edge, %if.then52
  %state.sink = phi ptr [ %hdlc_bits1297, %if.then52 ], [ %state, %land.lhs.true65.if.end72.sink.split_crit_edge ]
  %30 = ptrtoint ptr %state.sink to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %state.sink, align 4
  br label %if.end72

if.end72:                                         ; preds = %if.end72.sink.split, %land.lhs.true65.if.end72_crit_edge, %land.lhs.true.if.end72_crit_edge, %if.else55.if.end72_crit_edge
  %shl75 = shl i8 %22, 1
  %31 = ptrtoint ptr %cbin26 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %shl75, ptr %cbin26, align 2
  %32 = ptrtoint ptr %hdlc to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %hdlc, align 4
  %dec78 = add i32 %33, -1
  store i32 %dec78, ptr %hdlc, align 4
  br label %sw.epilog318

sw.bb79:                                          ; preds = %if.end36
  %34 = ptrtoint ptr %cbin26 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %cbin26, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %35)
  %tobool83.not = icmp sgt i8 %35, -1
  br i1 %tobool83.not, label %if.else93, label %if.then84

if.then84:                                        ; preds = %sw.bb79
  %36 = ptrtoint ptr %hdlc_bits1297 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %hdlc_bits1297, align 4
  %inc86 = add i32 %37, 1
  store i32 %inc86, ptr %hdlc_bits1297, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %inc86)
  %cmp88 = icmp eq i32 %inc86, 6
  br i1 %cmp88, label %if.then90, label %if.then84.if.end95_crit_edge

if.then84.if.end95_crit_edge:                     ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end95

if.then90:                                        ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #5
  %38 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 3, ptr %state, align 4
  br label %if.end95

if.else93:                                        ; preds = %sw.bb79
  call void @__sanitizer_cov_trace_pc() #5
  %39 = ptrtoint ptr %hdlc_bits1297 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %hdlc_bits1297, align 4
  br label %if.end95

if.end95:                                         ; preds = %if.else93, %if.then90, %if.then84.if.end95_crit_edge
  %shl98 = shl i8 %35, 1
  %40 = ptrtoint ptr %cbin26 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %shl98, ptr %cbin26, align 2
  %41 = ptrtoint ptr %hdlc to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %hdlc, align 4
  %dec101 = add i32 %42, -1
  store i32 %dec101, ptr %hdlc, align 4
  br label %sw.epilog318

sw.bb102:                                         ; preds = %if.end36
  %43 = ptrtoint ptr %cbin26 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %cbin26, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %44)
  %tobool106.not = icmp sgt i8 %44, -1
  br i1 %tobool106.not, label %if.else109, label %if.then107

if.then107:                                       ; preds = %sw.bb102
  call void @__sanitizer_cov_trace_pc() #5
  %45 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 1, ptr %state, align 4
  br label %if.end114

if.else109:                                       ; preds = %sw.bb102
  call void @__sanitizer_cov_trace_pc() #5
  %46 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 4, ptr %state, align 4
  %47 = ptrtoint ptr %crc.i to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 -1, ptr %crc.i, align 4
  %48 = ptrtoint ptr %shift_reg294 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 0, ptr %shift_reg294, align 1
  %49 = ptrtoint ptr %hdlc_bits1297 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %hdlc_bits1297, align 4
  %50 = ptrtoint ptr %data_bits306 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %data_bits306, align 4
  %51 = ptrtoint ptr %do_bitreverse to i32
  call void @__asan_load1_noabort(i32 %51)
  %bf.load112 = load i8, ptr %do_bitreverse, align 1
  %bf.clear113 = and i8 %bf.load112, 127
  store i8 %bf.clear113, ptr %do_bitreverse, align 1
  br label %if.end114

if.end114:                                        ; preds = %if.else109, %if.then107
  %shl117 = shl i8 %44, 1
  %52 = ptrtoint ptr %cbin26 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %shl117, ptr %cbin26, align 2
  %53 = ptrtoint ptr %hdlc to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %hdlc, align 4
  %dec120 = add i32 %54, -1
  store i32 %dec120, ptr %hdlc, align 4
  br label %sw.epilog318

sw.bb121:                                         ; preds = %if.end36
  %55 = ptrtoint ptr %cbin26 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %cbin26, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %56)
  %tobool125.not = icmp sgt i8 %56, -1
  %57 = ptrtoint ptr %hdlc_bits1297 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %hdlc_bits1297, align 4
  br i1 %tobool125.not, label %if.else168, label %if.then126

if.then126:                                       ; preds = %sw.bb121
  %inc128 = add i32 %58, 1
  %59 = ptrtoint ptr %hdlc_bits1297 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %inc128, ptr %hdlc_bits1297, align 4
  %60 = zext i32 %58 to i64
  call void @__sanitizer_cov_trace_switch(i64 %60, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %58, label %sw.default [
    i32 5, label %if.then126.if.end225_crit_edge
    i32 6, label %sw.bb130
  ]

if.then126.if.end225_crit_edge:                   ; preds = %if.then126
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end225

sw.bb130:                                         ; preds = %if.then126
  %61 = ptrtoint ptr %do_bitreverse to i32
  call void @__asan_load1_noabort(i32 %61)
  %bf.load132 = load i8, ptr %do_bitreverse, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load132)
  %tobool135.not = icmp sgt i8 %bf.load132, -1
  %spec.select = select i1 %tobool135.not, i32 %status.0449, i32 -1
  %62 = and i8 %bf.load132, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool143.not = icmp eq i8 %62, 0
  br i1 %tobool143.not, label %if.then144, label %if.else155

if.then144:                                       ; preds = %sw.bb130
  %63 = ptrtoint ptr %hdlc to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %hdlc, align 4
  %add = add i32 %64, 1
  %arrayidx = getelementptr [10 x i8], ptr @isdnhdlc_decode.fast_abort, i32 0, i32 %add
  %65 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %56, i8 %66)
  %cmp149 = icmp eq i8 %56, %66
  br i1 %cmp149, label %if.then151, label %if.then144.if.end225_crit_edge

if.then144.if.end225_crit_edge:                   ; preds = %if.then144
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end225

if.then151:                                       ; preds = %if.then144
  call void @__sanitizer_cov_trace_pc() #5
  %67 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %state, align 4
  %68 = ptrtoint ptr %hdlc to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 1, ptr %hdlc, align 4
  br label %if.end225

if.else155:                                       ; preds = %sw.bb130
  call void @__sanitizer_cov_trace_pc() #5
  %69 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 1, ptr %state, align 4
  br label %if.end225

sw.default:                                       ; preds = %if.then126
  call void @__sanitizer_cov_trace_pc() #5
  %70 = ptrtoint ptr %shift_reg294 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %shift_reg294, align 1
  %72 = lshr i8 %71, 1
  %73 = or i8 %72, -128
  store i8 %73, ptr %shift_reg294, align 1
  %74 = ptrtoint ptr %data_bits306 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %data_bits306, align 4
  %inc167 = add i32 %75, 1
  store i32 %inc167, ptr %data_bits306, align 4
  br label %if.end225

if.else168:                                       ; preds = %sw.bb121
  %76 = zext i32 %58 to i64
  call void @__sanitizer_cov_trace_switch(i64 %76, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %58, label %sw.default216 [
    i32 5, label %if.else168.sw.epilog223_crit_edge
    i32 6, label %sw.bb170
  ]

if.else168.sw.epilog223_crit_edge:                ; preds = %if.else168
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog223

sw.bb170:                                         ; preds = %if.else168
  %77 = ptrtoint ptr %do_bitreverse to i32
  call void @__asan_load1_noabort(i32 %77)
  %bf.load172 = load i8, ptr %do_bitreverse, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load172)
  %tobool175.not = icmp sgt i8 %bf.load172, -1
  br i1 %tobool175.not, label %sw.bb170.if.end178_crit_edge, label %if.then176

sw.bb170.if.end178_crit_edge:                     ; preds = %sw.bb170
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end178

if.then176:                                       ; preds = %sw.bb170
  %78 = ptrtoint ptr %dstpos.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %dstpos.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %79)
  %cmp.i = icmp slt i32 %79, 2
  br i1 %cmp.i, label %if.then176.if.end178_crit_edge, label %if.else.i

if.then176.if.end178_crit_edge:                   ; preds = %if.then176
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end178

if.else.i:                                        ; preds = %if.then176
  %80 = ptrtoint ptr %crc.i to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %crc.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -3912, i16 %81)
  %cmp1.not.i = icmp eq i16 %81, -3912
  br i1 %cmp1.not.i, label %if.else4.i, label %if.else.i.if.end178_crit_edge

if.else.i.if.end178_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end178

if.else4.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #5
  %sub.i = add nsw i32 %79, -2
  %82 = ptrtoint ptr %dstpos.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %sub.i, ptr %dstpos.i, align 4
  br label %if.end178

if.end178:                                        ; preds = %if.else4.i, %if.else.i.if.end178_crit_edge, %if.then176.if.end178_crit_edge, %sw.bb170.if.end178_crit_edge
  %status.2 = phi i32 [ %status.0449, %sw.bb170.if.end178_crit_edge ], [ %sub.i, %if.else4.i ], [ -1, %if.then176.if.end178_crit_edge ], [ -2, %if.else.i.if.end178_crit_edge ]
  %83 = ptrtoint ptr %crc.i to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 -1, ptr %crc.i, align 4
  %84 = ptrtoint ptr %shift_reg294 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 0, ptr %shift_reg294, align 1
  %85 = ptrtoint ptr %data_bits306 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 0, ptr %data_bits306, align 4
  %86 = and i8 %bf.load172, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %tobool187.not = icmp eq i8 %86, 0
  br i1 %tobool187.not, label %do.body, label %if.else209

do.body:                                          ; preds = %if.end178
  %87 = ptrtoint ptr %hdlc to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %hdlc, align 4
  %arrayidx192 = getelementptr [9 x i8], ptr @isdnhdlc_decode.fast_flag, i32 0, i32 %88
  %89 = ptrtoint ptr %arrayidx192 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %arrayidx192, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %56, i8 %90)
  %cmp194 = icmp eq i8 %56, %90
  br i1 %cmp194, label %if.then196, label %if.else202

if.then196:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx198 = getelementptr [9 x i8], ptr @isdnhdlc_decode.fast_flag_value, i32 0, i32 %88
  %91 = ptrtoint ptr %arrayidx198 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %arrayidx198, align 1
  %93 = ptrtoint ptr %ffvalue269 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %92, ptr %ffvalue269, align 4
  %94 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 5, ptr %state, align 4
  %95 = ptrtoint ptr %ffbit_shift284 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %88, ptr %ffbit_shift284, align 4
  %96 = ptrtoint ptr %hdlc to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 1, ptr %hdlc, align 4
  br label %sw.epilog223

if.else202:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  %97 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 4, ptr %state, align 4
  %bf.clear206 = and i8 %bf.load172, 127
  %98 = ptrtoint ptr %do_bitreverse to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 %bf.clear206, ptr %do_bitreverse, align 1
  br label %sw.epilog223

if.else209:                                       ; preds = %if.end178
  call void @__sanitizer_cov_trace_pc() #5
  %99 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 4, ptr %state, align 4
  %bf.clear213 = and i8 %bf.load172, 127
  %100 = ptrtoint ptr %do_bitreverse to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 %bf.clear213, ptr %do_bitreverse, align 1
  br label %sw.epilog223

sw.default216:                                    ; preds = %if.else168
  call void @__sanitizer_cov_trace_pc() #5
  %101 = ptrtoint ptr %shift_reg294 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %shift_reg294, align 1
  %103 = lshr i8 %102, 1
  store i8 %103, ptr %shift_reg294, align 1
  %104 = ptrtoint ptr %data_bits306 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %data_bits306, align 4
  %inc222 = add i32 %105, 1
  store i32 %inc222, ptr %data_bits306, align 4
  br label %sw.epilog223

sw.epilog223:                                     ; preds = %sw.default216, %if.else209, %if.else202, %if.then196, %if.else168.sw.epilog223_crit_edge
  %status.3 = phi i32 [ %status.0449, %sw.default216 ], [ %status.2, %if.else209 ], [ %status.2, %if.then196 ], [ %status.2, %if.else202 ], [ %status.0449, %if.else168.sw.epilog223_crit_edge ]
  %106 = ptrtoint ptr %hdlc_bits1297 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 0, ptr %hdlc_bits1297, align 4
  br label %if.end225

if.end225:                                        ; preds = %sw.epilog223, %sw.default, %if.else155, %if.then151, %if.then144.if.end225_crit_edge, %if.then126.if.end225_crit_edge
  %status.4 = phi i32 [ %status.0449, %sw.default ], [ %spec.select, %if.else155 ], [ %spec.select, %if.then151 ], [ %spec.select, %if.then144.if.end225_crit_edge ], [ %status.0449, %if.then126.if.end225_crit_edge ], [ %status.3, %sw.epilog223 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.4)
  %tobool226.not = icmp eq i32 %status.4, 0
  br i1 %tobool226.not, label %if.end234, label %if.then227

if.then227:                                       ; preds = %if.end225
  call void @__sanitizer_cov_trace_pc() #5
  %107 = ptrtoint ptr %dstpos.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 0, ptr %dstpos.i, align 4
  %108 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %count, align 4
  %sub = sub i32 %109, %slen.addr.1
  store i32 %sub, ptr %count, align 4
  %110 = ptrtoint ptr %cbin26 to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %cbin26, align 2
  %shl230 = shl i8 %111, 1
  store i8 %shl230, ptr %cbin26, align 2
  %112 = ptrtoint ptr %hdlc to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %hdlc, align 4
  %dec233 = add i32 %113, -1
  store i32 %dec233, ptr %hdlc, align 4
  br label %cleanup

if.end234:                                        ; preds = %if.end225
  %114 = ptrtoint ptr %data_bits306 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %data_bits306, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %115)
  %cmp236 = icmp eq i32 %115, 8
  br i1 %cmp236, label %if.then238, label %if.end234.if.end259_crit_edge

if.end234.if.end259_crit_edge:                    ; preds = %if.end234
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end259

if.then238:                                       ; preds = %if.end234
  %116 = ptrtoint ptr %data_bits306 to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 0, ptr %data_bits306, align 4
  %117 = ptrtoint ptr %do_bitreverse to i32
  call void @__asan_load1_noabort(i32 %117)
  %bf.load241 = load i8, ptr %do_bitreverse, align 1
  %bf.set243 = or i8 %bf.load241, -128
  store i8 %bf.set243, ptr %do_bitreverse, align 1
  %118 = ptrtoint ptr %crc.i to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %crc.i, align 4
  %120 = ptrtoint ptr %shift_reg294 to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %shift_reg294, align 1
  %122 = lshr i16 %119, 8
  %conv2.i = zext i8 %121 to i32
  %123 = and i16 %119, 255
  %conv.masked.i = zext i16 %123 to i32
  %and.i = xor i32 %conv.masked.i, %conv2.i
  %arrayidx.i444 = getelementptr [256 x i16], ptr @crc_ccitt_table, i32 0, i32 %and.i
  %124 = ptrtoint ptr %arrayidx.i444 to i32
  call void @__asan_load2_noabort(i32 %124)
  %125 = load i16, ptr %arrayidx.i444, align 2
  %xor4.i = xor i16 %125, %122
  store i16 %xor4.i, ptr %crc.i, align 4
  %126 = ptrtoint ptr %dstpos.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %dstpos.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %127, i32 %dsize)
  %cmp249 = icmp slt i32 %127, %dsize
  br i1 %cmp249, label %if.then251, label %if.else256

if.then251:                                       ; preds = %if.then238
  call void @__sanitizer_cov_trace_pc() #5
  %inc254 = add nsw i32 %127, 1
  %128 = ptrtoint ptr %dstpos.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %inc254, ptr %dstpos.i, align 4
  %arrayidx255 = getelementptr i8, ptr %dst, i32 %127
  %129 = ptrtoint ptr %arrayidx255 to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 %121, ptr %arrayidx255, align 1
  br label %if.end259

if.else256:                                       ; preds = %if.then238
  call void @__sanitizer_cov_trace_pc() #5
  %130 = ptrtoint ptr %dstpos.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 0, ptr %dstpos.i, align 4
  br label %if.end259

if.end259:                                        ; preds = %if.else256, %if.then251, %if.end234.if.end259_crit_edge
  %status.5 = phi i32 [ 0, %if.then251 ], [ -3, %if.else256 ], [ 0, %if.end234.if.end259_crit_edge ]
  %131 = ptrtoint ptr %cbin26 to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %cbin26, align 2
  %shl262 = shl i8 %132, 1
  store i8 %shl262, ptr %cbin26, align 2
  %133 = ptrtoint ptr %hdlc to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %hdlc, align 4
  %dec265 = add i32 %134, -1
  store i32 %dec265, ptr %hdlc, align 4
  br label %sw.epilog318

sw.bb266:                                         ; preds = %if.end36
  %135 = ptrtoint ptr %cbin26 to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %cbin26, align 2
  %137 = ptrtoint ptr %ffvalue269 to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %ffvalue269, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %136, i8 %138)
  %cmp271 = icmp eq i8 %136, %138
  br i1 %cmp271, label %if.then273, label %if.else275

if.then273:                                       ; preds = %sw.bb266
  call void @__sanitizer_cov_trace_pc() #5
  %139 = ptrtoint ptr %hdlc to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 0, ptr %hdlc, align 4
  br label %sw.epilog318

if.else275:                                       ; preds = %sw.bb266
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %136)
  %cmp278 = icmp eq i8 %136, -1
  br i1 %cmp278, label %if.then280, label %if.else283

if.then280:                                       ; preds = %if.else275
  call void @__sanitizer_cov_trace_pc() #5
  %140 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 0, ptr %state, align 4
  %141 = ptrtoint ptr %hdlc to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 0, ptr %hdlc, align 4
  br label %sw.epilog318

if.else283:                                       ; preds = %if.else275
  %142 = ptrtoint ptr %ffbit_shift284 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %ffbit_shift284, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %143)
  %cmp285 = icmp eq i32 %143, 8
  br i1 %cmp285, label %if.then287, label %do.body290

if.then287:                                       ; preds = %if.else283
  call void @__sanitizer_cov_trace_pc() #5
  %144 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 3, ptr %state, align 4
  br label %sw.epilog318

do.body290:                                       ; preds = %if.else283
  call void @__sanitizer_cov_trace_pc() #5
  %sub292 = add i32 %143, -1
  %arrayidx293 = getelementptr [10 x i8], ptr @isdnhdlc_decode.fast_abort, i32 0, i32 %sub292
  %145 = ptrtoint ptr %arrayidx293 to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %arrayidx293, align 1
  %147 = ptrtoint ptr %shift_reg294 to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 %146, ptr %shift_reg294, align 1
  %sub296 = add i32 %143, -2
  %148 = tail call i32 @llvm.smax.i32(i32 %sub296, i32 0)
  %149 = ptrtoint ptr %hdlc_bits1297 to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 %148, ptr %hdlc_bits1297, align 4
  %150 = ptrtoint ptr %data_bits306 to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 %sub292, ptr %data_bits306, align 4
  %151 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 4, ptr %state, align 4
  %152 = ptrtoint ptr %do_bitreverse to i32
  call void @__asan_load1_noabort(i32 %152)
  %bf.load309 = load i8, ptr %do_bitreverse, align 1
  %bf.clear310 = and i8 %bf.load309, 127
  store i8 %bf.clear310, ptr %do_bitreverse, align 1
  br label %sw.epilog318

sw.epilog318:                                     ; preds = %do.body290, %if.then287, %if.then280, %if.then273, %if.end259, %if.end114, %if.end95, %if.end72, %if.end44, %if.then42, %if.end36.sw.epilog318_crit_edge
  %status.6 = phi i32 [ %status.0449, %if.end36.sw.epilog318_crit_edge ], [ %status.0449, %if.then273 ], [ %status.0449, %if.then280 ], [ %status.0449, %if.then287 ], [ %status.0449, %do.body290 ], [ %status.5, %if.end259 ], [ %status.0449, %if.end114 ], [ %status.0449, %if.end95 ], [ %status.0449, %if.end72 ], [ %status.0449, %if.then42 ], [ %status.0449, %if.end44 ]
  %cmp = icmp sgt i32 %slen.addr.1, 0
  br i1 %cmp, label %sw.epilog318.while.body_crit_edge, label %sw.epilog318.while.end_crit_edge

sw.epilog318.while.end_crit_edge:                 ; preds = %sw.epilog318
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end

sw.epilog318.while.body_crit_edge:                ; preds = %sw.epilog318
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body

while.end:                                        ; preds = %sw.epilog318.while.end_crit_edge, %entry.while.end_crit_edge
  %slen.addr.0.lcssa = phi i32 [ %slen, %entry.while.end_crit_edge ], [ %slen.addr.1, %sw.epilog318.while.end_crit_edge ]
  %153 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %count, align 4
  %sub319 = sub i32 %154, %slen.addr.0.lcssa
  store i32 %sub319, ptr %count, align 4
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then227, %if.end36.cleanup_crit_edge
  %retval.0 = phi i32 [ %status.4, %if.then227 ], [ 0, %while.end ], [ 0, %if.end36.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @isdnhdlc_encode(ptr noundef %hdlc, ptr nocapture noundef readonly %src, i16 noundef zeroext %slen, ptr nocapture noundef %count, ptr noundef writeonly %dst, i32 noundef %dsize) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %slen to i32
  %0 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %conv, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %slen)
  %cmp = icmp eq i16 %slen, 1
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %state = getelementptr inbounds %struct.isdnhdlc_vars, ptr %hdlc, i32 0, i32 4
  %1 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %cmp3 = icmp eq i32 %2, 2
  br i1 %cmp3, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  %3 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 12, ptr %state, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dsize)
  %cmp6832 = icmp sgt i32 %dsize, 0
  br i1 %cmp6832, label %while.body.lr.ph, label %if.end.while.end600_crit_edge

if.end.while.end600_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end600

while.body.lr.ph:                                 ; preds = %if.end
  %do_closing = getelementptr inbounds %struct.isdnhdlc_vars, ptr %hdlc, i32 0, i32 10
  %shift_reg = getelementptr inbounds %struct.isdnhdlc_vars, ptr %hdlc, i32 0, i32 8
  %state24 = getelementptr inbounds %struct.isdnhdlc_vars, ptr %hdlc, i32 0, i32 4
  %crc = getelementptr inbounds %struct.isdnhdlc_vars, ptr %hdlc, i32 0, i32 6
  %cbin462 = getelementptr inbounds %struct.isdnhdlc_vars, ptr %hdlc, i32 0, i32 7
  %data_bits463 = getelementptr inbounds %struct.isdnhdlc_vars, ptr %hdlc, i32 0, i32 2
  %hdlc_bits1366 = getelementptr inbounds %struct.isdnhdlc_vars, ptr %hdlc, i32 0, i32 1
  %ffvalue391 = getelementptr inbounds %struct.isdnhdlc_vars, ptr %hdlc, i32 0, i32 9
  br label %while.body

while.body:                                       ; preds = %if.end599.while.body_crit_edge, %while.body.lr.ph
  %src.addr.0841 = phi ptr [ %src, %while.body.lr.ph ], [ %src.addr.1857, %if.end599.while.body_crit_edge ]
  %slen.addr.0839 = phi i16 [ %slen, %while.body.lr.ph ], [ %slen.addr.1854, %if.end599.while.body_crit_edge ]
  %dst.addr.0837 = phi ptr [ %dst, %while.body.lr.ph ], [ %dst.addr.6, %if.end599.while.body_crit_edge ]
  %dsize.addr.0835 = phi i32 [ %dsize, %while.body.lr.ph ], [ %dsize.addr.3, %if.end599.while.body_crit_edge ]
  %len.0833 = phi i32 [ 0, %while.body.lr.ph ], [ %len.2, %if.end599.while.body_crit_edge ]
  %4 = ptrtoint ptr %hdlc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hdlc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp8 = icmp eq i32 %5, 0
  br i1 %cmp8, label %if.then10, label %while.body.if.end55thread-pre-split_crit_edge

while.body.if.end55thread-pre-split_crit_edge:    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end55thread-pre-split

if.then10:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %slen.addr.0839)
  %tobool.not = icmp eq i16 %slen.addr.0839, 0
  br i1 %tobool.not, label %if.then10.if.else_crit_edge, label %land.lhs.true12

if.then10.if.else_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else

land.lhs.true12:                                  ; preds = %if.then10
  %6 = ptrtoint ptr %do_closing to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %do_closing, align 1
  %7 = and i8 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool13.not = icmp eq i8 %7, 0
  br i1 %tobool13.not, label %if.then14, label %land.lhs.true12.if.else_crit_edge

land.lhs.true12.if.else_crit_edge:                ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else

if.then14:                                        ; preds = %land.lhs.true12
  %incdec.ptr = getelementptr i8, ptr %src.addr.0841, i32 1
  %8 = ptrtoint ptr %src.addr.0841 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %src.addr.0841, align 1
  %10 = ptrtoint ptr %shift_reg to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %shift_reg, align 1
  %dec = add i16 %slen.addr.0839, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %dec)
  %cmp16 = icmp eq i16 %dec, 0
  br i1 %cmp16, label %if.then18, label %if.then14.if.end22_crit_edge

if.then14.if.end22_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end22

if.then18:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #5
  %bf.set = or i8 %bf.load, 16
  %11 = ptrtoint ptr %do_closing to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %bf.set, ptr %do_closing, align 1
  br label %if.end22

if.end22:                                         ; preds = %if.then18, %if.then14.if.end22_crit_edge
  %12 = ptrtoint ptr %hdlc to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 8, ptr %hdlc, align 4
  br label %if.end55thread-pre-split

if.else:                                          ; preds = %land.lhs.true12.if.else_crit_edge, %if.then10.if.else_crit_edge
  %13 = ptrtoint ptr %state24 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %state24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp25 = icmp eq i32 %14, 0
  br i1 %cmp25, label %if.then27, label %if.else.if.end55_crit_edge

if.else.if.end55_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end55

if.then27:                                        ; preds = %if.else
  %15 = ptrtoint ptr %do_closing to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load28 = load i8, ptr %do_closing, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load28)
  %tobool31.not = icmp sgt i8 %bf.load28, -1
  br i1 %tobool31.not, label %if.else41, label %if.then32

if.then32:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #5
  %16 = ptrtoint ptr %state24 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %state24, align 4
  %17 = ptrtoint ptr %crc to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %crc, align 4
  %19 = xor i16 %18, -1
  store i16 %19, ptr %crc, align 4
  %20 = ptrtoint ptr %hdlc to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 8, ptr %hdlc, align 4
  %conv39 = trunc i16 %19 to i8
  %21 = ptrtoint ptr %shift_reg to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv39, ptr %shift_reg, align 1
  br label %if.end55thread-pre-split

if.else41:                                        ; preds = %if.then27
  %22 = and i8 %bf.load28, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool46.not = icmp eq i8 %22, 0
  br i1 %tobool46.not, label %if.end55.thread, label %if.else41.sw.bb124_crit_edge

if.else41.sw.bb124_crit_edge:                     ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb124

if.end55.thread:                                  ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #5
  %23 = ptrtoint ptr %state24 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 2, ptr %state24, align 4
  br label %sw.bb62

if.end55thread-pre-split:                         ; preds = %if.then32, %if.end22, %while.body.if.end55thread-pre-split_crit_edge
  %slen.addr.1.ph = phi i16 [ %slen.addr.0839, %while.body.if.end55thread-pre-split_crit_edge ], [ %dec, %if.end22 ], [ %slen.addr.0839, %if.then32 ]
  %src.addr.1.ph = phi ptr [ %src.addr.0841, %while.body.if.end55thread-pre-split_crit_edge ], [ %incdec.ptr, %if.end22 ], [ %src.addr.0841, %if.then32 ]
  %24 = ptrtoint ptr %state24 to i32
  call void @__asan_load4_noabort(i32 %24)
  %.pr = load i32, ptr %state24, align 4
  br label %if.end55

if.end55:                                         ; preds = %if.end55thread-pre-split, %if.else.if.end55_crit_edge
  %25 = phi i32 [ %.pr, %if.end55thread-pre-split ], [ %14, %if.else.if.end55_crit_edge ]
  %slen.addr.1 = phi i16 [ %slen.addr.1.ph, %if.end55thread-pre-split ], [ %slen.addr.0839, %if.else.if.end55_crit_edge ]
  %src.addr.1 = phi ptr [ %src.addr.1.ph, %if.end55thread-pre-split ], [ %src.addr.0841, %if.else.if.end55_crit_edge ]
  %26 = zext i32 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.3)
  switch i32 %25, label %if.end55.sw.epilog_crit_edge [
    i32 11, label %while.body60.preheader
    i32 2, label %if.end55.sw.bb62_crit_edge
    i32 12, label %if.end55.sw.bb108_crit_edge
    i32 8, label %if.end55.sw.bb124_crit_edge
    i32 9, label %sw.bb137
    i32 10, label %sw.bb153
    i32 3, label %sw.bb178
    i32 0, label %sw.bb219
    i32 1, label %sw.bb265
    i32 4, label %sw.bb314
    i32 5, label %sw.bb359
    i32 6, label %sw.bb435
    i32 7, label %sw.bb457
  ]

if.end55.sw.bb124_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb124

if.end55.sw.bb108_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb108

if.end55.sw.bb62_crit_edge:                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb62

if.end55.sw.epilog_crit_edge:                     ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

while.body60.preheader:                           ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #5
  %27 = call ptr @memset(ptr %dst.addr.0837, i32 255, i32 %dsize.addr.0835)
  br label %cleanup

sw.bb62:                                          ; preds = %if.end55.sw.bb62_crit_edge, %if.end55.thread
  %src.addr.1856 = phi ptr [ %src.addr.0841, %if.end55.thread ], [ %src.addr.1, %if.end55.sw.bb62_crit_edge ]
  %slen.addr.1852 = phi i16 [ %slen.addr.0839, %if.end55.thread ], [ %slen.addr.1, %if.end55.sw.bb62_crit_edge ]
  %28 = ptrtoint ptr %do_closing to i32
  call void @__asan_load1_noabort(i32 %28)
  %bf.load64 = load i8, ptr %do_closing, align 1
  %bf.clear65 = and i8 %bf.load64, -17
  store i8 %bf.clear65, ptr %do_closing, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %slen.addr.1852)
  %cmp68 = icmp eq i16 %slen.addr.1852, 0
  br i1 %cmp68, label %if.then70, label %sw.bb62.sw.bb108_crit_edge

sw.bb62.sw.bb108_crit_edge:                       ; preds = %sw.bb62
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb108

if.then70:                                        ; preds = %sw.bb62
  %29 = and i8 %bf.load64, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %cmp75 = icmp eq i8 %29, 0
  %30 = ptrtoint ptr %ffvalue391 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %ffvalue391, align 4
  br i1 %cmp75, label %cond.false, label %if.then70.if.end105_crit_edge

if.then70.if.end105_crit_edge:                    ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end105

cond.false:                                       ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #5
  %idxprom.i = zext i8 %31 to i32
  %arrayidx.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i
  %32 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx.i, align 1
  br label %if.end105

if.end105:                                        ; preds = %cond.false, %if.then70.if.end105_crit_edge
  %storemerge821 = phi i8 [ %33, %cond.false ], [ %31, %if.then70.if.end105_crit_edge ]
  %dst.addr.2 = getelementptr i8, ptr %dst.addr.0837, i32 1
  %34 = ptrtoint ptr %dst.addr.0837 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %storemerge821, ptr %dst.addr.0837, align 1
  %inc = add i32 %len.0833, 1
  %dec106 = add nsw i32 %dsize.addr.0835, -1
  br label %sw.epilog

sw.bb108:                                         ; preds = %sw.bb62.sw.bb108_crit_edge, %if.end55.sw.bb108_crit_edge
  %src.addr.1855 = phi ptr [ %src.addr.1856, %sw.bb62.sw.bb108_crit_edge ], [ %src.addr.1, %if.end55.sw.bb108_crit_edge ]
  %slen.addr.1853 = phi i16 [ %slen.addr.1852, %sw.bb62.sw.bb108_crit_edge ], [ %slen.addr.1, %if.end55.sw.bb108_crit_edge ]
  %35 = ptrtoint ptr %hdlc to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %hdlc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %36)
  %cmp110 = icmp eq i32 %36, 8
  br i1 %cmp110, label %if.then112, label %sw.bb108.sw.epilog_crit_edge

sw.bb108.sw.epilog_crit_edge:                     ; preds = %sw.bb108
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

if.then112:                                       ; preds = %sw.bb108
  call void @__sanitizer_cov_trace_pc() #5
  %37 = ptrtoint ptr %ffvalue391 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %ffvalue391, align 4
  %conv114 = zext i8 %38 to i32
  %39 = ptrtoint ptr %data_bits463 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %data_bits463, align 4
  %sub = sub i32 8, %40
  %shr115 = lshr i32 %conv114, %sub
  %conv116 = trunc i32 %shr115 to i8
  %41 = ptrtoint ptr %cbin462 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv116, ptr %cbin462, align 2
  %42 = ptrtoint ptr %state24 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %state24, align 4
  %43 = ptrtoint ptr %crc to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 -1, ptr %crc, align 4
  %44 = ptrtoint ptr %hdlc_bits1366 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %hdlc_bits1366, align 4
  %45 = ptrtoint ptr %do_closing to i32
  call void @__asan_load1_noabort(i32 %45)
  %bf.load120 = load i8, ptr %do_closing, align 1
  %bf.set122 = or i8 %bf.load120, -128
  store i8 %bf.set122, ptr %do_closing, align 1
  br label %sw.epilog

sw.bb124:                                         ; preds = %if.end55.sw.bb124_crit_edge, %if.else41.sw.bb124_crit_edge
  %src.addr.1862 = phi ptr [ %src.addr.1, %if.end55.sw.bb124_crit_edge ], [ %src.addr.0841, %if.else41.sw.bb124_crit_edge ]
  %slen.addr.1861 = phi i16 [ %slen.addr.1, %if.end55.sw.bb124_crit_edge ], [ %slen.addr.0839, %if.else41.sw.bb124_crit_edge ]
  %46 = ptrtoint ptr %do_closing to i32
  call void @__asan_load1_noabort(i32 %46)
  %bf.load126 = load i8, ptr %do_closing, align 1
  %bf.clear127 = and i8 %bf.load126, -17
  store i8 %bf.clear127, ptr %do_closing, align 1
  %47 = ptrtoint ptr %cbin462 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %cbin462, align 2
  %shl131 = shl i8 %48, 1
  store i8 %shl131, ptr %cbin462, align 2
  %49 = ptrtoint ptr %data_bits463 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %data_bits463, align 4
  %inc134 = add i32 %50, 1
  store i32 %inc134, ptr %data_bits463, align 4
  %51 = ptrtoint ptr %hdlc_bits1366 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %hdlc_bits1366, align 4
  %52 = ptrtoint ptr %state24 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 9, ptr %state24, align 4
  br label %sw.epilog

sw.bb137:                                         ; preds = %if.end55
  %53 = ptrtoint ptr %cbin462 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %cbin462, align 2
  %shl140 = shl i8 %54, 1
  %55 = ptrtoint ptr %data_bits463 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %data_bits463, align 4
  %inc143 = add i32 %56, 1
  store i32 %inc143, ptr %data_bits463, align 4
  %inc145 = or i8 %shl140, 1
  store i8 %inc145, ptr %cbin462, align 2
  %57 = ptrtoint ptr %hdlc_bits1366 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %hdlc_bits1366, align 4
  %inc147 = add i32 %58, 1
  store i32 %inc147, ptr %hdlc_bits1366, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %inc147)
  %cmp148 = icmp eq i32 %inc147, 6
  br i1 %cmp148, label %if.then150, label %sw.bb137.sw.epilog_crit_edge

sw.bb137.sw.epilog_crit_edge:                     ; preds = %sw.bb137
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

if.then150:                                       ; preds = %sw.bb137
  call void @__sanitizer_cov_trace_pc() #5
  %59 = ptrtoint ptr %state24 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 10, ptr %state24, align 4
  br label %sw.epilog

sw.bb153:                                         ; preds = %if.end55
  %60 = ptrtoint ptr %cbin462 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %cbin462, align 2
  %shl156 = shl i8 %61, 1
  store i8 %shl156, ptr %cbin462, align 2
  %62 = ptrtoint ptr %data_bits463 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %data_bits463, align 4
  %inc159 = add i32 %63, 1
  store i32 %inc159, ptr %data_bits463, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %slen.addr.1)
  %cmp161 = icmp eq i16 %slen.addr.1, 0
  br i1 %cmp161, label %if.then163, label %if.end165

if.then163:                                       ; preds = %sw.bb153
  call void @__sanitizer_cov_trace_pc() #5
  %64 = ptrtoint ptr %state24 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 8, ptr %state24, align 4
  br label %sw.epilog

if.end165:                                        ; preds = %sw.bb153
  %65 = ptrtoint ptr %hdlc to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %hdlc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %66)
  %cmp167 = icmp eq i32 %66, 8
  br i1 %cmp167, label %if.then169, label %if.end165.sw.epilog_crit_edge

if.end165.sw.epilog_crit_edge:                    ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

if.then169:                                       ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #5
  %67 = ptrtoint ptr %state24 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %state24, align 4
  %68 = ptrtoint ptr %crc to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 -1, ptr %crc, align 4
  %69 = ptrtoint ptr %hdlc_bits1366 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 0, ptr %hdlc_bits1366, align 4
  %70 = ptrtoint ptr %do_closing to i32
  call void @__asan_load1_noabort(i32 %70)
  %bf.load174 = load i8, ptr %do_closing, align 1
  %bf.set176 = or i8 %bf.load174, -128
  store i8 %bf.set176, ptr %do_closing, align 1
  br label %sw.epilog

sw.bb178:                                         ; preds = %if.end55
  %71 = ptrtoint ptr %do_closing to i32
  call void @__asan_load1_noabort(i32 %71)
  %bf.load180 = load i8, ptr %do_closing, align 1
  %bf.set182 = or i8 %bf.load180, -128
  store i8 %bf.set182, ptr %do_closing, align 1
  %72 = ptrtoint ptr %data_bits463 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %data_bits463, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %73)
  %cmp184 = icmp eq i32 %73, 8
  br i1 %cmp184, label %if.then186, label %if.end190

if.then186:                                       ; preds = %sw.bb178
  call void @__sanitizer_cov_trace_pc() #5
  %74 = ptrtoint ptr %state24 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 0, ptr %state24, align 4
  %75 = ptrtoint ptr %crc to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 -1, ptr %crc, align 4
  %76 = ptrtoint ptr %hdlc_bits1366 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 0, ptr %hdlc_bits1366, align 4
  br label %sw.epilog

if.end190:                                        ; preds = %sw.bb178
  %77 = ptrtoint ptr %cbin462 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %cbin462, align 2
  %shl193 = shl i8 %78, 1
  store i8 %shl193, ptr %cbin462, align 2
  %inc196 = add i32 %73, 1
  %79 = ptrtoint ptr %data_bits463 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %inc196, ptr %data_bits463, align 4
  %80 = ptrtoint ptr %shift_reg to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %shift_reg, align 1
  %82 = and i8 %81, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %tobool200.not = icmp eq i8 %82, 0
  br i1 %tobool200.not, label %if.end190.if.end204_crit_edge, label %if.then201

if.end190.if.end204_crit_edge:                    ; preds = %if.end190
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end204

if.then201:                                       ; preds = %if.end190
  call void @__sanitizer_cov_trace_pc() #5
  %inc203 = or i8 %shl193, 1
  %83 = ptrtoint ptr %cbin462 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %inc203, ptr %cbin462, align 2
  br label %if.end204

if.end204:                                        ; preds = %if.then201, %if.end190.if.end204_crit_edge
  %84 = lshr i8 %81, 1
  %85 = ptrtoint ptr %shift_reg to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %84, ptr %shift_reg, align 1
  %86 = ptrtoint ptr %hdlc to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %hdlc, align 4
  %dec210 = add i32 %87, -1
  store i32 %dec210, ptr %hdlc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec210)
  %cmp212 = icmp eq i32 %dec210, 0
  br i1 %cmp212, label %if.then214, label %if.end204.sw.epilog_crit_edge

if.end204.sw.epilog_crit_edge:                    ; preds = %if.end204
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

if.then214:                                       ; preds = %if.end204
  call void @__sanitizer_cov_trace_pc() #5
  %88 = ptrtoint ptr %state24 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 0, ptr %state24, align 4
  %89 = ptrtoint ptr %crc to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 -1, ptr %crc, align 4
  %90 = ptrtoint ptr %hdlc_bits1366 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 0, ptr %hdlc_bits1366, align 4
  br label %sw.epilog

sw.bb219:                                         ; preds = %if.end55
  %91 = ptrtoint ptr %cbin462 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %cbin462, align 2
  %shl222 = shl i8 %92, 1
  store i8 %shl222, ptr %cbin462, align 2
  %93 = ptrtoint ptr %data_bits463 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %data_bits463, align 4
  %inc225 = add i32 %94, 1
  store i32 %inc225, ptr %data_bits463, align 4
  %95 = ptrtoint ptr %hdlc_bits1366 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %hdlc_bits1366, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %96)
  %cmp227 = icmp eq i32 %96, 5
  br i1 %cmp227, label %if.then229, label %if.end231

if.then229:                                       ; preds = %sw.bb219
  call void @__sanitizer_cov_trace_pc() #5
  %97 = ptrtoint ptr %hdlc_bits1366 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 0, ptr %hdlc_bits1366, align 4
  br label %sw.epilog

if.end231:                                        ; preds = %sw.bb219
  %98 = ptrtoint ptr %hdlc to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %hdlc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %99)
  %cmp233 = icmp eq i32 %99, 8
  br i1 %cmp233, label %if.then235, label %if.end231.if.end240_crit_edge

if.end231.if.end240_crit_edge:                    ; preds = %if.end231
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end240

if.then235:                                       ; preds = %if.end231
  call void @__sanitizer_cov_trace_pc() #5
  %100 = ptrtoint ptr %crc to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %crc, align 4
  %102 = ptrtoint ptr %shift_reg to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %shift_reg, align 1
  %104 = lshr i16 %101, 8
  %conv2.i = zext i8 %103 to i32
  %105 = and i16 %101, 255
  %conv.masked.i = zext i16 %105 to i32
  %and.i = xor i32 %conv.masked.i, %conv2.i
  %arrayidx.i823 = getelementptr [256 x i16], ptr @crc_ccitt_table, i32 0, i32 %and.i
  %106 = ptrtoint ptr %arrayidx.i823 to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %arrayidx.i823, align 2
  %xor4.i = xor i16 %107, %104
  store i16 %xor4.i, ptr %crc, align 4
  br label %if.end240

if.end240:                                        ; preds = %if.then235, %if.end231.if.end240_crit_edge
  %108 = ptrtoint ptr %shift_reg to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %shift_reg, align 1
  %110 = and i8 %109, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %110)
  %tobool244.not = icmp eq i8 %110, 0
  br i1 %tobool244.not, label %if.else256, label %if.then245

if.then245:                                       ; preds = %if.end240
  call void @__sanitizer_cov_trace_pc() #5
  %inc247 = add i32 %96, 1
  %111 = ptrtoint ptr %hdlc_bits1366 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %inc247, ptr %hdlc_bits1366, align 4
  %inc249 = or i8 %shl222, 1
  %112 = ptrtoint ptr %cbin462 to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 %inc249, ptr %cbin462, align 2
  %113 = lshr i8 %109, 1
  %114 = ptrtoint ptr %shift_reg to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 %113, ptr %shift_reg, align 1
  %dec255 = add i32 %99, -1
  %115 = ptrtoint ptr %hdlc to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %dec255, ptr %hdlc, align 4
  br label %sw.epilog

if.else256:                                       ; preds = %if.end240
  call void @__sanitizer_cov_trace_pc() #5
  %116 = ptrtoint ptr %hdlc_bits1366 to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 0, ptr %hdlc_bits1366, align 4
  %117 = lshr i8 %109, 1
  %118 = ptrtoint ptr %shift_reg to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 %117, ptr %shift_reg, align 1
  %dec263 = add i32 %99, -1
  %119 = ptrtoint ptr %hdlc to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %dec263, ptr %hdlc, align 4
  br label %sw.epilog

sw.bb265:                                         ; preds = %if.end55
  %120 = ptrtoint ptr %cbin462 to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %cbin462, align 2
  %shl268 = shl i8 %121, 1
  store i8 %shl268, ptr %cbin462, align 2
  %122 = ptrtoint ptr %data_bits463 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %data_bits463, align 4
  %inc271 = add i32 %123, 1
  store i32 %inc271, ptr %data_bits463, align 4
  %124 = ptrtoint ptr %hdlc_bits1366 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %hdlc_bits1366, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %125)
  %cmp273 = icmp eq i32 %125, 5
  br i1 %cmp273, label %if.then275, label %if.end277

if.then275:                                       ; preds = %sw.bb265
  call void @__sanitizer_cov_trace_pc() #5
  %126 = ptrtoint ptr %hdlc_bits1366 to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 0, ptr %hdlc_bits1366, align 4
  br label %sw.epilog

if.end277:                                        ; preds = %sw.bb265
  %127 = ptrtoint ptr %shift_reg to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %shift_reg, align 1
  %129 = and i8 %128, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %129)
  %tobool281.not = icmp eq i8 %129, 0
  br i1 %tobool281.not, label %if.else293, label %if.then282

if.then282:                                       ; preds = %if.end277
  call void @__sanitizer_cov_trace_pc() #5
  %inc284 = add i32 %125, 1
  %130 = ptrtoint ptr %hdlc_bits1366 to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %inc284, ptr %hdlc_bits1366, align 4
  %inc286 = or i8 %shl268, 1
  %131 = ptrtoint ptr %cbin462 to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 %inc286, ptr %cbin462, align 2
  br label %if.end301

if.else293:                                       ; preds = %if.end277
  call void @__sanitizer_cov_trace_pc() #5
  %132 = ptrtoint ptr %hdlc_bits1366 to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 0, ptr %hdlc_bits1366, align 4
  br label %if.end301

if.end301:                                        ; preds = %if.else293, %if.then282
  %storemerge820 = lshr i8 %128, 1
  %133 = ptrtoint ptr %shift_reg to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 %storemerge820, ptr %shift_reg, align 1
  %134 = ptrtoint ptr %hdlc to i32
  call void @__asan_load4_noabort(i32 %134)
  %storemerge819.in = load i32, ptr %hdlc, align 4
  %storemerge819 = add i32 %storemerge819.in, -1
  store i32 %storemerge819, ptr %hdlc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %storemerge819)
  %cmp303 = icmp eq i32 %storemerge819, 0
  br i1 %cmp303, label %if.then305, label %if.end301.sw.epilog_crit_edge

if.end301.sw.epilog_crit_edge:                    ; preds = %if.end301
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

if.then305:                                       ; preds = %if.end301
  call void @__sanitizer_cov_trace_pc() #5
  %135 = ptrtoint ptr %crc to i32
  call void @__asan_load2_noabort(i32 %135)
  %136 = load i16, ptr %crc, align 4
  %137 = lshr i16 %136, 8
  %conv309 = trunc i16 %137 to i8
  %138 = ptrtoint ptr %shift_reg to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 %conv309, ptr %shift_reg, align 1
  %139 = ptrtoint ptr %state24 to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 4, ptr %state24, align 4
  %140 = ptrtoint ptr %hdlc to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 8, ptr %hdlc, align 4
  br label %sw.epilog

sw.bb314:                                         ; preds = %if.end55
  %141 = ptrtoint ptr %cbin462 to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %cbin462, align 2
  %shl317 = shl i8 %142, 1
  store i8 %shl317, ptr %cbin462, align 2
  %143 = ptrtoint ptr %data_bits463 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %data_bits463, align 4
  %inc320 = add i32 %144, 1
  store i32 %inc320, ptr %data_bits463, align 4
  %145 = ptrtoint ptr %hdlc_bits1366 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %hdlc_bits1366, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %146)
  %cmp322 = icmp eq i32 %146, 5
  br i1 %cmp322, label %if.then324, label %if.end326

if.then324:                                       ; preds = %sw.bb314
  call void @__sanitizer_cov_trace_pc() #5
  %147 = ptrtoint ptr %hdlc_bits1366 to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 0, ptr %hdlc_bits1366, align 4
  br label %sw.epilog

if.end326:                                        ; preds = %sw.bb314
  %148 = ptrtoint ptr %shift_reg to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %shift_reg, align 1
  %150 = and i8 %149, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %150)
  %tobool330.not = icmp eq i8 %150, 0
  br i1 %tobool330.not, label %if.else342, label %if.then331

if.then331:                                       ; preds = %if.end326
  call void @__sanitizer_cov_trace_pc() #5
  %inc333 = add i32 %146, 1
  %151 = ptrtoint ptr %hdlc_bits1366 to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 %inc333, ptr %hdlc_bits1366, align 4
  %inc335 = or i8 %shl317, 1
  %152 = ptrtoint ptr %cbin462 to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 %inc335, ptr %cbin462, align 2
  br label %if.end350

if.else342:                                       ; preds = %if.end326
  call void @__sanitizer_cov_trace_pc() #5
  %153 = ptrtoint ptr %hdlc_bits1366 to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 0, ptr %hdlc_bits1366, align 4
  br label %if.end350

if.end350:                                        ; preds = %if.else342, %if.then331
  %storemerge818 = lshr i8 %149, 1
  %154 = ptrtoint ptr %shift_reg to i32
  call void @__asan_store1_noabort(i32 %154)
  store i8 %storemerge818, ptr %shift_reg, align 1
  %155 = ptrtoint ptr %hdlc to i32
  call void @__asan_load4_noabort(i32 %155)
  %storemerge817.in = load i32, ptr %hdlc, align 4
  %storemerge817 = add i32 %storemerge817.in, -1
  store i32 %storemerge817, ptr %hdlc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %storemerge817)
  %cmp352 = icmp eq i32 %storemerge817, 0
  br i1 %cmp352, label %if.then354, label %if.end350.sw.epilog_crit_edge

if.end350.sw.epilog_crit_edge:                    ; preds = %if.end350
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

if.then354:                                       ; preds = %if.end350
  call void @__sanitizer_cov_trace_pc() #5
  %156 = ptrtoint ptr %shift_reg to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 126, ptr %shift_reg, align 1
  %157 = ptrtoint ptr %state24 to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 5, ptr %state24, align 4
  %158 = ptrtoint ptr %hdlc to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 8, ptr %hdlc, align 4
  br label %sw.epilog

sw.bb359:                                         ; preds = %if.end55
  %159 = ptrtoint ptr %cbin462 to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %cbin462, align 2
  %shl362 = shl i8 %160, 1
  store i8 %shl362, ptr %cbin462, align 2
  %161 = ptrtoint ptr %data_bits463 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %data_bits463, align 4
  %inc365 = add i32 %162, 1
  store i32 %inc365, ptr %data_bits463, align 4
  %163 = ptrtoint ptr %hdlc_bits1366 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %hdlc_bits1366, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %164)
  %cmp367 = icmp eq i32 %164, 5
  br i1 %cmp367, label %if.then369, label %if.end371

if.then369:                                       ; preds = %sw.bb359
  call void @__sanitizer_cov_trace_pc() #5
  %165 = ptrtoint ptr %hdlc_bits1366 to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 0, ptr %hdlc_bits1366, align 4
  br label %sw.epilog

if.end371:                                        ; preds = %sw.bb359
  %166 = ptrtoint ptr %shift_reg to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %shift_reg, align 1
  %168 = and i8 %167, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %168)
  %tobool375.not = icmp eq i8 %168, 0
  br i1 %tobool375.not, label %if.end371.if.end379_crit_edge, label %if.then376

if.end371.if.end379_crit_edge:                    ; preds = %if.end371
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end379

if.then376:                                       ; preds = %if.end371
  call void @__sanitizer_cov_trace_pc() #5
  %inc378 = or i8 %shl362, 1
  %169 = ptrtoint ptr %cbin462 to i32
  call void @__asan_store1_noabort(i32 %169)
  store i8 %inc378, ptr %cbin462, align 2
  br label %if.end379

if.end379:                                        ; preds = %if.then376, %if.end371.if.end379_crit_edge
  %170 = lshr i8 %167, 1
  %171 = ptrtoint ptr %shift_reg to i32
  call void @__asan_store1_noabort(i32 %171)
  store i8 %170, ptr %shift_reg, align 1
  %172 = ptrtoint ptr %hdlc to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %hdlc, align 4
  %dec385 = add i32 %173, -1
  store i32 %dec385, ptr %hdlc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec385)
  %cmp387 = icmp eq i32 %dec385, 0
  br i1 %cmp387, label %if.then389, label %if.end379.sw.epilog_crit_edge

if.end379.sw.epilog_crit_edge:                    ; preds = %if.end379
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

if.then389:                                       ; preds = %if.end379
  %arrayidx = getelementptr [9 x i8], ptr @isdnhdlc_encode.xfast_flag_value, i32 0, i32 %inc365
  %174 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %174)
  %175 = load i8, ptr %arrayidx, align 1
  %176 = ptrtoint ptr %ffvalue391 to i32
  call void @__asan_store1_noabort(i32 %176)
  store i8 %175, ptr %ffvalue391, align 4
  %177 = ptrtoint ptr %do_closing to i32
  call void @__asan_load1_noabort(i32 %177)
  %bf.load392 = load i8, ptr %do_closing, align 1
  %178 = and i8 %bf.load392, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %178)
  %tobool396.not = icmp eq i8 %178, 0
  br i1 %tobool396.not, label %if.else409, label %if.then397

if.then397:                                       ; preds = %if.then389
  %179 = ptrtoint ptr %ffvalue391 to i32
  call void @__asan_store1_noabort(i32 %179)
  store i8 126, ptr %ffvalue391, align 4
  %180 = ptrtoint ptr %state24 to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 6, ptr %state24, align 4
  %sub401 = sub i32 7, %162
  %181 = ptrtoint ptr %hdlc to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 %sub401, ptr %hdlc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %inc365)
  %cmp404 = icmp eq i32 %inc365, 8
  br i1 %cmp404, label %if.then406, label %if.then397.sw.epilog_crit_edge

if.then397.sw.epilog_crit_edge:                   ; preds = %if.then397
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

if.then406:                                       ; preds = %if.then397
  call void @__sanitizer_cov_trace_pc() #5
  %182 = ptrtoint ptr %state24 to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 7, ptr %state24, align 4
  br label %sw.epilog

if.else409:                                       ; preds = %if.then389
  call void @__sanitizer_cov_trace_pc() #5
  %183 = and i8 %bf.load392, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %183)
  %tobool415.not = icmp eq i8 %183, 0
  %. = select i1 %tobool415.not, i32 2, i32 8
  %184 = ptrtoint ptr %state24 to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 %., ptr %state24, align 4
  %storemerge815 = and i8 %bf.load392, 127
  %185 = ptrtoint ptr %do_closing to i32
  call void @__asan_store1_noabort(i32 %185)
  store i8 %storemerge815, ptr %do_closing, align 1
  br label %sw.epilog

sw.bb435:                                         ; preds = %if.end55
  %186 = ptrtoint ptr %do_closing to i32
  call void @__asan_load1_noabort(i32 %186)
  %bf.load437 = load i8, ptr %do_closing, align 1
  %bf.clear438 = and i8 %bf.load437, -17
  store i8 %bf.clear438, ptr %do_closing, align 1
  %187 = ptrtoint ptr %cbin462 to i32
  call void @__asan_load1_noabort(i32 %187)
  %188 = load i8, ptr %cbin462, align 2
  %shl442 = shl i8 %188, 1
  %inc445 = or i8 %shl442, 1
  store i8 %inc445, ptr %cbin462, align 2
  %189 = ptrtoint ptr %data_bits463 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %data_bits463, align 4
  %inc447 = add i32 %190, 1
  store i32 %inc447, ptr %data_bits463, align 4
  %191 = ptrtoint ptr %hdlc to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %hdlc, align 4
  %dec449 = add i32 %192, -1
  store i32 %dec449, ptr %hdlc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec449)
  %cmp451 = icmp eq i32 %dec449, 0
  br i1 %cmp451, label %if.then453, label %sw.bb435.sw.epilog_crit_edge

sw.bb435.sw.epilog_crit_edge:                     ; preds = %sw.bb435
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

if.then453:                                       ; preds = %sw.bb435
  call void @__sanitizer_cov_trace_pc() #5
  %193 = ptrtoint ptr %state24 to i32
  call void @__asan_store4_noabort(i32 %193)
  store i32 7, ptr %state24, align 4
  %194 = ptrtoint ptr %hdlc to i32
  call void @__asan_store4_noabort(i32 %194)
  store i32 0, ptr %hdlc, align 4
  br label %sw.epilog

sw.bb457:                                         ; preds = %if.end55
  %195 = ptrtoint ptr %do_closing to i32
  call void @__asan_load1_noabort(i32 %195)
  %bf.load459 = load i8, ptr %do_closing, align 1
  %bf.clear460 = and i8 %bf.load459, -17
  store i8 %bf.clear460, ptr %do_closing, align 1
  %196 = ptrtoint ptr %cbin462 to i32
  call void @__asan_store1_noabort(i32 %196)
  store i8 -1, ptr %cbin462, align 2
  %197 = ptrtoint ptr %data_bits463 to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 8, ptr %data_bits463, align 4
  %198 = ptrtoint ptr %hdlc to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %hdlc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %199)
  %cmp465 = icmp eq i32 %199, 8
  br i1 %cmp465, label %if.then467, label %if.end518

if.then467:                                       ; preds = %sw.bb457
  call void @__sanitizer_cov_trace_pc() #5
  %200 = ptrtoint ptr %cbin462 to i32
  call void @__asan_store1_noabort(i32 %200)
  store i8 126, ptr %cbin462, align 2
  %201 = ptrtoint ptr %state24 to i32
  call void @__asan_store4_noabort(i32 %201)
  store i32 3, ptr %state24, align 4
  br label %sw.epilog

if.end518:                                        ; preds = %sw.bb457
  call void @__sanitizer_cov_trace_pc() #5
  %dst.addr.3 = getelementptr i8, ptr %dst.addr.0837, i32 1
  %202 = ptrtoint ptr %dst.addr.0837 to i32
  call void @__asan_store1_noabort(i32 %202)
  store i8 -1, ptr %dst.addr.0837, align 1
  %203 = ptrtoint ptr %hdlc to i32
  call void @__asan_store4_noabort(i32 %203)
  store i32 0, ptr %hdlc, align 4
  %204 = ptrtoint ptr %data_bits463 to i32
  call void @__asan_store4_noabort(i32 %204)
  store i32 0, ptr %data_bits463, align 4
  %inc521 = add i32 %len.0833, 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end518, %if.then467, %if.then453, %sw.bb435.sw.epilog_crit_edge, %if.else409, %if.then406, %if.then397.sw.epilog_crit_edge, %if.end379.sw.epilog_crit_edge, %if.then369, %if.then354, %if.end350.sw.epilog_crit_edge, %if.then324, %if.then305, %if.end301.sw.epilog_crit_edge, %if.then275, %if.else256, %if.then245, %if.then229, %if.then214, %if.end204.sw.epilog_crit_edge, %if.then186, %if.then169, %if.end165.sw.epilog_crit_edge, %if.then163, %if.then150, %sw.bb137.sw.epilog_crit_edge, %sw.bb124, %if.then112, %sw.bb108.sw.epilog_crit_edge, %if.end105, %if.end55.sw.epilog_crit_edge
  %src.addr.1857 = phi ptr [ %src.addr.1, %if.end55.sw.epilog_crit_edge ], [ %src.addr.1, %if.then467 ], [ %src.addr.1, %if.end518 ], [ %src.addr.1, %if.then453 ], [ %src.addr.1, %sw.bb435.sw.epilog_crit_edge ], [ %src.addr.1, %if.then369 ], [ %src.addr.1, %if.then406 ], [ %src.addr.1, %if.then397.sw.epilog_crit_edge ], [ %src.addr.1, %if.else409 ], [ %src.addr.1, %if.end379.sw.epilog_crit_edge ], [ %src.addr.1, %if.then324 ], [ %src.addr.1, %if.then354 ], [ %src.addr.1, %if.end350.sw.epilog_crit_edge ], [ %src.addr.1, %if.then275 ], [ %src.addr.1, %if.then305 ], [ %src.addr.1, %if.end301.sw.epilog_crit_edge ], [ %src.addr.1, %if.then229 ], [ %src.addr.1, %if.then245 ], [ %src.addr.1, %if.else256 ], [ %src.addr.1, %if.then186 ], [ %src.addr.1, %if.then214 ], [ %src.addr.1, %if.end204.sw.epilog_crit_edge ], [ %src.addr.1, %if.then163 ], [ %src.addr.1, %if.then169 ], [ %src.addr.1, %if.end165.sw.epilog_crit_edge ], [ %src.addr.1, %if.then150 ], [ %src.addr.1, %sw.bb137.sw.epilog_crit_edge ], [ %src.addr.1862, %sw.bb124 ], [ %src.addr.1855, %if.then112 ], [ %src.addr.1855, %sw.bb108.sw.epilog_crit_edge ], [ %src.addr.1856, %if.end105 ]
  %slen.addr.1854 = phi i16 [ %slen.addr.1, %if.end55.sw.epilog_crit_edge ], [ %slen.addr.1, %if.then467 ], [ %slen.addr.1, %if.end518 ], [ %slen.addr.1, %if.then453 ], [ %slen.addr.1, %sw.bb435.sw.epilog_crit_edge ], [ %slen.addr.1, %if.then369 ], [ %slen.addr.1, %if.then406 ], [ %slen.addr.1, %if.then397.sw.epilog_crit_edge ], [ %slen.addr.1, %if.else409 ], [ %slen.addr.1, %if.end379.sw.epilog_crit_edge ], [ %slen.addr.1, %if.then324 ], [ %slen.addr.1, %if.then354 ], [ %slen.addr.1, %if.end350.sw.epilog_crit_edge ], [ %slen.addr.1, %if.then275 ], [ %slen.addr.1, %if.then305 ], [ %slen.addr.1, %if.end301.sw.epilog_crit_edge ], [ %slen.addr.1, %if.then229 ], [ %slen.addr.1, %if.then245 ], [ %slen.addr.1, %if.else256 ], [ %slen.addr.1, %if.then186 ], [ %slen.addr.1, %if.then214 ], [ %slen.addr.1, %if.end204.sw.epilog_crit_edge ], [ 0, %if.then163 ], [ %slen.addr.1, %if.then169 ], [ %slen.addr.1, %if.end165.sw.epilog_crit_edge ], [ %slen.addr.1, %if.then150 ], [ %slen.addr.1, %sw.bb137.sw.epilog_crit_edge ], [ %slen.addr.1861, %sw.bb124 ], [ %slen.addr.1853, %if.then112 ], [ %slen.addr.1853, %sw.bb108.sw.epilog_crit_edge ], [ 0, %if.end105 ]
  %len.1 = phi i32 [ %len.0833, %if.end55.sw.epilog_crit_edge ], [ %len.0833, %if.then467 ], [ %inc521, %if.end518 ], [ %len.0833, %if.then453 ], [ %len.0833, %sw.bb435.sw.epilog_crit_edge ], [ %len.0833, %if.then369 ], [ %len.0833, %if.then406 ], [ %len.0833, %if.then397.sw.epilog_crit_edge ], [ %len.0833, %if.else409 ], [ %len.0833, %if.end379.sw.epilog_crit_edge ], [ %len.0833, %if.then324 ], [ %len.0833, %if.then354 ], [ %len.0833, %if.end350.sw.epilog_crit_edge ], [ %len.0833, %if.then275 ], [ %len.0833, %if.then305 ], [ %len.0833, %if.end301.sw.epilog_crit_edge ], [ %len.0833, %if.then229 ], [ %len.0833, %if.then245 ], [ %len.0833, %if.else256 ], [ %len.0833, %if.then186 ], [ %len.0833, %if.then214 ], [ %len.0833, %if.end204.sw.epilog_crit_edge ], [ %len.0833, %if.then163 ], [ %len.0833, %if.then169 ], [ %len.0833, %if.end165.sw.epilog_crit_edge ], [ %len.0833, %if.then150 ], [ %len.0833, %sw.bb137.sw.epilog_crit_edge ], [ %len.0833, %sw.bb124 ], [ %len.0833, %if.then112 ], [ %len.0833, %sw.bb108.sw.epilog_crit_edge ], [ %inc, %if.end105 ]
  %dsize.addr.2 = phi i32 [ %dsize.addr.0835, %if.end55.sw.epilog_crit_edge ], [ %dsize.addr.0835, %if.then467 ], [ 0, %if.end518 ], [ %dsize.addr.0835, %if.then453 ], [ %dsize.addr.0835, %sw.bb435.sw.epilog_crit_edge ], [ %dsize.addr.0835, %if.then369 ], [ %dsize.addr.0835, %if.then406 ], [ %dsize.addr.0835, %if.then397.sw.epilog_crit_edge ], [ 1, %if.else409 ], [ %dsize.addr.0835, %if.end379.sw.epilog_crit_edge ], [ %dsize.addr.0835, %if.then324 ], [ %dsize.addr.0835, %if.then354 ], [ %dsize.addr.0835, %if.end350.sw.epilog_crit_edge ], [ %dsize.addr.0835, %if.then275 ], [ %dsize.addr.0835, %if.then305 ], [ %dsize.addr.0835, %if.end301.sw.epilog_crit_edge ], [ %dsize.addr.0835, %if.then229 ], [ %dsize.addr.0835, %if.then245 ], [ %dsize.addr.0835, %if.else256 ], [ %dsize.addr.0835, %if.then186 ], [ %dsize.addr.0835, %if.then214 ], [ %dsize.addr.0835, %if.end204.sw.epilog_crit_edge ], [ %dsize.addr.0835, %if.then163 ], [ %dsize.addr.0835, %if.then169 ], [ %dsize.addr.0835, %if.end165.sw.epilog_crit_edge ], [ %dsize.addr.0835, %if.then150 ], [ %dsize.addr.0835, %sw.bb137.sw.epilog_crit_edge ], [ %dsize.addr.0835, %sw.bb124 ], [ %dsize.addr.0835, %if.then112 ], [ %dsize.addr.0835, %sw.bb108.sw.epilog_crit_edge ], [ %dec106, %if.end105 ]
  %dst.addr.4 = phi ptr [ %dst.addr.0837, %if.end55.sw.epilog_crit_edge ], [ %dst.addr.0837, %if.then467 ], [ %dst.addr.3, %if.end518 ], [ %dst.addr.0837, %if.then453 ], [ %dst.addr.0837, %sw.bb435.sw.epilog_crit_edge ], [ %dst.addr.0837, %if.then369 ], [ %dst.addr.0837, %if.then406 ], [ %dst.addr.0837, %if.then397.sw.epilog_crit_edge ], [ %dst.addr.0837, %if.else409 ], [ %dst.addr.0837, %if.end379.sw.epilog_crit_edge ], [ %dst.addr.0837, %if.then324 ], [ %dst.addr.0837, %if.then354 ], [ %dst.addr.0837, %if.end350.sw.epilog_crit_edge ], [ %dst.addr.0837, %if.then275 ], [ %dst.addr.0837, %if.then305 ], [ %dst.addr.0837, %if.end301.sw.epilog_crit_edge ], [ %dst.addr.0837, %if.then229 ], [ %dst.addr.0837, %if.then245 ], [ %dst.addr.0837, %if.else256 ], [ %dst.addr.0837, %if.then186 ], [ %dst.addr.0837, %if.then214 ], [ %dst.addr.0837, %if.end204.sw.epilog_crit_edge ], [ %dst.addr.0837, %if.then163 ], [ %dst.addr.0837, %if.then169 ], [ %dst.addr.0837, %if.end165.sw.epilog_crit_edge ], [ %dst.addr.0837, %if.then150 ], [ %dst.addr.0837, %sw.bb137.sw.epilog_crit_edge ], [ %dst.addr.0837, %sw.bb124 ], [ %dst.addr.0837, %if.then112 ], [ %dst.addr.0837, %sw.bb108.sw.epilog_crit_edge ], [ %dst.addr.2, %if.end105 ]
  %205 = ptrtoint ptr %do_closing to i32
  call void @__asan_load1_noabort(i32 %205)
  %bf.load524 = load i8, ptr %do_closing, align 1
  %206 = and i8 %bf.load524, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %206)
  %tobool528.not = icmp ne i8 %206, 0
  %207 = ptrtoint ptr %data_bits463 to i32
  call void @__asan_load4_noabort(i32 %207)
  %.pr863 = load i32, ptr %data_bits463, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %.pr863)
  %cmp531 = icmp eq i32 %.pr863, 7
  %or.cond = select i1 %tobool528.not, i1 %cmp531, i1 false
  br i1 %or.cond, label %if.end543.thread, label %if.end543

if.end543.thread:                                 ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #5
  %208 = ptrtoint ptr %cbin462 to i32
  call void @__asan_load1_noabort(i32 %208)
  %209 = load i8, ptr %cbin462, align 2
  %shl536 = shl i8 %209, 1
  %inc539 = or i8 %shl536, 1
  store i8 %inc539, ptr %cbin462, align 2
  br label %if.then547

if.end543:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %.pr863)
  %cmp545 = icmp eq i32 %.pr863, 8
  br i1 %cmp545, label %if.end543.if.then547_crit_edge, label %if.end543.if.end599_crit_edge

if.end543.if.end599_crit_edge:                    ; preds = %if.end543
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end599

if.end543.if.then547_crit_edge:                   ; preds = %if.end543
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then547

if.then547:                                       ; preds = %if.end543.if.then547_crit_edge, %if.end543.thread
  %210 = and i8 %bf.load524, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %210)
  %cmp553 = icmp eq i8 %210, 0
  %211 = ptrtoint ptr %cbin462 to i32
  call void @__asan_load1_noabort(i32 %211)
  %212 = load i8, ptr %cbin462, align 2
  br i1 %cmp553, label %cond.false585, label %if.then547.if.end595_crit_edge

if.then547.if.end595_crit_edge:                   ; preds = %if.then547
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end595

cond.false585:                                    ; preds = %if.then547
  call void @__sanitizer_cov_trace_pc() #5
  %idxprom.i826 = zext i8 %212 to i32
  %arrayidx.i827 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i826
  %213 = ptrtoint ptr %arrayidx.i827 to i32
  call void @__asan_load1_noabort(i32 %213)
  %214 = load i8, ptr %arrayidx.i827, align 1
  br label %if.end595

if.end595:                                        ; preds = %cond.false585, %if.then547.if.end595_crit_edge
  %storemerge813 = phi i8 [ %214, %cond.false585 ], [ %212, %if.then547.if.end595_crit_edge ]
  %dst.addr.5 = getelementptr i8, ptr %dst.addr.4, i32 1
  %215 = ptrtoint ptr %dst.addr.4 to i32
  call void @__asan_store1_noabort(i32 %215)
  store i8 %storemerge813, ptr %dst.addr.4, align 1
  %216 = ptrtoint ptr %data_bits463 to i32
  call void @__asan_store4_noabort(i32 %216)
  store i32 0, ptr %data_bits463, align 4
  %inc597 = add i32 %len.1, 1
  %dec598 = add nsw i32 %dsize.addr.2, -1
  br label %if.end599

if.end599:                                        ; preds = %if.end595, %if.end543.if.end599_crit_edge
  %len.2 = phi i32 [ %inc597, %if.end595 ], [ %len.1, %if.end543.if.end599_crit_edge ]
  %dsize.addr.3 = phi i32 [ %dec598, %if.end595 ], [ %dsize.addr.2, %if.end543.if.end599_crit_edge ]
  %dst.addr.6 = phi ptr [ %dst.addr.5, %if.end595 ], [ %dst.addr.4, %if.end543.if.end599_crit_edge ]
  %cmp6 = icmp sgt i32 %dsize.addr.3, 0
  br i1 %cmp6, label %if.end599.while.body_crit_edge, label %while.end600.loopexit

if.end599.while.body_crit_edge:                   ; preds = %if.end599
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body

while.end600.loopexit:                            ; preds = %if.end599
  call void @__sanitizer_cov_trace_pc() #5
  %.pre = zext i16 %slen.addr.1854 to i32
  br label %while.end600

while.end600:                                     ; preds = %while.end600.loopexit, %if.end.while.end600_crit_edge
  %conv601.pre-phi = phi i32 [ %.pre, %while.end600.loopexit ], [ %conv, %if.end.while.end600_crit_edge ]
  %len.0.lcssa = phi i32 [ %len.2, %while.end600.loopexit ], [ 0, %if.end.while.end600_crit_edge ]
  %217 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %count, align 4
  %sub602 = sub i32 %218, %conv601.pre-phi
  store i32 %sub602, ptr %count, align 4
  br label %cleanup

cleanup:                                          ; preds = %while.end600, %while.body60.preheader
  %retval.0 = phi i32 [ %len.0.lcssa, %while.end600 ], [ -1, %while.body60.preheader ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !21}
!llvm.module.flags = !{!23, !24, !25, !26, !27, !28, !29, !30}
!llvm.ident = !{!31}

!0 = !{ptr @__UNIQUE_ID_author106, !1, !"__UNIQUE_ID_author106", i1 false, i1 false}
!1 = !{!"../drivers/isdn/hardware/mISDN/isdnhdlc.c", i32 20, i32 1}
!2 = !{ptr @__UNIQUE_ID_description107, !3, !"__UNIQUE_ID_description107", i1 false, i1 false}
!3 = !{!"../drivers/isdn/hardware/mISDN/isdnhdlc.c", i32 23, i32 1}
!4 = !{ptr @__UNIQUE_ID_file108, !5, !"__UNIQUE_ID_file108", i1 false, i1 false}
!5 = !{!"../drivers/isdn/hardware/mISDN/isdnhdlc.c", i32 24, i32 1}
!6 = !{ptr @__UNIQUE_ID_license109, !5, !"__UNIQUE_ID_license109", i1 false, i1 false}
!7 = !{ptr @__ksymtab_isdnhdlc_out_init, !8, !"__ksymtab_isdnhdlc_out_init", i1 false, i1 false}
!8 = !{!"../drivers/isdn/hardware/mISDN/isdnhdlc.c", i32 49, i32 1}
!9 = !{ptr @__ksymtab_isdnhdlc_rcv_init, !10, !"__ksymtab_isdnhdlc_rcv_init", i1 false, i1 false}
!10 = !{!"../drivers/isdn/hardware/mISDN/isdnhdlc.c", i32 71, i32 1}
!11 = !{ptr @isdnhdlc_decode.fast_flag, !12, !"fast_flag", i1 false, i1 false}
!12 = !{!"../drivers/isdn/hardware/mISDN/isdnhdlc.c", i32 123, i32 29}
!13 = !{ptr @isdnhdlc_decode.fast_flag_value, !14, !"fast_flag_value", i1 false, i1 false}
!14 = !{!"../drivers/isdn/hardware/mISDN/isdnhdlc.c", i32 127, i32 29}
!15 = !{ptr @isdnhdlc_decode.fast_abort, !16, !"fast_abort", i1 false, i1 false}
!16 = !{!"../drivers/isdn/hardware/mISDN/isdnhdlc.c", i32 131, i32 29}
!17 = !{ptr @__ksymtab_isdnhdlc_decode, !18, !"__ksymtab_isdnhdlc_decode", i1 false, i1 false}
!18 = !{!"../drivers/isdn/hardware/mISDN/isdnhdlc.c", i32 321, i32 1}
!19 = !{ptr @isdnhdlc_encode.xfast_flag_value, !20, !"xfast_flag_value", i1 false, i1 false}
!20 = !{!"../drivers/isdn/hardware/mISDN/isdnhdlc.c", i32 344, i32 29}
!21 = !{ptr @__ksymtab_isdnhdlc_encode, !22, !"__ksymtab_isdnhdlc_encode", i1 false, i1 false}
!22 = !{!"../drivers/isdn/hardware/mISDN/isdnhdlc.c", i32 617, i32 1}
!23 = !{i32 1, !"wchar_size", i32 2}
!24 = !{i32 1, !"min_enum_size", i32 4}
!25 = !{i32 8, !"branch-target-enforcement", i32 0}
!26 = !{i32 8, !"sign-return-address", i32 0}
!27 = !{i32 8, !"sign-return-address-all", i32 0}
!28 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!29 = !{i32 7, !"uwtable", i32 1}
!30 = !{i32 7, !"frame-pointer", i32 2}
!31 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
