; ModuleID = '/llk/IR_all_yes/net/ipv6/exthdrs_core.c_pt.bc'
source_filename = "../net/ipv6/exthdrs_core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+ipv6_ext_hdr\22, \22a\22\09"
module asm "\09.weak\09__crc_ipv6_ext_hdr\09\09\09\09"
module asm "\09.long\09__crc_ipv6_ext_hdr\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipv6_ext_hdr:\09\09\09\09\09"
module asm "\09.asciz \09\22ipv6_ext_hdr\22\09\09\09\09\09"
module asm "__kstrtabns_ipv6_ext_hdr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ipv6_skip_exthdr\22, \22a\22\09"
module asm "\09.weak\09__crc_ipv6_skip_exthdr\09\09\09\09"
module asm "\09.long\09__crc_ipv6_skip_exthdr\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipv6_skip_exthdr:\09\09\09\09\09"
module asm "\09.asciz \09\22ipv6_skip_exthdr\22\09\09\09\09\09"
module asm "__kstrtabns_ipv6_skip_exthdr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ipv6_find_tlv\22, \22a\22\09"
module asm "\09.weak\09__crc_ipv6_find_tlv\09\09\09\09"
module asm "\09.long\09__crc_ipv6_find_tlv\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipv6_find_tlv:\09\09\09\09\09"
module asm "\09.asciz \09\22ipv6_find_tlv\22\09\09\09\09\09"
module asm "__kstrtabns_ipv6_find_tlv:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ipv6_find_hdr\22, \22a\22\09"
module asm "\09.weak\09__crc_ipv6_find_hdr\09\09\09\09"
module asm "\09.long\09__crc_ipv6_find_hdr\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipv6_find_hdr:\09\09\09\09\09"
module asm "\09.asciz \09\22ipv6_find_hdr\22\09\09\09\09\09"
module asm "__kstrtabns_ipv6_find_hdr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ipv6_opt_hdr = type { i8, i8 }
%struct.sk_buff = type { %union.anon, %union.anon.124, %union.anon.125, [48 x i8], %union.anon.126, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.128, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.124 = type { ptr }
%union.anon.125 = type { i64 }
%union.anon.126 = type { %struct.anon.127 }
%struct.anon.127 = type { i32, ptr }
%union.anon.128 = type { %struct.anon.129 }
%struct.anon.129 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.130, i32, i32, i32, i16, i16, %union.anon.132, i32, %union.anon.133, %union.anon.134, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.130 = type { i32 }
%union.anon.132 = type { i32 }
%union.anon.133 = type { i32 }
%union.anon.134 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.26 }
%union.anon.26 = type { [4 x i32] }
%struct.ipv6_rt_hdr = type { i8, i8, i8, i8 }

@__kstrtab_ipv6_ext_hdr = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipv6_ext_hdr = external dso_local constant [0 x i8], align 1
@__ksymtab_ipv6_ext_hdr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipv6_ext_hdr to i32), ptr @__kstrtab_ipv6_ext_hdr, ptr @__kstrtabns_ipv6_ext_hdr }, section "___ksymtab+ipv6_ext_hdr", align 4
@__kstrtab_ipv6_skip_exthdr = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipv6_skip_exthdr = external dso_local constant [0 x i8], align 1
@__ksymtab_ipv6_skip_exthdr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipv6_skip_exthdr to i32), ptr @__kstrtab_ipv6_skip_exthdr, ptr @__kstrtabns_ipv6_skip_exthdr }, section "___ksymtab+ipv6_skip_exthdr", align 4
@__kstrtab_ipv6_find_tlv = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipv6_find_tlv = external dso_local constant [0 x i8], align 1
@__ksymtab_ipv6_find_tlv = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipv6_find_tlv to i32), ptr @__kstrtab_ipv6_find_tlv, ptr @__kstrtabns_ipv6_find_tlv }, section "___ksymtab_gpl+ipv6_find_tlv", align 4
@__kstrtab_ipv6_find_hdr = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipv6_find_hdr = external dso_local constant [0 x i8], align 1
@__ksymtab_ipv6_find_hdr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipv6_find_hdr to i32), ptr @__kstrtab_ipv6_find_hdr, ptr @__kstrtabns_ipv6_find_hdr }, section "___ksymtab+ipv6_find_hdr", align 4
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 8, i64 0, i64 43, i64 44, i64 51, i64 59, i64 60]
@__sancov_gen_cov_switch_values.1 = internal global [8 x i64] [i64 6, i64 8, i64 0, i64 43, i64 44, i64 51, i64 59, i64 60]
@__sancov_gen_cov_switch_values.2 = internal global [4 x i64] [i64 2, i64 8, i64 44, i64 51]
@__sancov_gen_cov_switch_values.3 = internal global [7 x i64] [i64 5, i64 8, i64 0, i64 43, i64 44, i64 51, i64 60]
@__sancov_gen_cov_switch_values.4 = internal global [5 x i64] [i64 3, i64 8, i64 43, i64 44, i64 51]
@__sancov_gen_cov_switch_values.5 = internal global [7 x i64] [i64 5, i64 8, i64 0, i64 43, i64 44, i64 51, i64 60]
@llvm.compiler.used = appending global [4 x ptr] [ptr @__ksymtab_ipv6_ext_hdr, ptr @__ksymtab_ipv6_find_hdr, ptr @__ksymtab_ipv6_find_tlv, ptr @__ksymtab_ipv6_skip_exthdr], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @ipv6_ext_hdr(i8 noundef zeroext %nexthdr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i8 %nexthdr to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i8 %nexthdr, label %lor.rhs [
    i8 0, label %entry.lor.end_crit_edge
    i8 43, label %entry.lor.end_crit_edge25
    i8 44, label %entry.lor.end_crit_edge26
    i8 51, label %entry.lor.end_crit_edge27
    i8 59, label %entry.lor.end_crit_edge28
    i8 60, label %entry.lor.end_crit_edge29
  ]

entry.lor.end_crit_edge29:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.end

entry.lor.end_crit_edge28:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.end

entry.lor.end_crit_edge27:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.end

entry.lor.end_crit_edge26:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.end

entry.lor.end_crit_edge25:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.end

entry.lor.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.end

lor.rhs:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry.lor.end_crit_edge, %entry.lor.end_crit_edge25, %entry.lor.end_crit_edge26, %entry.lor.end_crit_edge27, %entry.lor.end_crit_edge28, %entry.lor.end_crit_edge29
  %1 = phi i1 [ true, %entry.lor.end_crit_edge ], [ false, %lor.rhs ], [ true, %entry.lor.end_crit_edge25 ], [ true, %entry.lor.end_crit_edge26 ], [ true, %entry.lor.end_crit_edge27 ], [ true, %entry.lor.end_crit_edge28 ], [ true, %entry.lor.end_crit_edge29 ]
  ret i1 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ipv6_skip_exthdr(ptr noundef %skb, i32 noundef %start, ptr nocapture noundef %nexthdrp, ptr nocapture noundef writeonly %frag_offp) #1 align 64 {
entry:
  %_hdr = alloca %struct.ipv6_opt_hdr, align 1
  %_frag_off = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %nexthdrp to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %nexthdrp, align 1
  %2 = ptrtoint ptr %frag_offp to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 0, ptr %frag_offp, align 2
  %3 = getelementptr inbounds %struct.ipv6_opt_hdr, ptr %_hdr, i32 0, i32 1
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %tobool2.not.i.i = icmp eq ptr %skb, null
  br label %while.cond

while.cond:                                       ; preds = %cleanup34, %entry
  %start.addr.0 = phi i32 [ %start, %entry ], [ %add33, %cleanup34 ]
  %nexthdr.0 = phi i8 [ %1, %entry ], [ %30, %cleanup34 ]
  %4 = zext i8 %nexthdr.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.1)
  switch i8 %nexthdr.0, label %while.cond.while.end_crit_edge [
    i8 0, label %while.cond.while.body_crit_edge
    i8 43, label %while.cond.while.body_crit_edge132
    i8 44, label %while.cond.while.body_crit_edge133
    i8 51, label %while.cond.while.body_crit_edge134
    i8 59, label %while.cond.while.body_crit_edge135
    i8 60, label %while.cond.while.body_crit_edge136
  ]

while.cond.while.body_crit_edge136:               ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.cond.while.body_crit_edge135:               ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.cond.while.body_crit_edge134:               ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.cond.while.body_crit_edge133:               ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.cond.while.body_crit_edge132:               ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.cond.while.body_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body:                                       ; preds = %while.cond.while.body_crit_edge, %while.cond.while.body_crit_edge132, %while.cond.while.body_crit_edge133, %while.cond.while.body_crit_edge134, %while.cond.while.body_crit_edge135, %while.cond.while.body_crit_edge136
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %_hdr) #5
  %5 = ptrtoint ptr %_hdr to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %_hdr, align 1, !annotation !17
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %3, align 1, !annotation !17
  call void @__sanitizer_cov_trace_const_cmp1(i8 59, i8 %nexthdr.0)
  %cmp = icmp eq i8 %nexthdr.0, 59
  br i1 %cmp, label %while.body.cleanup34.thread_crit_edge, label %if.end

while.body.cleanup34.thread_crit_edge:            ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup34.thread

if.end:                                           ; preds = %while.body
  %7 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %len.i.i, align 4
  %9 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %data_len.i.i, align 8
  %11 = add i32 %start.addr.0, %10
  %sub.i4.i = sub i32 %8, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub.i4.i)
  %cmp.not.i.i = icmp slt i32 %sub.i4.i, 2
  br i1 %cmp.not.i.i, label %if.end.i.i, label %skb_header_pointer.exit, !prof !18

if.end.i.i:                                       ; preds = %if.end
  br i1 %tobool2.not.i.i, label %if.end.i.i.cleanup34.thread_crit_edge, label %lor.lhs.false.i.i

if.end.i.i.cleanup34.thread_crit_edge:            ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup34.thread

lor.lhs.false.i.i:                                ; preds = %if.end.i.i
  %call.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %start.addr.0, ptr noundef nonnull %_hdr, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp3.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp3.i.i, label %lor.lhs.false.i.i.cleanup34.thread_crit_edge, label %lor.lhs.false.i.i.if.end4_crit_edge

lor.lhs.false.i.i.if.end4_crit_edge:              ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4

lor.lhs.false.i.i.cleanup34.thread_crit_edge:     ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup34.thread

skb_header_pointer.exit:                          ; preds = %if.end
  %12 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 %start.addr.0
  %tobool.not = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool.not, label %skb_header_pointer.exit.cleanup34.thread_crit_edge, label %skb_header_pointer.exit.if.end4_crit_edge

skb_header_pointer.exit.if.end4_crit_edge:        ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4

skb_header_pointer.exit.cleanup34.thread_crit_edge: ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup34.thread

if.end4:                                          ; preds = %skb_header_pointer.exit.if.end4_crit_edge, %lor.lhs.false.i.i.if.end4_crit_edge
  %retval.0.i.i78 = phi ptr [ %add.ptr.i.i, %skb_header_pointer.exit.if.end4_crit_edge ], [ %_hdr, %lor.lhs.false.i.i.if.end4_crit_edge ]
  %14 = zext i8 %nexthdr.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.2)
  switch i8 %nexthdr.0, label %if.else25 [
    i8 44, label %if.then8
    i8 51, label %if.end4.cleanup34.sink.split_crit_edge
  ]

if.end4.cleanup34.sink.split_crit_edge:           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup34.sink.split

if.then8:                                         ; preds = %if.end4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %_frag_off) #5
  %15 = ptrtoint ptr %_frag_off to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 -1, ptr %_frag_off, align 2, !annotation !17
  %add = add i32 %start.addr.0, 2
  %16 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %len.i.i, align 4
  %18 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %data_len.i.i, align 8
  %20 = add i32 %17, -2
  %21 = add i32 %start.addr.0, %19
  %sub.i4.i60 = sub i32 %20, %21
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub.i4.i60)
  %cmp.not.i.i61 = icmp slt i32 %sub.i4.i60, 2
  br i1 %cmp.not.i.i61, label %if.end.i.i66, label %skb_header_pointer.exit72, !prof !18

if.end.i.i66:                                     ; preds = %if.then8
  br i1 %tobool2.not.i.i, label %if.end.i.i66.cleanup.thread_crit_edge, label %lor.lhs.false.i.i70

if.end.i.i66.cleanup.thread_crit_edge:            ; preds = %if.end.i.i66
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.thread

lor.lhs.false.i.i70:                              ; preds = %if.end.i.i66
  %call.i.i67 = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %add, ptr noundef nonnull %_frag_off, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i67)
  %cmp3.i.i68 = icmp slt i32 %call.i.i67, 0
  br i1 %cmp3.i.i68, label %lor.lhs.false.i.i70.cleanup.thread_crit_edge, label %lor.lhs.false.i.i70.cleanup_crit_edge

lor.lhs.false.i.i70.cleanup_crit_edge:            ; preds = %lor.lhs.false.i.i70
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false.i.i70.cleanup.thread_crit_edge:     ; preds = %lor.lhs.false.i.i70
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.thread

skb_header_pointer.exit72:                        ; preds = %if.then8
  %22 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data.i, align 4
  %add.ptr.i.i63 = getelementptr i8, ptr %23, i32 %add
  %tobool10.not = icmp eq ptr %add.ptr.i.i63, null
  br i1 %tobool10.not, label %skb_header_pointer.exit72.cleanup.thread_crit_edge, label %skb_header_pointer.exit72.cleanup_crit_edge

skb_header_pointer.exit72.cleanup_crit_edge:      ; preds = %skb_header_pointer.exit72
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

skb_header_pointer.exit72.cleanup.thread_crit_edge: ; preds = %skb_header_pointer.exit72
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %skb_header_pointer.exit72.cleanup.thread_crit_edge, %lor.lhs.false.i.i70.cleanup.thread_crit_edge, %if.end.i.i66.cleanup.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %_frag_off) #5
  br label %cleanup34.thread

cleanup:                                          ; preds = %skb_header_pointer.exit72.cleanup_crit_edge, %lor.lhs.false.i.i70.cleanup_crit_edge
  %retval.0.i.i7185 = phi ptr [ %add.ptr.i.i63, %skb_header_pointer.exit72.cleanup_crit_edge ], [ %_frag_off, %lor.lhs.false.i.i70.cleanup_crit_edge ]
  %24 = ptrtoint ptr %retval.0.i.i7185 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %retval.0.i.i7185, align 2
  %26 = ptrtoint ptr %frag_offp to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %25, ptr %frag_offp, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %25)
  %tobool14.not = icmp ult i16 %25, 8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %_frag_off) #5
  br i1 %tobool14.not, label %cleanup.cleanup34_crit_edge, label %cleanup34.thread95

cleanup.cleanup34_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup34

cleanup34.thread95:                               ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %_hdr) #5
  br label %while.end

if.else25:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup34.sink.split

cleanup34.thread:                                 ; preds = %cleanup.thread, %skb_header_pointer.exit.cleanup34.thread_crit_edge, %lor.lhs.false.i.i.cleanup34.thread_crit_edge, %if.end.i.i.cleanup34.thread_crit_edge, %while.body.cleanup34.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %_hdr) #5
  br label %cleanup39

cleanup34.sink.split:                             ; preds = %if.else25, %if.end4.cleanup34.sink.split_crit_edge
  %.sink = phi i32 [ 3, %if.else25 ], [ 2, %if.end4.cleanup34.sink.split_crit_edge ]
  %hdrlen26 = getelementptr inbounds %struct.ipv6_opt_hdr, ptr %retval.0.i.i78, i32 0, i32 1
  %27 = ptrtoint ptr %hdrlen26 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %hdrlen26, align 1
  %conv27 = zext i8 %28 to i32
  %add28 = shl nuw nsw i32 %conv27, %.sink
  %shl29 = add nuw nsw i32 %add28, 8
  br label %cleanup34

cleanup34:                                        ; preds = %cleanup34.sink.split, %cleanup.cleanup34_crit_edge
  %hdrlen.1 = phi i32 [ 8, %cleanup.cleanup34_crit_edge ], [ %shl29, %cleanup34.sink.split ]
  %29 = ptrtoint ptr %retval.0.i.i78 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %retval.0.i.i78, align 1
  %add33 = add i32 %hdrlen.1, %start.addr.0
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %_hdr) #5
  br label %while.cond

while.end:                                        ; preds = %cleanup34.thread95, %while.cond.while.end_crit_edge
  %31 = ptrtoint ptr %nexthdrp to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %nexthdr.0, ptr %nexthdrp, align 1
  br label %cleanup39

cleanup39:                                        ; preds = %while.end, %cleanup34.thread
  %retval.4 = phi i32 [ %start.addr.0, %while.end ], [ -1, %cleanup34.thread ]
  ret i32 %retval.4
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ipv6_find_tlv(ptr nocapture noundef readonly %skb, i32 noundef %offset, i32 noundef %type) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %0 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head.i, align 8
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %2 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %network_header.i, align 4
  %conv.i = zext i16 %3 to i32
  %add.ptr.i = getelementptr i8, ptr %1, i32 %conv.i
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %4 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tail.i, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %5 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %add.ptr.i to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %add = add i32 %offset, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %sub.ptr.sub)
  %cmp = icmp sgt i32 %add, %sub.ptr.sub
  br i1 %cmp, label %entry.cleanup28_crit_edge, label %if.end

entry.cleanup28_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup28

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %add.ptr.i, i32 %offset
  %hdrlen = getelementptr inbounds %struct.ipv6_opt_hdr, ptr %add.ptr, i32 0, i32 1
  %6 = ptrtoint ptr %hdrlen to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %hdrlen, align 1
  %conv = zext i8 %7 to i32
  %add3 = shl nuw nsw i32 %conv, 3
  %shl = add i32 %offset, 8
  %add4 = add i32 %shl, %add3
  call void @__sanitizer_cov_trace_cmp4(i32 %add4, i32 %sub.ptr.sub)
  %cmp5 = icmp sgt i32 %add4, %sub.ptr.sub
  br i1 %cmp5, label %if.end.cleanup28_crit_edge, label %if.end8

if.end.cleanup28_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup28

if.end8:                                          ; preds = %if.end
  %sub = or i32 %add3, 6
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %if.end8
  %len.066 = phi i32 [ %sub, %if.end8 ], [ %sub26, %cleanup.while.body_crit_edge ]
  %offset.addr.064 = phi i32 [ %add, %if.end8 ], [ %add25, %cleanup.while.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %add.ptr.i, i32 %offset.addr.064
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx, align 1
  %conv12 = zext i8 %9 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv12, i32 %type)
  %cmp13 = icmp eq i32 %conv12, %type
  br i1 %cmp13, label %while.body.cleanup28_crit_edge, label %if.end16

while.body.cleanup28_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup28

if.end16:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cond = icmp eq i8 %9, 0
  br i1 %cond, label %if.end16.cleanup_crit_edge, label %sw.default

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.default:                                       ; preds = %if.end16
  %add17 = add i32 %offset.addr.064, 1
  %arrayidx18 = getelementptr i8, ptr %add.ptr.i, i32 %add17
  %10 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx18, align 1
  %conv19 = zext i8 %11 to i32
  %add20 = add nuw nsw i32 %conv19, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %add20, i32 %len.066)
  %cmp21 = icmp ugt i32 %add20, %len.066
  br i1 %cmp21, label %sw.default.cleanup28_crit_edge, label %sw.default.cleanup_crit_edge

sw.default.cleanup_crit_edge:                     ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.default.cleanup28_crit_edge:                   ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup28

cleanup:                                          ; preds = %sw.default.cleanup_crit_edge, %if.end16.cleanup_crit_edge
  %optlen.0 = phi i32 [ %add20, %sw.default.cleanup_crit_edge ], [ 1, %if.end16.cleanup_crit_edge ]
  %add25 = add i32 %optlen.0, %offset.addr.064
  %sub26 = sub nsw i32 %len.066, %optlen.0
  %cmp10 = icmp sgt i32 %sub26, 0
  br i1 %cmp10, label %cleanup.while.body_crit_edge, label %cleanup.cleanup28_crit_edge

cleanup.cleanup28_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup28

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

cleanup28:                                        ; preds = %cleanup.cleanup28_crit_edge, %sw.default.cleanup28_crit_edge, %while.body.cleanup28_crit_edge, %if.end.cleanup28_crit_edge, %entry.cleanup28_crit_edge
  %retval.2 = phi i32 [ -1, %if.end.cleanup28_crit_edge ], [ -1, %entry.cleanup28_crit_edge ], [ -1, %sw.default.cleanup28_crit_edge ], [ %offset.addr.064, %while.body.cleanup28_crit_edge ], [ -1, %cleanup.cleanup28_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ipv6_find_hdr(ptr noundef %skb, ptr nocapture noundef %offset, i32 noundef %target, ptr noundef writeonly %fragoff, ptr noundef %flags) #1 align 64 {
entry:
  %_ip6 = alloca %struct.ipv6hdr, align 4
  %_hdr = alloca %struct.ipv6_opt_hdr, align 1
  %_rh = alloca %struct.ipv6_rt_hdr, align 4
  %_frag_off = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %0 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %2 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %3 to i32
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %conv.i.i
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %4 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %5 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %nexthdr2 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 3
  %6 = ptrtoint ptr %nexthdr2 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %nexthdr2, align 2
  %tobool.not = icmp eq ptr %fragoff, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %fragoff to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 0, ptr %fragoff, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %9 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %offset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool3.not = icmp eq i32 %10, 0
  br i1 %tobool3.not, label %if.end.if.end13_crit_edge, label %if.then4

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

if.then4:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %_ip6) #5
  %11 = call ptr @memset(ptr %_ip6, i32 255, i32 40)
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %12 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %14 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %data_len.i.i, align 8
  %16 = add i32 %10, %15
  %sub.i4.i = sub i32 %13, %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %sub.i4.i)
  %cmp.not.i.i = icmp slt i32 %sub.i4.i, 40
  br i1 %cmp.not.i.i, label %if.end.i.i, label %skb_header_pointer.exit, !prof !18

if.end.i.i:                                       ; preds = %if.then4
  %tobool2.not.i.i = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i, label %if.end.i.i.cleanup.thread_crit_edge, label %lor.lhs.false.i.i

if.end.i.i.cleanup.thread_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.thread

lor.lhs.false.i.i:                                ; preds = %if.end.i.i
  %call.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %10, ptr noundef nonnull %_ip6, i32 noundef 40) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp3.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp3.i.i, label %lor.lhs.false.i.i.cleanup.thread_crit_edge, label %lor.lhs.false.i.i.lor.lhs.false_crit_edge

lor.lhs.false.i.i.lor.lhs.false_crit_edge:        ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false

lor.lhs.false.i.i.cleanup.thread_crit_edge:       ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.thread

skb_header_pointer.exit:                          ; preds = %if.then4
  %17 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data.i, align 4
  %add.ptr.i.i202 = getelementptr i8, ptr %18, i32 %10
  %tobool6.not = icmp eq ptr %add.ptr.i.i202, null
  br i1 %tobool6.not, label %skb_header_pointer.exit.cleanup.thread_crit_edge, label %skb_header_pointer.exit.lor.lhs.false_crit_edge

skb_header_pointer.exit.lor.lhs.false_crit_edge:  ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false

skb_header_pointer.exit.cleanup.thread_crit_edge: ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.thread

lor.lhs.false:                                    ; preds = %skb_header_pointer.exit.lor.lhs.false_crit_edge, %lor.lhs.false.i.i.lor.lhs.false_crit_edge
  %retval.0.i.i255 = phi ptr [ %add.ptr.i.i202, %skb_header_pointer.exit.lor.lhs.false_crit_edge ], [ %_ip6, %lor.lhs.false.i.i.lor.lhs.false_crit_edge ]
  %19 = ptrtoint ptr %retval.0.i.i255 to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load = load i8, ptr %retval.0.i.i255, align 4
  %bf.lshr.mask = and i8 %bf.load, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 96, i8 %bf.lshr.mask)
  %cmp.not = icmp eq i8 %bf.lshr.mask, 96
  br i1 %cmp.not, label %cleanup, label %lor.lhs.false.cleanup.thread_crit_edge

lor.lhs.false.cleanup.thread_crit_edge:           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %lor.lhs.false.cleanup.thread_crit_edge, %skb_header_pointer.exit.cleanup.thread_crit_edge, %lor.lhs.false.i.i.cleanup.thread_crit_edge, %if.end.i.i.cleanup.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_ip6) #5
  br label %cleanup136

cleanup:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %offset, align 4
  %nexthdr11 = getelementptr inbounds %struct.ipv6hdr, ptr %retval.0.i.i255, i32 0, i32 3
  %22 = ptrtoint ptr %nexthdr11 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %nexthdr11, align 2
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_ip6) #5
  br label %if.end13

if.end13:                                         ; preds = %cleanup, %if.end.if.end13_crit_edge
  %start.1.in = phi i32 [ %21, %cleanup ], [ %sub.ptr.sub.i, %if.end.if.end13_crit_edge ]
  %nexthdr.1 = phi i8 [ %23, %cleanup ], [ %7, %if.end.if.end13_crit_edge ]
  %start.1 = add i32 %start.1.in, 40
  %24 = getelementptr inbounds %struct.ipv6_opt_hdr, ptr %_hdr, i32 0, i32 1
  %len.i.i203 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %data_len.i.i204 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %tobool2.not.i.i210 = icmp eq ptr %skb, null
  %tobool105.not = icmp eq ptr %flags, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %target)
  %cmp110 = icmp slt i32 %target, 0
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end13
  %start.2 = phi i32 [ %start.1, %if.end13 ], [ %add127, %do.cond ]
  %nexthdr.2 = phi i8 [ %nexthdr.1, %if.end13 ], [ %77, %do.cond ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %_hdr) #5
  %25 = ptrtoint ptr %_hdr to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 -1, ptr %_hdr, align 1, !annotation !17
  %26 = ptrtoint ptr %24 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 -1, ptr %24, align 1, !annotation !17
  %conv14 = zext i8 %nexthdr.2 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv14, i32 %target)
  %cmp15 = icmp eq i32 %conv14, %target
  %frombool = zext i1 %cmp15 to i8
  %27 = zext i8 %nexthdr.2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.3)
  switch i8 %nexthdr.2, label %if.then22 [
    i8 60, label %do.body.if.end30_crit_edge
    i8 0, label %do.body.if.end30_crit_edge500
    i8 43, label %do.body.if.end30_crit_edge501
    i8 44, label %do.body.if.end30_crit_edge502
    i8 51, label %do.body.if.end30_crit_edge503
  ]

do.body.if.end30_crit_edge503:                    ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30

do.body.if.end30_crit_edge502:                    ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30

do.body.if.end30_crit_edge501:                    ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30

do.body.if.end30_crit_edge500:                    ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30

do.body.if.end30_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30

if.then22:                                        ; preds = %do.body
  %brmerge = or i1 %cmp110, %cmp15
  br i1 %brmerge, label %if.then22.cleanup129.thread312_crit_edge, label %if.then22.cleanup129.thread_crit_edge

if.then22.cleanup129.thread_crit_edge:            ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup129.thread

if.then22.cleanup129.thread312_crit_edge:         ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup129.thread312

if.end30:                                         ; preds = %do.body.if.end30_crit_edge, %do.body.if.end30_crit_edge500, %do.body.if.end30_crit_edge501, %do.body.if.end30_crit_edge502, %do.body.if.end30_crit_edge503
  %28 = ptrtoint ptr %len.i.i203 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %len.i.i203, align 4
  %30 = ptrtoint ptr %data_len.i.i204 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %data_len.i.i204, align 8
  %32 = add i32 %start.2, %31
  %sub.i4.i205 = sub i32 %29, %32
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub.i4.i205)
  %cmp.not.i.i206 = icmp slt i32 %sub.i4.i205, 2
  br i1 %cmp.not.i.i206, label %if.end.i.i211, label %skb_header_pointer.exit217, !prof !18

if.end.i.i211:                                    ; preds = %if.end30
  br i1 %tobool2.not.i.i210, label %if.end.i.i211.cleanup129.thread_crit_edge, label %lor.lhs.false.i.i215

if.end.i.i211.cleanup129.thread_crit_edge:        ; preds = %if.end.i.i211
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup129.thread

lor.lhs.false.i.i215:                             ; preds = %if.end.i.i211
  %call.i.i212 = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %start.2, ptr noundef nonnull %_hdr, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i212)
  %cmp3.i.i213 = icmp slt i32 %call.i.i212, 0
  br i1 %cmp3.i.i213, label %lor.lhs.false.i.i215.cleanup129.thread_crit_edge, label %lor.lhs.false.i.i215.if.end34_crit_edge

lor.lhs.false.i.i215.if.end34_crit_edge:          ; preds = %lor.lhs.false.i.i215
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end34

lor.lhs.false.i.i215.cleanup129.thread_crit_edge: ; preds = %lor.lhs.false.i.i215
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup129.thread

skb_header_pointer.exit217:                       ; preds = %if.end30
  %33 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %data.i, align 4
  %add.ptr.i.i208 = getelementptr i8, ptr %34, i32 %start.2
  %tobool32.not = icmp eq ptr %add.ptr.i.i208, null
  br i1 %tobool32.not, label %skb_header_pointer.exit217.cleanup129.thread_crit_edge, label %skb_header_pointer.exit217.if.end34_crit_edge

skb_header_pointer.exit217.if.end34_crit_edge:    ; preds = %skb_header_pointer.exit217
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end34

skb_header_pointer.exit217.cleanup129.thread_crit_edge: ; preds = %skb_header_pointer.exit217
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup129.thread

if.end34:                                         ; preds = %skb_header_pointer.exit217.if.end34_crit_edge, %lor.lhs.false.i.i215.if.end34_crit_edge
  %retval.0.i.i216271 = phi ptr [ %add.ptr.i.i208, %skb_header_pointer.exit217.if.end34_crit_edge ], [ %_hdr, %lor.lhs.false.i.i215.if.end34_crit_edge ]
  %35 = zext i8 %nexthdr.2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.4)
  switch i8 %nexthdr.2, label %if.end34.if.else117_crit_edge [
    i8 43, label %if.then38
    i8 44, label %if.then59
    i8 51, label %if.then104
  ]

if.end34.if.else117_crit_edge:                    ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else117

if.then38:                                        ; preds = %if.end34
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_rh) #5
  %36 = ptrtoint ptr %_rh to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 -1, ptr %_rh, align 4
  %37 = ptrtoint ptr %len.i.i203 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %len.i.i203, align 4
  %39 = ptrtoint ptr %data_len.i.i204 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %data_len.i.i204, align 8
  %41 = add i32 %start.2, %40
  %sub.i4.i220 = sub i32 %38, %41
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.i4.i220)
  %cmp.not.i.i221 = icmp slt i32 %sub.i4.i220, 4
  br i1 %cmp.not.i.i221, label %if.end.i.i226, label %skb_header_pointer.exit232, !prof !18

if.end.i.i226:                                    ; preds = %if.then38
  br i1 %tobool2.not.i.i210, label %if.end.i.i226.cleanup51_crit_edge, label %lor.lhs.false.i.i230

if.end.i.i226.cleanup51_crit_edge:                ; preds = %if.end.i.i226
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup51

lor.lhs.false.i.i230:                             ; preds = %if.end.i.i226
  %call.i.i227 = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %start.2, ptr noundef nonnull %_rh, i32 noundef 4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i227)
  %cmp3.i.i228 = icmp slt i32 %call.i.i227, 0
  br i1 %cmp3.i.i228, label %lor.lhs.false.i.i230.cleanup51_crit_edge, label %lor.lhs.false.i.i230.if.end42_crit_edge

lor.lhs.false.i.i230.if.end42_crit_edge:          ; preds = %lor.lhs.false.i.i230
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end42

lor.lhs.false.i.i230.cleanup51_crit_edge:         ; preds = %lor.lhs.false.i.i230
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup51

skb_header_pointer.exit232:                       ; preds = %if.then38
  %42 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %data.i, align 4
  %add.ptr.i.i223 = getelementptr i8, ptr %43, i32 %start.2
  %tobool40.not = icmp eq ptr %add.ptr.i.i223, null
  br i1 %tobool40.not, label %skb_header_pointer.exit232.cleanup51_crit_edge, label %skb_header_pointer.exit232.if.end42_crit_edge

skb_header_pointer.exit232.if.end42_crit_edge:    ; preds = %skb_header_pointer.exit232
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end42

skb_header_pointer.exit232.cleanup51_crit_edge:   ; preds = %skb_header_pointer.exit232
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup51

if.end42:                                         ; preds = %skb_header_pointer.exit232.if.end42_crit_edge, %lor.lhs.false.i.i230.if.end42_crit_edge
  %retval.0.i.i231279 = phi ptr [ %add.ptr.i.i223, %skb_header_pointer.exit232.if.end42_crit_edge ], [ %_rh, %lor.lhs.false.i.i230.if.end42_crit_edge ]
  br i1 %tobool105.not, label %if.end42.if.end55.thread_crit_edge, label %land.lhs.true

if.end42.if.end55.thread_crit_edge:               ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end55.thread

land.lhs.true:                                    ; preds = %if.end42
  %44 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %flags, align 4
  %and = and i32 %45, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool44.not = icmp eq i32 %and, 0
  br i1 %tobool44.not, label %land.lhs.true.if.end55.thread_crit_edge, label %land.lhs.true45

land.lhs.true.if.end55.thread_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end55.thread

land.lhs.true45:                                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %segments_left = getelementptr inbounds %struct.ipv6_rt_hdr, ptr %retval.0.i.i231279, i32 0, i32 3
  %46 = ptrtoint ptr %segments_left to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %segments_left, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %cmp47 = icmp eq i8 %47, 0
  %spec.select = select i1 %cmp47, i8 0, i8 %frombool
  br label %if.end55.thread

if.end55.thread:                                  ; preds = %land.lhs.true45, %land.lhs.true.if.end55.thread_crit_edge, %if.end42.if.end55.thread_crit_edge
  %found.1.ph = phi i8 [ %spec.select, %land.lhs.true45 ], [ %frombool, %if.end42.if.end55.thread_crit_edge ], [ %frombool, %land.lhs.true.if.end55.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_rh) #5
  br label %if.else117

cleanup51:                                        ; preds = %skb_header_pointer.exit232.cleanup51_crit_edge, %lor.lhs.false.i.i230.cleanup51_crit_edge, %if.end.i.i226.cleanup51_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_rh) #5
  br label %cleanup129.thread

if.then59:                                        ; preds = %if.end34
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %_frag_off) #5
  %48 = ptrtoint ptr %_frag_off to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 -1, ptr %_frag_off, align 2, !annotation !17
  br i1 %tobool105.not, label %if.then59.if.end62_crit_edge, label %if.then61

if.then59.if.end62_crit_edge:                     ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end62

if.then61:                                        ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #7
  %49 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %flags, align 4
  %or = or i32 %50, 1
  store i32 %or, ptr %flags, align 4
  br label %if.end62

if.end62:                                         ; preds = %if.then61, %if.then59.if.end62_crit_edge
  %add63 = add i32 %start.2, 2
  %51 = ptrtoint ptr %len.i.i203 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %len.i.i203, align 4
  %53 = ptrtoint ptr %data_len.i.i204 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %data_len.i.i204, align 8
  %55 = add i32 %52, -2
  %56 = add i32 %start.2, %54
  %sub.i4.i235 = sub i32 %55, %56
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub.i4.i235)
  %cmp.not.i.i236 = icmp slt i32 %sub.i4.i235, 2
  br i1 %cmp.not.i.i236, label %if.end.i.i241, label %skb_header_pointer.exit247, !prof !18

if.end.i.i241:                                    ; preds = %if.end62
  br i1 %tobool2.not.i.i210, label %if.end.i.i241.cleanup129.thread331_crit_edge, label %lor.lhs.false.i.i245

if.end.i.i241.cleanup129.thread331_crit_edge:     ; preds = %if.end.i.i241
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup129.thread331

lor.lhs.false.i.i245:                             ; preds = %if.end.i.i241
  %call.i.i242 = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %add63, ptr noundef nonnull %_frag_off, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i242)
  %cmp3.i.i243 = icmp slt i32 %call.i.i242, 0
  br i1 %cmp3.i.i243, label %lor.lhs.false.i.i245.cleanup129.thread331_crit_edge, label %lor.lhs.false.i.i245.if.end67_crit_edge

lor.lhs.false.i.i245.if.end67_crit_edge:          ; preds = %lor.lhs.false.i.i245
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end67

lor.lhs.false.i.i245.cleanup129.thread331_crit_edge: ; preds = %lor.lhs.false.i.i245
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup129.thread331

skb_header_pointer.exit247:                       ; preds = %if.end62
  %57 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %data.i, align 4
  %add.ptr.i.i238 = getelementptr i8, ptr %58, i32 %add63
  %tobool65.not = icmp eq ptr %add.ptr.i.i238, null
  br i1 %tobool65.not, label %skb_header_pointer.exit247.cleanup129.thread331_crit_edge, label %skb_header_pointer.exit247.if.end67_crit_edge

skb_header_pointer.exit247.if.end67_crit_edge:    ; preds = %skb_header_pointer.exit247
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end67

skb_header_pointer.exit247.cleanup129.thread331_crit_edge: ; preds = %skb_header_pointer.exit247
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup129.thread331

if.end67:                                         ; preds = %skb_header_pointer.exit247.if.end67_crit_edge, %lor.lhs.false.i.i245.if.end67_crit_edge
  %retval.0.i.i246297 = phi ptr [ %add.ptr.i.i238, %skb_header_pointer.exit247.if.end67_crit_edge ], [ %_frag_off, %lor.lhs.false.i.i245.if.end67_crit_edge ]
  %59 = ptrtoint ptr %retval.0.i.i246297 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %retval.0.i.i246297, align 2
  %61 = and i16 %60, -8
  %62 = ptrtoint ptr %_frag_off to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %61, ptr %_frag_off, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %61)
  %tobool71.not = icmp eq i16 %61, 0
  br i1 %tobool71.not, label %cleanup97, label %if.then72

if.then72:                                        ; preds = %if.end67
  br i1 %cmp110, label %land.lhs.true75, label %if.then72.if.end89_crit_edge

if.then72.if.end89_crit_edge:                     ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end89

land.lhs.true75:                                  ; preds = %if.then72
  %63 = ptrtoint ptr %retval.0.i.i216271 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %retval.0.i.i216271, align 1
  %65 = zext i8 %64 to i64
  call void @__sanitizer_cov_trace_switch(i64 %65, ptr @__sancov_gen_cov_switch_values.5)
  switch i8 %64, label %if.then83 [
    i8 60, label %land.lhs.true75.if.end89_crit_edge
    i8 0, label %land.lhs.true75.if.end89_crit_edge504
    i8 43, label %land.lhs.true75.if.end89_crit_edge505
    i8 44, label %land.lhs.true75.if.end89_crit_edge506
    i8 51, label %land.lhs.true75.if.end89_crit_edge507
  ]

land.lhs.true75.if.end89_crit_edge507:            ; preds = %land.lhs.true75
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end89

land.lhs.true75.if.end89_crit_edge506:            ; preds = %land.lhs.true75
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end89

land.lhs.true75.if.end89_crit_edge505:            ; preds = %land.lhs.true75
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end89

land.lhs.true75.if.end89_crit_edge504:            ; preds = %land.lhs.true75
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end89

land.lhs.true75.if.end89_crit_edge:               ; preds = %land.lhs.true75
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end89

if.then83:                                        ; preds = %land.lhs.true75
  br i1 %tobool.not, label %if.then83.if.end86_crit_edge, label %if.then85

if.then83.if.end86_crit_edge:                     ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end86

if.then85:                                        ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #7
  %66 = ptrtoint ptr %fragoff to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %61, ptr %fragoff, align 2
  br label %if.end86

if.end86:                                         ; preds = %if.then85, %if.then83.if.end86_crit_edge
  %67 = ptrtoint ptr %retval.0.i.i216271 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %retval.0.i.i216271, align 1
  %conv88 = zext i8 %68 to i32
  br label %cleanup129.thread331

if.end89:                                         ; preds = %land.lhs.true75.if.end89_crit_edge, %land.lhs.true75.if.end89_crit_edge504, %land.lhs.true75.if.end89_crit_edge505, %land.lhs.true75.if.end89_crit_edge506, %land.lhs.true75.if.end89_crit_edge507, %if.then72.if.end89_crit_edge
  br i1 %cmp15, label %if.end92, label %if.end89.cleanup129.thread331_crit_edge

if.end89.cleanup129.thread331_crit_edge:          ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup129.thread331

if.end92:                                         ; preds = %if.end89
  br i1 %tobool.not, label %if.end92.cleanup129_crit_edge, label %if.then94

if.end92.cleanup129_crit_edge:                    ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup129

if.then94:                                        ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #7
  %69 = ptrtoint ptr %fragoff to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 %61, ptr %fragoff, align 2
  br label %cleanup129

cleanup97:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %_frag_off) #5
  br label %if.end123

if.then104:                                       ; preds = %if.end34
  br i1 %tobool105.not, label %if.then104.if.end113_crit_edge, label %land.lhs.true106

if.then104.if.end113_crit_edge:                   ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end113

land.lhs.true106:                                 ; preds = %if.then104
  %70 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %flags, align 4
  %and107 = and i32 %71, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and107)
  %tobool108.not = icmp ne i32 %and107, 0
  %or.cond194 = and i1 %cmp110, %tobool108.not
  br i1 %or.cond194, label %land.lhs.true106.cleanup129.thread312_crit_edge, label %land.lhs.true106.if.end113_crit_edge

land.lhs.true106.if.end113_crit_edge:             ; preds = %land.lhs.true106
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end113

land.lhs.true106.cleanup129.thread312_crit_edge:  ; preds = %land.lhs.true106
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup129.thread312

if.end113:                                        ; preds = %land.lhs.true106.if.end113_crit_edge, %if.then104.if.end113_crit_edge
  %hdrlen114 = getelementptr inbounds %struct.ipv6_opt_hdr, ptr %retval.0.i.i216271, i32 0, i32 1
  %72 = ptrtoint ptr %hdrlen114 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %hdrlen114, align 1
  %conv115 = zext i8 %73 to i32
  %add116 = shl nuw nsw i32 %conv115, 2
  %shl = add nuw nsw i32 %add116, 8
  br label %if.end123

if.else117:                                       ; preds = %if.end55.thread, %if.end34.if.else117_crit_edge
  %found.2289 = phi i8 [ %found.1.ph, %if.end55.thread ], [ %frombool, %if.end34.if.else117_crit_edge ]
  %hdrlen118 = getelementptr inbounds %struct.ipv6_opt_hdr, ptr %retval.0.i.i216271, i32 0, i32 1
  %74 = ptrtoint ptr %hdrlen118 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %hdrlen118, align 1
  %conv119 = zext i8 %75 to i32
  %add120 = shl nuw nsw i32 %conv119, 3
  %shl121 = add nuw nsw i32 %add120, 8
  br label %if.end123

if.end123:                                        ; preds = %if.else117, %if.end113, %cleanup97
  %found.2288 = phi i8 [ %frombool, %cleanup97 ], [ %frombool, %if.end113 ], [ %found.2289, %if.else117 ]
  %hdrlen.1 = phi i32 [ 8, %cleanup97 ], [ %shl, %if.end113 ], [ %shl121, %if.else117 ]
  %tobool124.not = icmp eq i8 %found.2288, 0
  br i1 %tobool124.not, label %do.cond, label %do.cond.thread

do.cond.thread:                                   ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %_hdr) #5
  br label %do.end

cleanup129.thread:                                ; preds = %cleanup51, %skb_header_pointer.exit217.cleanup129.thread_crit_edge, %lor.lhs.false.i.i215.cleanup129.thread_crit_edge, %if.end.i.i211.cleanup129.thread_crit_edge, %if.then22.cleanup129.thread_crit_edge
  %retval.7.ph = phi i32 [ -2, %if.then22.cleanup129.thread_crit_edge ], [ -74, %cleanup51 ], [ -74, %lor.lhs.false.i.i215.cleanup129.thread_crit_edge ], [ -74, %if.end.i.i211.cleanup129.thread_crit_edge ], [ -74, %skb_header_pointer.exit217.cleanup129.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %_hdr) #5
  br label %cleanup136

cleanup129.thread312:                             ; preds = %land.lhs.true106.cleanup129.thread312_crit_edge, %if.then22.cleanup129.thread312_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %_hdr) #5
  br label %do.end

cleanup129.thread331:                             ; preds = %if.end89.cleanup129.thread331_crit_edge, %if.end86, %skb_header_pointer.exit247.cleanup129.thread331_crit_edge, %lor.lhs.false.i.i245.cleanup129.thread331_crit_edge, %if.end.i.i241.cleanup129.thread331_crit_edge
  %retval.5.ph.ph = phi i32 [ %conv88, %if.end86 ], [ -2, %if.end89.cleanup129.thread331_crit_edge ], [ -74, %lor.lhs.false.i.i245.cleanup129.thread331_crit_edge ], [ -74, %if.end.i.i241.cleanup129.thread331_crit_edge ], [ -74, %skb_header_pointer.exit247.cleanup129.thread331_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %_frag_off) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %_hdr) #5
  br label %cleanup136

cleanup129:                                       ; preds = %if.then94, %if.end92.cleanup129_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %_frag_off) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %_hdr) #5
  br label %do.end

do.cond:                                          ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #7
  %76 = ptrtoint ptr %retval.0.i.i216271 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %retval.0.i.i216271, align 1
  %add127 = add i32 %hdrlen.1, %start.2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %_hdr) #5
  br label %do.body

do.end:                                           ; preds = %cleanup129, %cleanup129.thread312, %do.cond.thread
  %78 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %start.2, ptr %offset, align 4
  %conv135 = zext i8 %nexthdr.2 to i32
  br label %cleanup136

cleanup136:                                       ; preds = %do.end, %cleanup129.thread331, %cleanup129.thread, %cleanup.thread
  %retval.8 = phi i32 [ %conv135, %do.end ], [ -74, %cleanup.thread ], [ %retval.7.ph, %cleanup129.thread ], [ %retval.5.ph.ph, %cleanup129.thread331 ]
  ret i32 %retval.8
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

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

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !{ptr @__ksymtab_ipv6_ext_hdr, !1, !"__ksymtab_ipv6_ext_hdr", i1 false, i1 false}
!1 = !{!"../net/ipv6/exthdrs_core.c", i32 25, i32 1}
!2 = !{ptr @__ksymtab_ipv6_skip_exthdr, !3, !"__ksymtab_ipv6_skip_exthdr", i1 false, i1 false}
!3 = !{!"../net/ipv6/exthdrs_core.c", i32 114, i32 1}
!4 = !{ptr @__ksymtab_ipv6_find_tlv, !5, !"__ksymtab_ipv6_find_tlv", i1 false, i1 false}
!5 = !{!"../net/ipv6/exthdrs_core.c", i32 158, i32 1}
!6 = !{ptr @__ksymtab_ipv6_find_hdr, !7, !"__ksymtab_ipv6_find_hdr", i1 false, i1 false}
!7 = !{!"../net/ipv6/exthdrs_core.c", i32 280, i32 1}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 8, !"branch-target-enforcement", i32 0}
!11 = !{i32 8, !"sign-return-address", i32 0}
!12 = !{i32 8, !"sign-return-address-all", i32 0}
!13 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!17 = !{!"auto-init"}
!18 = !{!"branch_weights", i32 1, i32 2000}
