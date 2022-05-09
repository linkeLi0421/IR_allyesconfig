; ModuleID = '/llk/IR_all_yes/net/6lowpan/nhc.c_pt.bc'
source_filename = "../net/6lowpan/nhc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+lowpan_nhc_add\22, \22a\22\09"
module asm "\09.weak\09__crc_lowpan_nhc_add\09\09\09\09"
module asm "\09.long\09__crc_lowpan_nhc_add\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_lowpan_nhc_add:\09\09\09\09\09"
module asm "\09.asciz \09\22lowpan_nhc_add\22\09\09\09\09\09"
module asm "__kstrtabns_lowpan_nhc_add:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+lowpan_nhc_del\22, \22a\22\09"
module asm "\09.weak\09__crc_lowpan_nhc_del\09\09\09\09"
module asm "\09.long\09__crc_lowpan_nhc_del\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_lowpan_nhc_del:\09\09\09\09\09"
module asm "\09.asciz \09\22lowpan_nhc_del\22\09\09\09\09\09"
module asm "__kstrtabns_lowpan_nhc_del:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.rb_root = type { ptr }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.26 }
%union.anon.26 = type { [4 x i32] }
%struct.lowpan_nhc = type { %struct.rb_node, ptr, i8, i32, ptr, ptr, i32, ptr, ptr, ptr }
%struct.rb_node = type { i32, ptr, ptr }
%struct.sk_buff = type { %union.anon, %union.anon.125, %union.anon.126, [48 x i8], %union.anon.127, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.129, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.125 = type { ptr }
%union.anon.126 = type { i64 }
%union.anon.127 = type { %struct.anon.128 }
%struct.anon.128 = type { i32, ptr }
%union.anon.129 = type { %struct.anon.130 }
%struct.anon.130 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.131, i32, i32, i32, i16, i16, %union.anon.133, i32, %union.anon.134, %union.anon.135, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.131 = type { i32 }
%union.anon.133 = type { i32 }
%union.anon.134 = type { i32 }
%union.anon.135 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }

@lowpan_nhc_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.5 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@lowpan_nexthdr_nhcs = internal global { [256 x ptr], [256 x i8] } zeroinitializer, align 32
@.str = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"received nhc id for %s which is not implemented.\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"received unknown nhc id which was not found.\0A\00", [50 x i8] zeroinitializer }, align 32
@lowpan_nhc_add.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"net/6lowpan/nhc.c\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"LOWPAN_NHC_MAX_ID_LEN should be updated to %zd.\0A\00", [47 x i8] zeroinitializer }, align 32
@__kstrtab_lowpan_nhc_add = external dso_local constant [0 x i8], align 1
@__kstrtabns_lowpan_nhc_add = external dso_local constant [0 x i8], align 1
@__ksymtab_lowpan_nhc_add = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @lowpan_nhc_add to i32), ptr @__kstrtab_lowpan_nhc_add, ptr @__kstrtabns_lowpan_nhc_add }, section "___ksymtab+lowpan_nhc_add", align 4
@__kstrtab_lowpan_nhc_del = external dso_local constant [0 x i8], align 1
@__kstrtabns_lowpan_nhc_del = external dso_local constant [0 x i8], align 1
@__ksymtab_lowpan_nhc_del = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @lowpan_nhc_del to i32), ptr @__kstrtab_lowpan_nhc_del, ptr @__kstrtabns_lowpan_nhc_del }, section "___ksymtab+lowpan_nhc_del", align 4
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"lowpan_nhc_lock\00", [16 x i8] zeroinitializer }, align 32
@rb_root = internal global { %struct.rb_root, [28 x i8] } zeroinitializer, align 32
@___asan_gen_.6 = private unnamed_addr constant [16 x i8] c"lowpan_nhc_lock\00", align 1
@___asan_gen_.9 = private unnamed_addr constant [20 x i8] c"lowpan_nexthdr_nhcs\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 16, i32 27 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 172, i32 21 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 178, i32 20 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 199, i32 2 }
@___asan_gen_.24 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 17, i32 8 }
@___asan_gen_.27 = private unnamed_addr constant [8 x i8] c"rb_root\00", align 1
@___asan_gen_.28 = private constant [21 x i8] c"../net/6lowpan/nhc.c\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 15, i32 23 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @__ksymtab_lowpan_nhc_add, ptr @__ksymtab_lowpan_nhc_del, ptr @lowpan_nhc_lock, ptr @lowpan_nexthdr_nhcs, ptr @.str, ptr @.str.1, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @rb_root], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lowpan_nhc_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lowpan_nexthdr_nhcs to i32), i32 1024, i32 1280, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rb_root to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lowpan_nhc_check_compression(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %hdr, ptr nocapture noundef readnone %hc_ptr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @lowpan_nhc_lock) #6
  %nexthdr = getelementptr inbounds %struct.ipv6hdr, ptr %hdr, i32 0, i32 3
  %0 = ptrtoint ptr %nexthdr to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %nexthdr, align 2
  %idxprom = zext i8 %1 to i32
  %arrayidx = getelementptr [256 x ptr], ptr @lowpan_nexthdr_nhcs, i32 0, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %land.lhs.true

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

land.lhs.true:                                    ; preds = %entry
  %compress = getelementptr inbounds %struct.lowpan_nhc, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %compress to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %compress, align 4
  %tobool1.not = icmp eq ptr %5, null
  br i1 %tobool1.not, label %land.lhs.true.if.then_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then:                                          ; preds = %land.lhs.true.if.then_crit_edge, %entry.if.then_crit_edge
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge
  %ret.0 = phi i32 [ 0, %land.lhs.true.if.end_crit_edge ], [ -2, %if.then ]
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @lowpan_nhc_lock) #6
  ret i32 %ret.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lowpan_nhc_do_compression(ptr noundef %skb, ptr nocapture noundef readonly %hdr, ptr noundef %hc_ptr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @lowpan_nhc_lock) #6
  %nexthdr = getelementptr inbounds %struct.ipv6hdr, ptr %hdr, i32 0, i32 3
  %0 = ptrtoint ptr %nexthdr to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %nexthdr, align 2
  %idxprom = zext i8 %1 to i32
  %arrayidx = getelementptr [256 x ptr], ptr @lowpan_nexthdr_nhcs, i32 0, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %lor.rhs, !prof !32

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

lor.rhs:                                          ; preds = %entry
  %compress = getelementptr inbounds %struct.lowpan_nhc, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %compress to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %compress, align 4
  %tobool1.not = icmp eq ptr %5, null
  br i1 %tobool1.not, label %lor.rhs.out_crit_edge, label %if.end, !prof !32

lor.rhs.out_crit_edge:                            ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end:                                           ; preds = %lor.rhs
  %transport_header = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %6 = ptrtoint ptr %transport_header to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %transport_header, align 2
  %network_header = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %8 = ptrtoint ptr %network_header to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %network_header, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %7, i16 %9)
  %cmp = icmp eq i16 %7, %9
  br i1 %cmp, label %if.then7, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %10 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data.i.i, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %12 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %11 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %13 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i = trunc i32 %sub.ptr.sub.i.i to i16
  %add.i = add i16 %conv.i.i, 40
  %14 = ptrtoint ptr %transport_header to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %add.i, ptr %transport_header, align 2
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end.if.end8_crit_edge
  %15 = ptrtoint ptr %compress to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %compress, align 4
  %call = tail call i32 %16(ptr noundef %skb, ptr noundef %hc_ptr) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp10 = icmp slt i32 %call, 0
  br i1 %cmp10, label %if.end8.out_crit_edge, label %if.end13

if.end8.out_crit_edge:                            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end13:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %nexthdrlen = getelementptr inbounds %struct.lowpan_nhc, ptr %3, i32 0, i32 3
  %17 = ptrtoint ptr %nexthdrlen to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %nexthdrlen, align 4
  %call14 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef %18) #6
  br label %out

out:                                              ; preds = %if.end13, %if.end8.out_crit_edge, %lor.rhs.out_crit_edge, %entry.out_crit_edge
  %ret.0 = phi i32 [ %call, %if.end8.out_crit_edge ], [ %call, %if.end13 ], [ -22, %lor.rhs.out_crit_edge ], [ -22, %entry.out_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @lowpan_nhc_lock) #6
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lowpan_nhc_do_uncompression(ptr noundef %skb, ptr noundef %dev, ptr nocapture noundef writeonly %hdr) local_unnamed_addr #0 align 64 {
entry:
  %nhcid_skb_ptr_masked.i = alloca [1 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @lowpan_nhc_lock) #6
  %0 = load ptr, ptr @rb_root, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %1 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %data.i, align 4
  %tobool.not51.i = icmp eq ptr %0, null
  br i1 %tobool.not51.i, label %entry.if.else7_crit_edge, label %while.body.lr.ph.i

entry.if.else7_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else7

while.body.lr.ph.i:                               ; preds = %entry
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %3 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %len.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %2, i32 %4
  br label %while.body.i

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %node.052.i = phi ptr [ %0, %while.body.lr.ph.i ], [ %node.1.i, %cleanup.i.while.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %nhcid_skb_ptr_masked.i) #6
  %5 = ptrtoint ptr %nhcid_skb_ptr_masked.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %nhcid_skb_ptr_masked.i, align 1, !annotation !33
  %idlen.i = getelementptr inbounds %struct.lowpan_nhc, ptr %node.052.i, i32 0, i32 6
  %6 = ptrtoint ptr %idlen.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %idlen.i, align 4
  %add.ptr1.i = getelementptr i8, ptr %2, i32 %7
  %cmp.i = icmp ugt ptr %add.ptr1.i, %add.ptr3.i
  br i1 %cmp.i, label %lowpan_nhc_by_nhcid.exit.thread27, label %if.end.i

lowpan_nhc_by_nhcid.exit.thread27:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %nhcid_skb_ptr_masked.i) #6
  br label %if.else7

if.end.i:                                         ; preds = %while.body.i
  %8 = call ptr @memcpy(ptr %nhcid_skb_ptr_masked.i, ptr %2, i32 %7)
  %9 = ptrtoint ptr %nhcid_skb_ptr_masked.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %nhcid_skb_ptr_masked.promoted.i = load i8, ptr %nhcid_skb_ptr_masked.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp647.not.i = icmp eq i32 %7, 0
  br i1 %cmp647.not.i, label %if.end.i.for.end.i_crit_edge, label %for.body.lr.ph.i

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %idmask.i = getelementptr inbounds %struct.lowpan_nhc, ptr %node.052.i, i32 0, i32 5
  %10 = ptrtoint ptr %idmask.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %idmask.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.049.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %and424648.i = phi i8 [ %nhcid_skb_ptr_masked.promoted.i, %for.body.lr.ph.i ], [ %and42.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i8, ptr %11, i32 %i.049.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.i, align 1
  %and42.i = and i8 %13, %and424648.i
  %inc.i = add nuw i32 %i.049.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %7
  br i1 %exitcond.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.end.i.for.end.i_crit_edge
  %and4246.lcssa.i = phi i8 [ %nhcid_skb_ptr_masked.promoted.i, %if.end.i.for.end.i_crit_edge ], [ %and42.i, %for.body.i.for.end.i_crit_edge ]
  %14 = ptrtoint ptr %nhcid_skb_ptr_masked.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %and4246.lcssa.i, ptr %nhcid_skb_ptr_masked.i, align 1
  %id.i = getelementptr inbounds %struct.lowpan_nhc, ptr %node.052.i, i32 0, i32 4
  %15 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %id.i, align 4
  %call.i = call i32 @memcmp(ptr noundef nonnull %nhcid_skb_ptr_masked.i, ptr noundef %16, i32 noundef %7) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp12.i = icmp slt i32 %call.i, 0
  br i1 %cmp12.i, label %if.then14.i, label %if.else.i

if.then14.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %node.052.i, i32 0, i32 2
  br label %cleanup.i

if.else.i:                                        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp15.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp15.not.i, label %lowpan_nhc_by_nhcid.exit, label %if.then17.i

if.then17.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %node.052.i, i32 0, i32 1
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.then17.i, %if.then14.i
  %node.1.in.i = phi ptr [ %rb_left.i, %if.then14.i ], [ %rb_right.i, %if.then17.i ]
  %17 = ptrtoint ptr %node.1.in.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %node.1.i = load ptr, ptr %node.1.in.i, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %nhcid_skb_ptr_masked.i) #6
  %tobool.not.i = icmp eq ptr %node.1.i, null
  br i1 %tobool.not.i, label %cleanup.i.if.else7_crit_edge, label %cleanup.i.while.body.i_crit_edge

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

cleanup.i.if.else7_crit_edge:                     ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else7

lowpan_nhc_by_nhcid.exit:                         ; preds = %if.else.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %nhcid_skb_ptr_masked.i) #6
  %tobool.not = icmp eq ptr %node.052.i, null
  br i1 %tobool.not, label %lowpan_nhc_by_nhcid.exit.if.else7_crit_edge, label %if.then

lowpan_nhc_by_nhcid.exit.if.else7_crit_edge:      ; preds = %lowpan_nhc_by_nhcid.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else7

if.then:                                          ; preds = %lowpan_nhc_by_nhcid.exit
  %uncompress = getelementptr inbounds %struct.lowpan_nhc, ptr %node.052.i, i32 0, i32 8
  %18 = ptrtoint ptr %uncompress to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %uncompress, align 4
  %tobool1.not = icmp eq ptr %19, null
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.then
  %nexthdrlen = getelementptr inbounds %struct.lowpan_nhc, ptr %node.052.i, i32 0, i32 3
  %20 = ptrtoint ptr %nexthdrlen to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %nexthdrlen, align 4
  %add = add i32 %21, 40
  %call4 = tail call i32 %19(ptr noundef %skb, i32 noundef %add) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %if.then5, label %if.end8

if.then5:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @lowpan_nhc_lock) #6
  br label %cleanup

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @lowpan_nhc_lock) #6
  %name = getelementptr inbounds %struct.lowpan_nhc, ptr %node.052.i, i32 0, i32 1
  %22 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %dev, ptr noundef nonnull @.str, ptr noundef %23) #10
  br label %cleanup

if.else7:                                         ; preds = %lowpan_nhc_by_nhcid.exit.if.else7_crit_edge, %cleanup.i.if.else7_crit_edge, %lowpan_nhc_by_nhcid.exit.thread27, %entry.if.else7_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @lowpan_nhc_lock) #6
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %dev, ptr noundef nonnull @.str.1) #10
  br label %cleanup

if.end8:                                          ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  %nexthdr = getelementptr inbounds %struct.lowpan_nhc, ptr %node.052.i, i32 0, i32 2
  %24 = ptrtoint ptr %nexthdr to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %nexthdr, align 4
  %nexthdr9 = getelementptr inbounds %struct.ipv6hdr, ptr %hdr, i32 0, i32 3
  %26 = ptrtoint ptr %nexthdr9 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %nexthdr9, align 2
  %27 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %29 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %28 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %30 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %transport_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %31 = ptrtoint ptr %transport_header.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %conv.i, ptr %transport_header.i, align 2
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @lowpan_nhc_lock) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.else7, %if.else, %if.then5
  %retval.0 = phi i32 [ %call4, %if.then5 ], [ 0, %if.end8 ], [ -524, %if.else ], [ -2, %if.else7 ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lowpan_nhc_add(ptr noundef %nhc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %idlen = getelementptr inbounds %struct.lowpan_nhc, ptr %nhc, i32 0, i32 6
  %0 = ptrtoint ptr %idlen to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %idlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %idsetup = getelementptr inbounds %struct.lowpan_nhc, ptr %nhc, i32 0, i32 7
  %2 = ptrtoint ptr %idsetup to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %idsetup, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp ugt i32 %1, 1
  br i1 %cmp, label %land.rhs, label %if.end.if.end33_crit_edge

if.end.if.end33_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33

land.rhs:                                         ; preds = %if.end
  %.b63 = load i1, ptr @lowpan_nhc_add.__already_done, align 1
  br i1 %.b63, label %land.rhs.if.end33_crit_edge, label %if.then10, !prof !34

land.rhs.if.end33_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33

if.then10:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @lowpan_nhc_add.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 201, i32 noundef 9, ptr noundef nonnull @.str.4, i32 noundef %1) #6
  br label %if.end33

if.end33:                                         ; preds = %if.then10, %land.rhs.if.end33_crit_edge, %if.end.if.end33_crit_edge
  %4 = ptrtoint ptr %idsetup to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %idsetup, align 4
  tail call void %5(ptr noundef %nhc) #6
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @lowpan_nhc_lock) #6
  %nexthdr = getelementptr inbounds %struct.lowpan_nhc, ptr %nhc, i32 0, i32 2
  %6 = ptrtoint ptr %nexthdr to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %nexthdr, align 4
  %idxprom = zext i8 %7 to i32
  %arrayidx = getelementptr [256 x ptr], ptr @lowpan_nexthdr_nhcs, i32 0, i32 %idxprom
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %tobool42.not = icmp eq ptr %9, null
  br i1 %tobool42.not, label %if.end44, label %if.end33.out_crit_edge

if.end33.out_crit_edge:                           ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end44:                                         ; preds = %if.end33
  %10 = load ptr, ptr @rb_root, align 4
  %tobool.not44.i = icmp eq ptr %10, null
  br i1 %tobool.not44.i, label %if.end44.if.end47_crit_edge, label %while.body.lr.ph.i

if.end44.if.end47_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end47

while.body.lr.ph.i:                               ; preds = %if.end44
  %11 = ptrtoint ptr %idlen to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %idlen, align 4
  %id.i = getelementptr inbounds %struct.lowpan_nhc, ptr %nhc, i32 0, i32 4
  %13 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %id.i, align 4
  br label %while.body.i

while.cond.i:                                     ; preds = %while.body.i
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %17, i32 0, i32 2
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %17, i32 0, i32 1
  %spec.select.i = select i1 %cmp13.not.i, ptr %new.045.i, ptr %rb_right.i
  %new.2.i = select i1 %cmp10.i, ptr %rb_left.i, ptr %spec.select.i
  %15 = ptrtoint ptr %new.2.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %new.2.i, align 4
  %tobool.not.i = icmp eq ptr %16, null
  br i1 %tobool.not.i, label %while.cond.i.if.end47_crit_edge, label %while.cond.i.while.body.i_crit_edge

while.cond.i.while.body.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

while.cond.i.if.end47_crit_edge:                  ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end47

while.body.i:                                     ; preds = %while.cond.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %17 = phi ptr [ %10, %while.body.lr.ph.i ], [ %16, %while.cond.i.while.body.i_crit_edge ]
  %new.045.i = phi ptr [ @rb_root, %while.body.lr.ph.i ], [ %new.2.i, %while.cond.i.while.body.i_crit_edge ]
  %idlen1.i = getelementptr inbounds %struct.lowpan_nhc, ptr %17, i32 0, i32 6
  %18 = ptrtoint ptr %idlen1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %idlen1.i, align 4
  %sub.i = sub i32 %12, %19
  %20 = tail call i32 @llvm.umin.i32(i32 %12, i32 %19) #6
  %id6.i = getelementptr inbounds %struct.lowpan_nhc, ptr %17, i32 0, i32 4
  %21 = ptrtoint ptr %id6.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %id6.i, align 4
  %call.i = tail call i32 @memcmp(ptr noundef %14, ptr noundef %22, i32 noundef %20) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool7.not.i = icmp eq i32 %call.i, 0
  %result.0.i = select i1 %tobool7.not.i, i32 %sub.i, i32 %call.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %result.0.i)
  %cmp10.i = icmp slt i32 %result.0.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %result.0.i)
  %cmp13.not.i = icmp eq i32 %result.0.i, 0
  %not.cmp13.not.i = xor i1 %cmp13.not.i, true
  %cond.i = or i1 %cmp10.i, %not.cmp13.not.i
  br i1 %cond.i, label %while.cond.i, label %while.body.i.out_crit_edge

while.body.i.out_crit_edge:                       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end47:                                         ; preds = %while.cond.i.if.end47_crit_edge, %if.end44.if.end47_crit_edge
  %parent.0.lcssa.i = phi ptr [ null, %if.end44.if.end47_crit_edge ], [ %17, %while.cond.i.if.end47_crit_edge ]
  %new.0.lcssa.i = phi ptr [ @rb_root, %if.end44.if.end47_crit_edge ], [ %new.2.i, %while.cond.i.if.end47_crit_edge ]
  %23 = ptrtoint ptr %parent.0.lcssa.i to i32
  %24 = ptrtoint ptr %nhc to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %nhc, align 4
  %rb_right.i.i = getelementptr inbounds %struct.rb_node, ptr %nhc, i32 0, i32 1
  %25 = ptrtoint ptr %rb_right.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %rb_right.i.i, align 4
  %rb_left.i.i = getelementptr inbounds %struct.rb_node, ptr %nhc, i32 0, i32 2
  %26 = ptrtoint ptr %rb_left.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %rb_left.i.i, align 4
  %27 = ptrtoint ptr %new.0.lcssa.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %nhc, ptr %new.0.lcssa.i, align 4
  tail call void @rb_insert_color(ptr noundef %nhc, ptr noundef nonnull @rb_root) #6
  %28 = ptrtoint ptr %nexthdr to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %nexthdr, align 4
  %idxprom49 = zext i8 %29 to i32
  %arrayidx50 = getelementptr [256 x ptr], ptr @lowpan_nexthdr_nhcs, i32 0, i32 %idxprom49
  %30 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %nhc, ptr %arrayidx50, align 4
  br label %out

out:                                              ; preds = %if.end47, %while.body.i.out_crit_edge, %if.end33.out_crit_edge
  %ret.0 = phi i32 [ 0, %if.end47 ], [ -17, %if.end33.out_crit_edge ], [ -17, %while.body.i.out_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @lowpan_nhc_lock) #6
  br label %cleanup

cleanup:                                          ; preds = %out, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lowpan_nhc_del(ptr noundef %nhc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @lowpan_nhc_lock) #6
  tail call void @rb_erase(ptr noundef %nhc, ptr noundef nonnull @rb_root) #6
  %nexthdr = getelementptr inbounds %struct.lowpan_nhc, ptr %nhc, i32 0, i32 2
  %0 = ptrtoint ptr %nexthdr to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %nexthdr, align 4
  %idxprom = zext i8 %1 to i32
  %arrayidx = getelementptr [256 x ptr], ptr @lowpan_nexthdr_nhcs, i32 0, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %arrayidx, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @lowpan_nhc_lock) #6
  tail call void @synchronize_net() #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_net() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @memcmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nobuiltin nounwind }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !14, !16, !18, !20, !21}
!llvm.module.flags = !{!23, !24, !25, !26, !27, !28, !29, !30}
!llvm.ident = !{!31}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/6lowpan/nhc.c", i32 172, i32 21}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../net/6lowpan/nhc.c", i32 178, i32 20}
!4 = distinct !{null, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../net/6lowpan/nhc.c", i32 184, i32 17}
!6 = distinct !{null, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../net/6lowpan/nhc.c", i32 184, i32 27}
!8 = distinct !{null, !9, !"__already_done", i1 false, i1 false}
!9 = !{!"../net/6lowpan/nhc.c", i32 199, i32 2}
!10 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @__ksymtab_lowpan_nhc_add, !13, !"__ksymtab_lowpan_nhc_add", i1 false, i1 false}
!13 = !{!"../net/6lowpan/nhc.c", i32 221, i32 1}
!14 = !{ptr @__ksymtab_lowpan_nhc_del, !15, !"__ksymtab_lowpan_nhc_del", i1 false, i1 false}
!15 = !{!"../net/6lowpan/nhc.c", i32 234, i32 1}
!16 = !{ptr @lowpan_nexthdr_nhcs, !17, !"lowpan_nexthdr_nhcs", i1 false, i1 false}
!17 = !{!"../net/6lowpan/nhc.c", i32 16, i32 27}
!18 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../net/6lowpan/nhc.c", i32 17, i32 8}
!20 = !{ptr @lowpan_nhc_lock, !19, !"lowpan_nhc_lock", i1 false, i1 false}
!21 = !{ptr @rb_root, !22, !"rb_root", i1 false, i1 false}
!22 = !{!"../net/6lowpan/nhc.c", i32 15, i32 23}
!23 = !{i32 1, !"wchar_size", i32 2}
!24 = !{i32 1, !"min_enum_size", i32 4}
!25 = !{i32 8, !"branch-target-enforcement", i32 0}
!26 = !{i32 8, !"sign-return-address", i32 0}
!27 = !{i32 8, !"sign-return-address-all", i32 0}
!28 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!29 = !{i32 7, !"uwtable", i32 1}
!30 = !{i32 7, !"frame-pointer", i32 2}
!31 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!32 = !{!"branch_weights", i32 1, i32 2000}
!33 = !{!"auto-init"}
!34 = !{!"branch_weights", i32 2000, i32 1}
