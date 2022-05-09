; ModuleID = '/llk/IR_all_yes/net/bridge/netfilter/ebt_ip6.c_pt.bc'
source_filename = "../net/bridge/netfilter/ebt_ip6.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xt_match = type { %struct.list_head, [29 x i8], i8, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.26 }
%union.anon.26 = type { [4 x i32] }
%union.pkthdr = type { %struct.anon.149 }
%struct.anon.149 = type { i16, i16 }
%struct.xt_action_param = type { %union.anon.141, %union.anon.142, ptr, i32, i16, i8 }
%union.anon.141 = type { ptr }
%union.anon.142 = type { ptr }
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
%struct.ebt_ip6_info = type { %struct.in6_addr, %struct.in6_addr, %struct.in6_addr, %struct.in6_addr, i8, i8, i8, i8, %union.anon.147, %union.anon.148 }
%union.anon.147 = type { [2 x i16] }
%union.anon.148 = type { [2 x i16] }
%struct.anon.150 = type { i8, i8 }
%struct.xt_mtchk_param = type { ptr, ptr, ptr, ptr, ptr, i32, i8, i8 }
%struct.ebt_entry = type { i32, i32, i16, [16 x i8], [16 x i8], [16 x i8], [16 x i8], [6 x i8], [6 x i8], [6 x i8], [6 x i8], i32, i32, i32, [0 x i8] }

@ebt_ip6_mt_reg = internal global %struct.xt_match { %struct.list_head zeroinitializer, [29 x i8] c"ip6\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, ptr @ebt_ip6_mt, ptr @ebt_ip6_mt_check, ptr null, ptr null, ptr null, i32 76, i32 0, i32 0, i16 0, i16 7 }, section ".data..read_mostly", align 4
@__initcall__kmod_ebt_ip6__498_160_ebt_ip6_init6 = internal global ptr @ebt_ip6_init, section ".initcall6.init", align 4
@__exitcall_ebt_ip6_fini = internal global ptr @ebt_ip6_fini, section ".exitcall.exit", align 4
@__UNIQUE_ID_description499 = internal constant [57 x i8] c"ebt_ip6.description=Ebtables: IPv6 protocol packet match\00", section ".modinfo", align 1
@__UNIQUE_ID_author500 = internal constant [57 x i8] c"ebt_ip6.author=Kuo-Lang Tseng <kuo-lang.tseng@intel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file501 = internal constant [42 x i8] c"ebt_ip6.file=net/bridge/netfilter/ebt_ip6\00", section ".modinfo", align 1
@__UNIQUE_ID_license502 = internal constant [20 x i8] c"ebt_ip6.license=GPL\00", section ".modinfo", align 1
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 8, i64 6, i64 17, i64 33, i64 132, i64 136]
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author500, ptr @__UNIQUE_ID_description499, ptr @__UNIQUE_ID_file501, ptr @__UNIQUE_ID_license502, ptr @__exitcall_ebt_ip6_fini, ptr @__initcall__kmod_ebt_ip6__498_160_ebt_ip6_init6, ptr @ebt_ip6_fini], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ebt_ip6_fini() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @xt_unregister_match(ptr noundef nonnull @ebt_ip6_mt_reg) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xt_unregister_match(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ebt_ip6_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @xt_register_match(ptr noundef nonnull @ebt_ip6_mt_reg) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @ebt_ip6_mt(ptr noundef %skb, ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  %_ip6h = alloca %struct.ipv6hdr, align 4
  %_pkthdr = alloca %union.pkthdr, align 2
  %nexthdr = alloca i8, align 1
  %frag_off = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %_ip6h) #5
  %3 = call ptr @memset(ptr %_ip6h, i32 255, i32 40)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_pkthdr) #5
  %4 = ptrtoint ptr %_pkthdr to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %_pkthdr, align 2, !annotation !22
  %5 = getelementptr inbounds %struct.anon.149, ptr %_pkthdr, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 -1, ptr %5, align 2, !annotation !22
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %7 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %9 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %data_len.i.i, align 8
  %sub.i4.i = sub i32 %8, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %sub.i4.i)
  %cmp.not.i.i = icmp slt i32 %sub.i4.i, 40
  br i1 %cmp.not.i.i, label %if.end.i.i, label %skb_header_pointer.exit, !prof !23

if.end.i.i:                                       ; preds = %entry
  %tobool2.not.i.i = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i, label %if.end.i.i.cleanup202_crit_edge, label %lor.lhs.false.i.i

if.end.i.i.cleanup202_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup202

lor.lhs.false.i.i:                                ; preds = %if.end.i.i
  %call.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef 0, ptr noundef nonnull %_ip6h, i32 noundef 40) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp3.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp3.i.i, label %lor.lhs.false.i.i.cleanup202_crit_edge, label %lor.lhs.false.i.i.if.end_crit_edge

lor.lhs.false.i.i.if.end_crit_edge:               ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

lor.lhs.false.i.i.cleanup202_crit_edge:           ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup202

skb_header_pointer.exit:                          ; preds = %entry
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %11 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data.i, align 4
  %cmp = icmp eq ptr %12, null
  br i1 %cmp, label %skb_header_pointer.exit.cleanup202_crit_edge, label %skb_header_pointer.exit.if.end_crit_edge

skb_header_pointer.exit.if.end_crit_edge:         ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

skb_header_pointer.exit.cleanup202_crit_edge:     ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup202

if.end:                                           ; preds = %skb_header_pointer.exit.if.end_crit_edge, %lor.lhs.false.i.i.if.end_crit_edge
  %retval.0.i.i302 = phi ptr [ %12, %skb_header_pointer.exit.if.end_crit_edge ], [ %_ip6h, %lor.lhs.false.i.i.if.end_crit_edge ]
  %bitmask = getelementptr inbounds %struct.ebt_ip6_info, ptr %2, i32 0, i32 6
  %13 = ptrtoint ptr %bitmask to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %bitmask, align 2
  %15 = and i8 %14, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not = icmp eq i8 %15, 0
  br i1 %tobool.not, label %if.end.if.end12_crit_edge, label %land.lhs.true

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

land.lhs.true:                                    ; preds = %if.end
  %tclass = getelementptr inbounds %struct.ebt_ip6_info, ptr %2, i32 0, i32 4
  %16 = ptrtoint ptr %tclass to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %tclass, align 4
  %18 = ptrtoint ptr %retval.0.i.i302 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %retval.0.i.i302, align 2
  %20 = lshr i16 %19, 4
  %conv1.i = trunc i16 %20 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %17, i8 %conv1.i)
  %cmp4 = icmp eq i8 %17, %conv1.i
  %invflags = getelementptr inbounds %struct.ebt_ip6_info, ptr %2, i32 0, i32 7
  %21 = ptrtoint ptr %invflags to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %invflags, align 1
  %23 = and i8 %22, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %24 = icmp ne i8 %23, 0
  %tobool10.not = xor i1 %cmp4, %24
  br i1 %tobool10.not, label %land.lhs.true.if.end12_crit_edge, label %land.lhs.true.cleanup202_crit_edge

land.lhs.true.cleanup202_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup202

land.lhs.true.if.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

if.end12:                                         ; preds = %land.lhs.true.if.end12_crit_edge, %if.end.if.end12_crit_edge
  %25 = and i8 %14, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool16.not = icmp eq i8 %25, 0
  br i1 %tobool16.not, label %if.end12.lor.lhs.false_crit_edge, label %land.lhs.true17

if.end12.lor.lhs.false_crit_edge:                 ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false

land.lhs.true17:                                  ; preds = %if.end12
  %saddr = getelementptr inbounds %struct.ipv6hdr, ptr %retval.0.i.i302, i32 0, i32 5
  %smsk = getelementptr inbounds %struct.ebt_ip6_info, ptr %2, i32 0, i32 2
  %26 = ptrtoint ptr %saddr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %saddr, align 4
  %28 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %2, align 4
  %xor.i = xor i32 %29, %27
  %30 = ptrtoint ptr %smsk to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %smsk, align 4
  %and.i = and i32 %xor.i, %31
  %arrayidx6.i = getelementptr %struct.ipv6hdr, ptr %retval.0.i.i302, i32 0, i32 5, i32 0, i32 0, i32 1
  %32 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx6.i, align 4
  %arrayidx8.i = getelementptr [4 x i32], ptr %2, i32 0, i32 1
  %34 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx8.i, align 4
  %xor9.i = xor i32 %35, %33
  %arrayidx11.i = getelementptr %struct.ebt_ip6_info, ptr %2, i32 0, i32 2, i32 0, i32 0, i32 1
  %36 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx11.i, align 4
  %and12.i = and i32 %xor9.i, %37
  %or.i = or i32 %and12.i, %and.i
  %arrayidx14.i = getelementptr %struct.ipv6hdr, ptr %retval.0.i.i302, i32 0, i32 5, i32 0, i32 0, i32 2
  %38 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx14.i, align 4
  %arrayidx16.i = getelementptr [4 x i32], ptr %2, i32 0, i32 2
  %40 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx16.i, align 4
  %xor17.i = xor i32 %41, %39
  %arrayidx19.i = getelementptr %struct.ebt_ip6_info, ptr %2, i32 0, i32 2, i32 0, i32 0, i32 2
  %42 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx19.i, align 4
  %and20.i = and i32 %xor17.i, %43
  %or21.i = or i32 %or.i, %and20.i
  %arrayidx23.i = getelementptr %struct.ipv6hdr, ptr %retval.0.i.i302, i32 0, i32 5, i32 0, i32 0, i32 3
  %44 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx23.i, align 4
  %arrayidx25.i = getelementptr [4 x i32], ptr %2, i32 0, i32 3
  %46 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx25.i, align 4
  %xor26.i = xor i32 %47, %45
  %arrayidx28.i = getelementptr %struct.ebt_ip6_info, ptr %2, i32 0, i32 2, i32 0, i32 0, i32 3
  %48 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx28.i, align 4
  %and29.i = and i32 %xor26.i, %49
  %or30.i = or i32 %or21.i, %and29.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or30.i)
  %tobool.i = icmp ne i32 %or30.i, 0
  %invflags21 = getelementptr inbounds %struct.ebt_ip6_info, ptr %2, i32 0, i32 7
  %50 = ptrtoint ptr %invflags21 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %invflags21, align 1
  %52 = and i8 %51, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %53 = icmp eq i8 %52, 0
  %tobool30.not = xor i1 %53, %tobool.i
  br i1 %tobool30.not, label %land.lhs.true17.lor.lhs.false_crit_edge, label %land.lhs.true17.cleanup202_crit_edge

land.lhs.true17.cleanup202_crit_edge:             ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup202

land.lhs.true17.lor.lhs.false_crit_edge:          ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true17.lor.lhs.false_crit_edge, %if.end12.lor.lhs.false_crit_edge
  %54 = and i8 %14, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool34.not = icmp eq i8 %54, 0
  br i1 %tobool34.not, label %lor.lhs.false.if.end50_crit_edge, label %land.lhs.true35

lor.lhs.false.if.end50_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end50

land.lhs.true35:                                  ; preds = %lor.lhs.false
  %daddr = getelementptr inbounds %struct.ipv6hdr, ptr %retval.0.i.i302, i32 0, i32 6
  %dmsk = getelementptr inbounds %struct.ebt_ip6_info, ptr %2, i32 0, i32 3
  %daddr36 = getelementptr inbounds %struct.ebt_ip6_info, ptr %2, i32 0, i32 1
  %55 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %daddr, align 4
  %57 = ptrtoint ptr %daddr36 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %daddr36, align 4
  %xor.i260 = xor i32 %58, %56
  %59 = ptrtoint ptr %dmsk to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %dmsk, align 4
  %and.i261 = and i32 %xor.i260, %60
  %arrayidx6.i262 = getelementptr %struct.ipv6hdr, ptr %retval.0.i.i302, i32 0, i32 6, i32 0, i32 0, i32 1
  %61 = ptrtoint ptr %arrayidx6.i262 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx6.i262, align 4
  %arrayidx8.i263 = getelementptr %struct.ebt_ip6_info, ptr %2, i32 0, i32 1, i32 0, i32 0, i32 1
  %63 = ptrtoint ptr %arrayidx8.i263 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx8.i263, align 4
  %xor9.i264 = xor i32 %64, %62
  %arrayidx11.i265 = getelementptr %struct.ebt_ip6_info, ptr %2, i32 0, i32 3, i32 0, i32 0, i32 1
  %65 = ptrtoint ptr %arrayidx11.i265 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx11.i265, align 4
  %and12.i266 = and i32 %xor9.i264, %66
  %or.i267 = or i32 %and12.i266, %and.i261
  %arrayidx14.i268 = getelementptr %struct.ipv6hdr, ptr %retval.0.i.i302, i32 0, i32 6, i32 0, i32 0, i32 2
  %67 = ptrtoint ptr %arrayidx14.i268 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx14.i268, align 4
  %arrayidx16.i269 = getelementptr %struct.ebt_ip6_info, ptr %2, i32 0, i32 1, i32 0, i32 0, i32 2
  %69 = ptrtoint ptr %arrayidx16.i269 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx16.i269, align 4
  %xor17.i270 = xor i32 %70, %68
  %arrayidx19.i271 = getelementptr %struct.ebt_ip6_info, ptr %2, i32 0, i32 3, i32 0, i32 0, i32 2
  %71 = ptrtoint ptr %arrayidx19.i271 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx19.i271, align 4
  %and20.i272 = and i32 %xor17.i270, %72
  %or21.i273 = or i32 %or.i267, %and20.i272
  %arrayidx23.i274 = getelementptr %struct.ipv6hdr, ptr %retval.0.i.i302, i32 0, i32 6, i32 0, i32 0, i32 3
  %73 = ptrtoint ptr %arrayidx23.i274 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx23.i274, align 4
  %arrayidx25.i275 = getelementptr %struct.ebt_ip6_info, ptr %2, i32 0, i32 1, i32 0, i32 0, i32 3
  %75 = ptrtoint ptr %arrayidx25.i275 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %arrayidx25.i275, align 4
  %xor26.i276 = xor i32 %76, %74
  %arrayidx28.i277 = getelementptr %struct.ebt_ip6_info, ptr %2, i32 0, i32 3, i32 0, i32 0, i32 3
  %77 = ptrtoint ptr %arrayidx28.i277 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arrayidx28.i277, align 4
  %and29.i278 = and i32 %xor26.i276, %78
  %or30.i279 = or i32 %or21.i273, %and29.i278
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or30.i279)
  %tobool.i280 = icmp ne i32 %or30.i279, 0
  %invflags39 = getelementptr inbounds %struct.ebt_ip6_info, ptr %2, i32 0, i32 7
  %79 = ptrtoint ptr %invflags39 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %invflags39, align 1
  %81 = and i8 %80, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %82 = icmp eq i8 %81, 0
  %tobool48.not = xor i1 %82, %tobool.i280
  br i1 %tobool48.not, label %land.lhs.true35.if.end50_crit_edge, label %land.lhs.true35.cleanup202_crit_edge

land.lhs.true35.cleanup202_crit_edge:             ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup202

land.lhs.true35.if.end50_crit_edge:               ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end50

if.end50:                                         ; preds = %land.lhs.true35.if.end50_crit_edge, %lor.lhs.false.if.end50_crit_edge
  %83 = and i8 %14, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %tobool54.not = icmp eq i8 %83, 0
  br i1 %tobool54.not, label %if.end50.cleanup202_crit_edge, label %if.then55

if.end50.cleanup202_crit_edge:                    ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup202

if.then55:                                        ; preds = %if.end50
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %nexthdr) #5
  %nexthdr56 = getelementptr inbounds %struct.ipv6hdr, ptr %retval.0.i.i302, i32 0, i32 3
  %84 = ptrtoint ptr %nexthdr56 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %nexthdr56, align 2
  %86 = ptrtoint ptr %nexthdr to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %85, ptr %nexthdr, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %frag_off) #5
  %87 = ptrtoint ptr %frag_off to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 -1, ptr %frag_off, align 2, !annotation !22
  %call57 = call i32 @ipv6_skip_exthdr(ptr noundef %skb, i32 noundef 40, ptr noundef nonnull %nexthdr, ptr noundef nonnull %frag_off) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call57)
  %cmp58 = icmp eq i32 %call57, -1
  br i1 %cmp58, label %if.then55.cleanup196.thread_crit_edge, label %if.end61

if.then55.cleanup196.thread_crit_edge:            ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup196.thread

if.end61:                                         ; preds = %if.then55
  %protocol = getelementptr inbounds %struct.ebt_ip6_info, ptr %2, i32 0, i32 5
  %88 = ptrtoint ptr %protocol to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %protocol, align 1
  %90 = ptrtoint ptr %nexthdr to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %nexthdr, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %89, i8 %91)
  %cmp64 = icmp eq i8 %89, %91
  %invflags66 = getelementptr inbounds %struct.ebt_ip6_info, ptr %2, i32 0, i32 7
  %92 = ptrtoint ptr %invflags66 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %invflags66, align 1
  %94 = and i8 %93, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %94)
  %95 = icmp ne i8 %94, 0
  %tobool75.not = xor i1 %cmp64, %95
  br i1 %tobool75.not, label %if.end77, label %if.end61.cleanup196.thread_crit_edge

if.end61.cleanup196.thread_crit_edge:             ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup196.thread

if.end77:                                         ; preds = %if.end61
  %96 = ptrtoint ptr %bitmask to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %bitmask, align 2
  %98 = and i8 %97, 112
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %98)
  %tobool81.not = icmp eq i8 %98, 0
  br i1 %tobool81.not, label %if.end77.cleanup196.thread_crit_edge, label %if.end83

if.end77.cleanup196.thread_crit_edge:             ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup196.thread

if.end83:                                         ; preds = %if.end77
  %99 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %len.i.i, align 4
  %101 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %data_len.i.i, align 8
  %103 = add i32 %call57, %102
  %sub.i4.i283 = sub i32 %100, %103
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.i4.i283)
  %cmp.not.i.i284 = icmp slt i32 %sub.i4.i283, 4
  br i1 %cmp.not.i.i284, label %if.end.i.i288, label %skb_header_pointer.exit294, !prof !23

if.end.i.i288:                                    ; preds = %if.end83
  %tobool2.not.i.i287 = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i287, label %if.end.i.i288.cleanup196.thread_crit_edge, label %lor.lhs.false.i.i292

if.end.i.i288.cleanup196.thread_crit_edge:        ; preds = %if.end.i.i288
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup196.thread

lor.lhs.false.i.i292:                             ; preds = %if.end.i.i288
  %call.i.i289 = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %call57, ptr noundef nonnull %_pkthdr, i32 noundef 4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i289)
  %cmp3.i.i290 = icmp slt i32 %call.i.i289, 0
  br i1 %cmp3.i.i290, label %lor.lhs.false.i.i292.cleanup196.thread_crit_edge, label %lor.lhs.false.i.i292.if.end88_crit_edge

lor.lhs.false.i.i292.if.end88_crit_edge:          ; preds = %lor.lhs.false.i.i292
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end88

lor.lhs.false.i.i292.cleanup196.thread_crit_edge: ; preds = %lor.lhs.false.i.i292
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup196.thread

skb_header_pointer.exit294:                       ; preds = %if.end83
  %data.i285 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %104 = ptrtoint ptr %data.i285 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %data.i285, align 4
  %add.ptr.i.i = getelementptr i8, ptr %105, i32 %call57
  %cmp85 = icmp eq ptr %add.ptr.i.i, null
  br i1 %cmp85, label %skb_header_pointer.exit294.cleanup196.thread_crit_edge, label %skb_header_pointer.exit294.if.end88_crit_edge

skb_header_pointer.exit294.if.end88_crit_edge:    ; preds = %skb_header_pointer.exit294
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end88

skb_header_pointer.exit294.cleanup196.thread_crit_edge: ; preds = %skb_header_pointer.exit294
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup196.thread

if.end88:                                         ; preds = %skb_header_pointer.exit294.if.end88_crit_edge, %lor.lhs.false.i.i292.if.end88_crit_edge
  %retval.0.i.i293311 = phi ptr [ %add.ptr.i.i, %skb_header_pointer.exit294.if.end88_crit_edge ], [ %_pkthdr, %lor.lhs.false.i.i292.if.end88_crit_edge ]
  %106 = ptrtoint ptr %bitmask to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %bitmask, align 2
  %108 = and i8 %107, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %108)
  %tobool92.not = icmp eq i8 %108, 0
  br i1 %tobool92.not, label %if.end88.if.end116_crit_edge, label %if.then93

if.end88.if.end116_crit_edge:                     ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end116

if.then93:                                        ; preds = %if.end88
  %dst94 = getelementptr inbounds %struct.anon.149, ptr %retval.0.i.i293311, i32 0, i32 1
  %109 = ptrtoint ptr %dst94 to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %dst94, align 2
  %111 = getelementptr inbounds %struct.ebt_ip6_info, ptr %2, i32 0, i32 9
  %112 = ptrtoint ptr %111 to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %111, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %110, i16 %113)
  %cmp97 = icmp ult i16 %110, %113
  br i1 %cmp97, label %if.then93.lor.end_crit_edge, label %lor.rhs

if.then93.lor.end_crit_edge:                      ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.end

lor.rhs:                                          ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx100 = getelementptr %struct.ebt_ip6_info, ptr %2, i32 0, i32 9, i32 0, i32 1
  %114 = ptrtoint ptr %arrayidx100 to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %arrayidx100, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %110, i16 %115)
  %cmp102 = icmp ugt i16 %110, %115
  %phi.cast256 = zext i1 %cmp102 to i32
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.then93.lor.end_crit_edge
  %116 = phi i32 [ 1, %if.then93.lor.end_crit_edge ], [ %phi.cast256, %lor.rhs ]
  %117 = ptrtoint ptr %invflags66 to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %invflags66, align 1
  %119 = lshr i8 %118, 5
  %.lobit257 = and i8 %119, 1
  %120 = zext i8 %.lobit257 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %116, i32 %120)
  %tobool113.not = icmp eq i32 %116, %120
  br i1 %tobool113.not, label %lor.end.if.end116_crit_edge, label %lor.end.cleanup196.thread_crit_edge

lor.end.cleanup196.thread_crit_edge:              ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup196.thread

lor.end.if.end116_crit_edge:                      ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end116

if.end116:                                        ; preds = %lor.end.if.end116_crit_edge, %if.end88.if.end116_crit_edge
  %121 = and i8 %107, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %121)
  %tobool120.not = icmp eq i8 %121, 0
  br i1 %tobool120.not, label %if.end116.if.end151_crit_edge, label %if.then121

if.end116.if.end151_crit_edge:                    ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end151

if.then121:                                       ; preds = %if.end116
  %122 = ptrtoint ptr %retval.0.i.i293311 to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %retval.0.i.i293311, align 2
  %124 = getelementptr inbounds %struct.ebt_ip6_info, ptr %2, i32 0, i32 8
  %125 = ptrtoint ptr %124 to i32
  call void @__asan_load2_noabort(i32 %125)
  %126 = load i16, ptr %124, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %123, i16 %126)
  %cmp126 = icmp ult i16 %123, %126
  br i1 %cmp126, label %if.then121.lor.end134_crit_edge, label %lor.rhs128

if.then121.lor.end134_crit_edge:                  ; preds = %if.then121
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.end134

lor.rhs128:                                       ; preds = %if.then121
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx130 = getelementptr %struct.ebt_ip6_info, ptr %2, i32 0, i32 8, i32 0, i32 1
  %127 = ptrtoint ptr %arrayidx130 to i32
  call void @__asan_load2_noabort(i32 %127)
  %128 = load i16, ptr %arrayidx130, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %123, i16 %128)
  %cmp132 = icmp ugt i16 %123, %128
  %phi.cast254 = zext i1 %cmp132 to i32
  br label %lor.end134

lor.end134:                                       ; preds = %lor.rhs128, %if.then121.lor.end134_crit_edge
  %129 = phi i32 [ 1, %if.then121.lor.end134_crit_edge ], [ %phi.cast254, %lor.rhs128 ]
  %130 = ptrtoint ptr %invflags66 to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %invflags66, align 1
  %132 = lshr i8 %131, 4
  %.lobit255 = and i8 %132, 1
  %133 = zext i8 %.lobit255 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %129, i32 %133)
  %tobool145.not = icmp eq i32 %129, %133
  br i1 %tobool145.not, label %lor.end134.if.end151_crit_edge, label %lor.end134.cleanup196.thread_crit_edge

lor.end134.cleanup196.thread_crit_edge:           ; preds = %lor.end134
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup196.thread

lor.end134.if.end151_crit_edge:                   ; preds = %lor.end134
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end151

if.end151:                                        ; preds = %lor.end134.if.end151_crit_edge, %if.end116.if.end151_crit_edge
  %134 = and i8 %107, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %134)
  %tobool155.not = icmp eq i8 %134, 0
  br i1 %tobool155.not, label %if.end151.cleanup196_crit_edge, label %land.lhs.true156

if.end151.cleanup196_crit_edge:                   ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup196

land.lhs.true156:                                 ; preds = %if.end151
  %135 = ptrtoint ptr %retval.0.i.i293311 to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %retval.0.i.i293311, align 2
  %137 = getelementptr inbounds %struct.ebt_ip6_info, ptr %2, i32 0, i32 8
  %138 = ptrtoint ptr %137 to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %137, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %136, i8 %139)
  %cmp160 = icmp ult i8 %136, %139
  br i1 %cmp160, label %land.lhs.true156.lor.end182_crit_edge, label %lor.lhs.false162

land.lhs.true156.lor.end182_crit_edge:            ; preds = %land.lhs.true156
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.end182

lor.lhs.false162:                                 ; preds = %land.lhs.true156
  %arrayidx165 = getelementptr [2 x i8], ptr %137, i32 0, i32 1
  %140 = ptrtoint ptr %arrayidx165 to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %arrayidx165, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %136, i8 %141)
  %cmp167 = icmp ugt i8 %136, %141
  br i1 %cmp167, label %lor.lhs.false162.lor.end182_crit_edge, label %lor.lhs.false169

lor.lhs.false162.lor.end182_crit_edge:            ; preds = %lor.lhs.false162
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.end182

lor.lhs.false169:                                 ; preds = %lor.lhs.false162
  %code = getelementptr inbounds %struct.anon.150, ptr %retval.0.i.i293311, i32 0, i32 1
  %142 = ptrtoint ptr %code to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %code, align 1
  %144 = getelementptr inbounds %struct.ebt_ip6_info, ptr %2, i32 0, i32 9
  %145 = ptrtoint ptr %144 to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %144, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %143, i8 %146)
  %cmp173 = icmp ult i8 %143, %146
  br i1 %cmp173, label %lor.lhs.false169.lor.end182_crit_edge, label %lor.rhs175

lor.lhs.false169.lor.end182_crit_edge:            ; preds = %lor.lhs.false169
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.end182

lor.rhs175:                                       ; preds = %lor.lhs.false169
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx178 = getelementptr [2 x i8], ptr %144, i32 0, i32 1
  %147 = ptrtoint ptr %arrayidx178 to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %arrayidx178, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %143, i8 %148)
  %cmp180 = icmp ugt i8 %143, %148
  %phi.cast = zext i1 %cmp180 to i32
  br label %lor.end182

lor.end182:                                       ; preds = %lor.rhs175, %lor.lhs.false169.lor.end182_crit_edge, %lor.lhs.false162.lor.end182_crit_edge, %land.lhs.true156.lor.end182_crit_edge
  %149 = phi i32 [ 1, %lor.lhs.false169.lor.end182_crit_edge ], [ 1, %lor.lhs.false162.lor.end182_crit_edge ], [ 1, %land.lhs.true156.lor.end182_crit_edge ], [ %phi.cast, %lor.rhs175 ]
  %150 = ptrtoint ptr %invflags66 to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %invflags66, align 1
  %152 = lshr i8 %151, 6
  %.lobit = and i8 %152, 1
  %153 = zext i8 %.lobit to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %149, i32 %153)
  %tobool193.not = icmp eq i32 %149, %153
  br i1 %tobool193.not, label %lor.end182.cleanup196_crit_edge, label %lor.end182.cleanup196.thread_crit_edge

lor.end182.cleanup196.thread_crit_edge:           ; preds = %lor.end182
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup196.thread

lor.end182.cleanup196_crit_edge:                  ; preds = %lor.end182
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup196

cleanup196.thread:                                ; preds = %lor.end182.cleanup196.thread_crit_edge, %lor.end134.cleanup196.thread_crit_edge, %lor.end.cleanup196.thread_crit_edge, %skb_header_pointer.exit294.cleanup196.thread_crit_edge, %lor.lhs.false.i.i292.cleanup196.thread_crit_edge, %if.end.i.i288.cleanup196.thread_crit_edge, %if.end77.cleanup196.thread_crit_edge, %if.end61.cleanup196.thread_crit_edge, %if.then55.cleanup196.thread_crit_edge
  %retval.4.ph = phi i1 [ false, %lor.end182.cleanup196.thread_crit_edge ], [ false, %skb_header_pointer.exit294.cleanup196.thread_crit_edge ], [ true, %if.end77.cleanup196.thread_crit_edge ], [ false, %if.end61.cleanup196.thread_crit_edge ], [ false, %if.then55.cleanup196.thread_crit_edge ], [ false, %lor.end.cleanup196.thread_crit_edge ], [ false, %lor.end134.cleanup196.thread_crit_edge ], [ false, %if.end.i.i288.cleanup196.thread_crit_edge ], [ false, %lor.lhs.false.i.i292.cleanup196.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %frag_off) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %nexthdr) #5
  br label %cleanup202

cleanup196:                                       ; preds = %lor.end182.cleanup196_crit_edge, %if.end151.cleanup196_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %frag_off) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %nexthdr) #5
  br label %cleanup202

cleanup202:                                       ; preds = %cleanup196, %cleanup196.thread, %if.end50.cleanup202_crit_edge, %land.lhs.true35.cleanup202_crit_edge, %land.lhs.true17.cleanup202_crit_edge, %land.lhs.true.cleanup202_crit_edge, %skb_header_pointer.exit.cleanup202_crit_edge, %lor.lhs.false.i.i.cleanup202_crit_edge, %if.end.i.i.cleanup202_crit_edge
  %retval.5 = phi i1 [ false, %skb_header_pointer.exit.cleanup202_crit_edge ], [ false, %land.lhs.true.cleanup202_crit_edge ], [ false, %land.lhs.true35.cleanup202_crit_edge ], [ false, %land.lhs.true17.cleanup202_crit_edge ], [ %retval.4.ph, %cleanup196.thread ], [ true, %cleanup196 ], [ true, %if.end50.cleanup202_crit_edge ], [ false, %if.end.i.i.cleanup202_crit_edge ], [ false, %lor.lhs.false.i.i.cleanup202_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_pkthdr) #5
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_ip6h) #5
  ret i1 %retval.5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ebt_ip6_mt_check(ptr nocapture noundef readonly %par) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %entryinfo = getelementptr inbounds %struct.xt_mtchk_param, ptr %par, i32 0, i32 2
  %0 = ptrtoint ptr %entryinfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %entryinfo, align 4
  %matchinfo = getelementptr inbounds %struct.xt_mtchk_param, ptr %par, i32 0, i32 4
  %2 = ptrtoint ptr %matchinfo to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %matchinfo, align 4
  %ethproto = getelementptr inbounds %struct.ebt_entry, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %ethproto to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %ethproto, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -31011, i16 %5)
  %cmp.not = icmp eq i16 %5, -31011
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %invflags = getelementptr inbounds %struct.ebt_entry, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %invflags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %invflags, align 4
  %and = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %bitmask = getelementptr inbounds %struct.ebt_ip6_info, ptr %3, i32 0, i32 6
  %8 = ptrtoint ptr %bitmask to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bitmask, align 2
  %conv2 = zext i8 %9 to i32
  %and3 = and i32 %conv2, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %lor.lhs.false5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false5:                                   ; preds = %if.end
  %invflags6 = getelementptr inbounds %struct.ebt_ip6_info, ptr %3, i32 0, i32 7
  %10 = ptrtoint ptr %invflags6 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %invflags6, align 1
  %conv7 = zext i8 %11 to i32
  %and8 = and i32 %conv7, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.end11, label %lor.lhs.false5.cleanup_crit_edge

lor.lhs.false5.cleanup_crit_edge:                 ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end11:                                         ; preds = %lor.lhs.false5
  %and14 = and i32 %conv2, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.end11.if.end47_crit_edge, label %if.then16

if.end11.if.end47_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end47

if.then16:                                        ; preds = %if.end11
  %and19 = and i32 %conv7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.end22, label %if.then16.cleanup_crit_edge

if.then16.cleanup_crit_edge:                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end22:                                         ; preds = %if.then16
  %protocol = getelementptr inbounds %struct.ebt_ip6_info, ptr %3, i32 0, i32 5
  %12 = ptrtoint ptr %protocol to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %protocol, align 1
  %14 = zext i8 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i8 %13, label %if.end22.cleanup_crit_edge [
    i8 6, label %if.end22.if.end47_crit_edge
    i8 17, label %if.end22.if.end47_crit_edge129
    i8 -120, label %if.end22.if.end47_crit_edge130
    i8 -124, label %if.end22.if.end47_crit_edge131
    i8 33, label %if.end22.if.end47_crit_edge132
  ]

if.end22.if.end47_crit_edge132:                   ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end47

if.end22.if.end47_crit_edge131:                   ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end47

if.end22.if.end47_crit_edge130:                   ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end47

if.end22.if.end47_crit_edge129:                   ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end47

if.end22.if.end47_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end47

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end47:                                         ; preds = %if.end22.if.end47_crit_edge, %if.end22.if.end47_crit_edge129, %if.end22.if.end47_crit_edge130, %if.end22.if.end47_crit_edge131, %if.end22.if.end47_crit_edge132, %if.end11.if.end47_crit_edge
  %15 = and i8 %9, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool51.not = icmp eq i8 %15, 0
  br i1 %tobool51.not, label %if.end47.if.end59_crit_edge, label %land.lhs.true52

if.end47.if.end59_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end59

land.lhs.true52:                                  ; preds = %if.end47
  %16 = getelementptr inbounds %struct.ebt_ip6_info, ptr %3, i32 0, i32 9
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %16, align 4
  %arrayidx54 = getelementptr %struct.ebt_ip6_info, ptr %3, i32 0, i32 9, i32 0, i32 1
  %19 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %arrayidx54, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %18, i16 %20)
  %cmp56 = icmp ugt i16 %18, %20
  br i1 %cmp56, label %land.lhs.true52.cleanup_crit_edge, label %land.lhs.true52.if.end59_crit_edge

land.lhs.true52.if.end59_crit_edge:               ; preds = %land.lhs.true52
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end59

land.lhs.true52.cleanup_crit_edge:                ; preds = %land.lhs.true52
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end59:                                         ; preds = %land.lhs.true52.if.end59_crit_edge, %if.end47.if.end59_crit_edge
  %21 = and i8 %9, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool63.not = icmp eq i8 %21, 0
  br i1 %tobool63.not, label %if.end59.if.end72_crit_edge, label %land.lhs.true64

if.end59.if.end72_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end72

land.lhs.true64:                                  ; preds = %if.end59
  %22 = getelementptr inbounds %struct.ebt_ip6_info, ptr %3, i32 0, i32 8
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %22, align 4
  %arrayidx67 = getelementptr %struct.ebt_ip6_info, ptr %3, i32 0, i32 8, i32 0, i32 1
  %25 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %arrayidx67, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %24, i16 %26)
  %cmp69 = icmp ugt i16 %24, %26
  br i1 %cmp69, label %land.lhs.true64.cleanup_crit_edge, label %land.lhs.true64.if.end72_crit_edge

land.lhs.true64.if.end72_crit_edge:               ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end72

land.lhs.true64.cleanup_crit_edge:                ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end72:                                         ; preds = %land.lhs.true64.if.end72_crit_edge, %if.end59.if.end72_crit_edge
  %27 = and i8 %9, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool76.not = icmp eq i8 %27, 0
  br i1 %tobool76.not, label %if.end72.if.end104_crit_edge, label %if.then77

if.end72.if.end104_crit_edge:                     ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end104

if.then77:                                        ; preds = %if.end72
  %28 = and i8 %11, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool81.not = icmp eq i8 %28, 0
  br i1 %tobool81.not, label %lor.lhs.false82, label %if.then77.cleanup_crit_edge

if.then77.cleanup_crit_edge:                      ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false82:                                  ; preds = %if.then77
  %protocol83 = getelementptr inbounds %struct.ebt_ip6_info, ptr %3, i32 0, i32 5
  %29 = ptrtoint ptr %protocol83 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %protocol83, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 58, i8 %30)
  %cmp85.not = icmp eq i8 %30, 58
  br i1 %cmp85.not, label %if.end88, label %lor.lhs.false82.cleanup_crit_edge

lor.lhs.false82.cleanup_crit_edge:                ; preds = %lor.lhs.false82
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end88:                                         ; preds = %lor.lhs.false82
  %31 = getelementptr inbounds %struct.ebt_ip6_info, ptr %3, i32 0, i32 8
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %31, align 4
  %arrayidx91 = getelementptr [2 x i8], ptr %31, i32 0, i32 1
  %34 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx91, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %33, i8 %35)
  %cmp93 = icmp ugt i8 %33, %35
  br i1 %cmp93, label %if.end88.cleanup_crit_edge, label %lor.lhs.false95

if.end88.cleanup_crit_edge:                       ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false95:                                  ; preds = %if.end88
  %36 = getelementptr inbounds %struct.ebt_ip6_info, ptr %3, i32 0, i32 9
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %36, align 4
  %arrayidx98 = getelementptr [2 x i8], ptr %36, i32 0, i32 1
  %39 = ptrtoint ptr %arrayidx98 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx98, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %38, i8 %40)
  %cmp100 = icmp ugt i8 %38, %40
  br i1 %cmp100, label %lor.lhs.false95.cleanup_crit_edge, label %lor.lhs.false95.if.end104_crit_edge

lor.lhs.false95.if.end104_crit_edge:              ; preds = %lor.lhs.false95
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end104

lor.lhs.false95.cleanup_crit_edge:                ; preds = %lor.lhs.false95
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end104:                                        ; preds = %lor.lhs.false95.if.end104_crit_edge, %if.end72.if.end104_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end104, %lor.lhs.false95.cleanup_crit_edge, %if.end88.cleanup_crit_edge, %lor.lhs.false82.cleanup_crit_edge, %if.then77.cleanup_crit_edge, %land.lhs.true64.cleanup_crit_edge, %land.lhs.true52.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %if.then16.cleanup_crit_edge, %lor.lhs.false5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end104 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false5.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.then16.cleanup_crit_edge ], [ -22, %if.end22.cleanup_crit_edge ], [ -22, %land.lhs.true52.cleanup_crit_edge ], [ -22, %land.lhs.true64.cleanup_crit_edge ], [ -22, %lor.lhs.false82.cleanup_crit_edge ], [ -22, %if.then77.cleanup_crit_edge ], [ -22, %lor.lhs.false95.cleanup_crit_edge ], [ -22, %if.end88.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_skip_exthdr(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xt_register_match(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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

declare ptr @memset(ptr, i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11}
!llvm.module.flags = !{!13, !14, !15, !16, !17, !18, !19, !20}
!llvm.ident = !{!21}

!0 = !{ptr @__initcall__kmod_ebt_ip6__498_160_ebt_ip6_init6, !1, !"__initcall__kmod_ebt_ip6__498_160_ebt_ip6_init6", i1 false, i1 false}
!1 = !{!"../net/bridge/netfilter/ebt_ip6.c", i32 160, i32 1}
!2 = !{ptr @__exitcall_ebt_ip6_fini, !3, !"__exitcall_ebt_ip6_fini", i1 false, i1 false}
!3 = !{!"../net/bridge/netfilter/ebt_ip6.c", i32 161, i32 1}
!4 = !{ptr @__UNIQUE_ID_description499, !5, !"__UNIQUE_ID_description499", i1 false, i1 false}
!5 = !{!"../net/bridge/netfilter/ebt_ip6.c", i32 162, i32 1}
!6 = !{ptr @__UNIQUE_ID_author500, !7, !"__UNIQUE_ID_author500", i1 false, i1 false}
!7 = !{!"../net/bridge/netfilter/ebt_ip6.c", i32 163, i32 1}
!8 = !{ptr @__UNIQUE_ID_file501, !9, !"__UNIQUE_ID_file501", i1 false, i1 false}
!9 = !{!"../net/bridge/netfilter/ebt_ip6.c", i32 164, i32 1}
!10 = !{ptr @__UNIQUE_ID_license502, !9, !"__UNIQUE_ID_license502", i1 false, i1 false}
!11 = !{ptr @ebt_ip6_mt_reg, !12, !"ebt_ip6_mt_reg", i1 false, i1 false}
!12 = !{!"../net/bridge/netfilter/ebt_ip6.c", i32 140, i32 24}
!13 = !{i32 1, !"wchar_size", i32 2}
!14 = !{i32 1, !"min_enum_size", i32 4}
!15 = !{i32 8, !"branch-target-enforcement", i32 0}
!16 = !{i32 8, !"sign-return-address", i32 0}
!17 = !{i32 8, !"sign-return-address-all", i32 0}
!18 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!19 = !{i32 7, !"uwtable", i32 1}
!20 = !{i32 7, !"frame-pointer", i32 2}
!21 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!22 = !{!"auto-init"}
!23 = !{!"branch_weights", i32 1, i32 2000}
