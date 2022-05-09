; ModuleID = '/llk/IR_all_yes/net/core/tso.c_pt.bc'
source_filename = "../net/core/tso.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+tso_count_descs\22, \22a\22\09"
module asm "\09.weak\09__crc_tso_count_descs\09\09\09\09"
module asm "\09.long\09__crc_tso_count_descs\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tso_count_descs:\09\09\09\09\09"
module asm "\09.asciz \09\22tso_count_descs\22\09\09\09\09\09"
module asm "__kstrtabns_tso_count_descs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+tso_build_hdr\22, \22a\22\09"
module asm "\09.weak\09__crc_tso_build_hdr\09\09\09\09"
module asm "\09.long\09__crc_tso_build_hdr\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tso_build_hdr:\09\09\09\09\09"
module asm "\09.asciz \09\22tso_build_hdr\22\09\09\09\09\09"
module asm "__kstrtabns_tso_build_hdr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+tso_build_data\22, \22a\22\09"
module asm "\09.weak\09__crc_tso_build_data\09\09\09\09"
module asm "\09.long\09__crc_tso_build_data\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tso_build_data:\09\09\09\09\09"
module asm "\09.asciz \09\22tso_build_data\22\09\09\09\09\09"
module asm "__kstrtabns_tso_build_data:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+tso_start\22, \22a\22\09"
module asm "\09.weak\09__crc_tso_start\09\09\09\09"
module asm "\09.long\09__crc_tso_start\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tso_start:\09\09\09\09\09"
module asm "\09.asciz \09\22tso_start\22\09\09\09\09\09"
module asm "__kstrtabns_tso_start:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
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
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.tso_t = type { i32, i32, ptr, i16, i8, i8, i32 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.27 }
%union.anon.27 = type { [4 x i32] }
%struct.tcphdr = type { i16, i16, i32, i32, i16, i16, i16, i16 }
%struct.udphdr = type { i16, i16, i16, i16 }
%struct.vlan_hdr = type { i16, i16 }

@__kstrtab_tso_count_descs = external dso_local constant [0 x i8], align 1
@__kstrtabns_tso_count_descs = external dso_local constant [0 x i8], align 1
@__ksymtab_tso_count_descs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tso_count_descs to i32), ptr @__kstrtab_tso_count_descs, ptr @__kstrtabns_tso_count_descs }, section "___ksymtab+tso_count_descs", align 4
@__kstrtab_tso_build_hdr = external dso_local constant [0 x i8], align 1
@__kstrtabns_tso_build_hdr = external dso_local constant [0 x i8], align 1
@__ksymtab_tso_build_hdr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tso_build_hdr to i32), ptr @__kstrtab_tso_build_hdr, ptr @__kstrtabns_tso_build_hdr }, section "___ksymtab+tso_build_hdr", align 4
@__kstrtab_tso_build_data = external dso_local constant [0 x i8], align 1
@__kstrtabns_tso_build_data = external dso_local constant [0 x i8], align 1
@__ksymtab_tso_build_data = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tso_build_data to i32), ptr @__kstrtab_tso_build_data, ptr @__kstrtabns_tso_build_data }, section "___ksymtab+tso_build_data", align 4
@__kstrtab_tso_start = external dso_local constant [0 x i8], align 1
@__kstrtabns_tso_start = external dso_local constant [0 x i8], align 1
@__ksymtab_tso_start = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tso_start to i32), ptr @__kstrtab_tso_start, ptr @__kstrtabns_tso_start }, section "___ksymtab+tso_start", align 4
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/if_vlan.h\00", [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.1 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@___asan_gen_ = private constant [18 x i8] c"../net/core/tso.c\00", align 1
@___asan_gen_.2 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.3 = private unnamed_addr constant [27 x i8] c"../include/linux/if_vlan.h\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3, i32 598, i32 8 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @__ksymtab_tso_build_data, ptr @__ksymtab_tso_build_hdr, ptr @__ksymtab_tso_count_descs, ptr @__ksymtab_tso_start, ptr @.str], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @tso_count_descs(ptr nocapture noundef readonly %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %0 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %end.i, align 4
  %gso_segs = getelementptr inbounds %struct.skb_shared_info, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %gso_segs to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %gso_segs, align 2
  %conv = zext i16 %3 to i32
  %mul = shl nuw nsw i32 %conv, 1
  %nr_frags = getelementptr inbounds %struct.skb_shared_info, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %nr_frags to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %nr_frags, align 2
  %conv2 = zext i8 %5 to i32
  %add = add nuw nsw i32 %mul, %conv2
  ret i32 %add
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @tso_build_hdr(ptr nocapture noundef readonly %skb, ptr nocapture noundef %hdr, ptr nocapture noundef %tso, i32 noundef %size, i1 noundef zeroext %is_last) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %0 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head.i.i, align 8
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %2 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i = zext i16 %3 to i32
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %conv.i.i
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %4 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %5 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %tlen = getelementptr inbounds %struct.tso_t, ptr %tso, i32 0, i32 4
  %6 = ptrtoint ptr %tlen to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %tlen, align 2
  %conv = zext i8 %7 to i32
  %add = add i32 %sub.ptr.sub.i, %conv
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %8 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i54 = zext i16 %9 to i32
  %add.ptr.i.i55 = getelementptr i8, ptr %1, i32 %conv.i.i54
  %sub.ptr.lhs.cast.i57 = ptrtoint ptr %add.ptr.i.i55 to i32
  %sub.ptr.sub.i59 = sub i32 %sub.ptr.lhs.cast.i57, %sub.ptr.rhs.cast.i
  %10 = call ptr @memcpy(ptr %hdr, ptr %5, i32 %add)
  %ipv6 = getelementptr inbounds %struct.tso_t, ptr %tso, i32 0, i32 5
  %11 = ptrtoint ptr %ipv6 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %ipv6, align 1, !range !19
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not = icmp eq i8 %12, 0
  %add.ptr = getelementptr i8, ptr %hdr, i32 %sub.ptr.sub.i59
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %ip_id = getelementptr inbounds %struct.tso_t, ptr %tso, i32 0, i32 3
  %13 = ptrtoint ptr %ip_id to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %ip_id, align 4
  %id = getelementptr inbounds %struct.iphdr, ptr %add.ptr, i32 0, i32 3
  %15 = ptrtoint ptr %id to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %id, align 4
  %add2 = add i32 %add, %size
  %sub = sub i32 %add2, %sub.ptr.sub.i59
  %conv3 = trunc i32 %sub to i16
  %tot_len = getelementptr inbounds %struct.iphdr, ptr %add.ptr, i32 0, i32 2
  %16 = ptrtoint ptr %tot_len to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv3, ptr %tot_len, align 2
  %17 = load i16, ptr %ip_id, align 4
  %inc = add i16 %17, 1
  store i16 %inc, ptr %ip_id, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %tlen to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %tlen, align 2
  %conv8 = zext i8 %19 to i32
  %add9 = add i32 %conv8, %size
  %conv10 = trunc i32 %add9 to i16
  %payload_len = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr, i32 0, i32 2
  %20 = ptrtoint ptr %payload_len to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %conv10, ptr %payload_len, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %21 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %head.i.i, align 8
  %23 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i62 = zext i16 %24 to i32
  %add.ptr.i.i63 = getelementptr i8, ptr %22, i32 %conv.i.i62
  %25 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i65 = ptrtoint ptr %add.ptr.i.i63 to i32
  %sub.ptr.rhs.cast.i66 = ptrtoint ptr %26 to i32
  %sub.ptr.sub.i67 = sub i32 %sub.ptr.lhs.cast.i65, %sub.ptr.rhs.cast.i66
  %add.ptr12 = getelementptr i8, ptr %hdr, i32 %sub.ptr.sub.i67
  %27 = ptrtoint ptr %tlen to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %tlen, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %28)
  %cmp.not = icmp eq i8 %28, 8
  br i1 %cmp.not, label %if.else26, label %if.then16

if.then16:                                        ; preds = %if.end
  %tcp_seq = getelementptr inbounds %struct.tso_t, ptr %tso, i32 0, i32 6
  %29 = ptrtoint ptr %tcp_seq to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %tcp_seq, align 4
  %seq = getelementptr inbounds %struct.tcphdr, ptr %add.ptr12, i32 0, i32 2
  %31 = ptrtoint ptr %seq to i32
  call void @__asan_storeN_noabort(i32 %31, i32 4)
  store i32 %30, ptr %seq, align 1
  br i1 %is_last, label %if.then16.if.end29_crit_edge, label %if.then18

if.then16.if.end29_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29

if.then18:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #7
  %psh = getelementptr inbounds %struct.tcphdr, ptr %add.ptr12, i32 0, i32 4
  %32 = ptrtoint ptr %psh to i32
  call void @__asan_load2_noabort(i32 %32)
  %bf.load = load i16, ptr %psh, align 4
  %bf.clear23 = and i16 %bf.load, -14
  store i16 %bf.clear23, ptr %psh, align 4
  br label %if.end29

if.else26:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %33 = trunc i32 %size to i16
  %conv28 = add i16 %33, 8
  %len = getelementptr inbounds %struct.udphdr, ptr %add.ptr12, i32 0, i32 2
  %34 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %conv28, ptr %len, align 2
  br label %if.end29

if.end29:                                         ; preds = %if.else26, %if.then18, %if.then16.if.end29_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tso_build_data(ptr nocapture noundef readonly %skb, ptr nocapture noundef %tso, i32 noundef %size) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tcp_seq = getelementptr inbounds %struct.tso_t, ptr %tso, i32 0, i32 6
  %0 = ptrtoint ptr %tcp_seq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tcp_seq, align 4
  %add = add i32 %1, %size
  store i32 %add, ptr %tcp_seq, align 4
  %size1 = getelementptr inbounds %struct.tso_t, ptr %tso, i32 0, i32 1
  %2 = ptrtoint ptr %size1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size1, align 4
  %sub = sub i32 %3, %size
  store i32 %sub, ptr %size1, align 4
  %data = getelementptr inbounds %struct.tso_t, ptr %tso, i32 0, i32 2
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 %size
  store ptr %add.ptr, ptr %data, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %size)
  %cmp = icmp eq i32 %3, %size
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %6 = ptrtoint ptr %tso to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tso, align 4
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %8 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %end.i, align 4
  %nr_frags = getelementptr inbounds %struct.skb_shared_info, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %nr_frags to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %nr_frags, align 2
  %conv = zext i8 %11 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %conv)
  %cmp3 = icmp slt i32 %7, %conv
  br i1 %cmp3, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx = getelementptr %struct.skb_shared_info, ptr %9, i32 0, i32 12, i32 %7
  %bv_len.i = getelementptr %struct.skb_shared_info, ptr %9, i32 0, i32 12, i32 %7, i32 1
  %12 = ptrtoint ptr %bv_len.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bv_len.i, align 4
  %14 = ptrtoint ptr %size1 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %size1, align 4
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx, align 4
  %call1.i = tail call ptr @page_address(ptr noundef %16) #5
  %bv_offset.i.i = getelementptr %struct.skb_shared_info, ptr %9, i32 0, i32 12, i32 %7, i32 2
  %17 = ptrtoint ptr %bv_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %bv_offset.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %call1.i, i32 %18
  %19 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %add.ptr.i, ptr %data, align 4
  %20 = ptrtoint ptr %tso to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tso, align 4
  %inc = add i32 %21, 1
  store i32 %inc, ptr %tso, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tso_start(ptr noundef %skb, ptr nocapture noundef %tso) #3 align 64 {
entry:
  %vhdr.i.i = alloca %struct.vlan_hdr, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %0 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %end.i.i, align 4
  %gso_type.i = getelementptr inbounds %struct.skb_shared_info, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %gso_type.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %gso_type.i, align 8
  %and.i = and i32 %3, 17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %4 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %head.i.i.i, align 8
  %transport_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %6 = ptrtoint ptr %transport_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %transport_header.i.i.i, align 2
  %conv.i.i.i = zext i16 %7 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %5, i32 %conv.i.i.i
  %doff.i.i = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i.i, i32 0, i32 4
  %8 = ptrtoint ptr %doff.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %bf.load.i.i = load i16, ptr %doff.i.i, align 4
  %9 = lshr i16 %bf.load.i.i, 10
  %10 = and i16 %9, 60
  %mul.i.i = zext i16 %10 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %mul.i.i, %cond.true ], [ 8, %entry.cond.end_crit_edge ]
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %11 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %head.i.i, align 8
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %13 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i = zext i16 %14 to i32
  %add.ptr.i.i = getelementptr i8, ptr %12, i32 %conv.i.i
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %15 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %16 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %add = add i32 %sub.ptr.sub.i, %cond
  %conv = trunc i32 %cond to i8
  %tlen3 = getelementptr inbounds %struct.tso_t, ptr %tso, i32 0, i32 4
  %17 = ptrtoint ptr %tlen3 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv, ptr %tlen3, align 2
  %18 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %19 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i59 = zext i16 %20 to i32
  %add.ptr.i.i60 = getelementptr i8, ptr %18, i32 %conv.i.i59
  %id = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i60, i32 0, i32 3
  %21 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %id, align 4
  %ip_id = getelementptr inbounds %struct.tso_t, ptr %tso, i32 0, i32 3
  %23 = ptrtoint ptr %ip_id to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %ip_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %cond)
  %cmp.not = icmp eq i32 %cond, 8
  br i1 %cmp.not, label %cond.end.cond.end9_crit_edge, label %cond.true6

cond.end.cond.end9_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end9

cond.true6:                                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %head.i.i, align 8
  %26 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i63 = zext i16 %27 to i32
  %add.ptr.i.i64 = getelementptr i8, ptr %25, i32 %conv.i.i63
  %seq = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i64, i32 0, i32 2
  %28 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %seq, align 4
  br label %cond.end9

cond.end9:                                        ; preds = %cond.true6, %cond.end.cond.end9_crit_edge
  %cond10 = phi i32 [ %29, %cond.true6 ], [ 0, %cond.end.cond.end9_crit_edge ]
  %tcp_seq = getelementptr inbounds %struct.tso_t, ptr %tso, i32 0, i32 6
  %30 = ptrtoint ptr %tcp_seq to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %cond10, ptr %tcp_seq, align 4
  %31 = ptrtoint ptr %tso to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %tso, align 4
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %32 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %protocol.i, align 8
  %mac_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 8
  %34 = ptrtoint ptr %mac_len.i.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %mac_len.i.i, align 4
  %conv.i.i65 = zext i16 %35 to i32
  %36 = zext i16 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values)
  switch i16 %33, label %cond.end9.vlan_get_protocol.exit_crit_edge [
    i16 -30552, label %cond.end9.if.then.i.i_crit_edge
    i16 -32512, label %cond.end9.if.then.i.i_crit_edge68
  ]

cond.end9.if.then.i.i_crit_edge68:                ; preds = %cond.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i.i

cond.end9.if.then.i.i_crit_edge:                  ; preds = %cond.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i.i

cond.end9.vlan_get_protocol.exit_crit_edge:       ; preds = %cond.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %vlan_get_protocol.exit

if.then.i.i:                                      ; preds = %cond.end9.if.then.i.i_crit_edge, %cond.end9.if.then.i.i_crit_edge68
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %35)
  %tobool.not.i.i = icmp eq i16 %35, 0
  br i1 %tobool.not.i.i, label %if.then.i.i.if.end26.i.i_crit_edge, label %if.then1.i.i

if.then.i.i.if.end26.i.i_crit_edge:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end26.i.i

if.then1.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %35)
  %cmp.i.i = icmp ult i16 %35, 4
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end25.i.i, !prof !20

do.end.i.i:                                       ; preds = %if.then1.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 598, i32 noundef 9, ptr noundef null) #5
  br label %vlan_get_protocol.exit

if.end25.i.i:                                     ; preds = %if.then1.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %sub.i.i = add nsw i32 %conv.i.i65, -4
  br label %if.end26.i.i

if.end26.i.i:                                     ; preds = %if.end25.i.i, %if.then.i.i.if.end26.i.i_crit_edge
  %vlan_depth.0.i.i = phi i32 [ %sub.i.i, %if.end25.i.i ], [ 14, %if.then.i.i.if.end26.i.i_crit_edge ]
  %37 = getelementptr inbounds %struct.vlan_hdr, ptr %vhdr.i.i, i32 0, i32 1
  %len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %data_len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %tobool2.not.i.i.i.i = icmp eq ptr %skb, null
  br label %do.body27.i.i

do.body27.i.i:                                    ; preds = %do.body27.backedge.i.i, %if.end26.i.i
  %vlan_depth.1.i.i = phi i32 [ %vlan_depth.0.i.i, %if.end26.i.i ], [ %add.i.i, %do.body27.backedge.i.i ]
  %parse_depth.0.i.i = phi i32 [ 8, %if.end26.i.i ], [ %dec.i.i, %do.body27.backedge.i.i ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vhdr.i.i) #5
  %38 = ptrtoint ptr %vhdr.i.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 -1, ptr %vhdr.i.i, align 2, !annotation !21
  %39 = ptrtoint ptr %37 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 -1, ptr %37, align 2, !annotation !21
  %40 = ptrtoint ptr %len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %len.i.i.i.i, align 4
  %42 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %data_len.i.i.i.i, align 8
  %44 = add i32 %vlan_depth.1.i.i, %43
  %sub.i1.i.i.i = sub i32 %41, %44
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.i1.i.i.i)
  %cmp.i.i.i.i = icmp sgt i32 %sub.i1.i.i.i, 3
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %if.end.i.i.i.i, !prof !22

if.then.i.i.i.i:                                  ; preds = %do.body27.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %45 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %data.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %46, i32 %vlan_depth.1.i.i
  br label %skb_header_pointer.exit.i.i

if.end.i.i.i.i:                                   ; preds = %do.body27.i.i
  br i1 %tobool2.not.i.i.i.i, label %if.end.i.i.i.i.cleanup.thread.i.i_crit_edge, label %lor.lhs.false.i.i.i.i

if.end.i.i.i.i.cleanup.thread.i.i_crit_edge:      ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.thread.i.i

lor.lhs.false.i.i.i.i:                            ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %vlan_depth.1.i.i, ptr noundef nonnull %vhdr.i.i, i32 noundef 4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %cmp3.i.i.i.i = icmp slt i32 %call.i.i.i.i, 0
  %spec.select.i.i.i.i = select i1 %cmp3.i.i.i.i, ptr null, ptr %vhdr.i.i, !prof !20
  br label %skb_header_pointer.exit.i.i

skb_header_pointer.exit.i.i:                      ; preds = %lor.lhs.false.i.i.i.i, %if.then.i.i.i.i
  %retval.0.i.i.i.i = phi ptr [ %add.ptr.i.i.i.i, %if.then.i.i.i.i ], [ %spec.select.i.i.i.i, %lor.lhs.false.i.i.i.i ]
  %tobool29.not.i.i = icmp eq ptr %retval.0.i.i.i.i, null
  %dec.i.i = add nsw i32 %parse_depth.0.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i)
  %tobool30.not.i.i = icmp eq i32 %dec.i.i, 0
  %47 = select i1 %tobool29.not.i.i, i1 true, i1 %tobool30.not.i.i, !prof !20
  br i1 %47, label %skb_header_pointer.exit.i.i.cleanup.thread.i.i_crit_edge, label %do.cond42.i.i, !prof !20

skb_header_pointer.exit.i.i.cleanup.thread.i.i_crit_edge: ; preds = %skb_header_pointer.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.thread.i.i

cleanup.thread.i.i:                               ; preds = %skb_header_pointer.exit.i.i.cleanup.thread.i.i_crit_edge, %if.end.i.i.i.i.cleanup.thread.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vhdr.i.i) #5
  br label %vlan_get_protocol.exit

do.cond42.i.i:                                    ; preds = %skb_header_pointer.exit.i.i
  %h_vlan_encapsulated_proto.i.i = getelementptr inbounds %struct.vlan_hdr, ptr %retval.0.i.i.i.i, i32 0, i32 1
  %48 = ptrtoint ptr %h_vlan_encapsulated_proto.i.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %h_vlan_encapsulated_proto.i.i, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vhdr.i.i) #5
  %50 = zext i16 %49 to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values.1)
  switch i16 %49, label %do.cond42.i.i.vlan_get_protocol.exit_crit_edge [
    i16 -30552, label %do.cond42.i.i.do.body27.backedge.i.i_crit_edge
    i16 -32512, label %do.cond42.i.i.do.body27.backedge.i.i_crit_edge69
  ]

do.cond42.i.i.do.body27.backedge.i.i_crit_edge69: ; preds = %do.cond42.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body27.backedge.i.i

do.cond42.i.i.do.body27.backedge.i.i_crit_edge:   ; preds = %do.cond42.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body27.backedge.i.i

do.cond42.i.i.vlan_get_protocol.exit_crit_edge:   ; preds = %do.cond42.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vlan_get_protocol.exit

do.body27.backedge.i.i:                           ; preds = %do.cond42.i.i.do.body27.backedge.i.i_crit_edge, %do.cond42.i.i.do.body27.backedge.i.i_crit_edge69
  %add.i.i = add nsw i32 %vlan_depth.1.i.i, 4
  br label %do.body27.i.i

vlan_get_protocol.exit:                           ; preds = %do.cond42.i.i.vlan_get_protocol.exit_crit_edge, %cleanup.thread.i.i, %do.end.i.i, %cond.end9.vlan_get_protocol.exit_crit_edge
  %retval.2.i.i = phi i16 [ 0, %do.end.i.i ], [ %33, %cond.end9.vlan_get_protocol.exit_crit_edge ], [ 0, %cleanup.thread.i.i ], [ %49, %do.cond42.i.i.vlan_get_protocol.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 -31011, i16 %retval.2.i.i)
  %cmp13 = icmp eq i16 %retval.2.i.i, -31011
  %ipv6 = getelementptr inbounds %struct.tso_t, ptr %tso, i32 0, i32 5
  %frombool = zext i1 %cmp13 to i8
  %51 = ptrtoint ptr %ipv6 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %frombool, ptr %ipv6, align 1
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %52 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %len.i, align 4
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %54 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %data_len.i, align 8
  %sub.i = sub i32 %53, %55
  %sub = sub i32 %sub.i, %add
  %size = getelementptr inbounds %struct.tso_t, ptr %tso, i32 0, i32 1
  %56 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %sub, ptr %size, align 4
  %57 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %data.i, align 4
  %add.ptr = getelementptr i8, ptr %58, i32 %add
  %data16 = getelementptr inbounds %struct.tso_t, ptr %tso, i32 0, i32 2
  %59 = ptrtoint ptr %data16 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %add.ptr, ptr %data16, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %add)
  %cmp18 = icmp eq i32 %sub.i, %add
  br i1 %cmp18, label %land.lhs.true, label %vlan_get_protocol.exit.if.end_crit_edge

vlan_get_protocol.exit.if.end_crit_edge:          ; preds = %vlan_get_protocol.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %vlan_get_protocol.exit
  %60 = ptrtoint ptr %tso to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %tso, align 4
  %62 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %end.i.i, align 4
  %nr_frags = getelementptr inbounds %struct.skb_shared_info, ptr %63, i32 0, i32 2
  %64 = ptrtoint ptr %nr_frags to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %nr_frags, align 2
  %conv22 = zext i8 %65 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %61, i32 %conv22)
  %cmp23 = icmp slt i32 %61, %conv22
  br i1 %cmp23, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx = getelementptr %struct.skb_shared_info, ptr %63, i32 0, i32 12, i32 %61
  %bv_len.i = getelementptr %struct.skb_shared_info, ptr %63, i32 0, i32 12, i32 %61, i32 1
  %66 = ptrtoint ptr %bv_len.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %bv_len.i, align 4
  %68 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %size, align 4
  %69 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %arrayidx, align 4
  %call1.i = call ptr @page_address(ptr noundef %70) #5
  %bv_offset.i.i = getelementptr %struct.skb_shared_info, ptr %63, i32 0, i32 12, i32 %61, i32 2
  %71 = ptrtoint ptr %bv_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %bv_offset.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %call1.i, i32 %72
  %73 = ptrtoint ptr %data16 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %add.ptr.i, ptr %data16, align 4
  %74 = ptrtoint ptr %tso to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %tso, align 4
  %inc = add i32 %75, 1
  store i32 %inc, ptr %tso, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %vlan_get_protocol.exit.if.end_crit_edge
  ret i32 %add
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !{ptr @__ksymtab_tso_count_descs, !1, !"__ksymtab_tso_count_descs", i1 false, i1 false}
!1 = !{!"../net/core/tso.c", i32 14, i32 1}
!2 = !{ptr @__ksymtab_tso_build_hdr, !3, !"__ksymtab_tso_build_hdr", i1 false, i1 false}
!3 = !{!"../net/core/tso.c", i32 52, i32 1}
!4 = !{ptr @__ksymtab_tso_build_data, !5, !"__ksymtab_tso_build_data", i1 false, i1 false}
!5 = !{!"../net/core/tso.c", i32 70, i32 1}
!6 = !{ptr @__ksymtab_tso_start, !7, !"__ksymtab_tso_start", i1 false, i1 false}
!7 = !{!"../net/core/tso.c", i32 97, i32 1}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../include/linux/if_vlan.h", i32 598, i32 8}
!10 = !{i32 1, !"wchar_size", i32 2}
!11 = !{i32 1, !"min_enum_size", i32 4}
!12 = !{i32 8, !"branch-target-enforcement", i32 0}
!13 = !{i32 8, !"sign-return-address", i32 0}
!14 = !{i32 8, !"sign-return-address-all", i32 0}
!15 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!19 = !{i8 0, i8 2}
!20 = !{!"branch_weights", i32 1, i32 2000}
!21 = !{!"auto-init"}
!22 = !{!"branch_weights", i32 2000, i32 1}
