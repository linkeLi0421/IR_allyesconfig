; ModuleID = '/llk/IR_all_yes/net/ipv6/netfilter/ip6t_NPT.c_pt.bc'
source_filename = "../net/ipv6/netfilter/ip6t_NPT.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xt_target = type { %struct.list_head, [29 x i8], i8, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.28 }
%union.anon.28 = type { [4 x i32] }
%struct.xt_action_param = type { %union.anon.185, %union.anon.186, ptr, i32, i16, i8 }
%union.anon.185 = type { ptr }
%union.anon.186 = type { ptr }
%struct.sk_buff = type { %union.anon, %union.anon.168, %union.anon.169, [48 x i8], %union.anon.170, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.172, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.168 = type { ptr }
%union.anon.169 = type { i64 }
%union.anon.170 = type { %struct.anon.171 }
%struct.anon.171 = type { i32, ptr }
%union.anon.172 = type { %struct.anon.173 }
%struct.anon.173 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.174, i32, i32, i32, i16, i16, %union.anon.176, i32, %union.anon.177, %union.anon.178, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.174 = type { i32 }
%union.anon.176 = type { i32 }
%union.anon.177 = type { i32 }
%union.anon.178 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.ip6t_npt_tginfo = type { %union.nf_inet_addr, %union.nf_inet_addr, i8, i8, i16 }
%union.nf_inet_addr = type { [4 x i32] }
%struct.xt_tgchk_param = type { ptr, ptr, ptr, ptr, ptr, i32, i8, i8 }

@ip6t_npt_target_reg = internal global [2 x %struct.xt_target] [%struct.xt_target { %struct.list_head zeroinitializer, [29 x i8] c"SNPT\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, ptr @ip6t_snpt_tg, ptr @ip6t_npt_checkentry, ptr null, ptr null, ptr @.str, i32 36, i32 34, i32 18, i16 0, i16 10 }, %struct.xt_target { %struct.list_head zeroinitializer, [29 x i8] c"DNPT\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, ptr @ip6t_dnpt_tg, ptr @ip6t_npt_checkentry, ptr null, ptr null, ptr @.str, i32 36, i32 34, i32 9, i16 0, i16 10 }], section ".data..read_mostly", align 4
@__initcall__kmod_ip6t_NPT__620_184_ip6t_npt_init6 = internal global ptr @ip6t_npt_init, section ".initcall6.init", align 4
@__exitcall_ip6t_npt_exit = internal global ptr @ip6t_npt_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file621 = internal constant [42 x i8] c"ip6t_NPT.file=net/ipv6/netfilter/ip6t_NPT\00", section ".modinfo", align 1
@__UNIQUE_ID_license622 = internal constant [21 x i8] c"ip6t_NPT.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description623 = internal constant [72 x i8] c"ip6t_NPT.description=IPv6-to-IPv6 Network Prefix Translation (RFC 6296)\00", section ".modinfo", align 1
@__UNIQUE_ID_author624 = internal constant [50 x i8] c"ip6t_NPT.author=Patrick McHardy <kaber@trash.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_alias625 = internal constant [25 x i8] c"ip6t_NPT.alias=ip6t_SNPT\00", section ".modinfo", align 1
@__UNIQUE_ID_alias626 = internal constant [25 x i8] c"ip6t_NPT.alias=ip6t_DNPT\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mangle\00", [25 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.2 = private constant [33 x i8] c"../net/ipv6/netfilter/ip6t_NPT.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 148, i32 13 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @__UNIQUE_ID_alias625, ptr @__UNIQUE_ID_alias626, ptr @__UNIQUE_ID_author624, ptr @__UNIQUE_ID_description623, ptr @__UNIQUE_ID_file621, ptr @__UNIQUE_ID_license622, ptr @__exitcall_ip6t_npt_exit, ptr @__initcall__kmod_ip6t_NPT__620_184_ip6t_npt_init6, ptr @ip6t_npt_exit, ptr @.str], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ip6t_npt_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @xt_unregister_targets(ptr noundef nonnull @ip6t_npt_target_reg, i32 noundef 2) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xt_unregister_targets(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ip6t_npt_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @xt_register_targets(ptr noundef nonnull @ip6t_npt_target_reg, i32 noundef 2) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ip6t_snpt_tg(ptr noundef %skb, ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  %_bounced_hdr = alloca %struct.ipv6hdr, align 4
  %bounced_pfx = alloca %struct.in6_addr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %_bounced_hdr) #6
  %3 = call ptr @memset(ptr %_bounced_hdr, i32 255, i32 40)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %bounced_pfx) #6
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %4 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %6 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %7 to i32
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 %conv.i.i
  %saddr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 5
  %src_pfx_len.i = getelementptr inbounds %struct.ip6t_npt_tginfo, ptr %2, i32 0, i32 2
  %8 = ptrtoint ptr %src_pfx_len.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %src_pfx_len.i, align 4
  %dst_pfx_len.i = getelementptr inbounds %struct.ip6t_npt_tginfo, ptr %2, i32 0, i32 3
  %10 = ptrtoint ptr %dst_pfx_len.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %dst_pfx_len.i, align 1
  %12 = tail call i8 @llvm.umax.i8(i8 %9, i8 %11) #6
  %cond.i = zext i8 %12 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cmp590.not.i = icmp eq i8 %12, 0
  br i1 %cmp590.not.i, label %entry.if.end_crit_edge, label %for.body.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

for.body.i:                                       ; preds = %entry
  %dst_pfx.i = getelementptr inbounds %struct.ip6t_npt_tginfo, ptr %2, i32 0, i32 1
  %sub9.i = sub nsw i32 32, %cond.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %12)
  %cmp7.i = icmp ugt i8 %12, 31
  %notmask.i = shl nsw i32 -1, %sub9.i
  %sub10.i = xor i32 %notmask.i, -1
  %mask.0.i = select i1 %cmp7.i, i32 0, i32 %sub10.i
  %13 = ptrtoint ptr %saddr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %saddr, align 4
  %and.i = and i32 %mask.0.i, %14
  store i32 %and.i, ptr %saddr, align 4
  %neg.i = xor i32 %mask.0.i, -1
  %15 = ptrtoint ptr %dst_pfx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dst_pfx.i, align 4
  %and13.i = and i32 %16, %neg.i
  %or.i = or i32 %and13.i, %and.i
  store i32 %or.i, ptr %saddr, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %12)
  %cmp5.i = icmp ugt i8 %12, 32
  br i1 %cmp5.i, label %for.body.i.1, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body.i.1:                                     ; preds = %for.body.i
  %17 = and i32 %cond.i, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %17)
  %cmp7.i.1.not = icmp eq i32 %17, 32
  %add.i.1 = sub nsw i32 64, %cond.i
  %notmask.i.1 = shl nsw i32 -1, %add.i.1
  %sub10.i.1 = xor i32 %notmask.i.1, -1
  %mask.0.i.1 = select i1 %cmp7.i.1.not, i32 %sub10.i.1, i32 0
  %arrayidx.i.1 = getelementptr [4 x i32], ptr %saddr, i32 0, i32 1
  %18 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i.1, align 4
  %and.i.1 = and i32 %mask.0.i.1, %19
  store i32 %and.i.1, ptr %arrayidx.i.1, align 4
  %neg.i.1 = xor i32 %mask.0.i.1, -1
  %arrayidx12.i.1 = getelementptr %struct.ip6t_npt_tginfo, ptr %2, i32 0, i32 1, i32 0, i32 1
  %20 = ptrtoint ptr %arrayidx12.i.1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx12.i.1, align 4
  %and13.i.1 = and i32 %21, %neg.i.1
  %or.i.1 = or i32 %and13.i.1, %and.i.1
  store i32 %or.i.1, ptr %arrayidx.i.1, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %12)
  %cmp5.i.1 = icmp ugt i8 %12, 64
  br i1 %cmp5.i.1, label %for.body.i.2, label %for.body.i.1.for.end.i_crit_edge

for.body.i.1.for.end.i_crit_edge:                 ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body.i.2:                                     ; preds = %for.body.i.1
  %22 = and i32 %cond.i, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %22)
  %cmp7.i.2.not = icmp eq i32 %22, 64
  %add.i.2 = sub nsw i32 96, %cond.i
  %notmask.i.2 = shl nsw i32 -1, %add.i.2
  %sub10.i.2 = xor i32 %notmask.i.2, -1
  %mask.0.i.2 = select i1 %cmp7.i.2.not, i32 %sub10.i.2, i32 0
  %arrayidx.i.2 = getelementptr [4 x i32], ptr %saddr, i32 0, i32 2
  %23 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.i.2, align 4
  %and.i.2 = and i32 %mask.0.i.2, %24
  store i32 %and.i.2, ptr %arrayidx.i.2, align 4
  %neg.i.2 = xor i32 %mask.0.i.2, -1
  %arrayidx12.i.2 = getelementptr %struct.ip6t_npt_tginfo, ptr %2, i32 0, i32 1, i32 0, i32 2
  %25 = ptrtoint ptr %arrayidx12.i.2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx12.i.2, align 4
  %and13.i.2 = and i32 %26, %neg.i.2
  %or.i.2 = or i32 %and13.i.2, %and.i.2
  store i32 %or.i.2, ptr %arrayidx.i.2, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 96, i8 %12)
  %cmp5.i.2 = icmp ugt i8 %12, 96
  br i1 %cmp5.i.2, label %for.body.i.3, label %for.body.i.2.for.end.i_crit_edge

for.body.i.2.for.end.i_crit_edge:                 ; preds = %for.body.i.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body.i.3:                                     ; preds = %for.body.i.2
  %27 = and i32 %cond.i, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 96, i32 %27)
  %cmp7.i.3.not = icmp eq i32 %27, 96
  %add.i.3 = sub nsw i32 128, %cond.i
  %notmask.i.3 = shl nsw i32 -1, %add.i.3
  %sub10.i.3 = xor i32 %notmask.i.3, -1
  %mask.0.i.3 = select i1 %cmp7.i.3.not, i32 %sub10.i.3, i32 0
  %arrayidx.i.3 = getelementptr [4 x i32], ptr %saddr, i32 0, i32 3
  %28 = ptrtoint ptr %arrayidx.i.3 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.i.3, align 4
  %and.i.3 = and i32 %mask.0.i.3, %29
  store i32 %and.i.3, ptr %arrayidx.i.3, align 4
  %neg.i.3 = xor i32 %mask.0.i.3, -1
  %arrayidx12.i.3 = getelementptr %struct.ip6t_npt_tginfo, ptr %2, i32 0, i32 1, i32 0, i32 3
  %30 = ptrtoint ptr %arrayidx12.i.3 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx12.i.3, align 4
  %and13.i.3 = and i32 %31, %neg.i.3
  %or.i.3 = or i32 %and13.i.3, %and.i.3
  store i32 %or.i.3, ptr %arrayidx.i.3, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %12)
  %cmp5.i.3 = icmp ugt i8 %12, -128
  br i1 %cmp5.i.3, label %for.body.i.4, label %for.body.i.3.for.end.i_crit_edge

for.body.i.3.for.end.i_crit_edge:                 ; preds = %for.body.i.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body.i.4:                                     ; preds = %for.body.i.3
  %32 = and i32 %cond.i, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %32)
  %cmp7.i.4.not = icmp eq i32 %32, 128
  %add.i.4 = sub nsw i32 160, %cond.i
  %notmask.i.4 = shl nsw i32 -1, %add.i.4
  %sub10.i.4 = xor i32 %notmask.i.4, -1
  %mask.0.i.4 = select i1 %cmp7.i.4.not, i32 %sub10.i.4, i32 0
  %arrayidx.i.4 = getelementptr [4 x i32], ptr %saddr, i32 0, i32 4
  %33 = ptrtoint ptr %arrayidx.i.4 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx.i.4, align 4
  %and.i.4 = and i32 %mask.0.i.4, %34
  store i32 %and.i.4, ptr %arrayidx.i.4, align 4
  %neg.i.4 = xor i32 %mask.0.i.4, -1
  %arrayidx12.i.4 = getelementptr %struct.ip6t_npt_tginfo, ptr %2, i32 0, i32 2
  %35 = ptrtoint ptr %arrayidx12.i.4 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx12.i.4, align 4
  %and13.i.4 = and i32 %36, %neg.i.4
  %or.i.4 = or i32 %and13.i.4, %and.i.4
  store i32 %or.i.4, ptr %arrayidx.i.4, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -96, i8 %12)
  %cmp5.i.4 = icmp ugt i8 %12, -96
  br i1 %cmp5.i.4, label %for.body.i.5, label %for.body.i.4.for.end.i_crit_edge

for.body.i.4.for.end.i_crit_edge:                 ; preds = %for.body.i.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body.i.5:                                     ; preds = %for.body.i.4
  %37 = and i32 %cond.i, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 160, i32 %37)
  %cmp7.i.5.not = icmp eq i32 %37, 160
  %add.i.5 = sub nsw i32 192, %cond.i
  %notmask.i.5 = shl nsw i32 -1, %add.i.5
  %sub10.i.5 = xor i32 %notmask.i.5, -1
  %mask.0.i.5 = select i1 %cmp7.i.5.not, i32 %sub10.i.5, i32 0
  %arrayidx.i.5 = getelementptr [4 x i32], ptr %saddr, i32 0, i32 5
  %38 = ptrtoint ptr %arrayidx.i.5 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx.i.5, align 4
  %and.i.5 = and i32 %mask.0.i.5, %39
  store i32 %and.i.5, ptr %arrayidx.i.5, align 4
  %neg.i.5 = xor i32 %mask.0.i.5, -1
  %arrayidx12.i.5 = getelementptr %struct.ip6t_npt_tginfo, ptr %2, i32 1
  %40 = ptrtoint ptr %arrayidx12.i.5 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx12.i.5, align 4
  %and13.i.5 = and i32 %41, %neg.i.5
  %or.i.5 = or i32 %and13.i.5, %and.i.5
  store i32 %or.i.5, ptr %arrayidx.i.5, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -64, i8 %12)
  %cmp5.i.5 = icmp ugt i8 %12, -64
  br i1 %cmp5.i.5, label %for.body.i.6, label %for.body.i.5.for.end.i_crit_edge

for.body.i.5.for.end.i_crit_edge:                 ; preds = %for.body.i.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body.i.6:                                     ; preds = %for.body.i.5
  %42 = and i32 %cond.i, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 192, i32 %42)
  %cmp7.i.6.not = icmp eq i32 %42, 192
  %add.i.6 = sub nsw i32 224, %cond.i
  %notmask.i.6 = shl nsw i32 -1, %add.i.6
  %sub10.i.6 = xor i32 %notmask.i.6, -1
  %mask.0.i.6 = select i1 %cmp7.i.6.not, i32 %sub10.i.6, i32 0
  %arrayidx.i.6 = getelementptr [4 x i32], ptr %saddr, i32 0, i32 6
  %43 = ptrtoint ptr %arrayidx.i.6 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx.i.6, align 4
  %and.i.6 = and i32 %mask.0.i.6, %44
  store i32 %and.i.6, ptr %arrayidx.i.6, align 4
  %neg.i.6 = xor i32 %mask.0.i.6, -1
  %arrayidx12.i.6 = getelementptr %struct.ip6t_npt_tginfo, ptr %2, i32 1, i32 0, i32 0, i32 1
  %45 = ptrtoint ptr %arrayidx12.i.6 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx12.i.6, align 4
  %and13.i.6 = and i32 %46, %neg.i.6
  %or.i.6 = or i32 %and13.i.6, %and.i.6
  store i32 %or.i.6, ptr %arrayidx.i.6, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -32, i8 %12)
  %cmp5.i.6 = icmp ugt i8 %12, -32
  br i1 %cmp5.i.6, label %for.body.i.7, label %for.body.i.6.for.end.i_crit_edge

for.body.i.6.for.end.i_crit_edge:                 ; preds = %for.body.i.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body.i.7:                                     ; preds = %for.body.i.6
  call void @__sanitizer_cov_trace_pc() #8
  %47 = and i32 %cond.i, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 224, i32 %47)
  %cmp7.i.7.not = icmp eq i32 %47, 224
  %add.i.7 = sub nuw nsw i32 256, %cond.i
  %notmask.i.7 = shl nsw i32 -1, %add.i.7
  %sub10.i.7 = xor i32 %notmask.i.7, -1
  %mask.0.i.7 = select i1 %cmp7.i.7.not, i32 %sub10.i.7, i32 0
  %arrayidx.i.7 = getelementptr [4 x i32], ptr %saddr, i32 0, i32 7
  %48 = ptrtoint ptr %arrayidx.i.7 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx.i.7, align 4
  %and.i.7 = and i32 %mask.0.i.7, %49
  store i32 %and.i.7, ptr %arrayidx.i.7, align 4
  %neg.i.7 = xor i32 %mask.0.i.7, -1
  %arrayidx12.i.7 = getelementptr %struct.ip6t_npt_tginfo, ptr %2, i32 1, i32 0, i32 0, i32 2
  %50 = ptrtoint ptr %arrayidx12.i.7 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx12.i.7, align 4
  %and13.i.7 = and i32 %51, %neg.i.7
  %or.i.7 = or i32 %and13.i.7, %and.i.7
  store i32 %or.i.7, ptr %arrayidx.i.7, align 4
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.7, %for.body.i.6.for.end.i_crit_edge, %for.body.i.5.for.end.i_crit_edge, %for.body.i.4.for.end.i_crit_edge, %for.body.i.3.for.end.i_crit_edge, %for.body.i.2.for.end.i_crit_edge, %for.body.i.1.for.end.i_crit_edge, %for.body.i.for.end.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 49, i8 %12)
  %cmp17.i = icmp ult i8 %12, 49
  br i1 %cmp17.i, label %for.end.i.if.end_crit_edge, label %for.body24.preheader.i

for.end.i.if.end_crit_edge:                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

for.body24.preheader.i:                           ; preds = %for.end.i
  %arrayidx26.i = getelementptr [8 x i16], ptr %saddr, i32 0, i32 4
  %52 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %arrayidx26.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %53)
  %cmp28.not.i = icmp eq i16 %53, -1
  br i1 %cmp28.not.i, label %for.inc32.i, label %for.body24.preheader.i.if.end_crit_edge

for.body24.preheader.i.if.end_crit_edge:          ; preds = %for.body24.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

for.inc32.i:                                      ; preds = %for.body24.preheader.i
  %arrayidx26.1.i = getelementptr [8 x i16], ptr %saddr, i32 0, i32 5
  %54 = ptrtoint ptr %arrayidx26.1.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %arrayidx26.1.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %55)
  %cmp28.not.1.i = icmp eq i16 %55, -1
  br i1 %cmp28.not.1.i, label %for.inc32.1.i, label %for.inc32.i.if.end_crit_edge

for.inc32.i.if.end_crit_edge:                     ; preds = %for.inc32.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

for.inc32.1.i:                                    ; preds = %for.inc32.i
  %arrayidx26.2.i = getelementptr [8 x i16], ptr %saddr, i32 0, i32 6
  %56 = ptrtoint ptr %arrayidx26.2.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %arrayidx26.2.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %57)
  %cmp28.not.2.i = icmp eq i16 %57, -1
  br i1 %cmp28.not.2.i, label %for.inc32.2.i, label %for.inc32.1.i.if.end_crit_edge

for.inc32.1.i.if.end_crit_edge:                   ; preds = %for.inc32.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

for.inc32.2.i:                                    ; preds = %for.inc32.1.i
  %arrayidx26.3.i = getelementptr [8 x i16], ptr %saddr, i32 0, i32 7
  %58 = ptrtoint ptr %arrayidx26.3.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %arrayidx26.3.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %59)
  %cmp28.not.3.i = icmp eq i16 %59, -1
  br i1 %cmp28.not.3.i, label %if.then, label %for.inc32.2.i.if.end_crit_edge

for.inc32.2.i.if.end_crit_edge:                   ; preds = %for.inc32.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %for.inc32.2.i
  call void @__sanitizer_cov_trace_pc() #8
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  tail call void @icmp6_send(ptr noundef %skb, i8 noundef zeroext 4, i8 noundef zeroext 0, i32 noundef 8, ptr noundef null, ptr noundef %cb.i) #6
  br label %cleanup

if.end:                                           ; preds = %for.inc32.2.i.if.end_crit_edge, %for.inc32.1.i.if.end_crit_edge, %for.inc32.i.if.end_crit_edge, %for.body24.preheader.i.if.end_crit_edge, %for.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %idx.1.i = phi i32 [ 3, %for.end.i.if.end_crit_edge ], [ 4, %for.body24.preheader.i.if.end_crit_edge ], [ 5, %for.inc32.i.if.end_crit_edge ], [ 6, %for.inc32.1.i.if.end_crit_edge ], [ 7, %for.inc32.2.i.if.end_crit_edge ], [ 3, %entry.if.end_crit_edge ]
  %arrayidx40.i = getelementptr [8 x i16], ptr %saddr, i32 0, i32 %idx.1.i
  %60 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %arrayidx40.i, align 2
  %conv.i.i21 = zext i16 %61 to i32
  %adjustment.i = getelementptr inbounds %struct.ip6t_npt_tginfo, ptr %2, i32 0, i32 4
  %62 = ptrtoint ptr %adjustment.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %adjustment.i, align 2
  %conv.i85.i = zext i16 %63 to i32
  %add.i.i = add nuw nsw i32 %conv.i85.i, %conv.i.i21
  %64 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %add.i.i) #9, !srcloc !28
  %neg.i.i = xor i32 %64, -1
  %shr.i.i = lshr i32 %neg.i.i, 16
  %conv.i87.i = trunc i32 %shr.i.i to i16
  %neg45.i = xor i16 %conv.i87.i, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv.i87.i)
  %cmp48.i = icmp eq i16 %conv.i87.i, 0
  %spec.store.select.i = select i1 %cmp48.i, i16 0, i16 %neg45.i
  %65 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %spec.store.select.i, ptr %arrayidx40.i, align 2
  %66 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %head.i.i, align 8
  %68 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i.i = zext i16 %69 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %67, i32 %conv.i.i.i
  %nexthdr.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i.i, i32 0, i32 3
  %70 = ptrtoint ptr %nexthdr.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %nexthdr.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 58, i8 %71)
  %cmp.not.i = icmp eq i8 %71, 58
  br i1 %cmp.not.i, label %if.end.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %transport_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %72 = ptrtoint ptr %transport_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %transport_header.i.i.i, align 2
  %conv.i.i13.i = zext i16 %73 to i32
  %add.ptr.i.i14.i = getelementptr i8, ptr %67, i32 %conv.i.i13.i
  %74 = ptrtoint ptr %add.ptr.i.i14.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %add.ptr.i.i14.i, align 4
  %conv3.i = zext i8 %75 to i32
  %type.off.i.i = add nsw i32 %conv3.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %type.off.i.i)
  %switch.i.i = icmp ult i32 %type.off.i.i, 4
  br i1 %switch.i.i, label %if.end6.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6.i:                                        ; preds = %if.end.i
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %76 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %add.ptr.i.i14.i to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %77 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %add.i22 = add i32 %sub.ptr.sub.i.i, 8
  %len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %78 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %len.i.i.i, align 4
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %80 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %data_len.i.i.i, align 8
  %add.neg.i = add i32 %79, -8
  %82 = add i32 %81, %sub.ptr.sub.i.i
  %sub.i1.i.i = sub i32 %add.neg.i, %82
  call void @__sanitizer_cov_trace_const_cmp4(i32 39, i32 %sub.i1.i.i)
  %cmp.i.i.i = icmp sgt i32 %sub.i1.i.i, 39
  br i1 %cmp.i.i.i, label %icmpv6_bounced_ipv6hdr.exit, label %if.end.i.i.i, !prof !29

if.end.i.i.i:                                     ; preds = %if.end6.i
  %tobool2.not.i.i.i = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i.i, label %if.end.i.i.i.cleanup_crit_edge, label %lor.lhs.false.i.i.i

if.end.i.i.i.cleanup_crit_edge:                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false.i.i.i:                              ; preds = %if.end.i.i.i
  %call.i.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %add.i22, ptr noundef nonnull %_bounced_hdr, i32 noundef 40) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp3.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp3.i.i.i, label %lor.lhs.false.i.i.i.cleanup_crit_edge, label %lor.lhs.false.i.i.i.if.then3_crit_edge

lor.lhs.false.i.i.i.if.then3_crit_edge:           ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then3

lor.lhs.false.i.i.i.cleanup_crit_edge:            ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

icmpv6_bounced_ipv6hdr.exit:                      ; preds = %if.end6.i
  %add.ptr.i.i20.i = getelementptr i8, ptr %77, i32 %add.i22
  %tobool.not = icmp eq ptr %add.ptr.i.i20.i, null
  br i1 %tobool.not, label %icmpv6_bounced_ipv6hdr.exit.cleanup_crit_edge, label %icmpv6_bounced_ipv6hdr.exit.if.then3_crit_edge

icmpv6_bounced_ipv6hdr.exit.if.then3_crit_edge:   ; preds = %icmpv6_bounced_ipv6hdr.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then3

icmpv6_bounced_ipv6hdr.exit.cleanup_crit_edge:    ; preds = %icmpv6_bounced_ipv6hdr.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then3:                                         ; preds = %icmpv6_bounced_ipv6hdr.exit.if.then3_crit_edge, %lor.lhs.false.i.i.i.if.then3_crit_edge
  %retval.0.i2387 = phi ptr [ %add.ptr.i.i20.i, %icmpv6_bounced_ipv6hdr.exit.if.then3_crit_edge ], [ %_bounced_hdr, %lor.lhs.false.i.i.i.if.then3_crit_edge ]
  %daddr = getelementptr inbounds %struct.ipv6hdr, ptr %retval.0.i2387, i32 0, i32 6
  %83 = ptrtoint ptr %src_pfx_len.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %src_pfx_len.i, align 4
  %conv = zext i8 %84 to i32
  %shr.i88 = lshr i32 %conv, 3
  %and.i24 = and i32 %conv, 7
  %85 = call ptr @memset(ptr %bounced_pfx, i32 0, i32 16)
  %86 = call ptr @memcpy(ptr %bounced_pfx, ptr %daddr, i32 %shr.i88)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i24)
  %cmp.not.i25 = icmp eq i32 %and.i24, 0
  br i1 %cmp.not.i25, label %if.then3.ipv6_addr_prefix.exit_crit_edge, label %if.then.i

if.then3.ipv6_addr_prefix.exit_crit_edge:         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  br label %ipv6_addr_prefix.exit

if.then.i:                                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i26 = getelementptr [16 x i8], ptr %daddr, i32 0, i32 %shr.i88
  %87 = ptrtoint ptr %arrayidx.i26 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %arrayidx.i26, align 1
  %shr4.i = lshr i32 65280, %and.i24
  %89 = trunc i32 %shr4.i to i8
  %conv6.i = and i8 %88, %89
  %arrayidx8.i = getelementptr [16 x i8], ptr %bounced_pfx, i32 0, i32 %shr.i88
  %90 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %conv6.i, ptr %arrayidx8.i, align 1
  br label %ipv6_addr_prefix.exit

ipv6_addr_prefix.exit:                            ; preds = %if.then.i, %if.then3.ipv6_addr_prefix.exit_crit_edge
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(16) %bounced_pfx, ptr noundef dereferenceable(16) %2, i32 16) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp = icmp eq i32 %bcmp, 0
  br i1 %cmp, label %if.then6, label %ipv6_addr_prefix.exit.cleanup_crit_edge

ipv6_addr_prefix.exit.cleanup_crit_edge:          ; preds = %ipv6_addr_prefix.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then6:                                         ; preds = %ipv6_addr_prefix.exit
  %91 = ptrtoint ptr %dst_pfx_len.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %dst_pfx_len.i, align 1
  %93 = call i8 @llvm.umax.i8(i8 %84, i8 %92) #6
  %cond.i30 = zext i8 %93 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %93)
  %cmp590.not.i31 = icmp eq i8 %93, 0
  br i1 %cmp590.not.i31, label %if.then6.if.end38.i78_crit_edge, label %for.body.i51

if.then6.if.end38.i78_crit_edge:                  ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38.i78

for.body.i51:                                     ; preds = %if.then6
  %dst_pfx.i33 = getelementptr inbounds %struct.ip6t_npt_tginfo, ptr %2, i32 0, i32 1
  %sub9.i32 = sub nsw i32 32, %cond.i30
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %93)
  %cmp7.i37 = icmp ugt i8 %93, 31
  %notmask.i39 = shl nsw i32 -1, %sub9.i32
  %sub10.i40 = xor i32 %notmask.i39, -1
  %mask.0.i41 = select i1 %cmp7.i37, i32 0, i32 %sub10.i40
  %94 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %daddr, align 4
  %and.i44 = and i32 %mask.0.i41, %95
  store i32 %and.i44, ptr %daddr, align 4
  %neg.i45 = xor i32 %mask.0.i41, -1
  %96 = ptrtoint ptr %dst_pfx.i33 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %dst_pfx.i33, align 4
  %and13.i47 = and i32 %97, %neg.i45
  %or.i48 = or i32 %and13.i47, %and.i44
  store i32 %or.i48, ptr %daddr, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %93)
  %cmp5.i50 = icmp ugt i8 %93, 32
  br i1 %cmp5.i50, label %for.body.i51.1, label %for.body.i51.for.end.i53_crit_edge

for.body.i51.for.end.i53_crit_edge:               ; preds = %for.body.i51
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i53

for.body.i51.1:                                   ; preds = %for.body.i51
  %98 = and i32 %cond.i30, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %98)
  %cmp7.i37.1.not = icmp eq i32 %98, 32
  %add.i38.1 = sub nsw i32 64, %cond.i30
  %notmask.i39.1 = shl nsw i32 -1, %add.i38.1
  %sub10.i40.1 = xor i32 %notmask.i39.1, -1
  %mask.0.i41.1 = select i1 %cmp7.i37.1.not, i32 %sub10.i40.1, i32 0
  %arrayidx.i43.1 = getelementptr %struct.ipv6hdr, ptr %retval.0.i2387, i32 0, i32 6, i32 0, i32 0, i32 1
  %99 = ptrtoint ptr %arrayidx.i43.1 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %arrayidx.i43.1, align 4
  %and.i44.1 = and i32 %mask.0.i41.1, %100
  store i32 %and.i44.1, ptr %arrayidx.i43.1, align 4
  %neg.i45.1 = xor i32 %mask.0.i41.1, -1
  %arrayidx12.i46.1 = getelementptr %struct.ip6t_npt_tginfo, ptr %2, i32 0, i32 1, i32 0, i32 1
  %101 = ptrtoint ptr %arrayidx12.i46.1 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %arrayidx12.i46.1, align 4
  %and13.i47.1 = and i32 %102, %neg.i45.1
  %or.i48.1 = or i32 %and13.i47.1, %and.i44.1
  store i32 %or.i48.1, ptr %arrayidx.i43.1, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %93)
  %cmp5.i50.1 = icmp ugt i8 %93, 64
  br i1 %cmp5.i50.1, label %for.body.i51.2, label %for.body.i51.1.for.end.i53_crit_edge

for.body.i51.1.for.end.i53_crit_edge:             ; preds = %for.body.i51.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i53

for.body.i51.2:                                   ; preds = %for.body.i51.1
  %103 = and i32 %cond.i30, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %103)
  %cmp7.i37.2.not = icmp eq i32 %103, 64
  %add.i38.2 = sub nsw i32 96, %cond.i30
  %notmask.i39.2 = shl nsw i32 -1, %add.i38.2
  %sub10.i40.2 = xor i32 %notmask.i39.2, -1
  %mask.0.i41.2 = select i1 %cmp7.i37.2.not, i32 %sub10.i40.2, i32 0
  %arrayidx.i43.2 = getelementptr %struct.ipv6hdr, ptr %retval.0.i2387, i32 0, i32 6, i32 0, i32 0, i32 2
  %104 = ptrtoint ptr %arrayidx.i43.2 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %arrayidx.i43.2, align 4
  %and.i44.2 = and i32 %mask.0.i41.2, %105
  store i32 %and.i44.2, ptr %arrayidx.i43.2, align 4
  %neg.i45.2 = xor i32 %mask.0.i41.2, -1
  %arrayidx12.i46.2 = getelementptr %struct.ip6t_npt_tginfo, ptr %2, i32 0, i32 1, i32 0, i32 2
  %106 = ptrtoint ptr %arrayidx12.i46.2 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %arrayidx12.i46.2, align 4
  %and13.i47.2 = and i32 %107, %neg.i45.2
  %or.i48.2 = or i32 %and13.i47.2, %and.i44.2
  store i32 %or.i48.2, ptr %arrayidx.i43.2, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 96, i8 %93)
  %cmp5.i50.2 = icmp ugt i8 %93, 96
  br i1 %cmp5.i50.2, label %for.body.i51.3, label %for.body.i51.2.for.end.i53_crit_edge

for.body.i51.2.for.end.i53_crit_edge:             ; preds = %for.body.i51.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i53

for.body.i51.3:                                   ; preds = %for.body.i51.2
  %108 = and i32 %cond.i30, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 96, i32 %108)
  %cmp7.i37.3.not = icmp eq i32 %108, 96
  %add.i38.3 = sub nsw i32 128, %cond.i30
  %notmask.i39.3 = shl nsw i32 -1, %add.i38.3
  %sub10.i40.3 = xor i32 %notmask.i39.3, -1
  %mask.0.i41.3 = select i1 %cmp7.i37.3.not, i32 %sub10.i40.3, i32 0
  %arrayidx.i43.3 = getelementptr %struct.ipv6hdr, ptr %retval.0.i2387, i32 0, i32 6, i32 0, i32 0, i32 3
  %109 = ptrtoint ptr %arrayidx.i43.3 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %arrayidx.i43.3, align 4
  %and.i44.3 = and i32 %mask.0.i41.3, %110
  store i32 %and.i44.3, ptr %arrayidx.i43.3, align 4
  %neg.i45.3 = xor i32 %mask.0.i41.3, -1
  %arrayidx12.i46.3 = getelementptr %struct.ip6t_npt_tginfo, ptr %2, i32 0, i32 1, i32 0, i32 3
  %111 = ptrtoint ptr %arrayidx12.i46.3 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %arrayidx12.i46.3, align 4
  %and13.i47.3 = and i32 %112, %neg.i45.3
  %or.i48.3 = or i32 %and13.i47.3, %and.i44.3
  store i32 %or.i48.3, ptr %arrayidx.i43.3, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %93)
  %cmp5.i50.3 = icmp ugt i8 %93, -128
  br i1 %cmp5.i50.3, label %for.body.i51.4, label %for.body.i51.3.for.end.i53_crit_edge

for.body.i51.3.for.end.i53_crit_edge:             ; preds = %for.body.i51.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i53

for.body.i51.4:                                   ; preds = %for.body.i51.3
  %113 = and i32 %cond.i30, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %113)
  %cmp7.i37.4.not = icmp eq i32 %113, 128
  %add.i38.4 = sub nsw i32 160, %cond.i30
  %notmask.i39.4 = shl nsw i32 -1, %add.i38.4
  %sub10.i40.4 = xor i32 %notmask.i39.4, -1
  %mask.0.i41.4 = select i1 %cmp7.i37.4.not, i32 %sub10.i40.4, i32 0
  %arrayidx.i43.4 = getelementptr %struct.ipv6hdr, ptr %retval.0.i2387, i32 1
  %114 = ptrtoint ptr %arrayidx.i43.4 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %arrayidx.i43.4, align 4
  %and.i44.4 = and i32 %mask.0.i41.4, %115
  store i32 %and.i44.4, ptr %arrayidx.i43.4, align 4
  %neg.i45.4 = xor i32 %mask.0.i41.4, -1
  %arrayidx12.i46.4 = getelementptr %struct.ip6t_npt_tginfo, ptr %2, i32 0, i32 2
  %116 = ptrtoint ptr %arrayidx12.i46.4 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %arrayidx12.i46.4, align 4
  %and13.i47.4 = and i32 %117, %neg.i45.4
  %or.i48.4 = or i32 %and13.i47.4, %and.i44.4
  store i32 %or.i48.4, ptr %arrayidx.i43.4, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -96, i8 %93)
  %cmp5.i50.4 = icmp ugt i8 %93, -96
  br i1 %cmp5.i50.4, label %for.body.i51.5, label %for.body.i51.4.for.end.i53_crit_edge

for.body.i51.4.for.end.i53_crit_edge:             ; preds = %for.body.i51.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i53

for.body.i51.5:                                   ; preds = %for.body.i51.4
  %118 = and i32 %cond.i30, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 160, i32 %118)
  %cmp7.i37.5.not = icmp eq i32 %118, 160
  %add.i38.5 = sub nsw i32 192, %cond.i30
  %notmask.i39.5 = shl nsw i32 -1, %add.i38.5
  %sub10.i40.5 = xor i32 %notmask.i39.5, -1
  %mask.0.i41.5 = select i1 %cmp7.i37.5.not, i32 %sub10.i40.5, i32 0
  %arrayidx.i43.5 = getelementptr %struct.ipv6hdr, ptr %retval.0.i2387, i32 1, i32 2
  %119 = ptrtoint ptr %arrayidx.i43.5 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %arrayidx.i43.5, align 4
  %and.i44.5 = and i32 %mask.0.i41.5, %120
  store i32 %and.i44.5, ptr %arrayidx.i43.5, align 4
  %neg.i45.5 = xor i32 %mask.0.i41.5, -1
  %arrayidx12.i46.5 = getelementptr %struct.ip6t_npt_tginfo, ptr %2, i32 1
  %121 = ptrtoint ptr %arrayidx12.i46.5 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %arrayidx12.i46.5, align 4
  %and13.i47.5 = and i32 %122, %neg.i45.5
  %or.i48.5 = or i32 %and13.i47.5, %and.i44.5
  store i32 %or.i48.5, ptr %arrayidx.i43.5, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -64, i8 %93)
  %cmp5.i50.5 = icmp ugt i8 %93, -64
  br i1 %cmp5.i50.5, label %for.body.i51.6, label %for.body.i51.5.for.end.i53_crit_edge

for.body.i51.5.for.end.i53_crit_edge:             ; preds = %for.body.i51.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i53

for.body.i51.6:                                   ; preds = %for.body.i51.5
  %123 = and i32 %cond.i30, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 192, i32 %123)
  %cmp7.i37.6.not = icmp eq i32 %123, 192
  %add.i38.6 = sub nsw i32 224, %cond.i30
  %notmask.i39.6 = shl nsw i32 -1, %add.i38.6
  %sub10.i40.6 = xor i32 %notmask.i39.6, -1
  %mask.0.i41.6 = select i1 %cmp7.i37.6.not, i32 %sub10.i40.6, i32 0
  %arrayidx.i43.6 = getelementptr %struct.ipv6hdr, ptr %retval.0.i2387, i32 1, i32 5
  %124 = ptrtoint ptr %arrayidx.i43.6 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %arrayidx.i43.6, align 4
  %and.i44.6 = and i32 %mask.0.i41.6, %125
  store i32 %and.i44.6, ptr %arrayidx.i43.6, align 4
  %neg.i45.6 = xor i32 %mask.0.i41.6, -1
  %arrayidx12.i46.6 = getelementptr %struct.ip6t_npt_tginfo, ptr %2, i32 1, i32 0, i32 0, i32 1
  %126 = ptrtoint ptr %arrayidx12.i46.6 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %arrayidx12.i46.6, align 4
  %and13.i47.6 = and i32 %127, %neg.i45.6
  %or.i48.6 = or i32 %and13.i47.6, %and.i44.6
  store i32 %or.i48.6, ptr %arrayidx.i43.6, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -32, i8 %93)
  %cmp5.i50.6 = icmp ugt i8 %93, -32
  br i1 %cmp5.i50.6, label %for.body.i51.7, label %for.body.i51.6.for.end.i53_crit_edge

for.body.i51.6.for.end.i53_crit_edge:             ; preds = %for.body.i51.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i53

for.body.i51.7:                                   ; preds = %for.body.i51.6
  call void @__sanitizer_cov_trace_pc() #8
  %128 = and i32 %cond.i30, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 224, i32 %128)
  %cmp7.i37.7.not = icmp eq i32 %128, 224
  %add.i38.7 = sub nuw nsw i32 256, %cond.i30
  %notmask.i39.7 = shl nsw i32 -1, %add.i38.7
  %sub10.i40.7 = xor i32 %notmask.i39.7, -1
  %mask.0.i41.7 = select i1 %cmp7.i37.7.not, i32 %sub10.i40.7, i32 0
  %arrayidx.i43.7 = getelementptr %struct.ipv6hdr, ptr %retval.0.i2387, i32 1, i32 5, i32 0, i32 0, i32 1
  %129 = ptrtoint ptr %arrayidx.i43.7 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %arrayidx.i43.7, align 4
  %and.i44.7 = and i32 %mask.0.i41.7, %130
  store i32 %and.i44.7, ptr %arrayidx.i43.7, align 4
  %neg.i45.7 = xor i32 %mask.0.i41.7, -1
  %arrayidx12.i46.7 = getelementptr %struct.ip6t_npt_tginfo, ptr %2, i32 1, i32 0, i32 0, i32 2
  %131 = ptrtoint ptr %arrayidx12.i46.7 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %arrayidx12.i46.7, align 4
  %and13.i47.7 = and i32 %132, %neg.i45.7
  %or.i48.7 = or i32 %and13.i47.7, %and.i44.7
  store i32 %or.i48.7, ptr %arrayidx.i43.7, align 4
  br label %for.end.i53

for.end.i53:                                      ; preds = %for.body.i51.7, %for.body.i51.6.for.end.i53_crit_edge, %for.body.i51.5.for.end.i53_crit_edge, %for.body.i51.4.for.end.i53_crit_edge, %for.body.i51.3.for.end.i53_crit_edge, %for.body.i51.2.for.end.i53_crit_edge, %for.body.i51.1.for.end.i53_crit_edge, %for.body.i51.for.end.i53_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 49, i8 %93)
  %cmp17.i52 = icmp ult i8 %93, 49
  br i1 %cmp17.i52, label %for.end.i53.if.end38.i78_crit_edge, label %for.body24.preheader.i56

for.end.i53.if.end38.i78_crit_edge:               ; preds = %for.end.i53
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38.i78

for.body24.preheader.i56:                         ; preds = %for.end.i53
  %arrayidx26.i54 = getelementptr %struct.ipv6hdr, ptr %retval.0.i2387, i32 0, i32 6, i32 0, i32 0, i32 2
  %133 = ptrtoint ptr %arrayidx26.i54 to i32
  call void @__asan_load2_noabort(i32 %133)
  %134 = load i16, ptr %arrayidx26.i54, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %134)
  %cmp28.not.i55 = icmp eq i16 %134, -1
  br i1 %cmp28.not.i55, label %for.inc32.i59, label %for.body24.preheader.i56.if.end38.i78_crit_edge

for.body24.preheader.i56.if.end38.i78_crit_edge:  ; preds = %for.body24.preheader.i56
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38.i78

for.inc32.i59:                                    ; preds = %for.body24.preheader.i56
  %arrayidx26.1.i57 = getelementptr [8 x i16], ptr %daddr, i32 0, i32 5
  %135 = ptrtoint ptr %arrayidx26.1.i57 to i32
  call void @__asan_load2_noabort(i32 %135)
  %136 = load i16, ptr %arrayidx26.1.i57, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %136)
  %cmp28.not.1.i58 = icmp eq i16 %136, -1
  br i1 %cmp28.not.1.i58, label %for.inc32.1.i62, label %for.inc32.i59.if.end38.i78_crit_edge

for.inc32.i59.if.end38.i78_crit_edge:             ; preds = %for.inc32.i59
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38.i78

for.inc32.1.i62:                                  ; preds = %for.inc32.i59
  %arrayidx26.2.i60 = getelementptr %struct.ipv6hdr, ptr %retval.0.i2387, i32 0, i32 6, i32 0, i32 0, i32 3
  %137 = ptrtoint ptr %arrayidx26.2.i60 to i32
  call void @__asan_load2_noabort(i32 %137)
  %138 = load i16, ptr %arrayidx26.2.i60, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %138)
  %cmp28.not.2.i61 = icmp eq i16 %138, -1
  br i1 %cmp28.not.2.i61, label %for.inc32.2.i65, label %for.inc32.1.i62.if.end38.i78_crit_edge

for.inc32.1.i62.if.end38.i78_crit_edge:           ; preds = %for.inc32.1.i62
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38.i78

for.inc32.2.i65:                                  ; preds = %for.inc32.1.i62
  %arrayidx26.3.i63 = getelementptr [8 x i16], ptr %daddr, i32 0, i32 7
  %139 = ptrtoint ptr %arrayidx26.3.i63 to i32
  call void @__asan_load2_noabort(i32 %139)
  %140 = load i16, ptr %arrayidx26.3.i63, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %140)
  %cmp28.not.3.i64 = icmp eq i16 %140, -1
  br i1 %cmp28.not.3.i64, label %for.inc32.2.i65.cleanup_crit_edge, label %for.inc32.2.i65.if.end38.i78_crit_edge

for.inc32.2.i65.if.end38.i78_crit_edge:           ; preds = %for.inc32.2.i65
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38.i78

for.inc32.2.i65.cleanup_crit_edge:                ; preds = %for.inc32.2.i65
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end38.i78:                                     ; preds = %for.inc32.2.i65.if.end38.i78_crit_edge, %for.inc32.1.i62.if.end38.i78_crit_edge, %for.inc32.i59.if.end38.i78_crit_edge, %for.body24.preheader.i56.if.end38.i78_crit_edge, %for.end.i53.if.end38.i78_crit_edge, %if.then6.if.end38.i78_crit_edge
  %idx.1.i66 = phi i32 [ 3, %for.end.i53.if.end38.i78_crit_edge ], [ 4, %for.body24.preheader.i56.if.end38.i78_crit_edge ], [ 5, %for.inc32.i59.if.end38.i78_crit_edge ], [ 6, %for.inc32.1.i62.if.end38.i78_crit_edge ], [ 7, %for.inc32.2.i65.if.end38.i78_crit_edge ], [ 3, %if.then6.if.end38.i78_crit_edge ]
  %arrayidx40.i67 = getelementptr [8 x i16], ptr %daddr, i32 0, i32 %idx.1.i66
  %141 = ptrtoint ptr %arrayidx40.i67 to i32
  call void @__asan_load2_noabort(i32 %141)
  %142 = load i16, ptr %arrayidx40.i67, align 2
  %conv.i.i68 = zext i16 %142 to i32
  %143 = ptrtoint ptr %adjustment.i to i32
  call void @__asan_load2_noabort(i32 %143)
  %144 = load i16, ptr %adjustment.i, align 2
  %conv.i85.i70 = zext i16 %144 to i32
  %add.i.i71 = add nuw nsw i32 %conv.i85.i70, %conv.i.i68
  %145 = call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %add.i.i71) #9, !srcloc !28
  %neg.i.i72 = xor i32 %145, -1
  %shr.i.i73 = lshr i32 %neg.i.i72, 16
  %conv.i87.i74 = trunc i32 %shr.i.i73 to i16
  %neg45.i75 = xor i16 %conv.i87.i74, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv.i87.i74)
  %cmp48.i76 = icmp eq i16 %conv.i87.i74, 0
  %spec.store.select.i77 = select i1 %cmp48.i76, i16 0, i16 %neg45.i75
  %146 = ptrtoint ptr %arrayidx40.i67 to i32
  call void @__asan_store2_noabort(i32 %146)
  store i16 %spec.store.select.i77, ptr %arrayidx40.i67, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end38.i78, %for.inc32.2.i65.cleanup_crit_edge, %ipv6_addr_prefix.exit.cleanup_crit_edge, %icmpv6_bounced_ipv6hdr.exit.cleanup_crit_edge, %lor.lhs.false.i.i.i.cleanup_crit_edge, %if.end.i.i.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ -1, %ipv6_addr_prefix.exit.cleanup_crit_edge ], [ -1, %icmpv6_bounced_ipv6hdr.exit.cleanup_crit_edge ], [ -1, %for.inc32.2.i65.cleanup_crit_edge ], [ -1, %if.end38.i78 ], [ -1, %if.end.cleanup_crit_edge ], [ -1, %if.end.i.cleanup_crit_edge ], [ -1, %if.end.i.i.i.cleanup_crit_edge ], [ -1, %lor.lhs.false.i.i.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %bounced_pfx) #6
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_bounced_hdr) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ip6t_npt_checkentry(ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  %pfx = alloca %struct.in6_addr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %targinfo = getelementptr inbounds %struct.xt_tgchk_param, ptr %par, i32 0, i32 4
  %0 = ptrtoint ptr %targinfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %targinfo, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pfx) #6
  %2 = getelementptr inbounds [4 x i32], ptr %pfx, i32 0, i32 1
  %3 = getelementptr inbounds [4 x i32], ptr %pfx, i32 0, i32 2
  %4 = getelementptr inbounds [4 x i32], ptr %pfx, i32 0, i32 3
  %src_pfx_len = getelementptr inbounds %struct.ip6t_npt_tginfo, ptr %1, i32 0, i32 2
  %5 = call ptr @memset(ptr %pfx, i32 255, i32 16)
  %6 = ptrtoint ptr %src_pfx_len to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %src_pfx_len, align 4
  %conv = zext i8 %7 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %7)
  %cmp = icmp ugt i8 %7, 64
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %dst_pfx_len = getelementptr inbounds %struct.ip6t_npt_tginfo, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %dst_pfx_len to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %dst_pfx_len, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %9)
  %cmp3 = icmp ugt i8 %9, 64
  br i1 %cmp3, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %shr.i62 = lshr i32 %conv, 3
  %and.i = and i32 %conv, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %10 = icmp slt i8 %7, 0
  %11 = sub nsw i32 16, %shr.i62
  %12 = select i1 %10, i32 0, i32 %11
  %13 = getelementptr i8, ptr %pfx, i32 %shr.i62
  %14 = call ptr @memset(ptr %13, i32 0, i32 %12)
  %15 = call ptr @memcpy(ptr %pfx, ptr %1, i32 %shr.i62)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.not.i = icmp eq i32 %and.i, 0
  br i1 %cmp.not.i, label %if.end.ipv6_addr_prefix.exit_crit_edge, label %if.then.i

if.end.ipv6_addr_prefix.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %ipv6_addr_prefix.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i = getelementptr [16 x i8], ptr %1, i32 0, i32 %shr.i62
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.i, align 1
  %shr4.i = lshr i32 65280, %and.i
  %18 = trunc i32 %shr4.i to i8
  %conv6.i = and i8 %17, %18
  %arrayidx8.i = getelementptr [16 x i8], ptr %pfx, i32 0, i32 %shr.i62
  %19 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv6.i, ptr %arrayidx8.i, align 1
  br label %ipv6_addr_prefix.exit

ipv6_addr_prefix.exit:                            ; preds = %if.then.i, %if.end.ipv6_addr_prefix.exit_crit_edge
  %20 = ptrtoint ptr %pfx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pfx, align 4
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %1, align 4
  %xor.i = xor i32 %23, %21
  %24 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %2, align 4
  %arrayidx6.i = getelementptr [4 x i32], ptr %1, i32 0, i32 1
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx6.i, align 4
  %xor7.i = xor i32 %27, %25
  %or.i = or i32 %xor7.i, %xor.i
  %28 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %3, align 4
  %arrayidx11.i = getelementptr [4 x i32], ptr %1, i32 0, i32 2
  %30 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx11.i, align 4
  %xor12.i = xor i32 %31, %29
  %or13.i = or i32 %or.i, %xor12.i
  %32 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %4, align 4
  %arrayidx17.i = getelementptr [4 x i32], ptr %1, i32 0, i32 3
  %34 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx17.i, align 4
  %xor18.i = xor i32 %35, %33
  %or19.i = or i32 %or13.i, %xor18.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or19.i)
  %cmp.i = icmp eq i32 %or19.i, 0
  br i1 %cmp.i, label %if.end9, label %ipv6_addr_prefix.exit.cleanup_crit_edge

ipv6_addr_prefix.exit.cleanup_crit_edge:          ; preds = %ipv6_addr_prefix.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9:                                          ; preds = %ipv6_addr_prefix.exit
  %dst_pfx = getelementptr inbounds %struct.ip6t_npt_tginfo, ptr %1, i32 0, i32 1
  %conv11 = zext i8 %9 to i32
  %shr.i3763 = lshr i32 %conv11, 3
  %and.i38 = and i32 %conv11, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %36 = icmp slt i8 %9, 0
  %37 = sub nsw i32 16, %shr.i3763
  %38 = select i1 %36, i32 0, i32 %37
  %39 = getelementptr i8, ptr %pfx, i32 %shr.i3763
  %40 = call ptr @memset(ptr %39, i32 0, i32 %38)
  %41 = call ptr @memcpy(ptr %pfx, ptr %dst_pfx, i32 %shr.i3763)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i38)
  %cmp.not.i39 = icmp eq i32 %and.i38, 0
  br i1 %cmp.not.i39, label %if.end9.ipv6_addr_prefix.exit45_crit_edge, label %if.then.i44

if.end9.ipv6_addr_prefix.exit45_crit_edge:        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %ipv6_addr_prefix.exit45

if.then.i44:                                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i40 = getelementptr [16 x i8], ptr %dst_pfx, i32 0, i32 %shr.i3763
  %42 = ptrtoint ptr %arrayidx.i40 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx.i40, align 1
  %shr4.i41 = lshr i32 65280, %and.i38
  %44 = trunc i32 %shr4.i41 to i8
  %conv6.i42 = and i8 %43, %44
  %arrayidx8.i43 = getelementptr [16 x i8], ptr %pfx, i32 0, i32 %shr.i3763
  %45 = ptrtoint ptr %arrayidx8.i43 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %conv6.i42, ptr %arrayidx8.i43, align 1
  br label %ipv6_addr_prefix.exit45

ipv6_addr_prefix.exit45:                          ; preds = %if.then.i44, %if.end9.ipv6_addr_prefix.exit45_crit_edge
  %46 = ptrtoint ptr %pfx to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %pfx, align 4
  %48 = ptrtoint ptr %dst_pfx to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %dst_pfx, align 4
  %xor.i46 = xor i32 %49, %47
  %50 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %2, align 4
  %arrayidx6.i48 = getelementptr %struct.ip6t_npt_tginfo, ptr %1, i32 0, i32 1, i32 0, i32 1
  %52 = ptrtoint ptr %arrayidx6.i48 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx6.i48, align 4
  %xor7.i49 = xor i32 %53, %51
  %or.i50 = or i32 %xor7.i49, %xor.i46
  %54 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %3, align 4
  %arrayidx11.i52 = getelementptr %struct.ip6t_npt_tginfo, ptr %1, i32 0, i32 1, i32 0, i32 2
  %56 = ptrtoint ptr %arrayidx11.i52 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx11.i52, align 4
  %xor12.i53 = xor i32 %57, %55
  %or13.i54 = or i32 %or.i50, %xor12.i53
  %58 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %4, align 4
  %arrayidx17.i56 = getelementptr %struct.ip6t_npt_tginfo, ptr %1, i32 0, i32 1, i32 0, i32 3
  %60 = ptrtoint ptr %arrayidx17.i56 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx17.i56, align 4
  %xor18.i57 = xor i32 %61, %59
  %or19.i58 = or i32 %or13.i54, %xor18.i57
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or19.i58)
  %cmp.i59 = icmp eq i32 %or19.i58, 0
  br i1 %cmp.i59, label %if.end15, label %ipv6_addr_prefix.exit45.cleanup_crit_edge

ipv6_addr_prefix.exit45.cleanup_crit_edge:        ; preds = %ipv6_addr_prefix.exit45
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end15:                                         ; preds = %ipv6_addr_prefix.exit45
  call void @__sanitizer_cov_trace_pc() #8
  %call17 = tail call i32 @csum_partial(ptr noundef %1, i32 noundef 16, i32 noundef 0) #6
  %call19 = tail call i32 @csum_partial(ptr noundef %dst_pfx, i32 noundef 16, i32 noundef 0) #6
  %neg.i = xor i32 %call19, -1
  %add.i.i = add i32 %call17, %neg.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %neg.i)
  %cmp.i.i = icmp ult i32 %add.i.i, %neg.i
  %conv.i.i = zext i1 %cmp.i.i to i32
  %add1.i.i = add i32 %add.i.i, %conv.i.i
  %62 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %add1.i.i) #9, !srcloc !28
  %neg.i60 = xor i32 %62, -1
  %shr.i61 = lshr i32 %neg.i60, 16
  %conv.i = trunc i32 %shr.i61 to i16
  %neg = xor i16 %conv.i, -1
  %adjustment = getelementptr inbounds %struct.ip6t_npt_tginfo, ptr %1, i32 0, i32 4
  %63 = ptrtoint ptr %adjustment to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %neg, ptr %adjustment, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %ipv6_addr_prefix.exit45.cleanup_crit_edge, %ipv6_addr_prefix.exit.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end15 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %ipv6_addr_prefix.exit.cleanup_crit_edge ], [ -22, %ipv6_addr_prefix.exit45.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pfx) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ip6t_dnpt_tg(ptr noundef %skb, ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  %_bounced_hdr = alloca %struct.ipv6hdr, align 4
  %bounced_pfx = alloca %struct.in6_addr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %_bounced_hdr) #6
  %3 = call ptr @memset(ptr %_bounced_hdr, i32 255, i32 40)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %bounced_pfx) #6
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %4 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %6 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %7 to i32
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 %conv.i.i
  %daddr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 6
  %src_pfx_len.i = getelementptr inbounds %struct.ip6t_npt_tginfo, ptr %2, i32 0, i32 2
  %8 = ptrtoint ptr %src_pfx_len.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %src_pfx_len.i, align 4
  %dst_pfx_len.i = getelementptr inbounds %struct.ip6t_npt_tginfo, ptr %2, i32 0, i32 3
  %10 = ptrtoint ptr %dst_pfx_len.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %dst_pfx_len.i, align 1
  %12 = tail call i8 @llvm.umax.i8(i8 %9, i8 %11) #6
  %cond.i = zext i8 %12 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cmp590.not.i = icmp eq i8 %12, 0
  br i1 %cmp590.not.i, label %entry.if.end_crit_edge, label %for.body.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

for.body.i:                                       ; preds = %entry
  %dst_pfx.i = getelementptr inbounds %struct.ip6t_npt_tginfo, ptr %2, i32 0, i32 1
  %sub9.i = sub nsw i32 32, %cond.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %12)
  %cmp7.i = icmp ugt i8 %12, 31
  %notmask.i = shl nsw i32 -1, %sub9.i
  %sub10.i = xor i32 %notmask.i, -1
  %mask.0.i = select i1 %cmp7.i, i32 0, i32 %sub10.i
  %13 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %daddr, align 4
  %and.i = and i32 %mask.0.i, %14
  store i32 %and.i, ptr %daddr, align 4
  %neg.i = xor i32 %mask.0.i, -1
  %15 = ptrtoint ptr %dst_pfx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dst_pfx.i, align 4
  %and13.i = and i32 %16, %neg.i
  %or.i = or i32 %and13.i, %and.i
  store i32 %or.i, ptr %daddr, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %12)
  %cmp5.i = icmp ugt i8 %12, 32
  br i1 %cmp5.i, label %for.body.i.1, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body.i.1:                                     ; preds = %for.body.i
  %17 = and i32 %cond.i, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %17)
  %cmp7.i.1.not = icmp eq i32 %17, 32
  %add.i.1 = sub nsw i32 64, %cond.i
  %notmask.i.1 = shl nsw i32 -1, %add.i.1
  %sub10.i.1 = xor i32 %notmask.i.1, -1
  %mask.0.i.1 = select i1 %cmp7.i.1.not, i32 %sub10.i.1, i32 0
  %arrayidx.i.1 = getelementptr [4 x i32], ptr %daddr, i32 0, i32 1
  %18 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i.1, align 4
  %and.i.1 = and i32 %mask.0.i.1, %19
  store i32 %and.i.1, ptr %arrayidx.i.1, align 4
  %neg.i.1 = xor i32 %mask.0.i.1, -1
  %arrayidx12.i.1 = getelementptr %struct.ip6t_npt_tginfo, ptr %2, i32 0, i32 1, i32 0, i32 1
  %20 = ptrtoint ptr %arrayidx12.i.1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx12.i.1, align 4
  %and13.i.1 = and i32 %21, %neg.i.1
  %or.i.1 = or i32 %and13.i.1, %and.i.1
  store i32 %or.i.1, ptr %arrayidx.i.1, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %12)
  %cmp5.i.1 = icmp ugt i8 %12, 64
  br i1 %cmp5.i.1, label %for.body.i.2, label %for.body.i.1.for.end.i_crit_edge

for.body.i.1.for.end.i_crit_edge:                 ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body.i.2:                                     ; preds = %for.body.i.1
  %22 = and i32 %cond.i, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %22)
  %cmp7.i.2.not = icmp eq i32 %22, 64
  %add.i.2 = sub nsw i32 96, %cond.i
  %notmask.i.2 = shl nsw i32 -1, %add.i.2
  %sub10.i.2 = xor i32 %notmask.i.2, -1
  %mask.0.i.2 = select i1 %cmp7.i.2.not, i32 %sub10.i.2, i32 0
  %arrayidx.i.2 = getelementptr [4 x i32], ptr %daddr, i32 0, i32 2
  %23 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.i.2, align 4
  %and.i.2 = and i32 %mask.0.i.2, %24
  store i32 %and.i.2, ptr %arrayidx.i.2, align 4
  %neg.i.2 = xor i32 %mask.0.i.2, -1
  %arrayidx12.i.2 = getelementptr %struct.ip6t_npt_tginfo, ptr %2, i32 0, i32 1, i32 0, i32 2
  %25 = ptrtoint ptr %arrayidx12.i.2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx12.i.2, align 4
  %and13.i.2 = and i32 %26, %neg.i.2
  %or.i.2 = or i32 %and13.i.2, %and.i.2
  store i32 %or.i.2, ptr %arrayidx.i.2, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 96, i8 %12)
  %cmp5.i.2 = icmp ugt i8 %12, 96
  br i1 %cmp5.i.2, label %for.body.i.3, label %for.body.i.2.for.end.i_crit_edge

for.body.i.2.for.end.i_crit_edge:                 ; preds = %for.body.i.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body.i.3:                                     ; preds = %for.body.i.2
  %27 = and i32 %cond.i, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 96, i32 %27)
  %cmp7.i.3.not = icmp eq i32 %27, 96
  %add.i.3 = sub nsw i32 128, %cond.i
  %notmask.i.3 = shl nsw i32 -1, %add.i.3
  %sub10.i.3 = xor i32 %notmask.i.3, -1
  %mask.0.i.3 = select i1 %cmp7.i.3.not, i32 %sub10.i.3, i32 0
  %arrayidx.i.3 = getelementptr [4 x i32], ptr %daddr, i32 0, i32 3
  %28 = ptrtoint ptr %arrayidx.i.3 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.i.3, align 4
  %and.i.3 = and i32 %mask.0.i.3, %29
  store i32 %and.i.3, ptr %arrayidx.i.3, align 4
  %neg.i.3 = xor i32 %mask.0.i.3, -1
  %arrayidx12.i.3 = getelementptr %struct.ip6t_npt_tginfo, ptr %2, i32 0, i32 1, i32 0, i32 3
  %30 = ptrtoint ptr %arrayidx12.i.3 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx12.i.3, align 4
  %and13.i.3 = and i32 %31, %neg.i.3
  %or.i.3 = or i32 %and13.i.3, %and.i.3
  store i32 %or.i.3, ptr %arrayidx.i.3, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %12)
  %cmp5.i.3 = icmp ugt i8 %12, -128
  br i1 %cmp5.i.3, label %for.body.i.4, label %for.body.i.3.for.end.i_crit_edge

for.body.i.3.for.end.i_crit_edge:                 ; preds = %for.body.i.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body.i.4:                                     ; preds = %for.body.i.3
  %32 = and i32 %cond.i, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %32)
  %cmp7.i.4.not = icmp eq i32 %32, 128
  %add.i.4 = sub nsw i32 160, %cond.i
  %notmask.i.4 = shl nsw i32 -1, %add.i.4
  %sub10.i.4 = xor i32 %notmask.i.4, -1
  %mask.0.i.4 = select i1 %cmp7.i.4.not, i32 %sub10.i.4, i32 0
  %arrayidx.i.4 = getelementptr [4 x i32], ptr %daddr, i32 0, i32 4
  %33 = ptrtoint ptr %arrayidx.i.4 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx.i.4, align 4
  %and.i.4 = and i32 %mask.0.i.4, %34
  store i32 %and.i.4, ptr %arrayidx.i.4, align 4
  %neg.i.4 = xor i32 %mask.0.i.4, -1
  %arrayidx12.i.4 = getelementptr %struct.ip6t_npt_tginfo, ptr %2, i32 0, i32 2
  %35 = ptrtoint ptr %arrayidx12.i.4 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx12.i.4, align 4
  %and13.i.4 = and i32 %36, %neg.i.4
  %or.i.4 = or i32 %and13.i.4, %and.i.4
  store i32 %or.i.4, ptr %arrayidx.i.4, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -96, i8 %12)
  %cmp5.i.4 = icmp ugt i8 %12, -96
  br i1 %cmp5.i.4, label %for.body.i.5, label %for.body.i.4.for.end.i_crit_edge

for.body.i.4.for.end.i_crit_edge:                 ; preds = %for.body.i.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body.i.5:                                     ; preds = %for.body.i.4
  %37 = and i32 %cond.i, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 160, i32 %37)
  %cmp7.i.5.not = icmp eq i32 %37, 160
  %add.i.5 = sub nsw i32 192, %cond.i
  %notmask.i.5 = shl nsw i32 -1, %add.i.5
  %sub10.i.5 = xor i32 %notmask.i.5, -1
  %mask.0.i.5 = select i1 %cmp7.i.5.not, i32 %sub10.i.5, i32 0
  %arrayidx.i.5 = getelementptr [4 x i32], ptr %daddr, i32 0, i32 5
  %38 = ptrtoint ptr %arrayidx.i.5 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx.i.5, align 4
  %and.i.5 = and i32 %mask.0.i.5, %39
  store i32 %and.i.5, ptr %arrayidx.i.5, align 4
  %neg.i.5 = xor i32 %mask.0.i.5, -1
  %arrayidx12.i.5 = getelementptr %struct.ip6t_npt_tginfo, ptr %2, i32 1
  %40 = ptrtoint ptr %arrayidx12.i.5 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx12.i.5, align 4
  %and13.i.5 = and i32 %41, %neg.i.5
  %or.i.5 = or i32 %and13.i.5, %and.i.5
  store i32 %or.i.5, ptr %arrayidx.i.5, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -64, i8 %12)
  %cmp5.i.5 = icmp ugt i8 %12, -64
  br i1 %cmp5.i.5, label %for.body.i.6, label %for.body.i.5.for.end.i_crit_edge

for.body.i.5.for.end.i_crit_edge:                 ; preds = %for.body.i.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body.i.6:                                     ; preds = %for.body.i.5
  %42 = and i32 %cond.i, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 192, i32 %42)
  %cmp7.i.6.not = icmp eq i32 %42, 192
  %add.i.6 = sub nsw i32 224, %cond.i
  %notmask.i.6 = shl nsw i32 -1, %add.i.6
  %sub10.i.6 = xor i32 %notmask.i.6, -1
  %mask.0.i.6 = select i1 %cmp7.i.6.not, i32 %sub10.i.6, i32 0
  %arrayidx.i.6 = getelementptr [4 x i32], ptr %daddr, i32 0, i32 6
  %43 = ptrtoint ptr %arrayidx.i.6 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx.i.6, align 4
  %and.i.6 = and i32 %mask.0.i.6, %44
  store i32 %and.i.6, ptr %arrayidx.i.6, align 4
  %neg.i.6 = xor i32 %mask.0.i.6, -1
  %arrayidx12.i.6 = getelementptr %struct.ip6t_npt_tginfo, ptr %2, i32 1, i32 0, i32 0, i32 1
  %45 = ptrtoint ptr %arrayidx12.i.6 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx12.i.6, align 4
  %and13.i.6 = and i32 %46, %neg.i.6
  %or.i.6 = or i32 %and13.i.6, %and.i.6
  store i32 %or.i.6, ptr %arrayidx.i.6, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -32, i8 %12)
  %cmp5.i.6 = icmp ugt i8 %12, -32
  br i1 %cmp5.i.6, label %for.body.i.7, label %for.body.i.6.for.end.i_crit_edge

for.body.i.6.for.end.i_crit_edge:                 ; preds = %for.body.i.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body.i.7:                                     ; preds = %for.body.i.6
  call void @__sanitizer_cov_trace_pc() #8
  %47 = and i32 %cond.i, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 224, i32 %47)
  %cmp7.i.7.not = icmp eq i32 %47, 224
  %add.i.7 = sub nuw nsw i32 256, %cond.i
  %notmask.i.7 = shl nsw i32 -1, %add.i.7
  %sub10.i.7 = xor i32 %notmask.i.7, -1
  %mask.0.i.7 = select i1 %cmp7.i.7.not, i32 %sub10.i.7, i32 0
  %arrayidx.i.7 = getelementptr [4 x i32], ptr %daddr, i32 0, i32 7
  %48 = ptrtoint ptr %arrayidx.i.7 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx.i.7, align 4
  %and.i.7 = and i32 %mask.0.i.7, %49
  store i32 %and.i.7, ptr %arrayidx.i.7, align 4
  %neg.i.7 = xor i32 %mask.0.i.7, -1
  %arrayidx12.i.7 = getelementptr %struct.ip6t_npt_tginfo, ptr %2, i32 1, i32 0, i32 0, i32 2
  %50 = ptrtoint ptr %arrayidx12.i.7 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx12.i.7, align 4
  %and13.i.7 = and i32 %51, %neg.i.7
  %or.i.7 = or i32 %and13.i.7, %and.i.7
  store i32 %or.i.7, ptr %arrayidx.i.7, align 4
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.7, %for.body.i.6.for.end.i_crit_edge, %for.body.i.5.for.end.i_crit_edge, %for.body.i.4.for.end.i_crit_edge, %for.body.i.3.for.end.i_crit_edge, %for.body.i.2.for.end.i_crit_edge, %for.body.i.1.for.end.i_crit_edge, %for.body.i.for.end.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 49, i8 %12)
  %cmp17.i = icmp ult i8 %12, 49
  br i1 %cmp17.i, label %for.end.i.if.end_crit_edge, label %for.body24.preheader.i

for.end.i.if.end_crit_edge:                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

for.body24.preheader.i:                           ; preds = %for.end.i
  %arrayidx26.i = getelementptr [8 x i16], ptr %daddr, i32 0, i32 4
  %52 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %arrayidx26.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %53)
  %cmp28.not.i = icmp eq i16 %53, -1
  br i1 %cmp28.not.i, label %for.inc32.i, label %for.body24.preheader.i.if.end_crit_edge

for.body24.preheader.i.if.end_crit_edge:          ; preds = %for.body24.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

for.inc32.i:                                      ; preds = %for.body24.preheader.i
  %arrayidx26.1.i = getelementptr [8 x i16], ptr %daddr, i32 0, i32 5
  %54 = ptrtoint ptr %arrayidx26.1.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %arrayidx26.1.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %55)
  %cmp28.not.1.i = icmp eq i16 %55, -1
  br i1 %cmp28.not.1.i, label %for.inc32.1.i, label %for.inc32.i.if.end_crit_edge

for.inc32.i.if.end_crit_edge:                     ; preds = %for.inc32.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

for.inc32.1.i:                                    ; preds = %for.inc32.i
  %arrayidx26.2.i = getelementptr [8 x i16], ptr %daddr, i32 0, i32 6
  %56 = ptrtoint ptr %arrayidx26.2.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %arrayidx26.2.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %57)
  %cmp28.not.2.i = icmp eq i16 %57, -1
  br i1 %cmp28.not.2.i, label %for.inc32.2.i, label %for.inc32.1.i.if.end_crit_edge

for.inc32.1.i.if.end_crit_edge:                   ; preds = %for.inc32.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

for.inc32.2.i:                                    ; preds = %for.inc32.1.i
  %arrayidx26.3.i = getelementptr [8 x i16], ptr %daddr, i32 0, i32 7
  %58 = ptrtoint ptr %arrayidx26.3.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %arrayidx26.3.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %59)
  %cmp28.not.3.i = icmp eq i16 %59, -1
  br i1 %cmp28.not.3.i, label %if.then, label %for.inc32.2.i.if.end_crit_edge

for.inc32.2.i.if.end_crit_edge:                   ; preds = %for.inc32.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %for.inc32.2.i
  call void @__sanitizer_cov_trace_pc() #8
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  tail call void @icmp6_send(ptr noundef %skb, i8 noundef zeroext 4, i8 noundef zeroext 0, i32 noundef 24, ptr noundef null, ptr noundef %cb.i) #6
  br label %cleanup

if.end:                                           ; preds = %for.inc32.2.i.if.end_crit_edge, %for.inc32.1.i.if.end_crit_edge, %for.inc32.i.if.end_crit_edge, %for.body24.preheader.i.if.end_crit_edge, %for.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %idx.1.i = phi i32 [ 3, %for.end.i.if.end_crit_edge ], [ 4, %for.body24.preheader.i.if.end_crit_edge ], [ 5, %for.inc32.i.if.end_crit_edge ], [ 6, %for.inc32.1.i.if.end_crit_edge ], [ 7, %for.inc32.2.i.if.end_crit_edge ], [ 3, %entry.if.end_crit_edge ]
  %arrayidx40.i = getelementptr [8 x i16], ptr %daddr, i32 0, i32 %idx.1.i
  %60 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %arrayidx40.i, align 2
  %conv.i.i21 = zext i16 %61 to i32
  %adjustment.i = getelementptr inbounds %struct.ip6t_npt_tginfo, ptr %2, i32 0, i32 4
  %62 = ptrtoint ptr %adjustment.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %adjustment.i, align 2
  %conv.i85.i = zext i16 %63 to i32
  %add.i.i = add nuw nsw i32 %conv.i85.i, %conv.i.i21
  %64 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %add.i.i) #9, !srcloc !28
  %neg.i.i = xor i32 %64, -1
  %shr.i.i = lshr i32 %neg.i.i, 16
  %conv.i87.i = trunc i32 %shr.i.i to i16
  %neg45.i = xor i16 %conv.i87.i, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv.i87.i)
  %cmp48.i = icmp eq i16 %conv.i87.i, 0
  %spec.store.select.i = select i1 %cmp48.i, i16 0, i16 %neg45.i
  %65 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %spec.store.select.i, ptr %arrayidx40.i, align 2
  %66 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %head.i.i, align 8
  %68 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i.i = zext i16 %69 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %67, i32 %conv.i.i.i
  %nexthdr.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i.i, i32 0, i32 3
  %70 = ptrtoint ptr %nexthdr.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %nexthdr.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 58, i8 %71)
  %cmp.not.i = icmp eq i8 %71, 58
  br i1 %cmp.not.i, label %if.end.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %transport_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %72 = ptrtoint ptr %transport_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %transport_header.i.i.i, align 2
  %conv.i.i13.i = zext i16 %73 to i32
  %add.ptr.i.i14.i = getelementptr i8, ptr %67, i32 %conv.i.i13.i
  %74 = ptrtoint ptr %add.ptr.i.i14.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %add.ptr.i.i14.i, align 4
  %conv3.i = zext i8 %75 to i32
  %type.off.i.i = add nsw i32 %conv3.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %type.off.i.i)
  %switch.i.i = icmp ult i32 %type.off.i.i, 4
  br i1 %switch.i.i, label %if.end6.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6.i:                                        ; preds = %if.end.i
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %76 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %add.ptr.i.i14.i to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %77 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %add.i22 = add i32 %sub.ptr.sub.i.i, 8
  %len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %78 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %len.i.i.i, align 4
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %80 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %data_len.i.i.i, align 8
  %add.neg.i = add i32 %79, -8
  %82 = add i32 %81, %sub.ptr.sub.i.i
  %sub.i1.i.i = sub i32 %add.neg.i, %82
  call void @__sanitizer_cov_trace_const_cmp4(i32 39, i32 %sub.i1.i.i)
  %cmp.i.i.i = icmp sgt i32 %sub.i1.i.i, 39
  br i1 %cmp.i.i.i, label %icmpv6_bounced_ipv6hdr.exit, label %if.end.i.i.i, !prof !29

if.end.i.i.i:                                     ; preds = %if.end6.i
  %tobool2.not.i.i.i = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i.i, label %if.end.i.i.i.cleanup_crit_edge, label %lor.lhs.false.i.i.i

if.end.i.i.i.cleanup_crit_edge:                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false.i.i.i:                              ; preds = %if.end.i.i.i
  %call.i.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %add.i22, ptr noundef nonnull %_bounced_hdr, i32 noundef 40) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp3.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp3.i.i.i, label %lor.lhs.false.i.i.i.cleanup_crit_edge, label %lor.lhs.false.i.i.i.if.then3_crit_edge

lor.lhs.false.i.i.i.if.then3_crit_edge:           ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then3

lor.lhs.false.i.i.i.cleanup_crit_edge:            ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

icmpv6_bounced_ipv6hdr.exit:                      ; preds = %if.end6.i
  %add.ptr.i.i20.i = getelementptr i8, ptr %77, i32 %add.i22
  %tobool.not = icmp eq ptr %add.ptr.i.i20.i, null
  br i1 %tobool.not, label %icmpv6_bounced_ipv6hdr.exit.cleanup_crit_edge, label %icmpv6_bounced_ipv6hdr.exit.if.then3_crit_edge

icmpv6_bounced_ipv6hdr.exit.if.then3_crit_edge:   ; preds = %icmpv6_bounced_ipv6hdr.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then3

icmpv6_bounced_ipv6hdr.exit.cleanup_crit_edge:    ; preds = %icmpv6_bounced_ipv6hdr.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then3:                                         ; preds = %icmpv6_bounced_ipv6hdr.exit.if.then3_crit_edge, %lor.lhs.false.i.i.i.if.then3_crit_edge
  %retval.0.i2387 = phi ptr [ %add.ptr.i.i20.i, %icmpv6_bounced_ipv6hdr.exit.if.then3_crit_edge ], [ %_bounced_hdr, %lor.lhs.false.i.i.i.if.then3_crit_edge ]
  %saddr = getelementptr inbounds %struct.ipv6hdr, ptr %retval.0.i2387, i32 0, i32 5
  %83 = ptrtoint ptr %src_pfx_len.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %src_pfx_len.i, align 4
  %conv = zext i8 %84 to i32
  %shr.i88 = lshr i32 %conv, 3
  %and.i24 = and i32 %conv, 7
  %85 = call ptr @memset(ptr %bounced_pfx, i32 0, i32 16)
  %86 = call ptr @memcpy(ptr %bounced_pfx, ptr %saddr, i32 %shr.i88)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i24)
  %cmp.not.i25 = icmp eq i32 %and.i24, 0
  br i1 %cmp.not.i25, label %if.then3.ipv6_addr_prefix.exit_crit_edge, label %if.then.i

if.then3.ipv6_addr_prefix.exit_crit_edge:         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  br label %ipv6_addr_prefix.exit

if.then.i:                                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i26 = getelementptr [16 x i8], ptr %saddr, i32 0, i32 %shr.i88
  %87 = ptrtoint ptr %arrayidx.i26 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %arrayidx.i26, align 1
  %shr4.i = lshr i32 65280, %and.i24
  %89 = trunc i32 %shr4.i to i8
  %conv6.i = and i8 %88, %89
  %arrayidx8.i = getelementptr [16 x i8], ptr %bounced_pfx, i32 0, i32 %shr.i88
  %90 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %conv6.i, ptr %arrayidx8.i, align 1
  br label %ipv6_addr_prefix.exit

ipv6_addr_prefix.exit:                            ; preds = %if.then.i, %if.then3.ipv6_addr_prefix.exit_crit_edge
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(16) %bounced_pfx, ptr noundef dereferenceable(16) %2, i32 16) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp = icmp eq i32 %bcmp, 0
  br i1 %cmp, label %if.then6, label %ipv6_addr_prefix.exit.cleanup_crit_edge

ipv6_addr_prefix.exit.cleanup_crit_edge:          ; preds = %ipv6_addr_prefix.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then6:                                         ; preds = %ipv6_addr_prefix.exit
  %91 = ptrtoint ptr %dst_pfx_len.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %dst_pfx_len.i, align 1
  %93 = call i8 @llvm.umax.i8(i8 %84, i8 %92) #6
  %cond.i30 = zext i8 %93 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %93)
  %cmp590.not.i31 = icmp eq i8 %93, 0
  br i1 %cmp590.not.i31, label %if.then6.if.end38.i78_crit_edge, label %for.body.i51

if.then6.if.end38.i78_crit_edge:                  ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38.i78

for.body.i51:                                     ; preds = %if.then6
  %dst_pfx.i33 = getelementptr inbounds %struct.ip6t_npt_tginfo, ptr %2, i32 0, i32 1
  %sub9.i32 = sub nsw i32 32, %cond.i30
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %93)
  %cmp7.i37 = icmp ugt i8 %93, 31
  %notmask.i39 = shl nsw i32 -1, %sub9.i32
  %sub10.i40 = xor i32 %notmask.i39, -1
  %mask.0.i41 = select i1 %cmp7.i37, i32 0, i32 %sub10.i40
  %94 = ptrtoint ptr %saddr to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %saddr, align 4
  %and.i44 = and i32 %mask.0.i41, %95
  store i32 %and.i44, ptr %saddr, align 4
  %neg.i45 = xor i32 %mask.0.i41, -1
  %96 = ptrtoint ptr %dst_pfx.i33 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %dst_pfx.i33, align 4
  %and13.i47 = and i32 %97, %neg.i45
  %or.i48 = or i32 %and13.i47, %and.i44
  store i32 %or.i48, ptr %saddr, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %93)
  %cmp5.i50 = icmp ugt i8 %93, 32
  br i1 %cmp5.i50, label %for.body.i51.1, label %for.body.i51.for.end.i53_crit_edge

for.body.i51.for.end.i53_crit_edge:               ; preds = %for.body.i51
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i53

for.body.i51.1:                                   ; preds = %for.body.i51
  %98 = and i32 %cond.i30, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %98)
  %cmp7.i37.1.not = icmp eq i32 %98, 32
  %add.i38.1 = sub nsw i32 64, %cond.i30
  %notmask.i39.1 = shl nsw i32 -1, %add.i38.1
  %sub10.i40.1 = xor i32 %notmask.i39.1, -1
  %mask.0.i41.1 = select i1 %cmp7.i37.1.not, i32 %sub10.i40.1, i32 0
  %arrayidx.i43.1 = getelementptr %struct.ipv6hdr, ptr %retval.0.i2387, i32 0, i32 5, i32 0, i32 0, i32 1
  %99 = ptrtoint ptr %arrayidx.i43.1 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %arrayidx.i43.1, align 4
  %and.i44.1 = and i32 %mask.0.i41.1, %100
  store i32 %and.i44.1, ptr %arrayidx.i43.1, align 4
  %neg.i45.1 = xor i32 %mask.0.i41.1, -1
  %arrayidx12.i46.1 = getelementptr %struct.ip6t_npt_tginfo, ptr %2, i32 0, i32 1, i32 0, i32 1
  %101 = ptrtoint ptr %arrayidx12.i46.1 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %arrayidx12.i46.1, align 4
  %and13.i47.1 = and i32 %102, %neg.i45.1
  %or.i48.1 = or i32 %and13.i47.1, %and.i44.1
  store i32 %or.i48.1, ptr %arrayidx.i43.1, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %93)
  %cmp5.i50.1 = icmp ugt i8 %93, 64
  br i1 %cmp5.i50.1, label %for.body.i51.2, label %for.body.i51.1.for.end.i53_crit_edge

for.body.i51.1.for.end.i53_crit_edge:             ; preds = %for.body.i51.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i53

for.body.i51.2:                                   ; preds = %for.body.i51.1
  %103 = and i32 %cond.i30, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %103)
  %cmp7.i37.2.not = icmp eq i32 %103, 64
  %add.i38.2 = sub nsw i32 96, %cond.i30
  %notmask.i39.2 = shl nsw i32 -1, %add.i38.2
  %sub10.i40.2 = xor i32 %notmask.i39.2, -1
  %mask.0.i41.2 = select i1 %cmp7.i37.2.not, i32 %sub10.i40.2, i32 0
  %arrayidx.i43.2 = getelementptr %struct.ipv6hdr, ptr %retval.0.i2387, i32 0, i32 5, i32 0, i32 0, i32 2
  %104 = ptrtoint ptr %arrayidx.i43.2 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %arrayidx.i43.2, align 4
  %and.i44.2 = and i32 %mask.0.i41.2, %105
  store i32 %and.i44.2, ptr %arrayidx.i43.2, align 4
  %neg.i45.2 = xor i32 %mask.0.i41.2, -1
  %arrayidx12.i46.2 = getelementptr %struct.ip6t_npt_tginfo, ptr %2, i32 0, i32 1, i32 0, i32 2
  %106 = ptrtoint ptr %arrayidx12.i46.2 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %arrayidx12.i46.2, align 4
  %and13.i47.2 = and i32 %107, %neg.i45.2
  %or.i48.2 = or i32 %and13.i47.2, %and.i44.2
  store i32 %or.i48.2, ptr %arrayidx.i43.2, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 96, i8 %93)
  %cmp5.i50.2 = icmp ugt i8 %93, 96
  br i1 %cmp5.i50.2, label %for.body.i51.3, label %for.body.i51.2.for.end.i53_crit_edge

for.body.i51.2.for.end.i53_crit_edge:             ; preds = %for.body.i51.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i53

for.body.i51.3:                                   ; preds = %for.body.i51.2
  %108 = and i32 %cond.i30, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 96, i32 %108)
  %cmp7.i37.3.not = icmp eq i32 %108, 96
  %add.i38.3 = sub nsw i32 128, %cond.i30
  %notmask.i39.3 = shl nsw i32 -1, %add.i38.3
  %sub10.i40.3 = xor i32 %notmask.i39.3, -1
  %mask.0.i41.3 = select i1 %cmp7.i37.3.not, i32 %sub10.i40.3, i32 0
  %arrayidx.i43.3 = getelementptr %struct.ipv6hdr, ptr %retval.0.i2387, i32 0, i32 5, i32 0, i32 0, i32 3
  %109 = ptrtoint ptr %arrayidx.i43.3 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %arrayidx.i43.3, align 4
  %and.i44.3 = and i32 %mask.0.i41.3, %110
  store i32 %and.i44.3, ptr %arrayidx.i43.3, align 4
  %neg.i45.3 = xor i32 %mask.0.i41.3, -1
  %arrayidx12.i46.3 = getelementptr %struct.ip6t_npt_tginfo, ptr %2, i32 0, i32 1, i32 0, i32 3
  %111 = ptrtoint ptr %arrayidx12.i46.3 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %arrayidx12.i46.3, align 4
  %and13.i47.3 = and i32 %112, %neg.i45.3
  %or.i48.3 = or i32 %and13.i47.3, %and.i44.3
  store i32 %or.i48.3, ptr %arrayidx.i43.3, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %93)
  %cmp5.i50.3 = icmp ugt i8 %93, -128
  br i1 %cmp5.i50.3, label %for.body.i51.4, label %for.body.i51.3.for.end.i53_crit_edge

for.body.i51.3.for.end.i53_crit_edge:             ; preds = %for.body.i51.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i53

for.body.i51.4:                                   ; preds = %for.body.i51.3
  %113 = and i32 %cond.i30, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %113)
  %cmp7.i37.4.not = icmp eq i32 %113, 128
  %add.i38.4 = sub nsw i32 160, %cond.i30
  %notmask.i39.4 = shl nsw i32 -1, %add.i38.4
  %sub10.i40.4 = xor i32 %notmask.i39.4, -1
  %mask.0.i41.4 = select i1 %cmp7.i37.4.not, i32 %sub10.i40.4, i32 0
  %arrayidx.i43.4 = getelementptr %struct.ipv6hdr, ptr %retval.0.i2387, i32 0, i32 6
  %114 = ptrtoint ptr %arrayidx.i43.4 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %arrayidx.i43.4, align 4
  %and.i44.4 = and i32 %mask.0.i41.4, %115
  store i32 %and.i44.4, ptr %arrayidx.i43.4, align 4
  %neg.i45.4 = xor i32 %mask.0.i41.4, -1
  %arrayidx12.i46.4 = getelementptr %struct.ip6t_npt_tginfo, ptr %2, i32 0, i32 2
  %116 = ptrtoint ptr %arrayidx12.i46.4 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %arrayidx12.i46.4, align 4
  %and13.i47.4 = and i32 %117, %neg.i45.4
  %or.i48.4 = or i32 %and13.i47.4, %and.i44.4
  store i32 %or.i48.4, ptr %arrayidx.i43.4, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -96, i8 %93)
  %cmp5.i50.4 = icmp ugt i8 %93, -96
  br i1 %cmp5.i50.4, label %for.body.i51.5, label %for.body.i51.4.for.end.i53_crit_edge

for.body.i51.4.for.end.i53_crit_edge:             ; preds = %for.body.i51.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i53

for.body.i51.5:                                   ; preds = %for.body.i51.4
  %118 = and i32 %cond.i30, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 160, i32 %118)
  %cmp7.i37.5.not = icmp eq i32 %118, 160
  %add.i38.5 = sub nsw i32 192, %cond.i30
  %notmask.i39.5 = shl nsw i32 -1, %add.i38.5
  %sub10.i40.5 = xor i32 %notmask.i39.5, -1
  %mask.0.i41.5 = select i1 %cmp7.i37.5.not, i32 %sub10.i40.5, i32 0
  %arrayidx.i43.5 = getelementptr %struct.ipv6hdr, ptr %retval.0.i2387, i32 0, i32 6, i32 0, i32 0, i32 1
  %119 = ptrtoint ptr %arrayidx.i43.5 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %arrayidx.i43.5, align 4
  %and.i44.5 = and i32 %mask.0.i41.5, %120
  store i32 %and.i44.5, ptr %arrayidx.i43.5, align 4
  %neg.i45.5 = xor i32 %mask.0.i41.5, -1
  %arrayidx12.i46.5 = getelementptr %struct.ip6t_npt_tginfo, ptr %2, i32 1
  %121 = ptrtoint ptr %arrayidx12.i46.5 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %arrayidx12.i46.5, align 4
  %and13.i47.5 = and i32 %122, %neg.i45.5
  %or.i48.5 = or i32 %and13.i47.5, %and.i44.5
  store i32 %or.i48.5, ptr %arrayidx.i43.5, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -64, i8 %93)
  %cmp5.i50.5 = icmp ugt i8 %93, -64
  br i1 %cmp5.i50.5, label %for.body.i51.6, label %for.body.i51.5.for.end.i53_crit_edge

for.body.i51.5.for.end.i53_crit_edge:             ; preds = %for.body.i51.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i53

for.body.i51.6:                                   ; preds = %for.body.i51.5
  %123 = and i32 %cond.i30, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 192, i32 %123)
  %cmp7.i37.6.not = icmp eq i32 %123, 192
  %add.i38.6 = sub nsw i32 224, %cond.i30
  %notmask.i39.6 = shl nsw i32 -1, %add.i38.6
  %sub10.i40.6 = xor i32 %notmask.i39.6, -1
  %mask.0.i41.6 = select i1 %cmp7.i37.6.not, i32 %sub10.i40.6, i32 0
  %arrayidx.i43.6 = getelementptr %struct.ipv6hdr, ptr %retval.0.i2387, i32 0, i32 6, i32 0, i32 0, i32 2
  %124 = ptrtoint ptr %arrayidx.i43.6 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %arrayidx.i43.6, align 4
  %and.i44.6 = and i32 %mask.0.i41.6, %125
  store i32 %and.i44.6, ptr %arrayidx.i43.6, align 4
  %neg.i45.6 = xor i32 %mask.0.i41.6, -1
  %arrayidx12.i46.6 = getelementptr %struct.ip6t_npt_tginfo, ptr %2, i32 1, i32 0, i32 0, i32 1
  %126 = ptrtoint ptr %arrayidx12.i46.6 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %arrayidx12.i46.6, align 4
  %and13.i47.6 = and i32 %127, %neg.i45.6
  %or.i48.6 = or i32 %and13.i47.6, %and.i44.6
  store i32 %or.i48.6, ptr %arrayidx.i43.6, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -32, i8 %93)
  %cmp5.i50.6 = icmp ugt i8 %93, -32
  br i1 %cmp5.i50.6, label %for.body.i51.7, label %for.body.i51.6.for.end.i53_crit_edge

for.body.i51.6.for.end.i53_crit_edge:             ; preds = %for.body.i51.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i53

for.body.i51.7:                                   ; preds = %for.body.i51.6
  call void @__sanitizer_cov_trace_pc() #8
  %128 = and i32 %cond.i30, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 224, i32 %128)
  %cmp7.i37.7.not = icmp eq i32 %128, 224
  %add.i38.7 = sub nuw nsw i32 256, %cond.i30
  %notmask.i39.7 = shl nsw i32 -1, %add.i38.7
  %sub10.i40.7 = xor i32 %notmask.i39.7, -1
  %mask.0.i41.7 = select i1 %cmp7.i37.7.not, i32 %sub10.i40.7, i32 0
  %arrayidx.i43.7 = getelementptr %struct.ipv6hdr, ptr %retval.0.i2387, i32 0, i32 6, i32 0, i32 0, i32 3
  %129 = ptrtoint ptr %arrayidx.i43.7 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %arrayidx.i43.7, align 4
  %and.i44.7 = and i32 %mask.0.i41.7, %130
  store i32 %and.i44.7, ptr %arrayidx.i43.7, align 4
  %neg.i45.7 = xor i32 %mask.0.i41.7, -1
  %arrayidx12.i46.7 = getelementptr %struct.ip6t_npt_tginfo, ptr %2, i32 1, i32 0, i32 0, i32 2
  %131 = ptrtoint ptr %arrayidx12.i46.7 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %arrayidx12.i46.7, align 4
  %and13.i47.7 = and i32 %132, %neg.i45.7
  %or.i48.7 = or i32 %and13.i47.7, %and.i44.7
  store i32 %or.i48.7, ptr %arrayidx.i43.7, align 4
  br label %for.end.i53

for.end.i53:                                      ; preds = %for.body.i51.7, %for.body.i51.6.for.end.i53_crit_edge, %for.body.i51.5.for.end.i53_crit_edge, %for.body.i51.4.for.end.i53_crit_edge, %for.body.i51.3.for.end.i53_crit_edge, %for.body.i51.2.for.end.i53_crit_edge, %for.body.i51.1.for.end.i53_crit_edge, %for.body.i51.for.end.i53_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 49, i8 %93)
  %cmp17.i52 = icmp ult i8 %93, 49
  br i1 %cmp17.i52, label %for.end.i53.if.end38.i78_crit_edge, label %for.body24.preheader.i56

for.end.i53.if.end38.i78_crit_edge:               ; preds = %for.end.i53
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38.i78

for.body24.preheader.i56:                         ; preds = %for.end.i53
  %arrayidx26.i54 = getelementptr %struct.ipv6hdr, ptr %retval.0.i2387, i32 0, i32 5, i32 0, i32 0, i32 2
  %133 = ptrtoint ptr %arrayidx26.i54 to i32
  call void @__asan_load2_noabort(i32 %133)
  %134 = load i16, ptr %arrayidx26.i54, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %134)
  %cmp28.not.i55 = icmp eq i16 %134, -1
  br i1 %cmp28.not.i55, label %for.inc32.i59, label %for.body24.preheader.i56.if.end38.i78_crit_edge

for.body24.preheader.i56.if.end38.i78_crit_edge:  ; preds = %for.body24.preheader.i56
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38.i78

for.inc32.i59:                                    ; preds = %for.body24.preheader.i56
  %arrayidx26.1.i57 = getelementptr [8 x i16], ptr %saddr, i32 0, i32 5
  %135 = ptrtoint ptr %arrayidx26.1.i57 to i32
  call void @__asan_load2_noabort(i32 %135)
  %136 = load i16, ptr %arrayidx26.1.i57, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %136)
  %cmp28.not.1.i58 = icmp eq i16 %136, -1
  br i1 %cmp28.not.1.i58, label %for.inc32.1.i62, label %for.inc32.i59.if.end38.i78_crit_edge

for.inc32.i59.if.end38.i78_crit_edge:             ; preds = %for.inc32.i59
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38.i78

for.inc32.1.i62:                                  ; preds = %for.inc32.i59
  %arrayidx26.2.i60 = getelementptr %struct.ipv6hdr, ptr %retval.0.i2387, i32 0, i32 5, i32 0, i32 0, i32 3
  %137 = ptrtoint ptr %arrayidx26.2.i60 to i32
  call void @__asan_load2_noabort(i32 %137)
  %138 = load i16, ptr %arrayidx26.2.i60, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %138)
  %cmp28.not.2.i61 = icmp eq i16 %138, -1
  br i1 %cmp28.not.2.i61, label %for.inc32.2.i65, label %for.inc32.1.i62.if.end38.i78_crit_edge

for.inc32.1.i62.if.end38.i78_crit_edge:           ; preds = %for.inc32.1.i62
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38.i78

for.inc32.2.i65:                                  ; preds = %for.inc32.1.i62
  %arrayidx26.3.i63 = getelementptr [8 x i16], ptr %saddr, i32 0, i32 7
  %139 = ptrtoint ptr %arrayidx26.3.i63 to i32
  call void @__asan_load2_noabort(i32 %139)
  %140 = load i16, ptr %arrayidx26.3.i63, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %140)
  %cmp28.not.3.i64 = icmp eq i16 %140, -1
  br i1 %cmp28.not.3.i64, label %for.inc32.2.i65.cleanup_crit_edge, label %for.inc32.2.i65.if.end38.i78_crit_edge

for.inc32.2.i65.if.end38.i78_crit_edge:           ; preds = %for.inc32.2.i65
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38.i78

for.inc32.2.i65.cleanup_crit_edge:                ; preds = %for.inc32.2.i65
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end38.i78:                                     ; preds = %for.inc32.2.i65.if.end38.i78_crit_edge, %for.inc32.1.i62.if.end38.i78_crit_edge, %for.inc32.i59.if.end38.i78_crit_edge, %for.body24.preheader.i56.if.end38.i78_crit_edge, %for.end.i53.if.end38.i78_crit_edge, %if.then6.if.end38.i78_crit_edge
  %idx.1.i66 = phi i32 [ 3, %for.end.i53.if.end38.i78_crit_edge ], [ 4, %for.body24.preheader.i56.if.end38.i78_crit_edge ], [ 5, %for.inc32.i59.if.end38.i78_crit_edge ], [ 6, %for.inc32.1.i62.if.end38.i78_crit_edge ], [ 7, %for.inc32.2.i65.if.end38.i78_crit_edge ], [ 3, %if.then6.if.end38.i78_crit_edge ]
  %arrayidx40.i67 = getelementptr [8 x i16], ptr %saddr, i32 0, i32 %idx.1.i66
  %141 = ptrtoint ptr %arrayidx40.i67 to i32
  call void @__asan_load2_noabort(i32 %141)
  %142 = load i16, ptr %arrayidx40.i67, align 2
  %conv.i.i68 = zext i16 %142 to i32
  %143 = ptrtoint ptr %adjustment.i to i32
  call void @__asan_load2_noabort(i32 %143)
  %144 = load i16, ptr %adjustment.i, align 2
  %conv.i85.i70 = zext i16 %144 to i32
  %add.i.i71 = add nuw nsw i32 %conv.i85.i70, %conv.i.i68
  %145 = call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %add.i.i71) #9, !srcloc !28
  %neg.i.i72 = xor i32 %145, -1
  %shr.i.i73 = lshr i32 %neg.i.i72, 16
  %conv.i87.i74 = trunc i32 %shr.i.i73 to i16
  %neg45.i75 = xor i16 %conv.i87.i74, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv.i87.i74)
  %cmp48.i76 = icmp eq i16 %conv.i87.i74, 0
  %spec.store.select.i77 = select i1 %cmp48.i76, i16 0, i16 %neg45.i75
  %146 = ptrtoint ptr %arrayidx40.i67 to i32
  call void @__asan_store2_noabort(i32 %146)
  store i16 %spec.store.select.i77, ptr %arrayidx40.i67, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end38.i78, %for.inc32.2.i65.cleanup_crit_edge, %ipv6_addr_prefix.exit.cleanup_crit_edge, %icmpv6_bounced_ipv6hdr.exit.cleanup_crit_edge, %lor.lhs.false.i.i.i.cleanup_crit_edge, %if.end.i.i.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ -1, %ipv6_addr_prefix.exit.cleanup_crit_edge ], [ -1, %icmpv6_bounced_ipv6hdr.exit.cleanup_crit_edge ], [ -1, %for.inc32.2.i65.cleanup_crit_edge ], [ -1, %if.end38.i78 ], [ -1, %if.end.cleanup_crit_edge ], [ -1, %if.end.i.cleanup_crit_edge ], [ -1, %if.end.i.i.i.cleanup_crit_edge ], [ -1, %lor.lhs.false.i.i.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %bounced_pfx) #6
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_bounced_hdr) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @icmp6_send(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csum_partial(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xt_register_targets(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umax.i8(i8, i8) #4

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { argmemonly nofree nounwind readonly willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind readnone }
attributes #10 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17}
!llvm.module.flags = !{!19, !20, !21, !22, !23, !24, !25, !26}
!llvm.ident = !{!27}

!0 = !{ptr @__initcall__kmod_ip6t_NPT__620_184_ip6t_npt_init6, !1, !"__initcall__kmod_ip6t_NPT__620_184_ip6t_npt_init6", i1 false, i1 false}
!1 = !{!"../net/ipv6/netfilter/ip6t_NPT.c", i32 184, i32 1}
!2 = !{ptr @__exitcall_ip6t_npt_exit, !3, !"__exitcall_ip6t_npt_exit", i1 false, i1 false}
!3 = !{!"../net/ipv6/netfilter/ip6t_NPT.c", i32 185, i32 1}
!4 = !{ptr @__UNIQUE_ID_file621, !5, !"__UNIQUE_ID_file621", i1 false, i1 false}
!5 = !{!"../net/ipv6/netfilter/ip6t_NPT.c", i32 187, i32 1}
!6 = !{ptr @__UNIQUE_ID_license622, !5, !"__UNIQUE_ID_license622", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_description623, !8, !"__UNIQUE_ID_description623", i1 false, i1 false}
!8 = !{!"../net/ipv6/netfilter/ip6t_NPT.c", i32 188, i32 1}
!9 = !{ptr @__UNIQUE_ID_author624, !10, !"__UNIQUE_ID_author624", i1 false, i1 false}
!10 = !{!"../net/ipv6/netfilter/ip6t_NPT.c", i32 189, i32 1}
!11 = !{ptr @__UNIQUE_ID_alias625, !12, !"__UNIQUE_ID_alias625", i1 false, i1 false}
!12 = !{!"../net/ipv6/netfilter/ip6t_NPT.c", i32 190, i32 1}
!13 = !{ptr @__UNIQUE_ID_alias626, !14, !"__UNIQUE_ID_alias626", i1 false, i1 false}
!14 = !{!"../net/ipv6/netfilter/ip6t_NPT.c", i32 191, i32 1}
!15 = !{ptr @.str, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../net/ipv6/netfilter/ip6t_NPT.c", i32 148, i32 13}
!17 = !{ptr @ip6t_npt_target_reg, !18, !"ip6t_npt_target_reg", i1 false, i1 false}
!18 = !{!"../net/ipv6/netfilter/ip6t_NPT.c", i32 145, i32 25}
!19 = !{i32 1, !"wchar_size", i32 2}
!20 = !{i32 1, !"min_enum_size", i32 4}
!21 = !{i32 8, !"branch-target-enforcement", i32 0}
!22 = !{i32 8, !"sign-return-address", i32 0}
!23 = !{i32 8, !"sign-return-address-all", i32 0}
!24 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!25 = !{i32 7, !"uwtable", i32 1}
!26 = !{i32 7, !"frame-pointer", i32 2}
!27 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!28 = !{i64 6574981}
!29 = !{!"branch_weights", i32 2000, i32 1}
