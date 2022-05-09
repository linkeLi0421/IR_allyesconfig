; ModuleID = '/llk/IR_all_yes/net/netfilter/nft_chain_route.c_pt.bc'
source_filename = "../net/netfilter/nft_chain_route.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nft_chain_type = type { ptr, i32, i32, ptr, i32, [6 x ptr], ptr, ptr }
%struct.in6_addr = type { %union.anon.72 }
%union.anon.72 = type { [4 x i32] }
%struct.nft_pktinfo = type { ptr, ptr, i8, i8, i16, i32, i32 }
%struct.sk_buff = type { %union.anon.50, %union.anon.53, %union.anon.54, [48 x i8], %union.anon.55, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.57, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type { ptr, ptr, %union.anon.52 }
%union.anon.52 = type { ptr }
%union.anon.53 = type { ptr }
%union.anon.54 = type { i64 }
%union.anon.55 = type { %struct.anon.56 }
%struct.anon.56 = type { i32, ptr }
%union.anon.57 = type { %struct.anon.58 }
%struct.anon.58 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.59, i32, i32, i32, i16, i16, %union.anon.61, i32, %union.anon.62, %union.anon.63, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.59 = type { i32 }
%union.anon.61 = type { i32 }
%union.anon.62 = type { i32 }
%union.anon.63 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.nf_hook_state = type { i8, i8, ptr, ptr, ptr, ptr, ptr }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }

@nft_chain_route_ipv6 = internal constant { %struct.nft_chain_type, [44 x i8] } { %struct.nft_chain_type { ptr @.str, i32 1, i32 10, ptr null, i32 8, [6 x ptr] [ptr null, ptr null, ptr null, ptr @nf_route_table_hook6, ptr null, ptr null], ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@nft_chain_route_ipv4 = internal constant { %struct.nft_chain_type, [44 x i8] } { %struct.nft_chain_type { ptr @.str, i32 1, i32 2, ptr null, i32 8, [6 x ptr] [ptr null, ptr null, ptr null, ptr @nf_route_table_hook4, ptr null, ptr null], ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@nft_chain_route_inet = internal constant { %struct.nft_chain_type, [44 x i8] } { %struct.nft_chain_type { ptr @.str, i32 1, i32 1, ptr null, i32 8, [6 x ptr] [ptr null, ptr null, ptr null, ptr @nf_route_table_inet, ptr null, ptr null], ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"route\00", [26 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 10]
@___asan_gen_.1 = private unnamed_addr constant [21 x i8] c"nft_chain_route_ipv6\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 103, i32 36 }
@___asan_gen_.4 = private unnamed_addr constant [21 x i8] c"nft_chain_route_ipv4\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 53, i32 36 }
@___asan_gen_.7 = private unnamed_addr constant [21 x i8] c"nft_chain_route_inet\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 134, i32 36 }
@___asan_gen_.10 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.11 = private constant [35 x i8] c"../net/netfilter/nft_chain_route.c\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 104, i32 11 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @nft_chain_route_fini, ptr @nft_chain_route_ipv6, ptr @nft_chain_route_ipv4, ptr @nft_chain_route_inet, ptr @.str], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nft_chain_route_ipv6 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nft_chain_route_ipv4 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nft_chain_route_inet to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @nft_chain_route_init() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @nft_register_chain_type(ptr noundef nonnull @nft_chain_route_ipv6) #5
  tail call void @nft_register_chain_type(ptr noundef nonnull @nft_chain_route_ipv4) #5
  tail call void @nft_register_chain_type(ptr noundef nonnull @nft_chain_route_inet) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nft_register_chain_type(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @nft_chain_route_fini() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @nft_unregister_chain_type(ptr noundef nonnull @nft_chain_route_ipv6) #5
  tail call void @nft_unregister_chain_type(ptr noundef nonnull @nft_chain_route_ipv4) #5
  tail call void @nft_unregister_chain_type(ptr noundef nonnull @nft_chain_route_inet) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nft_unregister_chain_type(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nf_route_table_hook6(ptr noundef %priv, ptr noundef %skb, ptr noundef %state) #2 align 64 {
entry:
  %flags.i = alloca i32, align 4
  %thoff.i = alloca i32, align 4
  %frag_off.i = alloca i16, align 2
  %saddr = alloca %struct.in6_addr, align 4
  %daddr = alloca %struct.in6_addr, align 4
  %pkt = alloca %struct.nft_pktinfo, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %saddr) #5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %daddr) #5
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %pkt) #5
  %0 = getelementptr inbounds %struct.nft_pktinfo, ptr %pkt, i32 0, i32 1
  %1 = getelementptr inbounds %struct.nft_pktinfo, ptr %pkt, i32 0, i32 2
  %2 = getelementptr inbounds i8, ptr %pkt, i32 8
  %3 = call ptr @memset(ptr %2, i32 255, i32 12)
  %4 = ptrtoint ptr %pkt to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %skb, ptr %pkt, align 4
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %state, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags.i) #5
  %6 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2, ptr %flags.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %thoff.i) #5
  %7 = ptrtoint ptr %thoff.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %thoff.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %frag_off.i) #5
  %8 = ptrtoint ptr %frag_off.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 -1, ptr %frag_off.i, align 2, !annotation !17
  %call.i = call i32 @ipv6_find_hdr(ptr noundef %skb, ptr noundef nonnull %thoff.i, i32 noundef -1, ptr noundef nonnull %frag_off.i, ptr noundef nonnull %flags.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %9, i32 8)
  store i64 0, ptr %1, align 4
  br label %nft_set_pktinfo_ipv6.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %10 = getelementptr inbounds %struct.nft_pktinfo, ptr %pkt, i32 0, i32 5
  %11 = getelementptr inbounds %struct.nft_pktinfo, ptr %pkt, i32 0, i32 4
  %12 = getelementptr inbounds %struct.nft_pktinfo, ptr %pkt, i32 0, i32 3
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %1, align 4
  %conv.i = trunc i32 %call.i to i8
  %14 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv.i, ptr %12, align 1
  %15 = ptrtoint ptr %thoff.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %thoff.i, align 4
  %17 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %10, align 4
  %18 = ptrtoint ptr %frag_off.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %frag_off.i, align 2
  %20 = ptrtoint ptr %11 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %19, ptr %11, align 2
  br label %nft_set_pktinfo_ipv6.exit

nft_set_pktinfo_ipv6.exit:                        ; preds = %if.end.i, %if.then.i
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %frag_off.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %thoff.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags.i) #5
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
  %saddr1 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 5
  %25 = call ptr @memcpy(ptr %saddr, ptr %saddr1, i32 16)
  %daddr3 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 6
  %26 = call ptr @memcpy(ptr %daddr, ptr %daddr3, i32 16)
  %27 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 13
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 4
  %hop_limit5 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 4
  %30 = ptrtoint ptr %hop_limit5 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %hop_limit5, align 1
  %32 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %add.ptr.i.i, align 4
  %call7 = call i32 @nft_do_chain(ptr noundef nonnull %pkt, ptr noundef %priv) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call7)
  %cmp = icmp eq i32 %call7, 1
  br i1 %cmp, label %land.lhs.true, label %nft_set_pktinfo_ipv6.exit.if.end31_crit_edge

nft_set_pktinfo_ipv6.exit.if.end31_crit_edge:     ; preds = %nft_set_pktinfo_ipv6.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31

land.lhs.true:                                    ; preds = %nft_set_pktinfo_ipv6.exit
  %34 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %head.i.i, align 8
  %36 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i62 = zext i16 %37 to i32
  %add.ptr.i.i63 = getelementptr i8, ptr %35, i32 %conv.i.i62
  %saddr9 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i63, i32 0, i32 5
  %bcmp = call i32 @bcmp(ptr noundef dereferenceable(16) %saddr9, ptr noundef nonnull dereferenceable(16) %saddr, i32 16) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not = icmp eq i32 %bcmp, 0
  br i1 %tobool.not, label %lor.lhs.false, label %land.lhs.true.if.then_crit_edge

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

lor.lhs.false:                                    ; preds = %land.lhs.true
  %daddr12 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i63, i32 0, i32 6
  %bcmp47 = call i32 @bcmp(ptr noundef dereferenceable(16) %daddr12, ptr noundef nonnull dereferenceable(16) %daddr, i32 16) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp47)
  %tobool14.not = icmp eq i32 %bcmp47, 0
  br i1 %tobool14.not, label %lor.lhs.false15, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

lor.lhs.false15:                                  ; preds = %lor.lhs.false
  %38 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %27, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %29)
  %cmp16.not = icmp eq i32 %39, %29
  br i1 %cmp16.not, label %lor.lhs.false17, label %lor.lhs.false15.if.then_crit_edge

lor.lhs.false15.if.then_crit_edge:                ; preds = %lor.lhs.false15
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

lor.lhs.false17:                                  ; preds = %lor.lhs.false15
  %hop_limit19 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i63, i32 0, i32 4
  %40 = ptrtoint ptr %hop_limit19 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %hop_limit19, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %41, i8 %31)
  %cmp21.not = icmp eq i8 %41, %31
  br i1 %cmp21.not, label %lor.lhs.false23, label %lor.lhs.false17.if.then_crit_edge

lor.lhs.false17.if.then_crit_edge:                ; preds = %lor.lhs.false17
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

lor.lhs.false23:                                  ; preds = %lor.lhs.false17
  %42 = ptrtoint ptr %add.ptr.i.i63 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %add.ptr.i.i63, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %43)
  %cmp25.not = icmp eq i32 %33, %43
  br i1 %cmp25.not, label %lor.lhs.false23.if.end31_crit_edge, label %lor.lhs.false23.if.then_crit_edge

lor.lhs.false23.if.then_crit_edge:                ; preds = %lor.lhs.false23
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

lor.lhs.false23.if.end31_crit_edge:               ; preds = %lor.lhs.false23
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31

if.then:                                          ; preds = %lor.lhs.false23.if.then_crit_edge, %lor.lhs.false17.if.then_crit_edge, %lor.lhs.false15.if.then_crit_edge, %lor.lhs.false.if.then_crit_edge, %land.lhs.true.if.then_crit_edge
  %net = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 5
  %44 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %net, align 4
  %sk = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 4
  %46 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %sk, align 4
  %call.i76 = call i32 @ip6_route_me_harder(ptr noundef %45, ptr noundef %47, ptr noundef %skb) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i76)
  %cmp28 = icmp slt i32 %call.i76, 0
  %.neg = mul i32 %call.i76, -65536
  %spec.select = select i1 %cmp28, i32 %.neg, i32 1
  br label %if.end31

if.end31:                                         ; preds = %if.then, %lor.lhs.false23.if.end31_crit_edge, %nft_set_pktinfo_ipv6.exit.if.end31_crit_edge
  %ret.0 = phi i32 [ 1, %lor.lhs.false23.if.end31_crit_edge ], [ %call7, %nft_set_pktinfo_ipv6.exit.if.end31_crit_edge ], [ %spec.select, %if.then ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %pkt) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %daddr) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %saddr) #5
  ret i32 %ret.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nft_do_chain(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_find_hdr(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip6_route_me_harder(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nf_route_table_hook4(ptr noundef %priv, ptr noundef %skb, ptr noundef %state) #2 align 64 {
entry:
  %pkt = alloca %struct.nft_pktinfo, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %pkt) #5
  %0 = getelementptr inbounds %struct.nft_pktinfo, ptr %pkt, i32 0, i32 1
  %1 = getelementptr inbounds %struct.nft_pktinfo, ptr %pkt, i32 0, i32 2
  %2 = getelementptr inbounds %struct.nft_pktinfo, ptr %pkt, i32 0, i32 3
  %3 = getelementptr inbounds %struct.nft_pktinfo, ptr %pkt, i32 0, i32 4
  %4 = getelementptr inbounds %struct.nft_pktinfo, ptr %pkt, i32 0, i32 5
  %5 = getelementptr inbounds i8, ptr %pkt, i32 16
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %5, align 4
  %7 = ptrtoint ptr %pkt to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %skb, ptr %pkt, align 4
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %state, ptr %0, align 4
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %9 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %head.i.i.i, align 8
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %11 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i.i = zext i16 %12 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %10, i32 %conv.i.i.i
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %1, align 4
  %protocol.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i, i32 0, i32 6
  %14 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %protocol.i, align 1
  %16 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %2, align 1
  %17 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load.i.i = load i8, ptr %add.ptr.i.i.i, align 4
  %bf.clear.i.i = shl i8 %bf.load.i.i, 2
  %18 = and i8 %bf.clear.i.i, 60
  %mul.i.i = zext i8 %18 to i32
  %19 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %mul.i.i, ptr %4, align 4
  %frag_off.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i, i32 0, i32 4
  %20 = ptrtoint ptr %frag_off.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %frag_off.i, align 2
  %22 = and i16 %21, 8191
  %23 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %3, align 2
  %24 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 13
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 4
  %saddr1 = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i, i32 0, i32 8
  %27 = ptrtoint ptr %saddr1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %saddr1, align 4
  %daddr2 = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i, i32 0, i32 9
  %29 = ptrtoint ptr %daddr2 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %daddr2, align 4
  %tos3 = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i, i32 0, i32 1
  %31 = ptrtoint ptr %tos3 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %tos3, align 1
  %call4 = call i32 @nft_do_chain(ptr noundef nonnull %pkt, ptr noundef %priv) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call4)
  %cmp = icmp eq i32 %call4, 1
  br i1 %cmp, label %if.then, label %entry.if.end23_crit_edge

entry.if.end23_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end23

if.then:                                          ; preds = %entry
  %33 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %head.i.i.i, align 8
  %35 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i40 = zext i16 %36 to i32
  %add.ptr.i.i41 = getelementptr i8, ptr %34, i32 %conv.i.i40
  %saddr6 = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i41, i32 0, i32 8
  %37 = ptrtoint ptr %saddr6 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %saddr6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %28)
  %cmp7.not = icmp eq i32 %38, %28
  br i1 %cmp7.not, label %lor.lhs.false, label %if.then.if.then17_crit_edge

if.then.if.then17_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then17

lor.lhs.false:                                    ; preds = %if.then
  %daddr8 = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i41, i32 0, i32 9
  %39 = ptrtoint ptr %daddr8 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %daddr8, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %30)
  %cmp9.not = icmp eq i32 %40, %30
  br i1 %cmp9.not, label %lor.lhs.false10, label %lor.lhs.false.if.then17_crit_edge

lor.lhs.false.if.then17_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then17

lor.lhs.false10:                                  ; preds = %lor.lhs.false
  %41 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %24, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %26)
  %cmp11.not = icmp eq i32 %42, %26
  br i1 %cmp11.not, label %lor.lhs.false12, label %lor.lhs.false10.if.then17_crit_edge

lor.lhs.false10.if.then17_crit_edge:              ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then17

lor.lhs.false12:                                  ; preds = %lor.lhs.false10
  %tos13 = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i41, i32 0, i32 1
  %43 = ptrtoint ptr %tos13 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %tos13, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %44, i8 %32)
  %cmp15.not = icmp eq i8 %44, %32
  br i1 %cmp15.not, label %lor.lhs.false12.if.end23_crit_edge, label %lor.lhs.false12.if.then17_crit_edge

lor.lhs.false12.if.then17_crit_edge:              ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then17

lor.lhs.false12.if.end23_crit_edge:               ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end23

if.then17:                                        ; preds = %lor.lhs.false12.if.then17_crit_edge, %lor.lhs.false10.if.then17_crit_edge, %lor.lhs.false.if.then17_crit_edge, %if.then.if.then17_crit_edge
  %net = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 5
  %45 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %net, align 4
  %sk = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 4
  %47 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %sk, align 4
  %call18 = call i32 @ip_route_me_harder(ptr noundef %46, ptr noundef %48, ptr noundef %skb, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19 = icmp slt i32 %call18, 0
  %.neg = mul i32 %call18, -65536
  %spec.select = select i1 %cmp19, i32 %.neg, i32 1
  br label %if.end23

if.end23:                                         ; preds = %if.then17, %lor.lhs.false12.if.end23_crit_edge, %entry.if.end23_crit_edge
  %ret.0 = phi i32 [ 1, %lor.lhs.false12.if.end23_crit_edge ], [ %call4, %entry.if.end23_crit_edge ], [ %spec.select, %if.then17 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %pkt) #5
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_route_me_harder(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nf_route_table_inet(ptr noundef %priv, ptr noundef %skb, ptr noundef %state) #2 align 64 {
entry:
  %pkt = alloca %struct.nft_pktinfo, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %pkt) #5
  %pf = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 1
  %0 = getelementptr inbounds i8, ptr %pkt, i32 8
  %1 = call ptr @memset(ptr %0, i32 255, i32 12)
  %2 = ptrtoint ptr %pf to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %pf, align 1
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i8 %3, label %sw.default [
    i8 2, label %sw.bb
    i8 10, label %sw.bb1
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 @nf_route_table_hook4(ptr noundef %priv, ptr noundef %skb, ptr noundef %state)
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call2 = tail call i32 @nf_route_table_hook6(ptr noundef %priv, ptr noundef %skb, ptr noundef %state)
  br label %cleanup

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %5 = getelementptr inbounds %struct.nft_pktinfo, ptr %pkt, i32 0, i32 1
  %6 = ptrtoint ptr %pkt to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %skb, ptr %pkt, align 4
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %state, ptr %5, align 4
  %call3 = call i32 @nft_do_chain(ptr noundef nonnull %pkt, ptr noundef %priv) #5
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %sw.bb1, %sw.bb
  %retval.0 = phi i32 [ %call3, %sw.default ], [ %call2, %sw.bb1 ], [ %call, %sw.bb ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %pkt) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind readonly willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/netfilter/nft_chain_route.c", i32 104, i32 11}
!2 = !{ptr @nft_chain_route_ipv6, !3, !"nft_chain_route_ipv6", i1 false, i1 false}
!3 = !{!"../net/netfilter/nft_chain_route.c", i32 103, i32 36}
!4 = !{ptr @nft_chain_route_ipv4, !5, !"nft_chain_route_ipv4", i1 false, i1 false}
!5 = !{!"../net/netfilter/nft_chain_route.c", i32 53, i32 36}
!6 = !{ptr @nft_chain_route_inet, !7, !"nft_chain_route_inet", i1 false, i1 false}
!7 = !{!"../net/netfilter/nft_chain_route.c", i32 134, i32 36}
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
