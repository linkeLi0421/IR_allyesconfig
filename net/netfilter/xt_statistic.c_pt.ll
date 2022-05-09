; ModuleID = '/llk/IR_all_yes/net/netfilter/xt_statistic.c_pt.bc'
source_filename = "../net/netfilter/xt_statistic.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xt_match = type { %struct.list_head, [29 x i8], i8, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.xt_action_param = type { %union.anon.114, %union.anon.115, ptr, i32, i16, i8 }
%union.anon.114 = type { ptr }
%union.anon.115 = type { ptr }
%struct.xt_statistic_info = type { i16, i16, %union.anon.120, ptr, [4 x i8] }
%union.anon.120 = type { %struct.anon.122 }
%struct.anon.122 = type { i32, i32, i32 }
%struct.xt_mtchk_param = type { ptr, ptr, ptr, ptr, ptr, i32, i8, i8 }
%struct.xt_mtdtor_param = type { ptr, ptr, ptr, i8 }

@__UNIQUE_ID_file354 = internal constant [45 x i8] c"xt_statistic.file=net/netfilter/xt_statistic\00", section ".modinfo", align 1
@__UNIQUE_ID_license355 = internal constant [25 x i8] c"xt_statistic.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author356 = internal constant [54 x i8] c"xt_statistic.author=Patrick McHardy <kaber@trash.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description357 = internal constant [76 x i8] c"xt_statistic.description=Xtables: statistics-based matching (\22Nth\22, random)\00", section ".modinfo", align 1
@__UNIQUE_ID_alias358 = internal constant [33 x i8] c"xt_statistic.alias=ipt_statistic\00", section ".modinfo", align 1
@__UNIQUE_ID_alias359 = internal constant [34 x i8] c"xt_statistic.alias=ip6t_statistic\00", section ".modinfo", align 1
@xt_statistic_mt_reg = internal global %struct.xt_match { %struct.list_head zeroinitializer, [29 x i8] c"statistic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, ptr @statistic_mt, ptr @statistic_mt_check, ptr @statistic_mt_destroy, ptr null, ptr null, i32 24, i32 16, i32 0, i16 0, i16 0 }, section ".data..read_mostly", align 4
@__initcall__kmod_xt_statistic__360_98_statistic_mt_init6 = internal global ptr @statistic_mt_init, section ".initcall6.init", align 4
@__exitcall_statistic_mt_exit = internal global ptr @statistic_mt_exit, section ".exitcall.exit", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 1]
@llvm.compiler.used = appending global [9 x ptr] [ptr @__UNIQUE_ID_alias358, ptr @__UNIQUE_ID_alias359, ptr @__UNIQUE_ID_author356, ptr @__UNIQUE_ID_description357, ptr @__UNIQUE_ID_file354, ptr @__UNIQUE_ID_license355, ptr @__exitcall_statistic_mt_exit, ptr @__initcall__kmod_xt_statistic__360_98_statistic_mt_init6, ptr @statistic_mt_exit], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @statistic_mt_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @xt_unregister_match(ptr noundef nonnull @xt_statistic_mt_reg) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xt_unregister_match(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @statistic_mt_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @xt_register_match(ptr noundef nonnull @xt_statistic_mt_reg) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @statistic_mt(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %flags = getelementptr inbounds %struct.xt_statistic_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %flags, align 2
  %5 = and i16 %4, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not = icmp eq i16 %5, 0
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %2, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %extract.t = icmp ne i16 %5, 0
  %8 = zext i16 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i16 %7, label %entry.sw.epilog_crit_edge [
    i16 0, label %sw.bb
    i16 1, label %do.body.preheader
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.body.preheader:                                ; preds = %entry
  %master = getelementptr inbounds %struct.xt_statistic_info, ptr %2, i32 0, i32 3
  %u8 = getelementptr inbounds %struct.xt_statistic_info, ptr %2, i32 0, i32 2
  br label %do.body

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 @prandom_u32() #5
  %and2 = and i32 %call, 2147483647
  %u = getelementptr inbounds %struct.xt_statistic_info, ptr %2, i32 0, i32 2
  %9 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %u, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and2, i32 %10)
  %cmp = icmp ult i32 %and2, %10
  %spec.select = select i1 %cmp, i1 %tobool.not, i1 %extract.t
  br label %sw.epilog

do.body:                                          ; preds = %atomic_cmpxchg.exit.do.body_crit_edge, %do.body.preheader
  %11 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %master, align 8
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %12, i32 noundef 4) #5
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %12, align 4
  %15 = ptrtoint ptr %u8 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %u8, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %16)
  %cmp9 = icmp eq i32 %14, %16
  %add = add i32 %14, 1
  %spec.select39 = select i1 %cmp9, i32 0, i32 %add
  %17 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %master, align 8
  %call.i.i41 = tail call zeroext i1 @__kasan_check_write(ptr noundef %18, i32 noundef 4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !26
  tail call void @llvm.prefetch.p0(ptr %18, i32 1, i32 3, i32 1) #5
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %do.body.i.i.i.do.body.i.i.i_crit_edge, %do.body
  %19 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %18, ptr %18, i32 %14, i32 %spec.select39, ptr elementtype(i32) %18) #5, !srcloc !27
  %asmresult.i.i.i = extractvalue { i32, i32 } %19, 0
  %tobool.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %atomic_cmpxchg.exit, label %do.body.i.i.i.do.body.i.i.i_crit_edge

do.body.i.i.i.do.body.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i.i.i

atomic_cmpxchg.exit:                              ; preds = %do.body.i.i.i
  %asmresult3.i.i.i = extractvalue { i32, i32 } %19, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !28
  %cmp14.not = icmp eq i32 %asmresult3.i.i.i, %14
  br i1 %cmp14.not, label %do.end, label %atomic_cmpxchg.exit.do.body_crit_edge

atomic_cmpxchg.exit.do.body_crit_edge:            ; preds = %atomic_cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

do.end:                                           ; preds = %atomic_cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select39)
  %cmp16 = icmp eq i32 %spec.select39, 0
  %spec.select40 = select i1 %cmp16, i1 %tobool.not, i1 %extract.t
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb, %entry.sw.epilog_crit_edge
  %ret.0.off0 = phi i1 [ %extract.t, %entry.sw.epilog_crit_edge ], [ %spec.select, %sw.bb ], [ %spec.select40, %do.end ]
  ret i1 %ret.0.off0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @statistic_mt_check(ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %matchinfo = getelementptr inbounds %struct.xt_mtchk_param, ptr %par, i32 0, i32 4
  %0 = ptrtoint ptr %matchinfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %matchinfo, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %3)
  %cmp = icmp ugt i16 %3, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %flags = getelementptr inbounds %struct.xt_statistic_info, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %flags, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %5)
  %tobool.not = icmp ult i16 %5, 2
  br i1 %tobool.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 128) #8
  %master = getelementptr inbounds %struct.xt_statistic_info, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %master to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7.i.i, ptr %master, align 8
  %cmp4 = icmp eq ptr %call7.i.i, null
  br i1 %cmp4, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %count9 = getelementptr inbounds %struct.xt_statistic_info, ptr %1, i32 0, i32 2, i32 0, i32 2
  %8 = ptrtoint ptr %count9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %count9, align 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call7.i.i, i32 noundef 4) #5
  %10 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile i32 %9, ptr %call7.i.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end7 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @statistic_mt_destroy(ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %matchinfo = getelementptr inbounds %struct.xt_mtdtor_param, ptr %par, i32 0, i32 2
  %0 = ptrtoint ptr %matchinfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %matchinfo, align 4
  %master = getelementptr inbounds %struct.xt_statistic_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %master, align 8
  tail call void @kfree(ptr noundef %3) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xt_register_match(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15}
!llvm.module.flags = !{!17, !18, !19, !20, !21, !22, !23, !24}
!llvm.ident = !{!25}

!0 = !{ptr @__UNIQUE_ID_file354, !1, !"__UNIQUE_ID_file354", i1 false, i1 false}
!1 = !{!"../net/netfilter/xt_statistic.c", i32 22, i32 1}
!2 = !{ptr @__UNIQUE_ID_license355, !1, !"__UNIQUE_ID_license355", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author356, !4, !"__UNIQUE_ID_author356", i1 false, i1 false}
!4 = !{!"../net/netfilter/xt_statistic.c", i32 23, i32 1}
!5 = !{ptr @__UNIQUE_ID_description357, !6, !"__UNIQUE_ID_description357", i1 false, i1 false}
!6 = !{!"../net/netfilter/xt_statistic.c", i32 24, i32 1}
!7 = !{ptr @__UNIQUE_ID_alias358, !8, !"__UNIQUE_ID_alias358", i1 false, i1 false}
!8 = !{!"../net/netfilter/xt_statistic.c", i32 25, i32 1}
!9 = !{ptr @__UNIQUE_ID_alias359, !10, !"__UNIQUE_ID_alias359", i1 false, i1 false}
!10 = !{!"../net/netfilter/xt_statistic.c", i32 26, i32 1}
!11 = !{ptr @__initcall__kmod_xt_statistic__360_98_statistic_mt_init6, !12, !"__initcall__kmod_xt_statistic__360_98_statistic_mt_init6", i1 false, i1 false}
!12 = !{!"../net/netfilter/xt_statistic.c", i32 98, i32 1}
!13 = !{ptr @__exitcall_statistic_mt_exit, !14, !"__exitcall_statistic_mt_exit", i1 false, i1 false}
!14 = !{!"../net/netfilter/xt_statistic.c", i32 99, i32 1}
!15 = !{ptr @xt_statistic_mt_reg, !16, !"xt_statistic_mt_reg", i1 false, i1 false}
!16 = !{!"../net/netfilter/xt_statistic.c", i32 76, i32 24}
!17 = !{i32 1, !"wchar_size", i32 2}
!18 = !{i32 1, !"min_enum_size", i32 4}
!19 = !{i32 8, !"branch-target-enforcement", i32 0}
!20 = !{i32 8, !"sign-return-address", i32 0}
!21 = !{i32 8, !"sign-return-address-all", i32 0}
!22 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!23 = !{i32 7, !"uwtable", i32 1}
!24 = !{i32 7, !"frame-pointer", i32 2}
!25 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!26 = !{i64 2148579772}
!27 = !{i64 963438, i64 963462, i64 963483, i64 963500, i64 963517}
!28 = !{i64 2148579998}
