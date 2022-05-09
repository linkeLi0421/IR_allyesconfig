; ModuleID = '/llk/IR_all_yes/net/netfilter/nf_nat_amanda.c_pt.bc'
source_filename = "../net/netfilter/nf_nat_amanda.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nf_conntrack_nat_helper = type { %struct.list_head, [16 x i8], ptr }
%struct.list_head = type { ptr, ptr }
%struct.nf_conntrack_expect = type { %struct.hlist_node, %struct.hlist_node, %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple_mask, ptr, ptr, ptr, %struct.timer_list, %struct.refcount_struct, i32, i32, %union.nf_inet_addr, %union.nf_conntrack_man_proto, i32, %struct.callback_head }
%struct.hlist_node = type { ptr, ptr }
%struct.nf_conntrack_tuple = type { %struct.nf_conntrack_man, %struct.anon.161 }
%struct.nf_conntrack_man = type { %union.nf_inet_addr, %union.nf_conntrack_man_proto, i16 }
%struct.anon.161 = type { %union.nf_inet_addr, %union.anon.162, i8, i8 }
%union.anon.162 = type { i16 }
%struct.nf_conntrack_tuple_mask = type { %struct.anon.169 }
%struct.anon.169 = type { %union.nf_inet_addr, %union.nf_conntrack_man_proto }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%union.nf_inet_addr = type { [4 x i32] }
%union.nf_conntrack_man_proto = type { i16 }
%struct.callback_head = type { ptr, ptr }

@__UNIQUE_ID_author581 = internal constant [66 x i8] c"nf_nat_amanda.author=Brian J. Murrell <netfilter@interlinx.bc.ca>\00", section ".modinfo", align 1
@__UNIQUE_ID_description582 = internal constant [44 x i8] c"nf_nat_amanda.description=Amanda NAT helper\00", section ".modinfo", align 1
@__UNIQUE_ID_file583 = internal constant [47 x i8] c"nf_nat_amanda.file=net/netfilter/nf_nat_amanda\00", section ".modinfo", align 1
@__UNIQUE_ID_license584 = internal constant [26 x i8] c"nf_nat_amanda.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias585 = internal constant [34 x i8] c"nf_nat_amanda.alias=ip_nat_amanda\00", section ".modinfo", align 1
@nat_helper_amanda = internal global { %struct.nf_conntrack_nat_helper, [36 x i8] } { %struct.nf_conntrack_nat_helper { %struct.list_head zeroinitializer, [16 x i8] c"ip_nat_amanda\00\00\00", ptr null }, [36 x i8] zeroinitializer }, align 32
@nf_nat_amanda_hook = external dso_local global ptr, align 4
@__initcall__kmod_nf_nat_amanda__588_91_nf_nat_amanda_init6 = internal global ptr @nf_nat_amanda_init, section ".initcall6.init", align 4
@__exitcall_nf_nat_amanda_fini = internal global ptr @nf_nat_amanda_fini, section ".exitcall.exit", align 4
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"all ports in use\00", [47 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%u\00", [29 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cannot mangle packet\00", [43 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967280]
@___asan_gen_.3 = private unnamed_addr constant [18 x i8] c"nat_helper_amanda\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 25, i32 39 }
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 61, i32 38 }
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 65, i32 18 }
@___asan_gen_.12 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.13 = private constant [33 x i8] c"../net/netfilter/nf_nat_amanda.c\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 69, i32 38 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @__UNIQUE_ID_alias585, ptr @__UNIQUE_ID_author581, ptr @__UNIQUE_ID_description582, ptr @__UNIQUE_ID_file583, ptr @__UNIQUE_ID_license584, ptr @__exitcall_nf_nat_amanda_fini, ptr @__initcall__kmod_nf_nat_amanda__588_91_nf_nat_amanda_init6, ptr @nf_nat_amanda_fini, ptr @nat_helper_amanda, ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nat_helper_amanda to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @nf_nat_amanda_fini() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @nf_nat_helper_unregister(ptr noundef nonnull @nat_helper_amanda) #6
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @nf_nat_amanda_hook to i32))
  store volatile ptr null, ptr @nf_nat_amanda_hook, align 4
  tail call void @synchronize_rcu() #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_nat_helper_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @nf_nat_amanda_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nf_nat_amanda_hook to i32))
  %0 = load ptr, ptr @nf_nat_amanda_hook, align 4
  %cmp.not = icmp eq ptr %0, null
  br i1 %cmp.not, label %do.end5, label %do.body2, !prof !30

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/netfilter/nf_nat_amanda.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 85, 0\0A.popsection", ""() #6, !srcloc !31
  unreachable

do.end5:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @nf_nat_helper_register(ptr noundef nonnull @nat_helper_amanda) #6
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @nf_nat_amanda_hook to i32))
  store volatile ptr @help, ptr @nf_nat_amanda_hook, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_nat_helper_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @help(ptr noundef %skb, i32 noundef %ctinfo, i32 noundef %protoff, i32 noundef %matchoff, i32 noundef %matchlen, ptr noundef %exp) #2 align 64 {
entry:
  %buffer = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buffer) #6
  %u = getelementptr inbounds %struct.nf_conntrack_expect, ptr %exp, i32 0, i32 2, i32 1, i32 1
  %0 = call ptr @memset(ptr %buffer, i32 255, i32 6)
  %1 = ptrtoint ptr %u to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %u, align 4
  %saved_proto = getelementptr inbounds %struct.nf_conntrack_expect, ptr %exp, i32 0, i32 12
  %3 = ptrtoint ptr %saved_proto to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %2, ptr %saved_proto, align 4
  %dir = getelementptr inbounds %struct.nf_conntrack_expect, ptr %exp, i32 0, i32 13
  %4 = ptrtoint ptr %dir to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %dir, align 4
  %expectfn = getelementptr inbounds %struct.nf_conntrack_expect, ptr %exp, i32 0, i32 4
  %5 = ptrtoint ptr %expectfn to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @nf_nat_follow_master, ptr %expectfn, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %cmp.not59 = icmp eq i16 %2, 0
  br i1 %cmp.not59, label %entry.if.then19_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.if.then19_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then19

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %port.060 = phi i16 [ %inc, %for.inc.for.body_crit_edge ], [ %2, %entry.for.body_crit_edge ]
  %6 = ptrtoint ptr %u to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %port.060, ptr %u, align 4
  %call.i = tail call i32 @nf_ct_expect_related_report(ptr noundef %exp, i32 noundef 0, i32 noundef 0, i32 noundef 0) #6
  %7 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call.i, label %for.body.if.then19_crit_edge [
    i32 0, label %if.end20
    i32 -16, label %for.inc
  ]

for.body.if.then19_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then19

for.inc:                                          ; preds = %for.body
  %inc = add i16 %port.060, 1
  %cmp.not = icmp eq i16 %inc, 0
  br i1 %cmp.not, label %for.inc.if.then19_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.if.then19_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then19

if.then19:                                        ; preds = %for.inc.if.then19_crit_edge, %for.body.if.then19_crit_edge, %entry.if.then19_crit_edge
  %master = getelementptr inbounds %struct.nf_conntrack_expect, ptr %exp, i32 0, i32 6
  %8 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %master, align 4
  tail call void (ptr, ptr, ptr, ...) @nf_ct_helper_log(ptr noundef %skb, ptr noundef %9, ptr noundef nonnull @.str) #6
  br label %cleanup31

if.end20:                                         ; preds = %for.body
  %conv16 = zext i16 %port.060 to i32
  %call22 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %buffer, ptr noundef nonnull @.str.1, i32 noundef %conv16)
  %master23 = getelementptr inbounds %struct.nf_conntrack_expect, ptr %exp, i32 0, i32 6
  %10 = ptrtoint ptr %master23 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %master23, align 4
  %call26 = call i32 @strlen(ptr noundef nonnull %buffer) #9
  %call27 = call zeroext i1 @nf_nat_mangle_udp_packet(ptr noundef %skb, ptr noundef %11, i32 noundef %ctinfo, i32 noundef %protoff, i32 noundef %matchoff, i32 noundef %matchlen, ptr noundef nonnull %buffer, i32 noundef %call26) #6
  br i1 %call27, label %if.end20.cleanup31_crit_edge, label %if.then28

if.end20.cleanup31_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup31

if.then28:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %master23 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %master23, align 4
  call void (ptr, ptr, ptr, ...) @nf_ct_helper_log(ptr noundef %skb, ptr noundef %13, ptr noundef nonnull @.str.2) #6
  call void @nf_ct_unexpect_related(ptr noundef %exp) #6
  br label %cleanup31

cleanup31:                                        ; preds = %if.then28, %if.end20.cleanup31_crit_edge, %if.then19
  %retval.0 = phi i32 [ 0, %if.then19 ], [ 0, %if.then28 ], [ 1, %if.end20.cleanup31_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buffer) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_nat_follow_master(ptr noundef, ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_ct_helper_log(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nf_nat_mangle_udp_packet(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_ct_unexpect_related(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_ct_expect_related_report(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19}
!llvm.module.flags = !{!21, !22, !23, !24, !25, !26, !27, !28}
!llvm.ident = !{!29}

!0 = !{ptr @__UNIQUE_ID_author581, !1, !"__UNIQUE_ID_author581", i1 false, i1 false}
!1 = !{!"../net/netfilter/nf_nat_amanda.c", i32 20, i32 1}
!2 = !{ptr @__UNIQUE_ID_description582, !3, !"__UNIQUE_ID_description582", i1 false, i1 false}
!3 = !{!"../net/netfilter/nf_nat_amanda.c", i32 21, i32 1}
!4 = !{ptr @__UNIQUE_ID_file583, !5, !"__UNIQUE_ID_file583", i1 false, i1 false}
!5 = !{!"../net/netfilter/nf_nat_amanda.c", i32 22, i32 1}
!6 = !{ptr @__UNIQUE_ID_license584, !5, !"__UNIQUE_ID_license584", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_alias585, !8, !"__UNIQUE_ID_alias585", i1 false, i1 false}
!8 = !{!"../net/netfilter/nf_nat_amanda.c", i32 23, i32 1}
!9 = !{ptr @__initcall__kmod_nf_nat_amanda__588_91_nf_nat_amanda_init6, !10, !"__initcall__kmod_nf_nat_amanda__588_91_nf_nat_amanda_init6", i1 false, i1 false}
!10 = !{!"../net/netfilter/nf_nat_amanda.c", i32 91, i32 1}
!11 = !{ptr @__exitcall_nf_nat_amanda_fini, !12, !"__exitcall_nf_nat_amanda_fini", i1 false, i1 false}
!12 = !{!"../net/netfilter/nf_nat_amanda.c", i32 92, i32 1}
!13 = !{ptr @nat_helper_amanda, !14, !"nat_helper_amanda", i1 false, i1 false}
!14 = !{!"../net/netfilter/nf_nat_amanda.c", i32 25, i32 39}
!15 = !{ptr @.str, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../net/netfilter/nf_nat_amanda.c", i32 61, i32 38}
!17 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../net/netfilter/nf_nat_amanda.c", i32 65, i32 18}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../net/netfilter/nf_nat_amanda.c", i32 69, i32 38}
!21 = !{i32 1, !"wchar_size", i32 2}
!22 = !{i32 1, !"min_enum_size", i32 4}
!23 = !{i32 8, !"branch-target-enforcement", i32 0}
!24 = !{i32 8, !"sign-return-address", i32 0}
!25 = !{i32 8, !"sign-return-address-all", i32 0}
!26 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!27 = !{i32 7, !"uwtable", i32 1}
!28 = !{i32 7, !"frame-pointer", i32 2}
!29 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!30 = !{!"branch_weights", i32 2000, i32 1}
!31 = !{i64 2157996333, i64 2157996826, i64 2157996370, i64 2157996426, i64 2157996460, i64 2157996484, i64 2157996525, i64 2157996546, i64 2157996574, i64 2157996608}
