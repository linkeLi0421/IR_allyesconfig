; ModuleID = '/llk/IR_all_yes/net/netfilter/xt_NETMAP.c_pt.bc'
source_filename = "../net/netfilter/xt_NETMAP.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xt_target = type { %struct.list_head, [29 x i8], i8, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.nf_nat_range2 = type { i32, %union.nf_inet_addr, %union.nf_inet_addr, %union.nf_conntrack_man_proto, %union.nf_conntrack_man_proto, %union.nf_conntrack_man_proto }
%union.nf_inet_addr = type { [4 x i32] }
%union.nf_conntrack_man_proto = type { i16 }
%struct.xt_action_param = type { %union.anon.195, %union.anon.196, ptr, i32, i16, i8 }
%union.anon.195 = type { ptr }
%union.anon.196 = type { ptr }
%struct.sk_buff = type { %union.anon, %union.anon.178, %union.anon.179, [48 x i8], %union.anon.180, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.182, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.178 = type { ptr }
%union.anon.179 = type { i64 }
%union.anon.180 = type { %struct.anon.181 }
%struct.anon.181 = type { i32, ptr }
%union.anon.182 = type { %struct.anon.183 }
%struct.anon.183 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.184, i32, i32, i32, i16, i16, %union.anon.186, i32, %union.anon.187, %union.anon.188, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.184 = type { i32 }
%union.anon.186 = type { i32 }
%union.anon.187 = type { i32 }
%union.anon.188 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.28 }
%union.anon.28 = type { [4 x i32] }
%struct.xt_tgchk_param = type { ptr, ptr, ptr, ptr, ptr, i32, i8, i8 }
%struct.xt_tgdtor_param = type { ptr, ptr, ptr, i8 }
%struct.nf_nat_ipv4_multi_range_compat = type { i32, [1 x %struct.nf_nat_ipv4_range] }
%struct.nf_nat_ipv4_range = type { i32, i32, i32, %union.nf_conntrack_man_proto, %union.nf_conntrack_man_proto }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }

@__initcall__kmod_xt_NETMAP__692_162_netmap_tg_init6 = internal global ptr @netmap_tg_init, section ".initcall6.init", align 4
@__exitcall_netmap_tg_exit = internal global ptr @netmap_tg_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file693 = internal constant [39 x i8] c"xt_NETMAP.file=net/netfilter/xt_NETMAP\00", section ".modinfo", align 1
@__UNIQUE_ID_license694 = internal constant [22 x i8] c"xt_NETMAP.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description695 = internal constant [58 x i8] c"xt_NETMAP.description=Xtables: 1:1 NAT mapping of subnets\00", section ".modinfo", align 1
@__UNIQUE_ID_author696 = internal constant [51 x i8] c"xt_NETMAP.author=Patrick McHardy <kaber@trash.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_alias697 = internal constant [28 x i8] c"xt_NETMAP.alias=ip6t_NETMAP\00", section ".modinfo", align 1
@__UNIQUE_ID_alias698 = internal constant [27 x i8] c"xt_NETMAP.alias=ipt_NETMAP\00", section ".modinfo", align 1
@netmap_tg_reg = internal global [2 x %struct.xt_target] [%struct.xt_target { %struct.list_head zeroinitializer, [29 x i8] c"NETMAP\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, ptr @netmap_tg6, ptr @netmap_tg6_checkentry, ptr @netmap_tg_destroy, ptr null, ptr @.str, i32 40, i32 0, i32 27, i16 0, i16 10 }, %struct.xt_target { %struct.list_head zeroinitializer, [29 x i8] c"NETMAP\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, ptr @netmap_tg4, ptr @netmap_tg4_check, ptr @netmap_tg_destroy, ptr null, ptr @.str, i32 20, i32 0, i32 27, i16 0, i16 2 }], section ".data..read_mostly", align 4
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"nat\00", [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"net/netfilter/xt_NETMAP.c\00", [38 x i8] zeroinitializer }, align 32
@netmap_tg4_check.__UNIQUE_ID_ddebug690 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.3, ptr @.str.1, ptr @.str.4, i8 0, i8 27, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"xt_NETMAP\00", [22 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"netmap_tg4_check\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"bad MAP_IPS.\0A\00", [18 x i8] zeroinitializer }, align 32
@netmap_tg4_check.__UNIQUE_ID_ddebug691 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.3, ptr @.str.1, ptr @.str.5, i8 0, i8 28, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"bad rangesize %u.\0A\00", [45 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 3]
@__sancov_gen_cov_switch_values.6 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 3, i64 4]
@__sancov_gen_cov_switch_values.7 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 3]
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 126, i32 17 }
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 77, i32 2 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 109, i32 3 }
@___asan_gen_.23 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.24 = private constant [29 x i8] c"../net/netfilter/xt_NETMAP.c\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 113, i32 3 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @__UNIQUE_ID_alias697, ptr @__UNIQUE_ID_alias698, ptr @__UNIQUE_ID_author696, ptr @__UNIQUE_ID_description695, ptr @__UNIQUE_ID_file693, ptr @__UNIQUE_ID_license694, ptr @__exitcall_netmap_tg_exit, ptr @__initcall__kmod_xt_NETMAP__692_162_netmap_tg_init6, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @netmap_tg_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @xt_register_targets(ptr noundef nonnull @netmap_tg_reg, i32 noundef 2) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @netmap_tg_exit() #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @xt_unregister_targets(ptr noundef nonnull @netmap_tg_reg, i32 noundef 2) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xt_register_targets(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netmap_tg6(ptr nocapture noundef readonly %skb, ptr nocapture noundef readonly %par) #1 align 64 {
entry:
  %newrange = alloca %struct.nf_nat_range2, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %newrange) #4
  %3 = getelementptr inbounds i8, ptr %newrange, i32 40
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !38
  %_nfct.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 5
  %5 = ptrtoint ptr %_nfct.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %_nfct.i.i, align 8
  %min_addr = getelementptr inbounds %struct.nf_nat_range2, ptr %2, i32 0, i32 1
  %max_addr = getelementptr inbounds %struct.nf_nat_range2, ptr %2, i32 0, i32 2
  %7 = ptrtoint ptr %min_addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %min_addr, align 4
  %9 = ptrtoint ptr %max_addr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %max_addr, align 4
  %arrayidx.1 = getelementptr %struct.nf_nat_range2, ptr %2, i32 0, i32 1, i32 0, i32 1
  %11 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.1, align 4
  %arrayidx1.1 = getelementptr %struct.nf_nat_range2, ptr %2, i32 0, i32 2, i32 0, i32 1
  %13 = ptrtoint ptr %arrayidx1.1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx1.1, align 4
  %arrayidx.2 = getelementptr %struct.nf_nat_range2, ptr %2, i32 0, i32 1, i32 0, i32 2
  %15 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.2, align 4
  %arrayidx1.2 = getelementptr %struct.nf_nat_range2, ptr %2, i32 0, i32 2, i32 0, i32 2
  %17 = ptrtoint ptr %arrayidx1.2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx1.2, align 4
  %arrayidx.3 = getelementptr %struct.nf_nat_range2, ptr %2, i32 0, i32 1, i32 0, i32 3
  %19 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.3, align 4
  %arrayidx1.3 = getelementptr %struct.nf_nat_range2, ptr %2, i32 0, i32 2, i32 0, i32 3
  %21 = ptrtoint ptr %arrayidx1.3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx1.3, align 4
  %state.i = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 2
  %23 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %state.i, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %24, align 4
  %27 = zext i8 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values)
  switch i8 %26, label %if.else [
    i8 0, label %entry.if.then_crit_edge
    i8 3, label %entry.if.then_crit_edge82
  ]

entry.if.then_crit_edge82:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge82
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %28 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %30 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %31 to i32
  %add.ptr.i.i = getelementptr i8, ptr %29, i32 %conv.i.i
  %daddr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 6
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %head.i.i58 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %32 = ptrtoint ptr %head.i.i58 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %head.i.i58, align 8
  %network_header.i.i59 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %34 = ptrtoint ptr %network_header.i.i59 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %network_header.i.i59, align 4
  %conv.i.i60 = zext i16 %35 to i32
  %add.ptr.i.i61 = getelementptr i8, ptr %33, i32 %conv.i.i60
  %saddr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i61, i32 0, i32 5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %saddr.pn = phi ptr [ %saddr, %if.else ], [ %daddr, %if.then ]
  %36 = ptrtoint ptr %saddr.pn to i32
  call void @__asan_load4_noabort(i32 %36)
  %new_addr.sroa.0.0 = load i32, ptr %saddr.pn, align 4
  %new_addr.sroa.10.0.in = getelementptr inbounds i8, ptr %saddr.pn, i32 4
  %37 = ptrtoint ptr %new_addr.sroa.10.0.in to i32
  call void @__asan_load4_noabort(i32 %37)
  %new_addr.sroa.10.0 = load i32, ptr %new_addr.sroa.10.0.in, align 4
  %new_addr.sroa.14.0.in = getelementptr inbounds i8, ptr %saddr.pn, i32 8
  %38 = ptrtoint ptr %new_addr.sroa.14.0.in to i32
  call void @__asan_load4_noabort(i32 %38)
  %new_addr.sroa.14.0 = load i32, ptr %new_addr.sroa.14.0.in, align 4
  %new_addr.sroa.18.0.in = getelementptr inbounds i8, ptr %saddr.pn, i32 12
  %39 = ptrtoint ptr %new_addr.sroa.18.0.in to i32
  call void @__asan_load4_noabort(i32 %39)
  %new_addr.sroa.18.0 = load i32, ptr %new_addr.sroa.18.0.in, align 4
  %40 = xor i32 %20, %22
  %neg.3 = xor i32 %40, -1
  %41 = xor i32 %16, %18
  %neg.2 = xor i32 %41, -1
  %42 = xor i32 %12, %14
  %neg.1 = xor i32 %42, -1
  %43 = xor i32 %8, %10
  %neg = xor i32 %43, -1
  %and = and i32 %new_addr.sroa.0.0, %43
  %44 = ptrtoint ptr %min_addr to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %min_addr, align 4
  %and18 = and i32 %45, %neg
  %or = or i32 %and18, %and
  %and.1 = and i32 %new_addr.sroa.10.0, %42
  %46 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx.1, align 4
  %and18.1 = and i32 %47, %neg.1
  %or.1 = or i32 %and18.1, %and.1
  %and.2 = and i32 %new_addr.sroa.14.0, %41
  %48 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx.2, align 4
  %and18.2 = and i32 %49, %neg.2
  %or.2 = or i32 %and18.2, %and.2
  %and.3 = and i32 %new_addr.sroa.18.0, %40
  %50 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx.3, align 4
  %and18.3 = and i32 %51, %neg.3
  %or.3 = or i32 %and18.3, %and.3
  %and1.i = and i32 %6, -8
  %52 = inttoptr i32 %and1.i to ptr
  %53 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %2, align 4
  %or23 = or i32 %54, 1
  %55 = ptrtoint ptr %newrange to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %or23, ptr %newrange, align 4
  %min_addr25 = getelementptr inbounds %struct.nf_nat_range2, ptr %newrange, i32 0, i32 1
  %56 = ptrtoint ptr %min_addr25 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %or, ptr %min_addr25, align 4
  %new_addr.sroa.10.0.min_addr25.sroa_idx = getelementptr inbounds %struct.nf_nat_range2, ptr %newrange, i32 0, i32 1, i32 0, i32 1
  %57 = ptrtoint ptr %new_addr.sroa.10.0.min_addr25.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %or.1, ptr %new_addr.sroa.10.0.min_addr25.sroa_idx, align 4
  %new_addr.sroa.14.0.min_addr25.sroa_idx = getelementptr inbounds %struct.nf_nat_range2, ptr %newrange, i32 0, i32 1, i32 0, i32 2
  %58 = ptrtoint ptr %new_addr.sroa.14.0.min_addr25.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %or.2, ptr %new_addr.sroa.14.0.min_addr25.sroa_idx, align 4
  %new_addr.sroa.18.0.min_addr25.sroa_idx = getelementptr inbounds %struct.nf_nat_range2, ptr %newrange, i32 0, i32 1, i32 0, i32 3
  %59 = ptrtoint ptr %new_addr.sroa.18.0.min_addr25.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %or.3, ptr %new_addr.sroa.18.0.min_addr25.sroa_idx, align 4
  %max_addr26 = getelementptr inbounds %struct.nf_nat_range2, ptr %newrange, i32 0, i32 2
  %60 = ptrtoint ptr %max_addr26 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %or, ptr %max_addr26, align 4
  %new_addr.sroa.10.0.max_addr26.sroa_idx = getelementptr inbounds %struct.nf_nat_range2, ptr %newrange, i32 0, i32 2, i32 0, i32 1
  %61 = ptrtoint ptr %new_addr.sroa.10.0.max_addr26.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %or.1, ptr %new_addr.sroa.10.0.max_addr26.sroa_idx, align 4
  %new_addr.sroa.14.0.max_addr26.sroa_idx = getelementptr inbounds %struct.nf_nat_range2, ptr %newrange, i32 0, i32 2, i32 0, i32 2
  %62 = ptrtoint ptr %new_addr.sroa.14.0.max_addr26.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %or.2, ptr %new_addr.sroa.14.0.max_addr26.sroa_idx, align 4
  %new_addr.sroa.18.0.max_addr26.sroa_idx = getelementptr inbounds %struct.nf_nat_range2, ptr %newrange, i32 0, i32 2, i32 0, i32 3
  %63 = ptrtoint ptr %new_addr.sroa.18.0.max_addr26.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %or.3, ptr %new_addr.sroa.18.0.max_addr26.sroa_idx, align 4
  %min_proto = getelementptr inbounds %struct.nf_nat_range2, ptr %newrange, i32 0, i32 3
  %min_proto27 = getelementptr inbounds %struct.nf_nat_range2, ptr %2, i32 0, i32 3
  %64 = ptrtoint ptr %min_proto27 to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %min_proto27, align 4
  %66 = ptrtoint ptr %min_proto to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %65, ptr %min_proto, align 4
  %max_proto = getelementptr inbounds %struct.nf_nat_range2, ptr %newrange, i32 0, i32 4
  %max_proto28 = getelementptr inbounds %struct.nf_nat_range2, ptr %2, i32 0, i32 4
  %67 = ptrtoint ptr %max_proto28 to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %max_proto28, align 2
  %69 = ptrtoint ptr %max_proto to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 %68, ptr %max_proto, align 2
  %70 = ptrtoint ptr %24 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %24, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %71)
  %cmp30.not = icmp ne i8 %71, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %71)
  %cmp32 = icmp ne i8 %71, 1
  %narrow = and i1 %cmp30.not, %cmp32
  %72 = zext i1 %narrow to i32
  %call33 = call i32 @nf_nat_setup_info(ptr noundef %52, ptr noundef nonnull %newrange, i32 noundef %72) #4
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %newrange) #4
  ret i32 %call33
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netmap_tg6_checkentry(ptr nocapture noundef readonly %par) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %targinfo = getelementptr inbounds %struct.xt_tgchk_param, ptr %par, i32 0, i32 4
  %0 = ptrtoint ptr %targinfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %targinfo, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %par, align 4
  %family = getelementptr inbounds %struct.xt_tgchk_param, ptr %par, i32 0, i32 6
  %6 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %family, align 4
  %call = tail call i32 @nf_ct_netns_get(ptr noundef %5, i8 noundef zeroext %7) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @netmap_tg_destroy(ptr nocapture noundef readonly %par) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 4
  %family = getelementptr inbounds %struct.xt_tgdtor_param, ptr %par, i32 0, i32 3
  %2 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %family, align 4
  tail call void @nf_ct_netns_put(ptr noundef %1, i8 noundef zeroext %3) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netmap_tg4(ptr nocapture noundef readonly %skb, ptr nocapture noundef readonly %par) #1 align 64 {
entry:
  %newrange = alloca %struct.nf_nat_range2, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %newrange) #4
  %3 = getelementptr inbounds i8, ptr %newrange, i32 40
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !38
  %state.i = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 2
  %5 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %state.i, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %6, align 4
  %9 = zext i8 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.6)
  switch i8 %8, label %do.end [
    i8 0, label %entry.if.end_crit_edge
    i8 4, label %entry.if.end_crit_edge101
    i8 3, label %entry.if.end_crit_edge102
    i8 1, label %entry.if.end_crit_edge103
  ], !prof !39

entry.if.end_crit_edge103:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

entry.if.end_crit_edge102:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

entry.if.end_crit_edge101:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 80, i32 noundef 9, ptr noundef null) #4
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge, %entry.if.end_crit_edge101, %entry.if.end_crit_edge102, %entry.if.end_crit_edge103
  %_nfct.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 5
  %10 = ptrtoint ptr %_nfct.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %_nfct.i.i, align 8
  %min_ip = getelementptr inbounds %struct.nf_nat_ipv4_multi_range_compat, ptr %2, i32 0, i32 1, i32 0, i32 1
  %12 = ptrtoint ptr %min_ip to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %min_ip, align 4
  %max_ip = getelementptr inbounds %struct.nf_nat_ipv4_multi_range_compat, ptr %2, i32 0, i32 1, i32 0, i32 2
  %14 = ptrtoint ptr %max_ip to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %max_ip, align 4
  %16 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %state.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %17, align 4
  %20 = zext i8 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.7)
  switch i8 %19, label %if.else [
    i8 0, label %if.end.if.then33_crit_edge
    i8 3, label %if.end.if.then33_crit_edge104
  ]

if.end.if.then33_crit_edge104:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then33

if.end.if.then33_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then33

if.then33:                                        ; preds = %if.end.if.then33_crit_edge, %if.end.if.then33_crit_edge104
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %21 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %23 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %24 to i32
  %add.ptr.i.i = getelementptr i8, ptr %22, i32 %conv.i.i
  %daddr = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 9
  br label %if.end39

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %head.i.i93 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %25 = ptrtoint ptr %head.i.i93 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %head.i.i93, align 8
  %network_header.i.i94 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %27 = ptrtoint ptr %network_header.i.i94 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %network_header.i.i94, align 4
  %conv.i.i95 = zext i16 %28 to i32
  %add.ptr.i.i96 = getelementptr i8, ptr %26, i32 %conv.i.i95
  %saddr = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i96, i32 0, i32 8
  br label %if.end39

if.end39:                                         ; preds = %if.else, %if.then33
  %.pn.in = phi ptr [ %daddr, %if.then33 ], [ %saddr, %if.else ]
  %xor = xor i32 %15, %13
  %range = getelementptr inbounds %struct.nf_nat_ipv4_multi_range_compat, ptr %2, i32 0, i32 1
  %and1.i = and i32 %11, -8
  %29 = inttoptr i32 %and1.i to ptr
  %30 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %30)
  %.pn = load i32, ptr %.pn.in, align 4
  %new_ip.0 = and i32 %.pn, %xor
  %and43 = and i32 %15, %13
  %or = or i32 %new_ip.0, %and43
  %min_addr = getelementptr inbounds %struct.nf_nat_range2, ptr %newrange, i32 0, i32 1
  %max_addr = getelementptr inbounds %struct.nf_nat_range2, ptr %newrange, i32 0, i32 2
  %31 = getelementptr inbounds %struct.nf_nat_range2, ptr %newrange, i32 0, i32 1, i32 0, i32 1
  %32 = call ptr @memset(ptr %31, i32 0, i32 28)
  %33 = ptrtoint ptr %range to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %range, align 4
  %or46 = or i32 %34, 1
  %35 = ptrtoint ptr %newrange to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %or46, ptr %newrange, align 4
  %36 = ptrtoint ptr %min_addr to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %or, ptr %min_addr, align 4
  %37 = ptrtoint ptr %max_addr to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %or, ptr %max_addr, align 4
  %min_proto = getelementptr inbounds %struct.nf_nat_range2, ptr %newrange, i32 0, i32 3
  %min = getelementptr inbounds %struct.nf_nat_ipv4_multi_range_compat, ptr %2, i32 0, i32 1, i32 0, i32 3
  %38 = ptrtoint ptr %min to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %min, align 4
  %40 = ptrtoint ptr %min_proto to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %39, ptr %min_proto, align 4
  %max_proto = getelementptr inbounds %struct.nf_nat_range2, ptr %newrange, i32 0, i32 4
  %max = getelementptr inbounds %struct.nf_nat_ipv4_multi_range_compat, ptr %2, i32 0, i32 1, i32 0, i32 4
  %41 = ptrtoint ptr %max to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %max, align 2
  %43 = ptrtoint ptr %max_proto to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %42, ptr %max_proto, align 2
  %44 = ptrtoint ptr %17 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %17, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %45)
  %cmp55.not = icmp ne i8 %45, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %45)
  %cmp58 = icmp ne i8 %45, 1
  %narrow = and i1 %cmp55.not, %cmp58
  %46 = zext i1 %narrow to i32
  %call60 = call i32 @nf_nat_setup_info(ptr noundef %29, ptr noundef nonnull %newrange, i32 noundef %46) #4
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %newrange) #4
  ret i32 %call60
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netmap_tg4_check(ptr nocapture noundef readonly %par) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %targinfo = getelementptr inbounds %struct.xt_tgchk_param, ptr %par, i32 0, i32 4
  %0 = ptrtoint ptr %targinfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %targinfo, align 4
  %range = getelementptr inbounds %struct.nf_nat_ipv4_multi_range_compat, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %range to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %range, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body, label %if.end5

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @netmap_tg4_check.__UNIQUE_ID_ddebug690, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@netmap_tg4_check, %if.then4)) #4
          to label %cleanup [label %if.then4], !srcloc !40

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @netmap_tg4_check.__UNIQUE_ID_ddebug690, ptr noundef nonnull @.str.4) #4
  br label %cleanup

if.end5:                                          ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp.not = icmp eq i32 %5, 1
  br i1 %cmp.not, label %if.end24, label %do.body7

do.body7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @netmap_tg4_check.__UNIQUE_ID_ddebug691, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@netmap_tg4_check, %if.then19)) #4
          to label %cleanup [label %if.then19], !srcloc !40

if.then19:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #6
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %1, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @netmap_tg4_check.__UNIQUE_ID_ddebug691, ptr noundef nonnull @.str.5, i32 noundef %7) #4
  br label %cleanup

if.end24:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  %8 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %par, align 4
  %family = getelementptr inbounds %struct.xt_tgchk_param, ptr %par, i32 0, i32 6
  %10 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %family, align 4
  %call25 = tail call i32 @nf_ct_netns_get(ptr noundef %9, i8 noundef zeroext %11) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %if.then19, %do.body7, %if.then4, %do.body
  %retval.0 = phi i32 [ %call25, %if.end24 ], [ -22, %if.then4 ], [ -22, %if.then19 ], [ -22, %do.body ], [ -22, %do.body7 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_nat_setup_info(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_ct_netns_get(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_ct_netns_put(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xt_unregister_targets(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !21, !23, !24, !25, !26, !28}
!llvm.module.flags = !{!29, !30, !31, !32, !33, !34, !35, !36}
!llvm.ident = !{!37}

!0 = !{ptr @__initcall__kmod_xt_NETMAP__692_162_netmap_tg_init6, !1, !"__initcall__kmod_xt_NETMAP__692_162_netmap_tg_init6", i1 false, i1 false}
!1 = !{!"../net/netfilter/xt_NETMAP.c", i32 162, i32 1}
!2 = !{ptr @__exitcall_netmap_tg_exit, !3, !"__exitcall_netmap_tg_exit", i1 false, i1 false}
!3 = !{!"../net/netfilter/xt_NETMAP.c", i32 163, i32 1}
!4 = !{ptr @__UNIQUE_ID_file693, !5, !"__UNIQUE_ID_file693", i1 false, i1 false}
!5 = !{!"../net/netfilter/xt_NETMAP.c", i32 165, i32 1}
!6 = !{ptr @__UNIQUE_ID_license694, !5, !"__UNIQUE_ID_license694", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_description695, !8, !"__UNIQUE_ID_description695", i1 false, i1 false}
!8 = !{!"../net/netfilter/xt_NETMAP.c", i32 166, i32 1}
!9 = !{ptr @__UNIQUE_ID_author696, !10, !"__UNIQUE_ID_author696", i1 false, i1 false}
!10 = !{!"../net/netfilter/xt_NETMAP.c", i32 167, i32 1}
!11 = !{ptr @__UNIQUE_ID_alias697, !12, !"__UNIQUE_ID_alias697", i1 false, i1 false}
!12 = !{!"../net/netfilter/xt_NETMAP.c", i32 168, i32 1}
!13 = !{ptr @__UNIQUE_ID_alias698, !14, !"__UNIQUE_ID_alias698", i1 false, i1 false}
!14 = !{!"../net/netfilter/xt_NETMAP.c", i32 169, i32 1}
!15 = !{ptr @.str, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../net/netfilter/xt_NETMAP.c", i32 126, i32 17}
!17 = !{ptr @netmap_tg_reg, !18, !"netmap_tg_reg", i1 false, i1 false}
!18 = !{!"../net/netfilter/xt_NETMAP.c", i32 119, i32 25}
!19 = !{ptr @.str.1, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../net/netfilter/xt_NETMAP.c", i32 77, i32 2}
!21 = !{ptr @.str.2, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../net/netfilter/xt_NETMAP.c", i32 109, i32 3}
!23 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @netmap_tg4_check.__UNIQUE_ID_ddebug690, !22, !"__UNIQUE_ID_ddebug690", i1 false, i1 false}
!26 = !{ptr @.str.5, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../net/netfilter/xt_NETMAP.c", i32 113, i32 3}
!28 = !{ptr @netmap_tg4_check.__UNIQUE_ID_ddebug691, !27, !"__UNIQUE_ID_ddebug691", i1 false, i1 false}
!29 = !{i32 1, !"wchar_size", i32 2}
!30 = !{i32 1, !"min_enum_size", i32 4}
!31 = !{i32 8, !"branch-target-enforcement", i32 0}
!32 = !{i32 8, !"sign-return-address", i32 0}
!33 = !{i32 8, !"sign-return-address-all", i32 0}
!34 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!35 = !{i32 7, !"uwtable", i32 1}
!36 = !{i32 7, !"frame-pointer", i32 2}
!37 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!38 = !{!"auto-init"}
!39 = !{!"branch_weights", i32 1, i32 2001, i32 2001, i32 2001, i32 2000}
!40 = !{i64 2148834508, i64 2148834513, i64 2148834526, i64 2148834570, i64 2148834604, i64 2148834625}
