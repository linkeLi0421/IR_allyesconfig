; ModuleID = '/llk/IR_all_yes/net/sunrpc/auth_gss/gss_generic_token.c_pt.bc'
source_filename = "../net/sunrpc/auth_gss/gss_generic_token.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+g_token_size\22, \22a\22\09"
module asm "\09.weak\09__crc_g_token_size\09\09\09\09"
module asm "\09.long\09__crc_g_token_size\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_g_token_size:\09\09\09\09\09"
module asm "\09.asciz \09\22g_token_size\22\09\09\09\09\09"
module asm "__kstrtabns_g_token_size:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+g_make_token_header\22, \22a\22\09"
module asm "\09.weak\09__crc_g_make_token_header\09\09\09\09"
module asm "\09.long\09__crc_g_make_token_header\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_g_make_token_header:\09\09\09\09\09"
module asm "\09.asciz \09\22g_make_token_header\22\09\09\09\09\09"
module asm "__kstrtabns_g_make_token_header:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+g_verify_token_header\22, \22a\22\09"
module asm "\09.weak\09__crc_g_verify_token_header\09\09\09\09"
module asm "\09.long\09__crc_g_verify_token_header\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_g_verify_token_header:\09\09\09\09\09"
module asm "\09.asciz \09\22g_verify_token_header\22\09\09\09\09\09"
module asm "__kstrtabns_g_verify_token_header:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.xdr_netobj = type { i32, ptr }

@__kstrtab_g_token_size = external dso_local constant [0 x i8], align 1
@__kstrtabns_g_token_size = external dso_local constant [0 x i8], align 1
@__ksymtab_g_token_size = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @g_token_size to i32), ptr @__kstrtab_g_token_size, ptr @__kstrtabns_g_token_size }, section "___ksymtab_gpl+g_token_size", align 4
@__kstrtab_g_make_token_header = external dso_local constant [0 x i8], align 1
@__kstrtabns_g_make_token_header = external dso_local constant [0 x i8], align 1
@__ksymtab_g_make_token_header = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @g_make_token_header to i32), ptr @__kstrtab_g_make_token_header, ptr @__kstrtabns_g_make_token_header }, section "___ksymtab_gpl+g_make_token_header", align 4
@__kstrtab_g_verify_token_header = external dso_local constant [0 x i8], align 1
@__kstrtabns_g_verify_token_header = external dso_local constant [0 x i8], align 1
@__ksymtab_g_verify_token_header = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @g_verify_token_header to i32), ptr @__kstrtab_g_verify_token_header, ptr @__kstrtabns_g_verify_token_header }, section "___ksymtab_gpl+g_verify_token_header", align 4
@llvm.compiler.used = appending global [3 x ptr] [ptr @__ksymtab_g_make_token_header, ptr @__ksymtab_g_token_size, ptr @__ksymtab_g_verify_token_header], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @g_token_size(ptr nocapture noundef readonly %mech, i32 noundef %body_size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mech to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mech, align 4
  %add = add i32 %body_size, 2
  %add1 = add i32 %add, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add1)
  %cmp.i = icmp slt i32 %add1, 128
  br i1 %cmp.i, label %entry.der_length_size.exit_crit_edge, label %if.else.i

entry.der_length_size.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %der_length_size.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %add1)
  %cmp1.i = icmp ult i32 %add1, 256
  br i1 %cmp1.i, label %if.else.i.der_length_size.exit_crit_edge, label %if.else3.i

if.else.i.der_length_size.exit_crit_edge:         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %der_length_size.exit

if.else3.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add1)
  %cmp4.i = icmp ult i32 %add1, 65536
  br i1 %cmp4.i, label %if.else3.i.der_length_size.exit_crit_edge, label %if.else6.i

if.else3.i.der_length_size.exit_crit_edge:        ; preds = %if.else3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %der_length_size.exit

if.else6.i:                                       ; preds = %if.else3.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %add1)
  %cmp7.i = icmp ult i32 %add1, 16777216
  %phi.bo = select i1 %cmp7.i, i32 5, i32 6
  br label %der_length_size.exit

der_length_size.exit:                             ; preds = %if.else6.i, %if.else3.i.der_length_size.exit_crit_edge, %if.else.i.der_length_size.exit_crit_edge, %entry.der_length_size.exit_crit_edge
  %retval.0.i = phi i32 [ 2, %entry.der_length_size.exit_crit_edge ], [ 3, %if.else.i.der_length_size.exit_crit_edge ], [ 4, %if.else3.i.der_length_size.exit_crit_edge ], [ %phi.bo, %if.else6.i ]
  %add3 = add i32 %retval.0.i, %add1
  ret i32 %add3
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @g_make_token_header(ptr nocapture noundef readonly %mech, i32 noundef %body_size, ptr noundef %buf) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buf, align 4
  %incdec.ptr = getelementptr i8, ptr %1, i32 1
  store ptr %incdec.ptr, ptr %buf, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 96, ptr %1, align 1
  %3 = ptrtoint ptr %mech to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mech, align 4
  %add = add i32 %body_size, 2
  %add1 = add i32 %add, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add1)
  %cmp.i = icmp slt i32 %add1, 128
  br i1 %cmp.i, label %if.then.i, label %if.else.i.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i = trunc i32 %add1 to i8
  %5 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %buf, align 4
  %incdec.ptr.i = getelementptr i8, ptr %6, i32 1
  store ptr %incdec.ptr.i, ptr %buf, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv.i, ptr %6, align 1
  br label %der_write_length.exit

if.else.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %add1)
  %cmp1.i.i = icmp ult i32 %add1, 256
  br i1 %cmp1.i.i, label %if.end14.i, label %if.else3.i.i

if.else3.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add1)
  %cmp4.i.i = icmp ult i32 %add1, 65536
  br i1 %cmp4.i.i, label %if.end14.thread47.i, label %der_length_size.exit.i

if.end14.thread47.i:                              ; preds = %if.else3.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %8 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %buf, align 4
  %incdec.ptr24350.i = getelementptr i8, ptr %9, i32 1
  store ptr %incdec.ptr24350.i, ptr %buf, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -126, ptr %9, align 1
  br label %if.then17.i

der_length_size.exit.i:                           ; preds = %if.else3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %add1)
  %cmp7.i.i = icmp ult i32 %add1, 16777216
  %conv1.i = select i1 %cmp7.i.i, i8 -125, i8 -124
  %11 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %buf, align 4
  %incdec.ptr2.i = getelementptr i8, ptr %12, i32 1
  store ptr %incdec.ptr2.i, ptr %buf, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv1.i, ptr %12, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777215, i32 %add1)
  %cmp3.i = icmp ugt i32 %add1, 16777215
  br i1 %cmp3.i, label %if.then5.i, label %der_length_size.exit.i.if.end14.thread.i_crit_edge

der_length_size.exit.i.if.end14.thread.i_crit_edge: ; preds = %der_length_size.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end14.thread.i

if.then5.i:                                       ; preds = %der_length_size.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  %14 = lshr i32 %add1, 24
  %conv6.i = trunc i32 %14 to i8
  %15 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %buf, align 4
  %incdec.ptr7.i = getelementptr i8, ptr %16, i32 1
  store ptr %incdec.ptr7.i, ptr %buf, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv6.i, ptr %16, align 1
  br label %if.end14.thread.i

if.end14.thread.i:                                ; preds = %if.then5.i, %der_length_size.exit.i.if.end14.thread.i_crit_edge
  %18 = lshr i32 %add1, 16
  %conv12.i = trunc i32 %18 to i8
  %19 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %buf, align 4
  %incdec.ptr13.i = getelementptr i8, ptr %20, i32 1
  store ptr %incdec.ptr13.i, ptr %buf, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv12.i, ptr %20, align 1
  br label %if.then17.i

if.end14.i:                                       ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %22 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %buf, align 4
  %incdec.ptr243.i = getelementptr i8, ptr %23, i32 1
  store ptr %incdec.ptr243.i, ptr %buf, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 -127, ptr %23, align 1
  br label %if.end22.i

if.then17.i:                                      ; preds = %if.end14.thread.i, %if.end14.thread47.i
  %25 = lshr i32 %add1, 8
  %conv20.i = trunc i32 %25 to i8
  %26 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %buf, align 4
  %incdec.ptr21.i = getelementptr i8, ptr %27, i32 1
  store ptr %incdec.ptr21.i, ptr %buf, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv20.i, ptr %27, align 1
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.then17.i, %if.end14.i
  %conv24.i = trunc i32 %add1 to i8
  %29 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %buf, align 4
  %incdec.ptr25.i = getelementptr i8, ptr %30, i32 1
  store ptr %incdec.ptr25.i, ptr %buf, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv24.i, ptr %30, align 1
  br label %der_write_length.exit

der_write_length.exit:                            ; preds = %if.end22.i, %if.then.i
  %32 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %buf, align 4
  %incdec.ptr2 = getelementptr i8, ptr %33, i32 1
  store ptr %incdec.ptr2, ptr %buf, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 6, ptr %33, align 1
  %35 = ptrtoint ptr %mech to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %mech, align 4
  %conv = trunc i32 %36 to i8
  %37 = load ptr, ptr %buf, align 4
  %incdec.ptr4 = getelementptr i8, ptr %37, i32 1
  store ptr %incdec.ptr4, ptr %buf, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv, ptr %37, align 1
  %39 = load ptr, ptr %buf, align 4
  %data = getelementptr inbounds %struct.xdr_netobj, ptr %mech, i32 0, i32 1
  %40 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %data, align 4
  %42 = load i32, ptr %mech, align 4
  %43 = call ptr @memcpy(ptr %39, ptr %41, i32 %42)
  %44 = load i32, ptr %mech, align 4
  %45 = load ptr, ptr %buf, align 4
  %add.ptr = getelementptr i8, ptr %45, i32 %44
  store ptr %add.ptr, ptr %buf, align 4
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @g_verify_token_header(ptr nocapture noundef readonly %mech, ptr nocapture noundef writeonly %body_size, ptr nocapture noundef %buf_in, i32 noundef %toksize) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %sub = add i32 %toksize, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %buf_in to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buf_in, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 96, i8 %3)
  %cmp1.not = icmp ne i8 %3, 96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp.i = icmp eq i32 %sub, 0
  %or.cond = or i1 %cmp.i, %cmp1.not
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %incdec.ptr = getelementptr i8, ptr %1, i32 1
  %incdec.ptr.i = getelementptr i8, ptr %1, i32 2
  %4 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %incdec.ptr, align 1
  %dec.i = add i32 %toksize, -2
  %conv.i = zext i8 %5 to i32
  %and.i = and i32 %conv.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i.if.end8_crit_edge, label %if.then1.i

if.end.i.if.end8_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end8

if.then1.i:                                       ; preds = %if.end.i
  %and3.i = and i8 %5, 127
  %conv5.i = zext i8 %and3.i to i32
  %sub.i = add i32 %toksize, -3
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %conv5.i)
  %cmp6.i = icmp slt i32 %sub.i, %conv5.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %and3.i)
  %cmp11.i = icmp ugt i8 %and3.i, 4
  %or.cond.i = or i1 %cmp11.i, %cmp6.i
  br i1 %or.cond.i, label %if.then1.i.cleanup_crit_edge, label %for.cond.preheader.i

if.then1.i.cleanup_crit_edge:                     ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.cond.preheader.i:                             ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and3.i)
  %tobool15.not33.i = icmp eq i8 %and3.i, 0
  br i1 %tobool15.not33.i, label %for.cond.preheader.i.if.end8_crit_edge, label %for.body.i.preheader

for.cond.preheader.i.if.end8_crit_edge:           ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end8

for.body.i.preheader:                             ; preds = %for.cond.preheader.i
  %6 = add nsw i8 %and3.i, -1
  %7 = zext i8 %6 to i32
  %8 = add nuw nsw i32 %7, 3
  %9 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %incdec.ptr.i, align 1
  %conv17.i = zext i8 %10 to i32
  %dec18.i = add i32 %toksize, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %and3.i)
  %tobool15.not.i = icmp eq i8 %and3.i, 1
  br i1 %tobool15.not.i, label %for.body.i.preheader.der_read_length.exit_crit_edge, label %for.body.i.1

for.body.i.preheader.der_read_length.exit_crit_edge: ; preds = %for.body.i.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %der_read_length.exit

for.body.i.1:                                     ; preds = %for.body.i.preheader
  %incdec.ptr16.i = getelementptr i8, ptr %1, i32 3
  %shl.i.1 = shl nuw nsw i32 %conv17.i, 8
  %11 = ptrtoint ptr %incdec.ptr16.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %incdec.ptr16.i, align 1
  %conv17.i.1 = zext i8 %12 to i32
  %add.i.1 = or i32 %shl.i.1, %conv17.i.1
  %dec18.i.1 = add i32 %toksize, -4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %and3.i)
  %tobool15.not.i.1 = icmp eq i8 %and3.i, 2
  br i1 %tobool15.not.i.1, label %for.body.i.1.der_read_length.exit_crit_edge, label %for.body.i.2

for.body.i.1.der_read_length.exit_crit_edge:      ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %der_read_length.exit

for.body.i.2:                                     ; preds = %for.body.i.1
  %incdec.ptr16.i.1 = getelementptr i8, ptr %1, i32 4
  %shl.i.2 = shl nuw nsw i32 %add.i.1, 8
  %13 = ptrtoint ptr %incdec.ptr16.i.1 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %incdec.ptr16.i.1, align 1
  %conv17.i.2 = zext i8 %14 to i32
  %add.i.2 = or i32 %shl.i.2, %conv17.i.2
  %dec18.i.2 = add i32 %toksize, -5
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %and3.i)
  %tobool15.not.i.2 = icmp eq i8 %and3.i, 3
  br i1 %tobool15.not.i.2, label %for.body.i.2.der_read_length.exit_crit_edge, label %for.body.i.3

for.body.i.2.der_read_length.exit_crit_edge:      ; preds = %for.body.i.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %der_read_length.exit

for.body.i.3:                                     ; preds = %for.body.i.2
  call void @__sanitizer_cov_trace_pc() #6
  %incdec.ptr16.i.2 = getelementptr i8, ptr %1, i32 5
  %shl.i.3 = shl nuw i32 %add.i.2, 8
  %15 = ptrtoint ptr %incdec.ptr16.i.2 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %incdec.ptr16.i.2, align 1
  %conv17.i.3 = zext i8 %16 to i32
  %add.i.3 = or i32 %shl.i.3, %conv17.i.3
  %dec18.i.3 = add i32 %toksize, -6
  br label %der_read_length.exit

der_read_length.exit:                             ; preds = %for.body.i.3, %for.body.i.2.der_read_length.exit_crit_edge, %for.body.i.1.der_read_length.exit_crit_edge, %for.body.i.preheader.der_read_length.exit_crit_edge
  %add.i.lcssa = phi i32 [ %conv17.i, %for.body.i.preheader.der_read_length.exit_crit_edge ], [ %add.i.1, %for.body.i.1.der_read_length.exit_crit_edge ], [ %add.i.2, %for.body.i.2.der_read_length.exit_crit_edge ], [ %add.i.3, %for.body.i.3 ]
  %dec18.i.lcssa = phi i32 [ %dec18.i, %for.body.i.preheader.der_read_length.exit_crit_edge ], [ %dec18.i.1, %for.body.i.1.der_read_length.exit_crit_edge ], [ %dec18.i.2, %for.body.i.2.der_read_length.exit_crit_edge ], [ %dec18.i.3, %for.body.i.3 ]
  %uglygep = getelementptr i8, ptr %1, i32 %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i.lcssa)
  %cmp5 = icmp slt i32 %add.i.lcssa, 0
  br i1 %cmp5, label %der_read_length.exit.cleanup_crit_edge, label %der_read_length.exit.if.end8_crit_edge

der_read_length.exit.if.end8_crit_edge:           ; preds = %der_read_length.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end8

der_read_length.exit.cleanup_crit_edge:           ; preds = %der_read_length.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end8:                                          ; preds = %der_read_length.exit.if.end8_crit_edge, %for.cond.preheader.i.if.end8_crit_edge, %if.end.i.if.end8_crit_edge
  %retval.0.i92 = phi i32 [ %add.i.lcssa, %der_read_length.exit.if.end8_crit_edge ], [ 0, %for.cond.preheader.i.if.end8_crit_edge ], [ %conv.i, %if.end.i.if.end8_crit_edge ]
  %buf.191 = phi ptr [ %uglygep, %der_read_length.exit.if.end8_crit_edge ], [ %incdec.ptr.i, %for.cond.preheader.i.if.end8_crit_edge ], [ %incdec.ptr.i, %if.end.i.if.end8_crit_edge ]
  %toksize.addr.190 = phi i32 [ %dec18.i.lcssa, %der_read_length.exit.if.end8_crit_edge ], [ %dec.i, %for.cond.preheader.i.if.end8_crit_edge ], [ %dec.i, %if.end.i.if.end8_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i92, i32 %toksize.addr.190)
  %cmp9.not = icmp ne i32 %retval.0.i92, %toksize.addr.190
  %sub13 = add i32 %toksize.addr.190, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub13)
  %cmp14 = icmp slt i32 %sub13, 0
  %or.cond100 = or i1 %cmp9.not, %cmp14
  br i1 %or.cond100, label %if.end8.cleanup_crit_edge, label %if.end17

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end17:                                         ; preds = %if.end8
  %17 = ptrtoint ptr %buf.191 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %buf.191, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %18)
  %cmp20.not = icmp ne i8 %18, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %retval.0.i92)
  %cmp25 = icmp slt i32 %retval.0.i92, 2
  %or.cond101 = select i1 %cmp20.not, i1 true, i1 %cmp25
  br i1 %or.cond101, label %if.end17.cleanup_crit_edge, label %if.end28

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end28:                                         ; preds = %if.end17
  %incdec.ptr18 = getelementptr i8, ptr %buf.191, i32 1
  %sub24 = add nsw i32 %retval.0.i92, -2
  %incdec.ptr29 = getelementptr i8, ptr %buf.191, i32 2
  %19 = ptrtoint ptr %incdec.ptr18 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %incdec.ptr18, align 1
  %conv30 = zext i8 %20 to i32
  %sub32 = sub nsw i32 %sub24, %conv30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub32)
  %cmp33 = icmp slt i32 %sub32, 0
  br i1 %cmp33, label %if.end28.cleanup_crit_edge, label %if.end36

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end36:                                         ; preds = %if.end28
  %add.ptr = getelementptr i8, ptr %incdec.ptr29, i32 %conv30
  %21 = ptrtoint ptr %mech to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %mech, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %conv30)
  %cmp40 = icmp eq i32 %22, %conv30
  br i1 %cmp40, label %land.lhs.true, label %if.end36.if.end49.thread_crit_edge

if.end36.if.end49.thread_crit_edge:               ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end49.thread

land.lhs.true:                                    ; preds = %if.end36
  %data43 = getelementptr inbounds %struct.xdr_netobj, ptr %mech, i32 0, i32 1
  %23 = ptrtoint ptr %data43 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data43, align 4
  %bcmp = tail call i32 @bcmp(ptr %incdec.ptr29, ptr %24, i32 %conv30) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp46 = icmp eq i32 %bcmp, 0
  br i1 %cmp46, label %if.end49, label %land.lhs.true.if.end49.thread_crit_edge

land.lhs.true.if.end49.thread_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end49.thread

if.end49.thread:                                  ; preds = %land.lhs.true.if.end49.thread_crit_edge, %if.end36.if.end49.thread_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub32)
  %cmp5196 = icmp ult i32 %sub32, 2
  %.mux99 = select i1 %cmp5196, i32 -2045022964, i32 -2045022965
  br label %cleanup

if.end49:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub32)
  %cmp51 = icmp ult i32 %sub32, 2
  br i1 %cmp51, label %if.end49.cleanup_crit_edge, label %if.end56

if.end49.cleanup_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end56:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #6
  %sub50 = add nsw i32 %sub32, -2
  %25 = ptrtoint ptr %buf_in to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %add.ptr, ptr %buf_in, align 4
  %26 = ptrtoint ptr %body_size to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %sub50, ptr %body_size, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end56, %if.end49.cleanup_crit_edge, %if.end49.thread, %if.end28.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %der_read_length.exit.cleanup_crit_edge, %if.then1.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end56 ], [ -2045022964, %entry.cleanup_crit_edge ], [ -2045022964, %if.end.cleanup_crit_edge ], [ -2045022964, %der_read_length.exit.cleanup_crit_edge ], [ -2045022964, %if.end8.cleanup_crit_edge ], [ -2045022964, %if.end17.cleanup_crit_edge ], [ -2045022964, %if.end28.cleanup_crit_edge ], [ -2045022964, %if.end49.cleanup_crit_edge ], [ %.mux99, %if.end49.thread ], [ -2045022964, %if.then1.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nofree nounwind readonly willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @__ksymtab_g_token_size, !1, !"__ksymtab_g_token_size", i1 false, i1 false}
!1 = !{!"../net/sunrpc/auth_gss/gss_generic_token.c", i32 154, i32 1}
!2 = !{ptr @__ksymtab_g_make_token_header, !3, !"__ksymtab_g_make_token_header", i1 false, i1 false}
!3 = !{!"../net/sunrpc/auth_gss/gss_generic_token.c", i32 169, i32 1}
!4 = !{ptr @__ksymtab_g_verify_token_header, !5, !"__ksymtab_g_verify_token_header", i1 false, i1 false}
!5 = !{!"../net/sunrpc/auth_gss/gss_generic_token.c", i32 231, i32 1}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
