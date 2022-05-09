; ModuleID = '/llk/IR_all_yes/net/netfilter/xt_connlimit.c_pt.bc'
source_filename = "../net/netfilter/xt_connlimit.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xt_match = type { %struct.list_head, [29 x i8], i8, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.nf_conntrack_zone = type { i16, i8, i8 }
%struct.nf_conntrack_tuple = type { %struct.nf_conntrack_man, %struct.anon.111 }
%struct.nf_conntrack_man = type { %union.nf_inet_addr, %union.nf_conntrack_man_proto, i16 }
%union.nf_inet_addr = type { [4 x i32] }
%union.nf_conntrack_man_proto = type { i16 }
%struct.anon.111 = type { %union.nf_inet_addr, %union.anon.112, i8, i8 }
%union.anon.112 = type { i16 }
%struct.xt_action_param = type { %union.anon.166, %union.anon.167, ptr, i32, i16, i8 }
%union.anon.166 = type { ptr }
%union.anon.167 = type { ptr }
%struct.nf_hook_state = type { i8, i8, ptr, ptr, ptr, ptr, ptr }
%struct.sk_buff = type { %union.anon, %union.anon.149, %union.anon.150, [48 x i8], %union.anon.151, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.153, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.149 = type { ptr }
%union.anon.150 = type { i64 }
%union.anon.151 = type { %struct.anon.152 }
%struct.anon.152 = type { i32, ptr }
%union.anon.153 = type { %struct.anon.154 }
%struct.anon.154 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.155, i32, i32, i32, i16, i16, %union.anon.157, i32, %union.anon.158, %union.anon.159, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.155 = type { i32 }
%union.anon.157 = type { i32 }
%union.anon.158 = type { i32 }
%union.anon.159 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.nf_conn = type { %struct.nf_conntrack, %struct.spinlock, i32, %struct.nf_conntrack_zone, [2 x %struct.nf_conntrack_tuple_hash], i32, i16, %struct.possible_net_t, %struct.hlist_node, %struct.anon.168, ptr, i32, i32, ptr, %union.nf_conntrack_proto }
%struct.nf_conntrack = type { %struct.refcount_struct }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.nf_conntrack_tuple_hash = type { %struct.hlist_nulls_node, %struct.nf_conntrack_tuple }
%struct.hlist_nulls_node = type { ptr, ptr }
%struct.possible_net_t = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.anon.168 = type {}
%union.nf_conntrack_proto = type { %struct.nf_ct_dccp, [48 x i8] }
%struct.nf_ct_dccp = type { [2 x i8], i8, i8, i8, i64 }
%struct.xt_connlimit_info = type { %union.anon.173, i32, i32, ptr, [4 x i8] }
%union.anon.173 = type { %union.nf_inet_addr }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.26 }
%union.anon.26 = type { [4 x i32] }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.xt_mtchk_param = type { ptr, ptr, ptr, ptr, ptr, i32, i8, i8 }
%struct.xt_mtdtor_param = type { ptr, ptr, ptr, i8 }

@connlimit_mt_reg = internal global %struct.xt_match { %struct.list_head zeroinitializer, [29 x i8] c"connlimit\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 1, ptr @connlimit_mt, ptr @connlimit_mt_check, ptr @connlimit_mt_destroy, ptr null, ptr null, i32 32, i32 24, i32 0, i16 0, i16 0 }, section ".data..read_mostly", align 4
@__initcall__kmod_xt_connlimit__587_131_connlimit_mt_init6 = internal global ptr @connlimit_mt_init, section ".initcall6.init", align 4
@__exitcall_connlimit_mt_exit = internal global ptr @connlimit_mt_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author588 = internal constant [56 x i8] c"xt_connlimit.author=Jan Engelhardt <jengelh@medozas.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description589 = internal constant [65 x i8] c"xt_connlimit.description=Xtables: Number of connections matching\00", section ".modinfo", align 1
@__UNIQUE_ID_file590 = internal constant [45 x i8] c"xt_connlimit.file=net/netfilter/xt_connlimit\00", section ".modinfo", align 1
@__UNIQUE_ID_license591 = internal constant [25 x i8] c"xt_connlimit.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias592 = internal constant [33 x i8] c"xt_connlimit.alias=ipt_connlimit\00", section ".modinfo", align 1
@__UNIQUE_ID_alias593 = internal constant [34 x i8] c"xt_connlimit.alias=ip6t_connlimit\00", section ".modinfo", align 1
@nf_ct_zone_dflt = external dso_local constant %struct.nf_conntrack_zone, align 2
@llvm.compiler.used = appending global [9 x ptr] [ptr @__UNIQUE_ID_alias592, ptr @__UNIQUE_ID_alias593, ptr @__UNIQUE_ID_author588, ptr @__UNIQUE_ID_description589, ptr @__UNIQUE_ID_file590, ptr @__UNIQUE_ID_license591, ptr @__exitcall_connlimit_mt_exit, ptr @__initcall__kmod_xt_connlimit__587_131_connlimit_mt_init6, ptr @connlimit_mt_exit], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @connlimit_mt_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @xt_unregister_match(ptr noundef nonnull @connlimit_mt_reg) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xt_unregister_match(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @connlimit_mt_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @xt_register_match(ptr noundef nonnull @connlimit_mt_reg) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @connlimit_mt(ptr noundef %skb, ptr nocapture noundef %par) #2 align 64 {
entry:
  %tuple = alloca %struct.nf_conntrack_tuple, align 4
  %key = alloca [5 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %state.i = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 2
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state.i, align 4
  %net.i = getelementptr inbounds %struct.nf_hook_state, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net.i, align 4
  %4 = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %tuple) #4
  %7 = call ptr @memset(ptr %tuple, i32 255, i32 40)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %key) #4
  %8 = getelementptr inbounds [5 x i32], ptr %key, i32 0, i32 1
  %9 = getelementptr inbounds [5 x i32], ptr %key, i32 0, i32 2
  %10 = getelementptr inbounds [5 x i32], ptr %key, i32 0, i32 3
  %11 = getelementptr inbounds [5 x i32], ptr %key, i32 0, i32 4
  %_nfct.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 5
  %12 = call ptr @memset(ptr %key, i32 255, i32 20)
  %13 = ptrtoint ptr %_nfct.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %_nfct.i.i, align 8
  %and1.i = and i32 %14, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %cmp.not = icmp eq i32 %and1.i, 0
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %15 = inttoptr i32 %and1.i to ptr
  %tuple2 = getelementptr inbounds %struct.nf_conn, ptr %15, i32 0, i32 4, i32 0, i32 1
  %zone.i = getelementptr inbounds %struct.nf_conn, ptr %15, i32 0, i32 3
  br label %if.end8

if.else:                                          ; preds = %entry
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %16 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %18 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %19 to i32
  %add.ptr.i.i = getelementptr i8, ptr %17, i32 %conv.i.i
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %20 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %21 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %pf.i = getelementptr inbounds %struct.nf_hook_state, ptr %1, i32 0, i32 1
  %22 = ptrtoint ptr %pf.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %pf.i, align 1
  %conv = zext i8 %23 to i16
  %call6 = call zeroext i1 @nf_ct_get_tuplepr(ptr noundef %skb, i32 noundef %sub.ptr.sub.i, i16 noundef zeroext %conv, ptr noundef %3, ptr noundef nonnull %tuple) #4
  br i1 %call6, label %if.else.if.end8_crit_edge, label %if.else.hotdrop_crit_edge

if.else.hotdrop_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %hotdrop

if.else.if.end8_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end8

if.end8:                                          ; preds = %if.else.if.end8_crit_edge, %if.then
  %tuple_ptr.0 = phi ptr [ %tuple2, %if.then ], [ %tuple, %if.else.if.end8_crit_edge ]
  %zone.0 = phi ptr [ %zone.i, %if.then ], [ @nf_ct_zone_dflt, %if.else.if.end8_crit_edge ]
  %24 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %state.i, align 4
  %pf.i90 = getelementptr inbounds %struct.nf_hook_state, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %pf.i90 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %pf.i90, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %27)
  %cmp11 = icmp eq i8 %27, 10
  %head.i.i91 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %28 = ptrtoint ptr %head.i.i91 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %head.i.i91, align 8
  %network_header.i.i92 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %30 = ptrtoint ptr %network_header.i.i92 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %network_header.i.i92, align 4
  %conv.i.i93 = zext i16 %31 to i32
  %add.ptr.i.i94 = getelementptr i8, ptr %29, i32 %conv.i.i93
  %flags = getelementptr inbounds %struct.xt_connlimit_info, ptr %6, i32 0, i32 2
  %32 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %flags, align 4
  %and = and i32 %33, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %cmp11, label %if.then13, label %if.else22

if.then13:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  %daddr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i94, i32 0, i32 6
  %saddr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i94, i32 0, i32 5
  %cond = select i1 %tobool.not, ptr %saddr, ptr %daddr
  %34 = ptrtoint ptr %cond to i32
  call void @__asan_load4_noabort(i32 %34)
  %addr.sroa.0.0.copyload = load i32, ptr %cond, align 4
  %addr.sroa.7.0.cond.sroa_idx = getelementptr inbounds i8, ptr %cond, i32 4
  %35 = ptrtoint ptr %addr.sroa.7.0.cond.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %35)
  %addr.sroa.7.0.copyload = load i32, ptr %addr.sroa.7.0.cond.sroa_idx, align 4
  %addr.sroa.10.0.cond.sroa_idx = getelementptr inbounds i8, ptr %cond, i32 8
  %36 = ptrtoint ptr %addr.sroa.10.0.cond.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %36)
  %addr.sroa.10.0.copyload = load i32, ptr %addr.sroa.10.0.cond.sroa_idx, align 4
  %addr.sroa.13.0.cond.sroa_idx = getelementptr inbounds i8, ptr %cond, i32 12
  %37 = ptrtoint ptr %addr.sroa.13.0.cond.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %37)
  %addr.sroa.13.0.copyload = load i32, ptr %addr.sroa.13.0.cond.sroa_idx, align 4
  %38 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %6, align 4
  %and19 = and i32 %addr.sroa.0.0.copyload, %39
  %arrayidx17.1 = getelementptr [4 x i32], ptr %6, i32 0, i32 1
  %40 = ptrtoint ptr %arrayidx17.1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx17.1, align 4
  %and19.1 = and i32 %addr.sroa.7.0.copyload, %41
  %arrayidx17.2 = getelementptr [4 x i32], ptr %6, i32 0, i32 2
  %42 = ptrtoint ptr %arrayidx17.2 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx17.2, align 4
  %and19.2 = and i32 %addr.sroa.10.0.copyload, %43
  %arrayidx17.3 = getelementptr [4 x i32], ptr %6, i32 0, i32 3
  %44 = ptrtoint ptr %arrayidx17.3 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx17.3, align 4
  %and19.3 = and i32 %addr.sroa.13.0.copyload, %45
  %46 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %and19, ptr %key, align 4
  %47 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %and19.1, ptr %8, align 4
  %48 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %and19.2, ptr %9, align 4
  %49 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %and19.3, ptr %10, align 4
  br label %if.end40

if.else22:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  %daddr29 = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i94, i32 0, i32 9
  %saddr31 = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i94, i32 0, i32 8
  %cond33.in = select i1 %tobool.not, ptr %saddr31, ptr %daddr29
  %50 = ptrtoint ptr %cond33.in to i32
  call void @__asan_load4_noabort(i32 %50)
  %cond33 = load i32, ptr %cond33.in, align 4
  %51 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %6, align 8
  %and36 = and i32 %52, %cond33
  %53 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %and36, ptr %key, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.else22, %if.then13
  %.sink = phi ptr [ %8, %if.else22 ], [ %11, %if.then13 ]
  %54 = ptrtoint ptr %zone.0 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %zone.0, align 2
  %conv38 = zext i16 %55 to i32
  %56 = ptrtoint ptr %.sink to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %conv38, ptr %.sink, align 4
  %data = getelementptr inbounds %struct.xt_connlimit_info, ptr %6, i32 0, i32 3
  %57 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %data, align 8
  %call42 = call i32 @nf_conncount_count(ptr noundef %3, ptr noundef %58, ptr noundef nonnull %key, ptr noundef %tuple_ptr.0, ptr noundef %zone.0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %cmp43 = icmp eq i32 %call42, 0
  br i1 %cmp43, label %if.end40.hotdrop_crit_edge, label %if.end46

if.end40.hotdrop_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #6
  br label %hotdrop

if.end46:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #6
  %limit = getelementptr inbounds %struct.xt_connlimit_info, ptr %6, i32 0, i32 1
  %59 = ptrtoint ptr %limit to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %limit, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call42, i32 %60)
  %cmp47 = icmp ugt i32 %call42, %60
  %flags49 = getelementptr inbounds %struct.xt_connlimit_info, ptr %6, i32 0, i32 2
  %61 = ptrtoint ptr %flags49 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %flags49, align 4
  %63 = and i32 %62, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %64 = icmp ne i32 %63, 0
  %tobool53 = xor i1 %cmp47, %64
  br label %cleanup

hotdrop:                                          ; preds = %if.end40.hotdrop_crit_edge, %if.else.hotdrop_crit_edge
  %hotdrop54 = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 5
  %65 = ptrtoint ptr %hotdrop54 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 1, ptr %hotdrop54, align 2
  br label %cleanup

cleanup:                                          ; preds = %hotdrop, %if.end46
  %retval.0 = phi i1 [ false, %hotdrop ], [ %tobool53, %if.end46 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %key) #4
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %tuple) #4
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @connlimit_mt_check(ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %matchinfo = getelementptr inbounds %struct.xt_mtchk_param, ptr %par, i32 0, i32 4
  %0 = ptrtoint ptr %matchinfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %matchinfo, align 4
  %family = getelementptr inbounds %struct.xt_mtchk_param, ptr %par, i32 0, i32 6
  %2 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %3)
  %cmp = icmp eq i8 %3, 10
  %. = select i1 %cmp, i32 20, i32 8
  %4 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %par, align 4
  %conv4 = zext i8 %3 to i32
  %call = tail call ptr @nf_conncount_init(ptr noundef %5, i32 noundef %conv4, i32 noundef %.) #4
  %data = getelementptr inbounds %struct.xt_connlimit_info, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call, ptr %data, align 8
  %cmp.i.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  %7 = ptrtoint ptr %call to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %7, i32 0
  ret i32 %spec.select.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @connlimit_mt_destroy(ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %matchinfo = getelementptr inbounds %struct.xt_mtdtor_param, ptr %par, i32 0, i32 2
  %0 = ptrtoint ptr %matchinfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %matchinfo, align 4
  %2 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %par, align 4
  %family = getelementptr inbounds %struct.xt_mtdtor_param, ptr %par, i32 0, i32 3
  %4 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %family, align 4
  %conv = zext i8 %5 to i32
  %data = getelementptr inbounds %struct.xt_connlimit_info, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 8
  tail call void @nf_conncount_destroy(ptr noundef %3, i32 noundef %conv, ptr noundef %7) #4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nf_ct_get_tuplepr(ptr noundef, i32 noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_conncount_count(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nf_conncount_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_conncount_destroy(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xt_register_match(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15}
!llvm.module.flags = !{!17, !18, !19, !20, !21, !22, !23, !24}
!llvm.ident = !{!25}

!0 = !{ptr @__initcall__kmod_xt_connlimit__587_131_connlimit_mt_init6, !1, !"__initcall__kmod_xt_connlimit__587_131_connlimit_mt_init6", i1 false, i1 false}
!1 = !{!"../net/netfilter/xt_connlimit.c", i32 131, i32 1}
!2 = !{ptr @__exitcall_connlimit_mt_exit, !3, !"__exitcall_connlimit_mt_exit", i1 false, i1 false}
!3 = !{!"../net/netfilter/xt_connlimit.c", i32 132, i32 1}
!4 = !{ptr @__UNIQUE_ID_author588, !5, !"__UNIQUE_ID_author588", i1 false, i1 false}
!5 = !{!"../net/netfilter/xt_connlimit.c", i32 133, i32 1}
!6 = !{ptr @__UNIQUE_ID_description589, !7, !"__UNIQUE_ID_description589", i1 false, i1 false}
!7 = !{!"../net/netfilter/xt_connlimit.c", i32 134, i32 1}
!8 = !{ptr @__UNIQUE_ID_file590, !9, !"__UNIQUE_ID_file590", i1 false, i1 false}
!9 = !{!"../net/netfilter/xt_connlimit.c", i32 135, i32 1}
!10 = !{ptr @__UNIQUE_ID_license591, !9, !"__UNIQUE_ID_license591", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_alias592, !12, !"__UNIQUE_ID_alias592", i1 false, i1 false}
!12 = !{!"../net/netfilter/xt_connlimit.c", i32 136, i32 1}
!13 = !{ptr @__UNIQUE_ID_alias593, !14, !"__UNIQUE_ID_alias593", i1 false, i1 false}
!14 = !{!"../net/netfilter/xt_connlimit.c", i32 137, i32 1}
!15 = !{ptr @connlimit_mt_reg, !16, !"connlimit_mt_reg", i1 false, i1 false}
!16 = !{!"../net/netfilter/xt_connlimit.c", i32 109, i32 24}
!17 = !{i32 1, !"wchar_size", i32 2}
!18 = !{i32 1, !"min_enum_size", i32 4}
!19 = !{i32 8, !"branch-target-enforcement", i32 0}
!20 = !{i32 8, !"sign-return-address", i32 0}
!21 = !{i32 8, !"sign-return-address-all", i32 0}
!22 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!23 = !{i32 7, !"uwtable", i32 1}
!24 = !{i32 7, !"frame-pointer", i32 2}
!25 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
