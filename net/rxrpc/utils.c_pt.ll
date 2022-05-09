; ModuleID = '/llk/IR_all_yes/net/rxrpc/utils.c_pt.bc'
source_filename = "../net/rxrpc/utils.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.8 }
%union.anon.8 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.sk_buff = type { %union.anon.1, %union.anon.128, %union.anon.129, [48 x i8], %union.anon.130, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.132, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.1 = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.2 }
%union.anon.2 = type { ptr }
%union.anon.128 = type { ptr }
%union.anon.129 = type { i64 }
%union.anon.130 = type { %struct.anon.131 }
%struct.anon.131 = type { i32, ptr }
%union.anon.132 = type { %struct.anon.133 }
%struct.anon.133 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.134, i32, i32, i32, i16, i16, %union.anon.136, i32, %union.anon.137, %union.anon.138, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.134 = type { i32 }
%union.anon.136 = type { i32 }
%union.anon.137 = type { i32 }
%union.anon.138 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.sockaddr_rxrpc = type { i16, i16, i16, i16, %union.anon }
%union.anon = type { %struct.sockaddr_in6 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon.0 }
%union.anon.0 = type { [4 x i32] }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }

@rxrpc_extract_addr_from_skb._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.rxrpc_extract_addr_from_skb = private unnamed_addr constant [28 x i8] c"rxrpc_extract_addr_from_skb\00", align 1
@rxrpc_extract_addr_from_skb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.rxrpc_extract_addr_from_skb, ptr @.str.2, i32 41, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\014AF_RXRPC: Unknown eth protocol %u\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"net/rxrpc/utils.c\00", [46 x i8] zeroinitializer }, align 32
@rxrpc_extract_addr_from_skb._entry_ptr = internal global ptr @rxrpc_extract_addr_from_skb._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@___asan_gen_.3 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.9 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.15 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.16 = private constant [21 x i8] c"../net/rxrpc/utils.c\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 40, i32 3 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @rxrpc_extract_addr_from_skb._entry, ptr @rxrpc_extract_addr_from_skb._entry_ptr, ptr @rxrpc_extract_addr_from_skb._rs, ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_extract_addr_from_skb._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_extract_addr_from_skb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rxrpc_extract_addr_from_skb(ptr nocapture noundef writeonly %srx, ptr nocapture noundef readonly %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %srx, i32 0, i32 36)
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %1 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %protocol, align 8
  %3 = zext i16 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i16 %2, label %sw.default [
    i16 2048, label %sw.bb
    i16 -31011, label %sw.bb4
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %transport_type = getelementptr inbounds %struct.sockaddr_rxrpc, ptr %srx, i32 0, i32 2
  %4 = ptrtoint ptr %transport_type to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 2, ptr %transport_type, align 4
  %transport_len = getelementptr inbounds %struct.sockaddr_rxrpc, ptr %srx, i32 0, i32 3
  %5 = ptrtoint ptr %transport_len to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 16, ptr %transport_len, align 2
  %transport = getelementptr inbounds %struct.sockaddr_rxrpc, ptr %srx, i32 0, i32 4
  %6 = ptrtoint ptr %transport to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 2, ptr %transport, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %7 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %head.i.i, align 8
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %9 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i = zext i16 %10 to i32
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 %conv.i.i
  %11 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %add.ptr.i.i, align 2
  %sin_port = getelementptr inbounds %struct.sockaddr_rxrpc, ptr %srx, i32 0, i32 4, i32 0, i32 1
  %13 = ptrtoint ptr %sin_port to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %sin_port, align 2
  %14 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %15 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i34 = zext i16 %16 to i32
  %add.ptr.i.i35 = getelementptr i8, ptr %14, i32 %conv.i.i34
  %saddr = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i35, i32 0, i32 8
  %17 = ptrtoint ptr %saddr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %saddr, align 4
  %sin_addr = getelementptr inbounds %struct.sockaddr_rxrpc, ptr %srx, i32 0, i32 4, i32 0, i32 2
  %19 = ptrtoint ptr %sin_addr to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %sin_addr, align 4
  br label %return

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %transport_type5 = getelementptr inbounds %struct.sockaddr_rxrpc, ptr %srx, i32 0, i32 2
  %20 = ptrtoint ptr %transport_type5 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 2, ptr %transport_type5, align 4
  %transport_len6 = getelementptr inbounds %struct.sockaddr_rxrpc, ptr %srx, i32 0, i32 3
  %21 = ptrtoint ptr %transport_len6 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 28, ptr %transport_len6, align 2
  %transport7 = getelementptr inbounds %struct.sockaddr_rxrpc, ptr %srx, i32 0, i32 4
  %22 = ptrtoint ptr %transport7 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 10, ptr %transport7, align 4
  %head.i.i36 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %23 = ptrtoint ptr %head.i.i36 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %head.i.i36, align 8
  %transport_header.i.i37 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %25 = ptrtoint ptr %transport_header.i.i37 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %transport_header.i.i37, align 2
  %conv.i.i38 = zext i16 %26 to i32
  %add.ptr.i.i39 = getelementptr i8, ptr %24, i32 %conv.i.i38
  %27 = ptrtoint ptr %add.ptr.i.i39 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %add.ptr.i.i39, align 2
  %sin6_port = getelementptr inbounds %struct.sockaddr_rxrpc, ptr %srx, i32 0, i32 4, i32 0, i32 1
  %29 = ptrtoint ptr %sin6_port to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %28, ptr %sin6_port, align 2
  %sin6_addr = getelementptr inbounds %struct.sockaddr_rxrpc, ptr %srx, i32 0, i32 4, i32 0, i32 3
  %30 = load ptr, ptr %head.i.i36, align 8
  %network_header.i.i41 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %31 = ptrtoint ptr %network_header.i.i41 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %network_header.i.i41, align 4
  %conv.i.i42 = zext i16 %32 to i32
  %add.ptr.i.i43 = getelementptr i8, ptr %30, i32 %conv.i.i42
  %saddr13 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i43, i32 0, i32 5
  %33 = call ptr @memcpy(ptr %sin6_addr, ptr %saddr13, i32 16)
  br label %return

sw.default:                                       ; preds = %entry
  %call14 = tail call i32 @___ratelimit(ptr noundef nonnull @rxrpc_extract_addr_from_skb._rs, ptr noundef nonnull @__func__.rxrpc_extract_addr_from_skb) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool.not = icmp eq i32 %call14, 0
  br i1 %tobool.not, label %sw.default.return_crit_edge, label %do.end

sw.default.return_crit_edge:                      ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

do.end:                                           ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #5
  %34 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %protocol, align 8
  %conv16 = zext i16 %35 to i32
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %conv16) #6
  br label %return

return:                                           ; preds = %do.end, %sw.default.return_crit_edge, %sw.bb4, %sw.bb
  %retval.0 = phi i32 [ 0, %sw.bb4 ], [ 0, %sw.bb ], [ -97, %do.end ], [ -97, %sw.default.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/rxrpc/utils.c", i32 40, i32 3}
!2 = !{ptr @rxrpc_extract_addr_from_skb._rs, !1, !"_rs", i1 false, i1 false}
!3 = !{ptr @__func__.rxrpc_extract_addr_from_skb, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @rxrpc_extract_addr_from_skb._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @rxrpc_extract_addr_from_skb._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 8, !"branch-target-enforcement", i32 0}
!11 = !{i32 8, !"sign-return-address", i32 0}
!12 = !{i32 8, !"sign-return-address-all", i32 0}
!13 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
