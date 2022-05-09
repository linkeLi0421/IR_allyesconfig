; ModuleID = '/llk/IR_all_yes/net/ieee802154/header_ops.c_pt.bc'
source_filename = "../net/ieee802154/header_ops.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+ieee802154_hdr_push\22, \22a\22\09"
module asm "\09.weak\09__crc_ieee802154_hdr_push\09\09\09\09"
module asm "\09.long\09__crc_ieee802154_hdr_push\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee802154_hdr_push:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee802154_hdr_push\22\09\09\09\09\09"
module asm "__kstrtabns_ieee802154_hdr_push:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ieee802154_hdr_pull\22, \22a\22\09"
module asm "\09.weak\09__crc_ieee802154_hdr_pull\09\09\09\09"
module asm "\09.long\09__crc_ieee802154_hdr_pull\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee802154_hdr_pull:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee802154_hdr_pull\22\09\09\09\09\09"
module asm "__kstrtabns_ieee802154_hdr_pull:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ieee802154_hdr_peek_addrs\22, \22a\22\09"
module asm "\09.weak\09__crc_ieee802154_hdr_peek_addrs\09\09\09\09"
module asm "\09.long\09__crc_ieee802154_hdr_peek_addrs\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee802154_hdr_peek_addrs:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee802154_hdr_peek_addrs\22\09\09\09\09\09"
module asm "__kstrtabns_ieee802154_hdr_peek_addrs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ieee802154_hdr_peek\22, \22a\22\09"
module asm "\09.weak\09__crc_ieee802154_hdr_peek\09\09\09\09"
module asm "\09.long\09__crc_ieee802154_hdr_peek\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee802154_hdr_peek:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee802154_hdr_peek\22\09\09\09\09\09"
module asm "__kstrtabns_ieee802154_hdr_peek:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ieee802154_max_payload\22, \22a\22\09"
module asm "\09.weak\09__crc_ieee802154_max_payload\09\09\09\09"
module asm "\09.long\09__crc_ieee802154_max_payload\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee802154_max_payload:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee802154_max_payload\22\09\09\09\09\09"
module asm "__kstrtabns_ieee802154_max_payload:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ieee802154_hdr = type { %struct.ieee802154_hdr_fc, i8, %struct.ieee802154_addr, %struct.ieee802154_addr, %struct.ieee802154_sechdr }
%struct.ieee802154_hdr_fc = type { i16 }
%struct.ieee802154_addr = type { i8, i16, %union.anon.96 }
%union.anon.96 = type { i64 }
%struct.ieee802154_sechdr = type { i8, i8, i32, %union.anon.119 }
%union.anon.119 = type { i64 }
%struct.sk_buff = type { %union.anon, %union.anon.98, %union.anon.99, [48 x i8], %union.anon.100, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.102, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.98 = type { ptr }
%union.anon.99 = type { i64 }
%union.anon.100 = type { %struct.anon.101 }
%struct.anon.101 = type { i32, ptr }
%union.anon.102 = type { %struct.anon.103 }
%struct.anon.103 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.104, i32, i32, i32, i16, i16, %union.anon.106, i32, %union.anon.107, %union.anon.108, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.104 = type { i32 }
%union.anon.106 = type { i32 }
%union.anon.107 = type { i32 }
%union.anon.108 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }

@__kstrtab_ieee802154_hdr_push = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee802154_hdr_push = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee802154_hdr_push = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee802154_hdr_push to i32), ptr @__kstrtab_ieee802154_hdr_push, ptr @__kstrtabns_ieee802154_hdr_push }, section "___ksymtab_gpl+ieee802154_hdr_push", align 4
@__kstrtab_ieee802154_hdr_pull = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee802154_hdr_pull = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee802154_hdr_pull = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee802154_hdr_pull to i32), ptr @__kstrtab_ieee802154_hdr_pull, ptr @__kstrtabns_ieee802154_hdr_pull }, section "___ksymtab_gpl+ieee802154_hdr_pull", align 4
@__kstrtab_ieee802154_hdr_peek_addrs = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee802154_hdr_peek_addrs = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee802154_hdr_peek_addrs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee802154_hdr_peek_addrs to i32), ptr @__kstrtab_ieee802154_hdr_peek_addrs, ptr @__kstrtabns_ieee802154_hdr_peek_addrs }, section "___ksymtab_gpl+ieee802154_hdr_peek_addrs", align 4
@ieee802154_sechdr_lengths = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 5, i32 6, i32 10, i32 14], [16 x i8] zeroinitializer }, align 32
@__kstrtab_ieee802154_hdr_peek = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee802154_hdr_peek = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee802154_hdr_peek = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee802154_hdr_peek to i32), ptr @__kstrtab_ieee802154_hdr_peek, ptr @__kstrtabns_ieee802154_hdr_peek }, section "___ksymtab_gpl+ieee802154_hdr_peek", align 4
@__kstrtab_ieee802154_max_payload = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee802154_max_payload = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee802154_max_payload = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee802154_max_payload to i32), ptr @__kstrtab_ieee802154_max_payload, ptr @__kstrtabns_ieee802154_max_payload }, section "___ksymtab_gpl+ieee802154_max_payload", align 4
@switch.table.ieee802154_max_payload = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 0, i32 4, i32 8, i32 16, i32 0, i32 4, i32 8, i32 16], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 3]
@__sancov_gen_cov_switch_values.1 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 3]
@__sancov_gen_cov_switch_values.2 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 3]
@__sancov_gen_cov_switch_values.3 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 3]
@__sancov_gen_cov_switch_values.4 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 3]
@__sancov_gen_cov_switch_values.5 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 3]
@__sancov_gen_cov_switch_values.6 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 3]
@__sancov_gen_cov_switch_values.7 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 3]
@__sancov_gen_cov_switch_values.8 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 3]
@__sancov_gen_cov_switch_values.9 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 3]
@__sancov_gen_cov_switch_values.10 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 3]
@___asan_gen_.11 = private unnamed_addr constant [26 x i8] c"ieee802154_sechdr_lengths\00", align 1
@___asan_gen_.12 = private constant [31 x i8] c"../net/ieee802154/header_ops.c\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 191, i32 12 }
@___asan_gen_.14 = private unnamed_addr constant [36 x i8] c"switch.table.ieee802154_max_payload\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__ksymtab_ieee802154_hdr_peek, ptr @__ksymtab_ieee802154_hdr_peek_addrs, ptr @__ksymtab_ieee802154_hdr_pull, ptr @__ksymtab_ieee802154_hdr_push, ptr @__ksymtab_ieee802154_max_payload, ptr @ieee802154_sechdr_lengths, ptr @switch.table.ieee802154_max_payload], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee802154_sechdr_lengths to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ieee802154_max_payload to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ieee802154_hdr_push(ptr noundef %skb, ptr nocapture noundef %hdr) #0 align 64 {
entry:
  %buf = alloca [37 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 37, ptr nonnull %buf) #5
  %0 = call ptr @memset(ptr %buf, i32 255, i32 37)
  %seq = getelementptr inbounds %struct.ieee802154_hdr, ptr %hdr, i32 0, i32 1
  %1 = ptrtoint ptr %seq to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %seq, align 2
  %arrayidx = getelementptr inbounds [37 x i8], ptr %buf, i32 0, i32 2
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %2, ptr %arrayidx, align 2
  %dest = getelementptr inbounds %struct.ieee802154_hdr, ptr %hdr, i32 0, i32 3
  %4 = ptrtoint ptr %dest to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dest, align 8
  %6 = ptrtoint ptr %hdr to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load = load i16, ptr %hdr, align 2
  %7 = shl i8 %5, 2
  %8 = and i8 %7, 12
  %bf.shl = zext i8 %8 to i16
  %bf.clear = and i16 %bf.load, -13
  %bf.set = or i16 %bf.clear, %bf.shl
  store i16 %bf.set, ptr %hdr, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp.i = icmp eq i8 %5, 0
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.end.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end.i:                                         ; preds = %entry
  %add.ptr = getelementptr inbounds i8, ptr %buf, i32 3
  %pan_id.i = getelementptr inbounds %struct.ieee802154_hdr, ptr %hdr, i32 0, i32 3, i32 1
  %9 = ptrtoint ptr %pan_id.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %pan_id.i, align 2
  %11 = ptrtoint ptr %add.ptr to i32
  call void @__asan_storeN_noabort(i32 %11, i32 2)
  store i16 %10, ptr %add.ptr, align 1
  %12 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i8 %5, label %if.end.i.cleanup_crit_edge [
    i8 2, label %sw.bb.i
    i8 3, label %sw.bb8.i
  ]

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb.i:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr6.i = getelementptr inbounds i8, ptr %buf, i32 5
  %13 = getelementptr inbounds %struct.ieee802154_hdr, ptr %hdr, i32 0, i32 3, i32 2
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %13, align 8
  %16 = ptrtoint ptr %add.ptr6.i to i32
  call void @__asan_storeN_noabort(i32 %16, i32 2)
  store i16 %15, ptr %add.ptr6.i, align 1
  br label %if.end

sw.bb8.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr9.i = getelementptr inbounds i8, ptr %buf, i32 5
  %17 = getelementptr inbounds %struct.ieee802154_hdr, ptr %hdr, i32 0, i32 3, i32 2
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %17, align 8
  %20 = ptrtoint ptr %add.ptr9.i to i32
  call void @__asan_storeN_noabort(i32 %20, i32 8)
  store i64 %19, ptr %add.ptr9.i, align 1
  br label %if.end

if.end:                                           ; preds = %sw.bb8.i, %sw.bb.i, %entry.if.end_crit_edge
  %retval.0.i.ph = phi i32 [ 7, %sw.bb.i ], [ 13, %sw.bb8.i ], [ 3, %entry.if.end_crit_edge ]
  %source = getelementptr inbounds %struct.ieee802154_hdr, ptr %hdr, i32 0, i32 2
  %21 = ptrtoint ptr %source to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %source, align 8
  %23 = shl i8 %22, 6
  %bf.shl8 = zext i8 %23 to i16
  %bf.clear9 = and i16 %bf.set, -193
  %bf.set10 = or i16 %bf.clear9, %bf.shl8
  %24 = ptrtoint ptr %hdr to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %bf.set10, ptr %hdr, align 2
  %pan_id = getelementptr inbounds %struct.ieee802154_hdr, ptr %hdr, i32 0, i32 2, i32 1
  %25 = ptrtoint ptr %pan_id to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %pan_id, align 2
  %pan_id14 = getelementptr inbounds %struct.ieee802154_hdr, ptr %hdr, i32 0, i32 3, i32 1
  %27 = ptrtoint ptr %pan_id14 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %pan_id14, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %26, i16 %28)
  %cmp16 = icmp ne i16 %26, %28
  %brmerge = select i1 %cmp16, i1 true, i1 %cmp.i
  br i1 %brmerge, label %if.end.if.end27_crit_edge, label %if.then23

if.end.if.end27_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end27

if.then23:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %bf.set26 = or i16 %bf.set10, 16384
  %29 = ptrtoint ptr %hdr to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %bf.set26, ptr %hdr, align 2
  br label %if.end27

if.end27:                                         ; preds = %if.then23, %if.end.if.end27_crit_edge
  %add.ptr29 = getelementptr i8, ptr %buf, i32 %retval.0.i.ph
  %30 = ptrtoint ptr %hdr to i32
  call void @__asan_load2_noabort(i32 %30)
  %bf.load31 = load i16, ptr %hdr, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %cmp.i91 = icmp eq i8 %22, 0
  br i1 %cmp.i91, label %if.end27.if.end37_crit_edge, label %if.end.i92

if.end27.if.end37_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end37

if.end.i92:                                       ; preds = %if.end27
  %31 = and i16 %bf.load31, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %tobool.not = icmp eq i16 %31, 0
  br i1 %tobool.not, label %if.then2.i, label %if.end.i92.if.end3.i_crit_edge

if.end.i92.if.end3.i_crit_edge:                   ; preds = %if.end.i92
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3.i

if.then2.i:                                       ; preds = %if.end.i92
  call void @__sanitizer_cov_trace_pc() #7
  %32 = ptrtoint ptr %pan_id to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %pan_id, align 2
  %34 = ptrtoint ptr %add.ptr29 to i32
  call void @__asan_storeN_noabort(i32 %34, i32 2)
  store i16 %33, ptr %add.ptr29, align 1
  br label %if.end3.i

if.end3.i:                                        ; preds = %if.then2.i, %if.end.i92.if.end3.i_crit_edge
  %pos.0.i = phi i32 [ 2, %if.then2.i ], [ 0, %if.end.i92.if.end3.i_crit_edge ]
  %35 = zext i8 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.1)
  switch i8 %22, label %if.end3.i.cleanup_crit_edge [
    i8 2, label %sw.bb.i96
    i8 3, label %sw.bb8.i98
  ]

if.end3.i.cleanup_crit_edge:                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb.i96:                                        ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr6.i95 = getelementptr i8, ptr %add.ptr29, i32 %pos.0.i
  %36 = getelementptr inbounds %struct.ieee802154_hdr, ptr %hdr, i32 0, i32 2, i32 2
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %36, align 8
  %39 = ptrtoint ptr %add.ptr6.i95 to i32
  call void @__asan_storeN_noabort(i32 %39, i32 2)
  store i16 %38, ptr %add.ptr6.i95, align 1
  %add7.i = add nuw nsw i32 %pos.0.i, 2
  br label %if.end37

sw.bb8.i98:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr9.i97 = getelementptr i8, ptr %add.ptr29, i32 %pos.0.i
  %40 = getelementptr inbounds %struct.ieee802154_hdr, ptr %hdr, i32 0, i32 2, i32 2
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %40, align 8
  %43 = ptrtoint ptr %add.ptr9.i97 to i32
  call void @__asan_storeN_noabort(i32 %43, i32 8)
  store i64 %42, ptr %add.ptr9.i97, align 1
  %add10.i = or i32 %pos.0.i, 8
  br label %if.end37

if.end37:                                         ; preds = %sw.bb8.i98, %sw.bb.i96, %if.end27.if.end37_crit_edge
  %retval.0.i99.ph = phi i32 [ %add7.i, %sw.bb.i96 ], [ %add10.i, %sw.bb8.i98 ], [ 0, %if.end27.if.end37_crit_edge ]
  %add38 = add nsw i32 %retval.0.i99.ph, %retval.0.i.ph
  %44 = and i16 %bf.load31, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %44)
  %tobool42.not = icmp eq i16 %44, 0
  br i1 %tobool42.not, label %if.end37.if.end55_crit_edge, label %if.then43

if.end37.if.end55_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end55

if.then43:                                        ; preds = %if.end37
  %bf.clear45 = and i16 %bf.load31, -49
  %bf.set46 = or i16 %bf.clear45, 16
  %45 = ptrtoint ptr %hdr to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %bf.set46, ptr %hdr, align 2
  %add.ptr48 = getelementptr i8, ptr %buf, i32 %add38
  %sec = getelementptr inbounds %struct.ieee802154_hdr, ptr %hdr, i32 0, i32 4
  %46 = ptrtoint ptr %sec to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %sec, align 8
  %48 = ptrtoint ptr %add.ptr48 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %47, ptr %add.ptr48, align 1
  %add.ptr.i = getelementptr i8, ptr %add.ptr48, i32 1
  %frame_counter.i = getelementptr inbounds %struct.ieee802154_hdr, ptr %hdr, i32 0, i32 4, i32 2
  %49 = ptrtoint ptr %frame_counter.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %frame_counter.i, align 4
  %51 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_storeN_noabort(i32 %51, i32 4)
  store i32 %50, ptr %add.ptr.i, align 1
  %bf.lshr.i = lshr i8 %47, 3
  %bf.clear.i = and i8 %bf.lshr.i, 3
  %conv.i = zext i8 %bf.clear.i to i32
  %52 = zext i32 %conv.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %conv.i, label %if.then43.sw.epilog.i_crit_edge [
    i32 0, label %if.then43.ieee802154_hdr_push_sechdr.exit_crit_edge
    i32 3, label %sw.bb3.i
    i32 2, label %sw.bb1.i
  ]

if.then43.ieee802154_hdr_push_sechdr.exit_crit_edge: ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #7
  br label %ieee802154_hdr_push_sechdr.exit

if.then43.sw.epilog.i_crit_edge:                  ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

sw.bb1.i:                                         ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr2.i = getelementptr i8, ptr %add.ptr48, i32 5
  %53 = getelementptr inbounds %struct.ieee802154_hdr, ptr %hdr, i32 0, i32 4, i32 3
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %53, align 8
  %56 = ptrtoint ptr %add.ptr2.i to i32
  call void @__asan_storeN_noabort(i32 %56, i32 4)
  store i32 %55, ptr %add.ptr2.i, align 1
  br label %sw.epilog.i

sw.bb3.i:                                         ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr4.i = getelementptr i8, ptr %add.ptr48, i32 5
  %57 = getelementptr inbounds %struct.ieee802154_hdr, ptr %hdr, i32 0, i32 4, i32 3
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %57, align 8
  %60 = ptrtoint ptr %add.ptr4.i to i32
  call void @__asan_storeN_noabort(i32 %60, i32 8)
  store i64 %59, ptr %add.ptr4.i, align 1
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb3.i, %sw.bb1.i, %if.then43.sw.epilog.i_crit_edge
  %pos.0.i101 = phi i32 [ 5, %if.then43.sw.epilog.i_crit_edge ], [ 9, %sw.bb1.i ], [ 13, %sw.bb3.i ]
  %key_id.i = getelementptr inbounds %struct.ieee802154_hdr, ptr %hdr, i32 0, i32 4, i32 1
  %61 = ptrtoint ptr %key_id.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %key_id.i, align 1
  %inc.i = add nuw nsw i32 %pos.0.i101, 1
  %arrayidx.i = getelementptr i8, ptr %add.ptr48, i32 %pos.0.i101
  %63 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %62, ptr %arrayidx.i, align 1
  br label %ieee802154_hdr_push_sechdr.exit

ieee802154_hdr_push_sechdr.exit:                  ; preds = %sw.epilog.i, %if.then43.ieee802154_hdr_push_sechdr.exit_crit_edge
  %retval.0.i102 = phi i32 [ %inc.i, %sw.epilog.i ], [ 5, %if.then43.ieee802154_hdr_push_sechdr.exit_crit_edge ]
  %add54 = add nsw i32 %retval.0.i102, %add38
  br label %if.end55

if.end55:                                         ; preds = %ieee802154_hdr_push_sechdr.exit, %if.end37.if.end55_crit_edge
  %pos.0 = phi i32 [ %add54, %ieee802154_hdr_push_sechdr.exit ], [ %add38, %if.end37.if.end55_crit_edge ]
  %64 = ptrtoint ptr %hdr to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %hdr, align 2
  %66 = ptrtoint ptr %buf to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %65, ptr %buf, align 2
  %call57 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef %pos.0) #5
  %67 = call ptr @memcpy(ptr %call57, ptr %buf, i32 %pos.0)
  br label %cleanup

cleanup:                                          ; preds = %if.end55, %if.end3.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %pos.0, %if.end55 ], [ -22, %if.end.i.cleanup_crit_edge ], [ -22, %if.end3.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 37, ptr nonnull %buf) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ieee802154_hdr_pull(ptr noundef %skb, ptr nocapture noundef %hdr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %2 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %1, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.i.i)
  %cmp.not.i = icmp ult i32 %sub.i.i, 3
  br i1 %cmp.not.i, label %if.end.i, label %entry.if.end_crit_edge, !prof !21

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp3.i = icmp ult i32 %1, 3
  br i1 %cmp3.i, label %if.end.i.cleanup20_crit_edge, label %pskb_may_pull.exit, !prof !21

if.end.i.cleanup20_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup20

pskb_may_pull.exit:                               ; preds = %if.end.i
  %sub.i = sub nuw nsw i32 3, %sub.i.i
  %call13.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i) #5
  %cmp14.i.not = icmp eq ptr %call13.i, null
  br i1 %cmp14.i.not, label %pskb_may_pull.exit.cleanup20_crit_edge, label %pskb_may_pull.exit.if.end_crit_edge

pskb_may_pull.exit.if.end_crit_edge:              ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

pskb_may_pull.exit.cleanup20_crit_edge:           ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup20

if.end:                                           ; preds = %pskb_may_pull.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %6 = call ptr @memcpy(ptr %hdr, ptr %5, i32 3)
  %7 = ptrtoint ptr %hdr to i32
  call void @__asan_load2_noabort(i32 %7)
  %bf.load.i = load i16, ptr %hdr, align 8
  %bf.lshr.i = lshr i16 %bf.load.i, 2
  %bf.clear.i = and i16 %bf.lshr.i, 3
  %conv.i = zext i16 %bf.clear.i to i32
  %8 = zext i32 %conv.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.3)
  switch i32 %conv.i, label %sw.default.i.i [
    i32 0, label %if.end.ieee802154_hdr_addr_len.exit.i_crit_edge
    i32 2, label %sw.bb1.i.i
    i32 3, label %sw.bb2.i.i
  ]

if.end.ieee802154_hdr_addr_len.exit.i_crit_edge:  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %ieee802154_hdr_addr_len.exit.i

sw.bb1.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %ieee802154_hdr_addr_len.exit.i

sw.bb2.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %ieee802154_hdr_addr_len.exit.i

sw.default.i.i:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %ieee802154_hdr_addr_len.exit.i

ieee802154_hdr_addr_len.exit.i:                   ; preds = %sw.default.i.i, %sw.bb2.i.i, %sw.bb1.i.i, %if.end.ieee802154_hdr_addr_len.exit.i_crit_edge
  %cmp12.i = phi i1 [ false, %if.end.ieee802154_hdr_addr_len.exit.i_crit_edge ], [ false, %sw.bb1.i.i ], [ false, %sw.bb2.i.i ], [ true, %sw.default.i.i ]
  %retval.0.i.i = phi i32 [ 3, %if.end.ieee802154_hdr_addr_len.exit.i_crit_edge ], [ 7, %sw.bb1.i.i ], [ 13, %sw.bb2.i.i ], [ -19, %sw.default.i.i ]
  %bf.lshr3.i = lshr i16 %bf.load.i, 6
  %bf.clear4.i = and i16 %bf.lshr3.i, 3
  %conv5.i = zext i16 %bf.clear4.i to i32
  %9 = lshr i16 %bf.load.i, 13
  %10 = and i16 %9, 2
  %11 = xor i16 %10, 2
  %12 = zext i16 %11 to i32
  %13 = zext i32 %conv5.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.4)
  switch i32 %conv5.i, label %ieee802154_hdr_addr_len.exit.i.cleanup20_crit_edge [
    i32 0, label %ieee802154_hdr_addr_len.exit.i.ieee802154_hdr_addr_len.exit31.i_crit_edge
    i32 2, label %sw.bb1.i27.i
    i32 3, label %sw.bb2.i28.i
  ]

ieee802154_hdr_addr_len.exit.i.ieee802154_hdr_addr_len.exit31.i_crit_edge: ; preds = %ieee802154_hdr_addr_len.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ieee802154_hdr_addr_len.exit31.i

ieee802154_hdr_addr_len.exit.i.cleanup20_crit_edge: ; preds = %ieee802154_hdr_addr_len.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup20

sw.bb1.i27.i:                                     ; preds = %ieee802154_hdr_addr_len.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %add.i.i = add nuw nsw i32 %12, 2
  br label %ieee802154_hdr_addr_len.exit31.i

sw.bb2.i28.i:                                     ; preds = %ieee802154_hdr_addr_len.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %add3.i.i = or i32 %12, 8
  br label %ieee802154_hdr_addr_len.exit31.i

ieee802154_hdr_addr_len.exit31.i:                 ; preds = %sw.bb2.i28.i, %sw.bb1.i27.i, %ieee802154_hdr_addr_len.exit.i.ieee802154_hdr_addr_len.exit31.i_crit_edge
  %retval.0.i30.i = phi i32 [ %add3.i.i, %sw.bb2.i28.i ], [ %add.i.i, %sw.bb1.i27.i ], [ %conv5.i, %ieee802154_hdr_addr_len.exit.i.ieee802154_hdr_addr_len.exit31.i_crit_edge ]
  br i1 %cmp12.i, label %ieee802154_hdr_addr_len.exit31.i.cleanup20_crit_edge, label %ieee802154_hdr_minlen.exit

ieee802154_hdr_addr_len.exit31.i.cleanup20_crit_edge: ; preds = %ieee802154_hdr_addr_len.exit31.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup20

ieee802154_hdr_minlen.exit:                       ; preds = %ieee802154_hdr_addr_len.exit31.i
  %bf.lshr17.i = lshr i16 %bf.load.i, 11
  %bf.clear18.i = and i16 %bf.lshr17.i, 1
  %conv19.i = zext i16 %bf.clear18.i to i32
  %add14.i = add nuw nsw i32 %retval.0.i.i, %conv19.i
  %add20.i = add nsw i32 %add14.i, %retval.0.i30.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add20.i)
  %cmp = icmp slt i32 %add20.i, 0
  br i1 %cmp, label %ieee802154_hdr_minlen.exit.cleanup20_crit_edge, label %lor.lhs.false

ieee802154_hdr_minlen.exit.cleanup20_crit_edge:   ; preds = %ieee802154_hdr_minlen.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup20

lor.lhs.false:                                    ; preds = %ieee802154_hdr_minlen.exit
  %14 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len.i.i, align 4
  %16 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i45 = sub i32 %15, %17
  call void @__sanitizer_cov_trace_cmp4(i32 %add20.i, i32 %sub.i.i45)
  %cmp.not.i46 = icmp ugt i32 %add20.i, %sub.i.i45
  br i1 %cmp.not.i46, label %if.end.i48, label %lor.lhs.false.if.end4_crit_edge, !prof !21

lor.lhs.false.if.end4_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4

if.end.i48:                                       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %add20.i)
  %cmp3.i47 = icmp ult i32 %15, %add20.i
  br i1 %cmp3.i47, label %if.end.i48.cleanup20_crit_edge, label %pskb_may_pull.exit54, !prof !21

if.end.i48.cleanup20_crit_edge:                   ; preds = %if.end.i48
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup20

pskb_may_pull.exit54:                             ; preds = %if.end.i48
  %sub.i49 = sub i32 %add20.i, %sub.i.i45
  %call13.i50 = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i49) #5
  %cmp14.i51.not = icmp eq ptr %call13.i50, null
  br i1 %cmp14.i51.not, label %pskb_may_pull.exit54.cleanup20_crit_edge, label %pskb_may_pull.exit54.if.end4_crit_edge

pskb_may_pull.exit54.if.end4_crit_edge:           ; preds = %pskb_may_pull.exit54
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4

pskb_may_pull.exit54.cleanup20_crit_edge:         ; preds = %pskb_may_pull.exit54
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup20

if.end4:                                          ; preds = %pskb_may_pull.exit54.if.end4_crit_edge, %lor.lhs.false.if.end4_crit_edge
  %18 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %19, i32 3
  %20 = ptrtoint ptr %hdr to i32
  call void @__asan_load2_noabort(i32 %20)
  %bf.load.i55 = load i16, ptr %hdr, align 8
  %bf.lshr.i56 = lshr i16 %bf.load.i55, 2
  %bf.clear.i57 = and i16 %bf.lshr.i56, 3
  %dest.i = getelementptr inbounds %struct.ieee802154_hdr, ptr %hdr, i32 0, i32 3
  %conv.i.i = trunc i16 %bf.clear.i57 to i8
  %21 = ptrtoint ptr %dest.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv.i.i, ptr %dest.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.clear.i57)
  %cmp.i.i = icmp eq i16 %bf.clear.i57, 0
  br i1 %cmp.i.i, label %if.end4.ieee802154_hdr_get_addr.exit.i_crit_edge, label %if.end.i.i

if.end4.ieee802154_hdr_get_addr.exit.i_crit_edge: ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %ieee802154_hdr_get_addr.exit.i

if.end.i.i:                                       ; preds = %if.end4
  %pan_id.i.i = getelementptr inbounds %struct.ieee802154_hdr, ptr %hdr, i32 0, i32 3, i32 1
  %22 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %22, i32 2)
  %23 = load i16, ptr %add.ptr, align 1
  %24 = ptrtoint ptr %pan_id.i.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %23, ptr %pan_id.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %bf.clear.i57)
  %cmp5.i.i = icmp eq i16 %bf.clear.i57, 2
  %25 = getelementptr inbounds %struct.ieee802154_hdr, ptr %hdr, i32 0, i32 3, i32 2
  %add.ptr8.i.i = getelementptr i8, ptr %19, i32 5
  br i1 %cmp5.i.i, label %if.then7.i.i, label %if.else.i.i

if.then7.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %26 = ptrtoint ptr %add.ptr8.i.i to i32
  call void @__asan_loadN_noabort(i32 %26, i32 2)
  %27 = load i16, ptr %add.ptr8.i.i, align 1
  %28 = ptrtoint ptr %25 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %27, ptr %25, align 8
  br label %ieee802154_hdr_get_addr.exit.i

if.else.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %29 = ptrtoint ptr %add.ptr8.i.i to i32
  call void @__asan_loadN_noabort(i32 %29, i32 8)
  %30 = load i64, ptr %add.ptr8.i.i, align 1
  %31 = ptrtoint ptr %25 to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %30, ptr %25, align 8
  br label %ieee802154_hdr_get_addr.exit.i

ieee802154_hdr_get_addr.exit.i:                   ; preds = %if.else.i.i, %if.then7.i.i, %if.end4.ieee802154_hdr_get_addr.exit.i_crit_edge
  %retval.0.i.i58 = phi i32 [ 4, %if.then7.i.i ], [ 10, %if.else.i.i ], [ 0, %if.end4.ieee802154_hdr_get_addr.exit.i_crit_edge ]
  %add.ptr1.i = getelementptr i8, ptr %add.ptr, i32 %retval.0.i.i58
  %bf.lshr4.i = lshr i16 %bf.load.i55, 6
  %bf.clear5.i = and i16 %bf.lshr4.i, 3
  %32 = and i16 %bf.load.i55, 16384
  %source.i = getelementptr inbounds %struct.ieee802154_hdr, ptr %hdr, i32 0, i32 2
  %conv.i33.i = trunc i16 %bf.clear5.i to i8
  %33 = ptrtoint ptr %source.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv.i33.i, ptr %source.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.clear5.i)
  %cmp.i34.i = icmp eq i16 %bf.clear5.i, 0
  br i1 %cmp.i34.i, label %ieee802154_hdr_get_addr.exit.i.ieee802154_hdr_get_addr.exit42.i_crit_edge, label %if.end.i35.i

ieee802154_hdr_get_addr.exit.i.ieee802154_hdr_get_addr.exit42.i_crit_edge: ; preds = %ieee802154_hdr_get_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ieee802154_hdr_get_addr.exit42.i

if.end.i35.i:                                     ; preds = %ieee802154_hdr_get_addr.exit.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %32)
  %tobool.not.i = icmp eq i16 %32, 0
  br i1 %tobool.not.i, label %if.then3.i.i, label %if.end.i35.i.if.end4.i.i_crit_edge

if.end.i35.i.if.end4.i.i_crit_edge:               ; preds = %if.end.i35.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4.i.i

if.then3.i.i:                                     ; preds = %if.end.i35.i
  call void @__sanitizer_cov_trace_pc() #7
  %pan_id.i36.i = getelementptr inbounds %struct.ieee802154_hdr, ptr %hdr, i32 0, i32 2, i32 1
  %34 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_loadN_noabort(i32 %34, i32 2)
  %35 = load i16, ptr %add.ptr1.i, align 1
  %36 = ptrtoint ptr %pan_id.i36.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %35, ptr %pan_id.i36.i, align 2
  br label %if.end4.i.i

if.end4.i.i:                                      ; preds = %if.then3.i.i, %if.end.i35.i.if.end4.i.i_crit_edge
  %pos.0.i.i = phi i32 [ 0, %if.end.i35.i.if.end4.i.i_crit_edge ], [ 2, %if.then3.i.i ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %bf.clear5.i)
  %cmp5.i37.i = icmp eq i16 %bf.clear5.i, 2
  %37 = getelementptr inbounds %struct.ieee802154_hdr, ptr %hdr, i32 0, i32 2, i32 2
  %add.ptr8.i38.i = getelementptr i8, ptr %add.ptr1.i, i32 %pos.0.i.i
  br i1 %cmp5.i37.i, label %if.then7.i39.i, label %if.else.i40.i

if.then7.i39.i:                                   ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %38 = ptrtoint ptr %add.ptr8.i38.i to i32
  call void @__asan_loadN_noabort(i32 %38, i32 2)
  %39 = load i16, ptr %add.ptr8.i38.i, align 1
  %40 = ptrtoint ptr %37 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %39, ptr %37, align 8
  %add9.i.i = add nuw nsw i32 %pos.0.i.i, 2
  br label %ieee802154_hdr_get_addr.exit42.i

if.else.i40.i:                                    ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %41 = ptrtoint ptr %add.ptr8.i38.i to i32
  call void @__asan_loadN_noabort(i32 %41, i32 8)
  %42 = load i64, ptr %add.ptr8.i38.i, align 1
  %43 = ptrtoint ptr %37 to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %42, ptr %37, align 8
  %add11.i.i = or i32 %pos.0.i.i, 8
  br label %ieee802154_hdr_get_addr.exit42.i

ieee802154_hdr_get_addr.exit42.i:                 ; preds = %if.else.i40.i, %if.then7.i39.i, %ieee802154_hdr_get_addr.exit.i.ieee802154_hdr_get_addr.exit42.i_crit_edge
  %retval.0.i41.i = phi i32 [ %add9.i.i, %if.then7.i39.i ], [ %add11.i.i, %if.else.i40.i ], [ 0, %ieee802154_hdr_get_addr.exit.i.ieee802154_hdr_get_addr.exit42.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %32)
  %tobool17.not.i = icmp eq i16 %32, 0
  br i1 %tobool17.not.i, label %ieee802154_hdr_get_addr.exit42.i.ieee802154_hdr_get_addrs.exit_crit_edge, label %if.then.i

ieee802154_hdr_get_addr.exit42.i.ieee802154_hdr_get_addrs.exit_crit_edge: ; preds = %ieee802154_hdr_get_addr.exit42.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ieee802154_hdr_get_addrs.exit

if.then.i:                                        ; preds = %ieee802154_hdr_get_addr.exit42.i
  call void @__sanitizer_cov_trace_pc() #7
  %pan_id.i = getelementptr inbounds %struct.ieee802154_hdr, ptr %hdr, i32 0, i32 3, i32 1
  %44 = ptrtoint ptr %pan_id.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %pan_id.i, align 2
  %pan_id20.i = getelementptr inbounds %struct.ieee802154_hdr, ptr %hdr, i32 0, i32 2, i32 1
  %46 = ptrtoint ptr %pan_id20.i to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %45, ptr %pan_id20.i, align 2
  br label %ieee802154_hdr_get_addrs.exit

ieee802154_hdr_get_addrs.exit:                    ; preds = %if.then.i, %ieee802154_hdr_get_addr.exit42.i.ieee802154_hdr_get_addrs.exit_crit_edge
  %add12.i = add nuw nsw i32 %retval.0.i.i58, 3
  %add = add nsw i32 %add12.i, %retval.0.i41.i
  %47 = and i16 %bf.load.i55, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %47)
  %tobool.not = icmp eq i16 %47, 0
  br i1 %tobool.not, label %ieee802154_hdr_get_addrs.exit.if.end18_crit_edge, label %if.then7

ieee802154_hdr_get_addrs.exit.if.end18_crit_edge: ; preds = %ieee802154_hdr_get_addrs.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

if.then7:                                         ; preds = %ieee802154_hdr_get_addrs.exit
  %48 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %data, align 4
  %arrayidx = getelementptr i8, ptr %49, i32 %add
  %50 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx, align 1
  %52 = lshr i8 %51, 3
  %53 = and i8 %52, 3
  %54 = zext i8 %53 to i32
  %arrayidx.i = getelementptr [4 x i32], ptr @ieee802154_sechdr_lengths, i32 0, i32 %54
  %55 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx.i, align 4
  %add10 = add i32 %56, %add
  %57 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %len.i.i, align 4
  %59 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i62 = sub i32 %58, %60
  call void @__sanitizer_cov_trace_cmp4(i32 %add10, i32 %sub.i.i62)
  %cmp.not.i63 = icmp ugt i32 %add10, %sub.i.i62
  br i1 %cmp.not.i63, label %if.end.i65, label %if.then7.if.end13_crit_edge, !prof !21

if.then7.if.end13_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

if.end.i65:                                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_cmp4(i32 %58, i32 %add10)
  %cmp3.i64 = icmp ult i32 %58, %add10
  br i1 %cmp3.i64, label %if.end.i65.cleanup20_crit_edge, label %pskb_may_pull.exit71, !prof !21

if.end.i65.cleanup20_crit_edge:                   ; preds = %if.end.i65
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup20

pskb_may_pull.exit71:                             ; preds = %if.end.i65
  %sub.i66 = sub i32 %add10, %sub.i.i62
  %call13.i67 = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i66) #5
  %cmp14.i68.not = icmp eq ptr %call13.i67, null
  br i1 %cmp14.i68.not, label %pskb_may_pull.exit71.cleanup20_crit_edge, label %pskb_may_pull.exit71.if.end13_crit_edge

pskb_may_pull.exit71.if.end13_crit_edge:          ; preds = %pskb_may_pull.exit71
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

pskb_may_pull.exit71.cleanup20_crit_edge:         ; preds = %pskb_may_pull.exit71
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup20

if.end13:                                         ; preds = %pskb_may_pull.exit71.if.end13_crit_edge, %if.then7.if.end13_crit_edge
  %61 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %data, align 4
  %add.ptr15 = getelementptr i8, ptr %62, i32 %add
  %sec = getelementptr inbounds %struct.ieee802154_hdr, ptr %hdr, i32 0, i32 4
  %63 = ptrtoint ptr %add.ptr15 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %add.ptr15, align 1
  %65 = ptrtoint ptr %sec to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %64, ptr %sec, align 8
  %frame_counter.i = getelementptr inbounds %struct.ieee802154_hdr, ptr %hdr, i32 0, i32 4, i32 2
  %add.ptr.i = getelementptr i8, ptr %add.ptr15, i32 1
  %66 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %66, i32 4)
  %67 = load i32, ptr %add.ptr.i, align 1
  %68 = ptrtoint ptr %frame_counter.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %frame_counter.i, align 4
  %bf.lshr.i72 = lshr i8 %64, 3
  %bf.clear.i73 = and i8 %bf.lshr.i72, 3
  %conv.i74 = zext i8 %bf.clear.i73 to i32
  %69 = zext i32 %conv.i74 to i64
  call void @__sanitizer_cov_trace_switch(i64 %69, ptr @__sancov_gen_cov_switch_values.5)
  switch i32 %conv.i74, label %if.end13.sw.epilog.i_crit_edge [
    i32 0, label %if.end13.cleanup_crit_edge
    i32 3, label %sw.bb3.i
    i32 2, label %sw.bb1.i
  ]

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end13.sw.epilog.i_crit_edge:                   ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

sw.bb1.i:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  %70 = getelementptr inbounds %struct.ieee802154_hdr, ptr %hdr, i32 0, i32 4, i32 3
  %add.ptr2.i = getelementptr i8, ptr %add.ptr15, i32 5
  %71 = ptrtoint ptr %add.ptr2.i to i32
  call void @__asan_loadN_noabort(i32 %71, i32 4)
  %72 = load i32, ptr %add.ptr2.i, align 1
  %73 = ptrtoint ptr %70 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %70, align 8
  br label %sw.epilog.i

sw.bb3.i:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  %74 = getelementptr inbounds %struct.ieee802154_hdr, ptr %hdr, i32 0, i32 4, i32 3
  %add.ptr4.i = getelementptr i8, ptr %add.ptr15, i32 5
  %75 = ptrtoint ptr %add.ptr4.i to i32
  call void @__asan_loadN_noabort(i32 %75, i32 8)
  %76 = load i64, ptr %add.ptr4.i, align 1
  %77 = ptrtoint ptr %74 to i32
  call void @__asan_store8_noabort(i32 %77)
  store i64 %76, ptr %74, align 8
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb3.i, %sw.bb1.i, %if.end13.sw.epilog.i_crit_edge
  %pos.0.i = phi i32 [ 5, %if.end13.sw.epilog.i_crit_edge ], [ 9, %sw.bb1.i ], [ 13, %sw.bb3.i ]
  %inc.i = add nuw nsw i32 %pos.0.i, 1
  %arrayidx.i75 = getelementptr i8, ptr %add.ptr15, i32 %pos.0.i
  %78 = ptrtoint ptr %arrayidx.i75 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx.i75, align 1
  %key_id.i = getelementptr inbounds %struct.ieee802154_hdr, ptr %hdr, i32 0, i32 4, i32 1
  %80 = ptrtoint ptr %key_id.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %79, ptr %key_id.i, align 1
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog.i, %if.end13.cleanup_crit_edge
  %retval.0.i76 = phi i32 [ %inc.i, %sw.epilog.i ], [ 5, %if.end13.cleanup_crit_edge ]
  %add17 = add nsw i32 %retval.0.i76, %add
  br label %if.end18

if.end18:                                         ; preds = %cleanup, %ieee802154_hdr_get_addrs.exit.if.end18_crit_edge
  %pos.1 = phi i32 [ %add17, %cleanup ], [ %add, %ieee802154_hdr_get_addrs.exit.if.end18_crit_edge ]
  %call19 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef %pos.1) #5
  br label %cleanup20

cleanup20:                                        ; preds = %if.end18, %pskb_may_pull.exit71.cleanup20_crit_edge, %if.end.i65.cleanup20_crit_edge, %pskb_may_pull.exit54.cleanup20_crit_edge, %if.end.i48.cleanup20_crit_edge, %ieee802154_hdr_minlen.exit.cleanup20_crit_edge, %ieee802154_hdr_addr_len.exit31.i.cleanup20_crit_edge, %ieee802154_hdr_addr_len.exit.i.cleanup20_crit_edge, %pskb_may_pull.exit.cleanup20_crit_edge, %if.end.i.cleanup20_crit_edge
  %retval.1 = phi i32 [ %pos.1, %if.end18 ], [ -22, %pskb_may_pull.exit.cleanup20_crit_edge ], [ -22, %pskb_may_pull.exit54.cleanup20_crit_edge ], [ -22, %ieee802154_hdr_minlen.exit.cleanup20_crit_edge ], [ -22, %if.end.i.cleanup20_crit_edge ], [ -22, %ieee802154_hdr_addr_len.exit31.i.cleanup20_crit_edge ], [ -22, %ieee802154_hdr_addr_len.exit.i.cleanup20_crit_edge ], [ -22, %if.end.i48.cleanup20_crit_edge ], [ -22, %pskb_may_pull.exit71.cleanup20_crit_edge ], [ -22, %if.end.i65.cleanup20_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ieee802154_hdr_peek_addrs(ptr nocapture noundef readonly %skb, ptr nocapture noundef %hdr) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %0 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head.i, align 8
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %2 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %mac_header.i, align 2
  %conv.i = zext i16 %3 to i32
  %add.ptr.i = getelementptr i8, ptr %1, i32 %conv.i
  %add.ptr = getelementptr i8, ptr %add.ptr.i, i32 3
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %4 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tail.i, align 8
  %cmp = icmp ugt ptr %add.ptr, %5
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = call ptr @memcpy(ptr %hdr, ptr %add.ptr.i, i32 3)
  %7 = ptrtoint ptr %hdr to i32
  call void @__asan_load2_noabort(i32 %7)
  %bf.load.i = load i16, ptr %hdr, align 8
  %bf.lshr.i = lshr i16 %bf.load.i, 2
  %bf.clear.i = and i16 %bf.lshr.i, 3
  %conv.i23 = zext i16 %bf.clear.i to i32
  %8 = zext i32 %conv.i23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %conv.i23, label %sw.default.i.i [
    i32 0, label %if.end.ieee802154_hdr_addr_len.exit.i_crit_edge
    i32 2, label %sw.bb1.i.i
    i32 3, label %sw.bb2.i.i
  ]

if.end.ieee802154_hdr_addr_len.exit.i_crit_edge:  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %ieee802154_hdr_addr_len.exit.i

sw.bb1.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %ieee802154_hdr_addr_len.exit.i

sw.bb2.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %ieee802154_hdr_addr_len.exit.i

sw.default.i.i:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %ieee802154_hdr_addr_len.exit.i

ieee802154_hdr_addr_len.exit.i:                   ; preds = %sw.default.i.i, %sw.bb2.i.i, %sw.bb1.i.i, %if.end.ieee802154_hdr_addr_len.exit.i_crit_edge
  %cmp12.i = phi i1 [ false, %if.end.ieee802154_hdr_addr_len.exit.i_crit_edge ], [ false, %sw.bb1.i.i ], [ false, %sw.bb2.i.i ], [ true, %sw.default.i.i ]
  %retval.0.i.i = phi i32 [ 3, %if.end.ieee802154_hdr_addr_len.exit.i_crit_edge ], [ 7, %sw.bb1.i.i ], [ 13, %sw.bb2.i.i ], [ -19, %sw.default.i.i ]
  %bf.lshr3.i = lshr i16 %bf.load.i, 6
  %bf.clear4.i = and i16 %bf.lshr3.i, 3
  %conv5.i = zext i16 %bf.clear4.i to i32
  %9 = lshr i16 %bf.load.i, 13
  %10 = and i16 %9, 2
  %11 = xor i16 %10, 2
  %12 = zext i16 %11 to i32
  %13 = zext i32 %conv5.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %conv5.i, label %ieee802154_hdr_addr_len.exit.i.cleanup_crit_edge [
    i32 0, label %ieee802154_hdr_addr_len.exit.i.ieee802154_hdr_addr_len.exit31.i_crit_edge
    i32 2, label %sw.bb1.i27.i
    i32 3, label %sw.bb2.i28.i
  ]

ieee802154_hdr_addr_len.exit.i.ieee802154_hdr_addr_len.exit31.i_crit_edge: ; preds = %ieee802154_hdr_addr_len.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ieee802154_hdr_addr_len.exit31.i

ieee802154_hdr_addr_len.exit.i.cleanup_crit_edge: ; preds = %ieee802154_hdr_addr_len.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb1.i27.i:                                     ; preds = %ieee802154_hdr_addr_len.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %add.i.i = add nuw nsw i32 %12, 2
  br label %ieee802154_hdr_addr_len.exit31.i

sw.bb2.i28.i:                                     ; preds = %ieee802154_hdr_addr_len.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %add3.i.i = or i32 %12, 8
  br label %ieee802154_hdr_addr_len.exit31.i

ieee802154_hdr_addr_len.exit31.i:                 ; preds = %sw.bb2.i28.i, %sw.bb1.i27.i, %ieee802154_hdr_addr_len.exit.i.ieee802154_hdr_addr_len.exit31.i_crit_edge
  %retval.0.i30.i = phi i32 [ %add3.i.i, %sw.bb2.i28.i ], [ %add.i.i, %sw.bb1.i27.i ], [ %conv5.i, %ieee802154_hdr_addr_len.exit.i.ieee802154_hdr_addr_len.exit31.i_crit_edge ]
  br i1 %cmp12.i, label %ieee802154_hdr_addr_len.exit31.i.cleanup_crit_edge, label %ieee802154_hdr_minlen.exit

ieee802154_hdr_addr_len.exit31.i.cleanup_crit_edge: ; preds = %ieee802154_hdr_addr_len.exit31.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

ieee802154_hdr_minlen.exit:                       ; preds = %ieee802154_hdr_addr_len.exit31.i
  %bf.lshr17.i = lshr i16 %bf.load.i, 11
  %bf.clear18.i = and i16 %bf.lshr17.i, 1
  %conv19.i = zext i16 %bf.clear18.i to i32
  %add14.i = add nuw nsw i32 %retval.0.i.i, %conv19.i
  %add20.i = add nsw i32 %add14.i, %retval.0.i30.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add20.i)
  %cmp3 = icmp slt i32 %add20.i, 0
  br i1 %cmp3, label %ieee802154_hdr_minlen.exit.cleanup_crit_edge, label %lor.lhs.false

ieee802154_hdr_minlen.exit.cleanup_crit_edge:     ; preds = %ieee802154_hdr_minlen.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %ieee802154_hdr_minlen.exit
  %add.ptr4 = getelementptr i8, ptr %add.ptr.i, i32 %add20.i
  %14 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tail.i, align 8
  %cmp6 = icmp ugt ptr %add.ptr4, %15
  br i1 %cmp6, label %lor.lhs.false.cleanup_crit_edge, label %if.end8

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end8:                                          ; preds = %lor.lhs.false
  %dest.i = getelementptr inbounds %struct.ieee802154_hdr, ptr %hdr, i32 0, i32 3
  %conv.i.i = trunc i16 %bf.clear.i to i8
  %16 = ptrtoint ptr %dest.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv.i.i, ptr %dest.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.clear.i)
  %cmp.i.i = icmp eq i16 %bf.clear.i, 0
  br i1 %cmp.i.i, label %if.end8.ieee802154_hdr_get_addr.exit.i_crit_edge, label %if.end.i.i

if.end8.ieee802154_hdr_get_addr.exit.i_crit_edge: ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %ieee802154_hdr_get_addr.exit.i

if.end.i.i:                                       ; preds = %if.end8
  %pan_id.i.i = getelementptr inbounds %struct.ieee802154_hdr, ptr %hdr, i32 0, i32 3, i32 1
  %17 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %17, i32 2)
  %18 = load i16, ptr %add.ptr, align 1
  %19 = ptrtoint ptr %pan_id.i.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %pan_id.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %bf.clear.i)
  %cmp5.i.i = icmp eq i16 %bf.clear.i, 2
  %20 = getelementptr inbounds %struct.ieee802154_hdr, ptr %hdr, i32 0, i32 3, i32 2
  %add.ptr8.i.i = getelementptr i8, ptr %add.ptr, i32 2
  br i1 %cmp5.i.i, label %if.then7.i.i, label %if.else.i.i

if.then7.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %add.ptr8.i.i to i32
  call void @__asan_loadN_noabort(i32 %21, i32 2)
  %22 = load i16, ptr %add.ptr8.i.i, align 1
  %23 = ptrtoint ptr %20 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %20, align 8
  br label %ieee802154_hdr_get_addr.exit.i

if.else.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %add.ptr8.i.i to i32
  call void @__asan_loadN_noabort(i32 %24, i32 8)
  %25 = load i64, ptr %add.ptr8.i.i, align 1
  %26 = ptrtoint ptr %20 to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %25, ptr %20, align 8
  br label %ieee802154_hdr_get_addr.exit.i

ieee802154_hdr_get_addr.exit.i:                   ; preds = %if.else.i.i, %if.then7.i.i, %if.end8.ieee802154_hdr_get_addr.exit.i_crit_edge
  %retval.0.i.i28 = phi i32 [ 4, %if.then7.i.i ], [ 10, %if.else.i.i ], [ 0, %if.end8.ieee802154_hdr_get_addr.exit.i_crit_edge ]
  %add.ptr1.i = getelementptr i8, ptr %add.ptr, i32 %retval.0.i.i28
  %27 = and i16 %bf.load.i, 16384
  %source.i = getelementptr inbounds %struct.ieee802154_hdr, ptr %hdr, i32 0, i32 2
  %conv.i33.i = trunc i16 %bf.clear4.i to i8
  %28 = ptrtoint ptr %source.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv.i33.i, ptr %source.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.clear4.i)
  %cmp.i34.i = icmp eq i16 %bf.clear4.i, 0
  br i1 %cmp.i34.i, label %ieee802154_hdr_get_addr.exit.i.ieee802154_hdr_get_addr.exit42.i_crit_edge, label %if.end.i35.i

ieee802154_hdr_get_addr.exit.i.ieee802154_hdr_get_addr.exit42.i_crit_edge: ; preds = %ieee802154_hdr_get_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ieee802154_hdr_get_addr.exit42.i

if.end.i35.i:                                     ; preds = %ieee802154_hdr_get_addr.exit.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %tobool.not.i = icmp eq i16 %27, 0
  br i1 %tobool.not.i, label %if.then3.i.i, label %if.end.i35.i.if.end4.i.i_crit_edge

if.end.i35.i.if.end4.i.i_crit_edge:               ; preds = %if.end.i35.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4.i.i

if.then3.i.i:                                     ; preds = %if.end.i35.i
  call void @__sanitizer_cov_trace_pc() #7
  %pan_id.i36.i = getelementptr inbounds %struct.ieee802154_hdr, ptr %hdr, i32 0, i32 2, i32 1
  %29 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_loadN_noabort(i32 %29, i32 2)
  %30 = load i16, ptr %add.ptr1.i, align 1
  %31 = ptrtoint ptr %pan_id.i36.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %30, ptr %pan_id.i36.i, align 2
  br label %if.end4.i.i

if.end4.i.i:                                      ; preds = %if.then3.i.i, %if.end.i35.i.if.end4.i.i_crit_edge
  %pos.0.i.i = phi i32 [ 0, %if.end.i35.i.if.end4.i.i_crit_edge ], [ 2, %if.then3.i.i ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %bf.clear4.i)
  %cmp5.i37.i = icmp eq i16 %bf.clear4.i, 2
  %32 = getelementptr inbounds %struct.ieee802154_hdr, ptr %hdr, i32 0, i32 2, i32 2
  %add.ptr8.i38.i = getelementptr i8, ptr %add.ptr1.i, i32 %pos.0.i.i
  br i1 %cmp5.i37.i, label %if.then7.i39.i, label %if.else.i40.i

if.then7.i39.i:                                   ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %33 = ptrtoint ptr %add.ptr8.i38.i to i32
  call void @__asan_loadN_noabort(i32 %33, i32 2)
  %34 = load i16, ptr %add.ptr8.i38.i, align 1
  %35 = ptrtoint ptr %32 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %34, ptr %32, align 8
  %add9.i.i = add nuw nsw i32 %pos.0.i.i, 2
  br label %ieee802154_hdr_get_addr.exit42.i

if.else.i40.i:                                    ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %36 = ptrtoint ptr %add.ptr8.i38.i to i32
  call void @__asan_loadN_noabort(i32 %36, i32 8)
  %37 = load i64, ptr %add.ptr8.i38.i, align 1
  %38 = ptrtoint ptr %32 to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %37, ptr %32, align 8
  %add11.i.i = or i32 %pos.0.i.i, 8
  br label %ieee802154_hdr_get_addr.exit42.i

ieee802154_hdr_get_addr.exit42.i:                 ; preds = %if.else.i40.i, %if.then7.i39.i, %ieee802154_hdr_get_addr.exit.i.ieee802154_hdr_get_addr.exit42.i_crit_edge
  %retval.0.i41.i = phi i32 [ %add9.i.i, %if.then7.i39.i ], [ %add11.i.i, %if.else.i40.i ], [ 0, %ieee802154_hdr_get_addr.exit.i.ieee802154_hdr_get_addr.exit42.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %tobool17.not.i = icmp eq i16 %27, 0
  br i1 %tobool17.not.i, label %ieee802154_hdr_get_addr.exit42.i.ieee802154_hdr_get_addrs.exit_crit_edge, label %if.then.i

ieee802154_hdr_get_addr.exit42.i.ieee802154_hdr_get_addrs.exit_crit_edge: ; preds = %ieee802154_hdr_get_addr.exit42.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ieee802154_hdr_get_addrs.exit

if.then.i:                                        ; preds = %ieee802154_hdr_get_addr.exit42.i
  call void @__sanitizer_cov_trace_pc() #7
  %pan_id.i = getelementptr inbounds %struct.ieee802154_hdr, ptr %hdr, i32 0, i32 3, i32 1
  %39 = ptrtoint ptr %pan_id.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %pan_id.i, align 2
  %pan_id20.i = getelementptr inbounds %struct.ieee802154_hdr, ptr %hdr, i32 0, i32 2, i32 1
  %41 = ptrtoint ptr %pan_id20.i to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %40, ptr %pan_id20.i, align 2
  br label %ieee802154_hdr_get_addrs.exit

ieee802154_hdr_get_addrs.exit:                    ; preds = %if.then.i, %ieee802154_hdr_get_addr.exit42.i.ieee802154_hdr_get_addrs.exit_crit_edge
  %add12.i = add nuw nsw i32 %retval.0.i.i28, 3
  %add = add nsw i32 %add12.i, %retval.0.i41.i
  br label %cleanup

cleanup:                                          ; preds = %ieee802154_hdr_get_addrs.exit, %lor.lhs.false.cleanup_crit_edge, %ieee802154_hdr_minlen.exit.cleanup_crit_edge, %ieee802154_hdr_addr_len.exit31.i.cleanup_crit_edge, %ieee802154_hdr_addr_len.exit.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %add, %ieee802154_hdr_get_addrs.exit ], [ -22, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %ieee802154_hdr_minlen.exit.cleanup_crit_edge ], [ -22, %ieee802154_hdr_addr_len.exit31.i.cleanup_crit_edge ], [ -22, %ieee802154_hdr_addr_len.exit.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ieee802154_hdr_peek(ptr nocapture noundef readonly %skb, ptr nocapture noundef %hdr) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %0 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head.i, align 8
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %2 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %mac_header.i, align 2
  %conv.i = zext i16 %3 to i32
  %add.ptr.i = getelementptr i8, ptr %1, i32 %conv.i
  %call1 = tail call i32 @ieee802154_hdr_peek_addrs(ptr noundef %skb, ptr noundef %hdr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup15_crit_edge, label %if.end

entry.cleanup15_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup15

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %hdr to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load = load i16, ptr %hdr, align 8
  %5 = and i16 %bf.load, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not = icmp eq i16 %5, 0
  br i1 %tobool.not, label %if.end.cleanup15_crit_edge, label %if.then2

if.end.cleanup15_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup15

if.then2:                                         ; preds = %if.end
  %add.ptr = getelementptr i8, ptr %add.ptr.i, i32 %call1
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %add.ptr, align 1
  %8 = lshr i8 %7, 3
  %9 = and i8 %8, 3
  %idxprom = zext i8 %9 to i32
  %arrayidx = getelementptr [4 x i32], ptr @ieee802154_sechdr_lengths, i32 0, i32 %idxprom
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %add = add i32 %11, %call1
  %add.ptr4 = getelementptr i8, ptr %add.ptr.i, i32 %add
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %12 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tail.i, align 8
  %cmp6 = icmp ugt ptr %add.ptr4, %13
  br i1 %cmp6, label %if.then2.cleanup15_crit_edge, label %if.end9

if.then2.cleanup15_crit_edge:                     ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup15

if.end9:                                          ; preds = %if.then2
  %sec = getelementptr inbounds %struct.ieee802154_hdr, ptr %hdr, i32 0, i32 4
  %14 = ptrtoint ptr %sec to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %7, ptr %sec, align 8
  %frame_counter.i = getelementptr inbounds %struct.ieee802154_hdr, ptr %hdr, i32 0, i32 4, i32 2
  %add.ptr.i28 = getelementptr i8, ptr %add.ptr, i32 1
  %15 = ptrtoint ptr %add.ptr.i28 to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load i32, ptr %add.ptr.i28, align 1
  %17 = ptrtoint ptr %frame_counter.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %frame_counter.i, align 4
  %18 = zext i32 %idxprom to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %idxprom, label %if.end9.sw.epilog.i_crit_edge [
    i32 0, label %if.end9.cleanup_crit_edge
    i32 3, label %sw.bb3.i
    i32 2, label %sw.bb1.i
  ]

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end9.sw.epilog.i_crit_edge:                    ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

sw.bb1.i:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  %19 = getelementptr inbounds %struct.ieee802154_hdr, ptr %hdr, i32 0, i32 4, i32 3
  %add.ptr2.i = getelementptr i8, ptr %add.ptr, i32 5
  %20 = ptrtoint ptr %add.ptr2.i to i32
  call void @__asan_loadN_noabort(i32 %20, i32 4)
  %21 = load i32, ptr %add.ptr2.i, align 1
  %22 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %19, align 8
  br label %sw.epilog.i

sw.bb3.i:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  %23 = getelementptr inbounds %struct.ieee802154_hdr, ptr %hdr, i32 0, i32 4, i32 3
  %add.ptr4.i = getelementptr i8, ptr %add.ptr, i32 5
  %24 = ptrtoint ptr %add.ptr4.i to i32
  call void @__asan_loadN_noabort(i32 %24, i32 8)
  %25 = load i64, ptr %add.ptr4.i, align 1
  %26 = ptrtoint ptr %23 to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %25, ptr %23, align 8
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb3.i, %sw.bb1.i, %if.end9.sw.epilog.i_crit_edge
  %pos.0.i = phi i32 [ 5, %if.end9.sw.epilog.i_crit_edge ], [ 9, %sw.bb1.i ], [ 13, %sw.bb3.i ]
  %inc.i = add nuw nsw i32 %pos.0.i, 1
  %arrayidx.i = getelementptr i8, ptr %add.ptr, i32 %pos.0.i
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx.i, align 1
  %key_id.i = getelementptr inbounds %struct.ieee802154_hdr, ptr %hdr, i32 0, i32 4, i32 1
  %29 = ptrtoint ptr %key_id.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %key_id.i, align 1
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog.i, %if.end9.cleanup_crit_edge
  %retval.0.i = phi i32 [ %inc.i, %sw.epilog.i ], [ 5, %if.end9.cleanup_crit_edge ]
  %add12 = add nuw i32 %retval.0.i, %call1
  br label %cleanup15

cleanup15:                                        ; preds = %cleanup, %if.then2.cleanup15_crit_edge, %if.end.cleanup15_crit_edge, %entry.cleanup15_crit_edge
  %retval.1 = phi i32 [ -22, %entry.cleanup15_crit_edge ], [ %add12, %cleanup ], [ %call1, %if.end.cleanup15_crit_edge ], [ -22, %if.then2.cleanup15_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ieee802154_max_payload(ptr nocapture noundef readonly %hdr) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hdr to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load.i = load i16, ptr %hdr, align 8
  %bf.lshr.i = lshr i16 %bf.load.i, 2
  %bf.clear.i = and i16 %bf.lshr.i, 3
  %conv.i = zext i16 %bf.clear.i to i32
  %1 = zext i32 %conv.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %conv.i, label %sw.default.i.i [
    i32 0, label %entry.ieee802154_hdr_addr_len.exit.i_crit_edge
    i32 2, label %sw.bb1.i.i
    i32 3, label %sw.bb2.i.i
  ]

entry.ieee802154_hdr_addr_len.exit.i_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %ieee802154_hdr_addr_len.exit.i

sw.bb1.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %ieee802154_hdr_addr_len.exit.i

sw.bb2.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %ieee802154_hdr_addr_len.exit.i

sw.default.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %ieee802154_hdr_addr_len.exit.i

ieee802154_hdr_addr_len.exit.i:                   ; preds = %sw.default.i.i, %sw.bb2.i.i, %sw.bb1.i.i, %entry.ieee802154_hdr_addr_len.exit.i_crit_edge
  %cmp12.i = phi i1 [ false, %entry.ieee802154_hdr_addr_len.exit.i_crit_edge ], [ false, %sw.bb1.i.i ], [ false, %sw.bb2.i.i ], [ true, %sw.default.i.i ]
  %retval.0.i.i = phi i32 [ 3, %entry.ieee802154_hdr_addr_len.exit.i_crit_edge ], [ 7, %sw.bb1.i.i ], [ 13, %sw.bb2.i.i ], [ -19, %sw.default.i.i ]
  %bf.lshr3.i = lshr i16 %bf.load.i, 6
  %bf.clear4.i = and i16 %bf.lshr3.i, 3
  %conv5.i = zext i16 %bf.clear4.i to i32
  %2 = lshr i16 %bf.load.i, 13
  %3 = and i16 %2, 2
  %4 = xor i16 %3, 2
  %5 = zext i16 %4 to i32
  %6 = zext i32 %conv5.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %conv5.i, label %ieee802154_hdr_addr_len.exit.i.ieee802154_hdr_minlen.exit_crit_edge [
    i32 0, label %ieee802154_hdr_addr_len.exit.i.ieee802154_hdr_addr_len.exit31.i_crit_edge
    i32 2, label %sw.bb1.i27.i
    i32 3, label %sw.bb2.i28.i
  ]

ieee802154_hdr_addr_len.exit.i.ieee802154_hdr_addr_len.exit31.i_crit_edge: ; preds = %ieee802154_hdr_addr_len.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ieee802154_hdr_addr_len.exit31.i

ieee802154_hdr_addr_len.exit.i.ieee802154_hdr_minlen.exit_crit_edge: ; preds = %ieee802154_hdr_addr_len.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ieee802154_hdr_minlen.exit

sw.bb1.i27.i:                                     ; preds = %ieee802154_hdr_addr_len.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %add.i.i = add nuw nsw i32 %5, 2
  br label %ieee802154_hdr_addr_len.exit31.i

sw.bb2.i28.i:                                     ; preds = %ieee802154_hdr_addr_len.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %add3.i.i = or i32 %5, 8
  br label %ieee802154_hdr_addr_len.exit31.i

ieee802154_hdr_addr_len.exit31.i:                 ; preds = %sw.bb2.i28.i, %sw.bb1.i27.i, %ieee802154_hdr_addr_len.exit.i.ieee802154_hdr_addr_len.exit31.i_crit_edge
  %retval.0.i30.i = phi i32 [ %add3.i.i, %sw.bb2.i28.i ], [ %add.i.i, %sw.bb1.i27.i ], [ %conv5.i, %ieee802154_hdr_addr_len.exit.i.ieee802154_hdr_addr_len.exit31.i_crit_edge ]
  br i1 %cmp12.i, label %ieee802154_hdr_addr_len.exit31.i.ieee802154_hdr_minlen.exit_crit_edge, label %if.end.i

ieee802154_hdr_addr_len.exit31.i.ieee802154_hdr_minlen.exit_crit_edge: ; preds = %ieee802154_hdr_addr_len.exit31.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ieee802154_hdr_minlen.exit

if.end.i:                                         ; preds = %ieee802154_hdr_addr_len.exit31.i
  call void @__sanitizer_cov_trace_pc() #7
  %bf.lshr17.i = lshr i16 %bf.load.i, 11
  %bf.clear18.i = and i16 %bf.lshr17.i, 1
  %conv19.i = zext i16 %bf.clear18.i to i32
  %add14.i = add nuw nsw i32 %retval.0.i.i, %conv19.i
  %add20.i = add nsw i32 %add14.i, %retval.0.i30.i
  br label %ieee802154_hdr_minlen.exit

ieee802154_hdr_minlen.exit:                       ; preds = %if.end.i, %ieee802154_hdr_addr_len.exit31.i.ieee802154_hdr_minlen.exit_crit_edge, %ieee802154_hdr_addr_len.exit.i.ieee802154_hdr_minlen.exit_crit_edge
  %retval.0.i = phi i32 [ %add20.i, %if.end.i ], [ -22, %ieee802154_hdr_addr_len.exit31.i.ieee802154_hdr_minlen.exit_crit_edge ], [ -22, %ieee802154_hdr_addr_len.exit.i.ieee802154_hdr_minlen.exit_crit_edge ]
  %7 = and i16 %bf.load.i, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool.not = icmp eq i16 %7, 0
  br i1 %tobool.not, label %ieee802154_hdr_minlen.exit.if.end_crit_edge, label %if.then

ieee802154_hdr_minlen.exit.if.end_crit_edge:      ; preds = %ieee802154_hdr_minlen.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %ieee802154_hdr_minlen.exit
  call void @__sanitizer_cov_trace_pc() #7
  %sec = getelementptr inbounds %struct.ieee802154_hdr, ptr %hdr, i32 0, i32 4
  %8 = ptrtoint ptr %sec to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load1 = load i8, ptr %sec, align 8
  %bf.lshr2 = lshr i8 %bf.load1, 3
  %bf.clear3 = and i8 %bf.lshr2, 3
  %idxprom = zext i8 %bf.clear3 to i32
  %arrayidx = getelementptr [4 x i32], ptr @ieee802154_sechdr_lengths, i32 0, i32 %idxprom
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %bf.clear.i15 = and i8 %bf.load1, 7
  %conv.i16 = zext i8 %bf.clear.i15 to i32
  %switch.gep = getelementptr inbounds [8 x i32], ptr @switch.table.ieee802154_max_payload, i32 0, i32 %conv.i16
  %11 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %11)
  %switch.load = load i32, ptr %switch.gep, align 4
  %sub = add nsw i32 %retval.0.i, -1
  %add = add i32 %sub, %10
  %add6 = add i32 %add, %switch.load
  br label %if.end

if.end:                                           ; preds = %if.then, %ieee802154_hdr_minlen.exit.if.end_crit_edge
  %hlen.0 = phi i32 [ %add6, %if.then ], [ %retval.0.i, %ieee802154_hdr_minlen.exit.if.end_crit_edge ]
  %sub8 = sub i32 125, %hlen.0
  ret i32 %sub8
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = !{ptr @__ksymtab_ieee802154_hdr_push, !1, !"__ksymtab_ieee802154_hdr_push", i1 false, i1 false}
!1 = !{!"../net/ieee802154/header_ops.c", i32 121, i32 1}
!2 = !{ptr @__ksymtab_ieee802154_hdr_pull, !3, !"__ksymtab_ieee802154_hdr_pull", i1 false, i1 false}
!3 = !{!"../net/ieee802154/header_ops.c", i32 261, i32 1}
!4 = !{ptr @__ksymtab_ieee802154_hdr_peek_addrs, !5, !"__ksymtab_ieee802154_hdr_peek_addrs", i1 false, i1 false}
!5 = !{!"../net/ieee802154/header_ops.c", i32 281, i32 1}
!6 = !{ptr @__ksymtab_ieee802154_hdr_peek, !7, !"__ksymtab_ieee802154_hdr_peek", i1 false, i1 false}
!7 = !{!"../net/ieee802154/header_ops.c", i32 305, i32 1}
!8 = !{ptr @__ksymtab_ieee802154_max_payload, !9, !"__ksymtab_ieee802154_max_payload", i1 false, i1 false}
!9 = !{!"../net/ieee802154/header_ops.c", i32 318, i32 1}
!10 = !{ptr @ieee802154_sechdr_lengths, !11, !"ieee802154_sechdr_lengths", i1 false, i1 false}
!11 = !{!"../net/ieee802154/header_ops.c", i32 191, i32 12}
!12 = !{i32 1, !"wchar_size", i32 2}
!13 = !{i32 1, !"min_enum_size", i32 4}
!14 = !{i32 8, !"branch-target-enforcement", i32 0}
!15 = !{i32 8, !"sign-return-address", i32 0}
!16 = !{i32 8, !"sign-return-address-all", i32 0}
!17 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!18 = !{i32 7, !"uwtable", i32 1}
!19 = !{i32 7, !"frame-pointer", i32 2}
!20 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!21 = !{!"branch_weights", i32 1, i32 2000}
