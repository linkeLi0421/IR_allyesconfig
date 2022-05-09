; ModuleID = '/llk/IR_all_yes/net/netfilter/nft_chain_nat.c_pt.bc'
source_filename = "../net/netfilter/nft_chain_nat.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nft_chain_type = type { ptr, i32, i32, ptr, i32, [6 x ptr], ptr, ptr }
%struct.nft_pktinfo = type { ptr, ptr, i8, i8, i16, i32, i32 }
%struct.nf_hook_state = type { i8, i8, ptr, ptr, ptr, ptr, ptr }
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
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }

@nft_chain_nat_ipv4 = internal constant { %struct.nft_chain_type, [44 x i8] } { %struct.nft_chain_type { ptr @.str, i32 2, i32 2, ptr null, i32 27, [6 x ptr] [ptr @nft_nat_do_chain, ptr @nft_nat_do_chain, ptr null, ptr @nft_nat_do_chain, ptr @nft_nat_do_chain, ptr null], ptr @nf_nat_ipv4_register_fn, ptr @nf_nat_ipv4_unregister_fn }, [44 x i8] zeroinitializer }, align 32
@nft_chain_nat_ipv6 = internal constant { %struct.nft_chain_type, [44 x i8] } { %struct.nft_chain_type { ptr @.str, i32 2, i32 10, ptr null, i32 27, [6 x ptr] [ptr @nft_nat_do_chain, ptr @nft_nat_do_chain, ptr null, ptr @nft_nat_do_chain, ptr @nft_nat_do_chain, ptr null], ptr @nf_nat_ipv6_register_fn, ptr @nf_nat_ipv6_unregister_fn }, [44 x i8] zeroinitializer }, align 32
@nft_chain_nat_inet = internal constant { %struct.nft_chain_type, [44 x i8] } { %struct.nft_chain_type { ptr @.str, i32 2, i32 1, ptr null, i32 27, [6 x ptr] [ptr @nft_nat_do_chain, ptr @nft_nat_do_chain, ptr null, ptr @nft_nat_do_chain, ptr @nft_nat_do_chain, ptr null], ptr @nft_nat_inet_reg, ptr @nft_nat_inet_unreg }, [44 x i8] zeroinitializer }, align 32
@__initcall__kmod_nft_chain_nat__736_136_nft_chain_nat_init6 = internal global ptr @nft_chain_nat_init, section ".initcall6.init", align 4
@__exitcall_nft_chain_nat_exit = internal global ptr @nft_chain_nat_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file737 = internal constant [47 x i8] c"nft_chain_nat.file=net/netfilter/nft_chain_nat\00", section ".modinfo", align 1
@__UNIQUE_ID_license738 = internal constant [26 x i8] c"nft_chain_nat.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias739 = internal constant [36 x i8] c"nft_chain_nat.alias=nft-chain-2-nat\00", section ".modinfo", align 1
@__UNIQUE_ID_alias740 = internal constant [37 x i8] c"nft_chain_nat.alias=nft-chain-10-nat\00", section ".modinfo", align 1
@__UNIQUE_ID_alias741 = internal constant [36 x i8] c"nft_chain_nat.alias=nft-chain-1-nat\00", section ".modinfo", align 1
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"nat\00", [28 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 10]
@___asan_gen_.1 = private unnamed_addr constant [19 x i8] c"nft_chain_nat_ipv4\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 36, i32 36 }
@___asan_gen_.4 = private unnamed_addr constant [19 x i8] c"nft_chain_nat_ipv6\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 57, i32 36 }
@___asan_gen_.7 = private unnamed_addr constant [19 x i8] c"nft_chain_nat_inet\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 88, i32 36 }
@___asan_gen_.10 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.11 = private constant [33 x i8] c"../net/netfilter/nft_chain_nat.c\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 37, i32 11 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @__UNIQUE_ID_alias739, ptr @__UNIQUE_ID_alias740, ptr @__UNIQUE_ID_alias741, ptr @__UNIQUE_ID_file737, ptr @__UNIQUE_ID_license738, ptr @__exitcall_nft_chain_nat_exit, ptr @__initcall__kmod_nft_chain_nat__736_136_nft_chain_nat_init6, ptr @nft_chain_nat_exit, ptr @nft_chain_nat_ipv4, ptr @nft_chain_nat_ipv6, ptr @nft_chain_nat_inet, ptr @.str], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nft_chain_nat_ipv4 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nft_chain_nat_ipv6 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nft_chain_nat_inet to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @nft_chain_nat_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @nft_unregister_chain_type(ptr noundef nonnull @nft_chain_nat_ipv4) #4
  tail call void @nft_unregister_chain_type(ptr noundef nonnull @nft_chain_nat_ipv6) #4
  tail call void @nft_unregister_chain_type(ptr noundef nonnull @nft_chain_nat_inet) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nft_unregister_chain_type(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_chain_nat_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @nft_register_chain_type(ptr noundef nonnull @nft_chain_nat_ipv6) #4
  tail call void @nft_register_chain_type(ptr noundef nonnull @nft_chain_nat_ipv4) #4
  tail call void @nft_register_chain_type(ptr noundef nonnull @nft_chain_nat_inet) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_nat_do_chain(ptr noundef %priv, ptr noundef %skb, ptr noundef %state) #2 align 64 {
entry:
  %flags.i3 = alloca i32, align 4
  %thoff.i4 = alloca i32, align 4
  %frag_off.i5 = alloca i16, align 2
  %pkt = alloca %struct.nft_pktinfo, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %pkt) #4
  %0 = getelementptr inbounds %struct.nft_pktinfo, ptr %pkt, i32 0, i32 1
  %1 = getelementptr inbounds %struct.nft_pktinfo, ptr %pkt, i32 0, i32 2
  %2 = getelementptr inbounds %struct.nft_pktinfo, ptr %pkt, i32 0, i32 3
  %3 = getelementptr inbounds %struct.nft_pktinfo, ptr %pkt, i32 0, i32 4
  %4 = getelementptr inbounds %struct.nft_pktinfo, ptr %pkt, i32 0, i32 5
  %5 = getelementptr inbounds i8, ptr %pkt, i32 8
  %6 = call ptr @memset(ptr %5, i32 255, i32 12)
  %7 = ptrtoint ptr %pkt to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %skb, ptr %pkt, align 4
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %state, ptr %0, align 4
  %pf = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 1
  %9 = ptrtoint ptr %pf to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %pf, align 1
  %11 = zext i8 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i8 %10, label %entry.sw.epilog_crit_edge [
    i8 2, label %sw.bb
    i8 10, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %12 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %head.i.i.i, align 8
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %14 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i.i = zext i16 %15 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %13, i32 %conv.i.i.i
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %1, align 4
  %protocol.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i, i32 0, i32 6
  %17 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %protocol.i, align 1
  %19 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %2, align 1
  %20 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load.i.i = load i8, ptr %add.ptr.i.i.i, align 4
  %bf.clear.i.i = shl i8 %bf.load.i.i, 2
  %21 = and i8 %bf.clear.i.i, 60
  %mul.i.i = zext i8 %21 to i32
  %22 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %mul.i.i, ptr %4, align 4
  %frag_off.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i, i32 0, i32 4
  %23 = ptrtoint ptr %frag_off.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %frag_off.i, align 2
  %25 = and i16 %24, 8191
  %26 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %25, ptr %3, align 2
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags.i3) #4
  %27 = ptrtoint ptr %flags.i3 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 2, ptr %flags.i3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %thoff.i4) #4
  %28 = ptrtoint ptr %thoff.i4 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %thoff.i4, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %frag_off.i5) #4
  %29 = ptrtoint ptr %frag_off.i5 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 -1, ptr %frag_off.i5, align 2, !annotation !30
  %call.i = call i32 @ipv6_find_hdr(ptr noundef %skb, ptr noundef nonnull %thoff.i4, i32 noundef -1, ptr noundef nonnull %frag_off.i5, ptr noundef nonnull %flags.i3) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #6
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %30, i32 8)
  store i64 0, ptr %1, align 4
  br label %nft_set_pktinfo_ipv6.exit

if.end.i:                                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #6
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %1, align 4
  %conv.i = trunc i32 %call.i to i8
  %32 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv.i, ptr %2, align 1
  %33 = ptrtoint ptr %thoff.i4 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %thoff.i4, align 4
  %35 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %4, align 4
  %36 = ptrtoint ptr %frag_off.i5 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %frag_off.i5, align 2
  %38 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %37, ptr %3, align 2
  br label %nft_set_pktinfo_ipv6.exit

nft_set_pktinfo_ipv6.exit:                        ; preds = %if.end.i, %if.then.i
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %frag_off.i5) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %thoff.i4) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags.i3) #4
  br label %sw.epilog

sw.epilog:                                        ; preds = %nft_set_pktinfo_ipv6.exit, %sw.bb, %entry.sw.epilog_crit_edge
  %call = call i32 @nft_do_chain(ptr noundef nonnull %pkt, ptr noundef %priv) #4
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %pkt) #4
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_nat_ipv4_register_fn(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_nat_ipv4_unregister_fn(ptr noundef, ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nft_do_chain(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_find_hdr(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_nat_ipv6_register_fn(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_nat_ipv6_unregister_fn(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_nat_inet_reg(ptr noundef %net, ptr noundef %ops) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @nf_nat_inet_register_fn(ptr noundef %net, ptr noundef %ops) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nft_nat_inet_unreg(ptr noundef %net, ptr noundef %ops) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @nf_nat_inet_unregister_fn(ptr noundef %net, ptr noundef %ops) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_nat_inet_register_fn(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_nat_inet_unregister_fn(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nft_register_chain_type(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19}
!llvm.module.flags = !{!21, !22, !23, !24, !25, !26, !27, !28}
!llvm.ident = !{!29}

!0 = !{ptr @__initcall__kmod_nft_chain_nat__736_136_nft_chain_nat_init6, !1, !"__initcall__kmod_nft_chain_nat__736_136_nft_chain_nat_init6", i1 false, i1 false}
!1 = !{!"../net/netfilter/nft_chain_nat.c", i32 136, i32 1}
!2 = !{ptr @__exitcall_nft_chain_nat_exit, !3, !"__exitcall_nft_chain_nat_exit", i1 false, i1 false}
!3 = !{!"../net/netfilter/nft_chain_nat.c", i32 137, i32 1}
!4 = !{ptr @__UNIQUE_ID_file737, !5, !"__UNIQUE_ID_file737", i1 false, i1 false}
!5 = !{!"../net/netfilter/nft_chain_nat.c", i32 139, i32 1}
!6 = !{ptr @__UNIQUE_ID_license738, !5, !"__UNIQUE_ID_license738", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_alias739, !8, !"__UNIQUE_ID_alias739", i1 false, i1 false}
!8 = !{!"../net/netfilter/nft_chain_nat.c", i32 141, i32 1}
!9 = !{ptr @__UNIQUE_ID_alias740, !10, !"__UNIQUE_ID_alias740", i1 false, i1 false}
!10 = !{!"../net/netfilter/nft_chain_nat.c", i32 144, i32 1}
!11 = !{ptr @__UNIQUE_ID_alias741, !12, !"__UNIQUE_ID_alias741", i1 false, i1 false}
!12 = !{!"../net/netfilter/nft_chain_nat.c", i32 147, i32 1}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../net/netfilter/nft_chain_nat.c", i32 37, i32 11}
!15 = !{ptr @nft_chain_nat_ipv4, !16, !"nft_chain_nat_ipv4", i1 false, i1 false}
!16 = !{!"../net/netfilter/nft_chain_nat.c", i32 36, i32 36}
!17 = !{ptr @nft_chain_nat_ipv6, !18, !"nft_chain_nat_ipv6", i1 false, i1 false}
!18 = !{!"../net/netfilter/nft_chain_nat.c", i32 57, i32 36}
!19 = !{ptr @nft_chain_nat_inet, !20, !"nft_chain_nat_inet", i1 false, i1 false}
!20 = !{!"../net/netfilter/nft_chain_nat.c", i32 88, i32 36}
!21 = !{i32 1, !"wchar_size", i32 2}
!22 = !{i32 1, !"min_enum_size", i32 4}
!23 = !{i32 8, !"branch-target-enforcement", i32 0}
!24 = !{i32 8, !"sign-return-address", i32 0}
!25 = !{i32 8, !"sign-return-address-all", i32 0}
!26 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!27 = !{i32 7, !"uwtable", i32 1}
!28 = !{i32 7, !"frame-pointer", i32 2}
!29 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!30 = !{!"auto-init"}
