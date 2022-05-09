; ModuleID = '/llk/IR_all_yes/net/netfilter/nf_hooks_lwtunnel.c_pt.bc'
source_filename = "../net/netfilter/nf_hooks_lwtunnel.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+nf_hooks_lwtunnel_sysctl_handler\22, \22a\22\09"
module asm "\09.weak\09__crc_nf_hooks_lwtunnel_sysctl_handler\09\09\09\09"
module asm "\09.long\09__crc_nf_hooks_lwtunnel_sysctl_handler\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nf_hooks_lwtunnel_sysctl_handler:\09\09\09\09\09"
module asm "\09.asciz \09\22nf_hooks_lwtunnel_sysctl_handler\22\09\09\09\09\09"
module asm "__kstrtabns_nf_hooks_lwtunnel_sysctl_handler:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t, %union.anon.2 }
%struct.atomic_t = type { i32 }
%union.anon.2 = type { i32 }
%struct.ctl_table = type { ptr, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr }

@sysctl_vals = external dso_local constant [0 x i32], align 4
@__kstrtab_nf_hooks_lwtunnel_sysctl_handler = external dso_local constant [0 x i8], align 1
@__kstrtabns_nf_hooks_lwtunnel_sysctl_handler = external dso_local constant [0 x i8], align 1
@__ksymtab_nf_hooks_lwtunnel_sysctl_handler = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nf_hooks_lwtunnel_sysctl_handler to i32), ptr @__kstrtab_nf_hooks_lwtunnel_sysctl_handler, ptr @__kstrtabns_nf_hooks_lwtunnel_sysctl_handler }, section "___ksymtab_gpl+nf_hooks_lwtunnel_sysctl_handler", align 4
@nf_hooks_lwtunnel_enabled = external dso_local global %struct.static_key_false, align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_nf_hooks_lwtunnel_sysctl_handler], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nf_hooks_lwtunnel_sysctl_handler(ptr nocapture noundef readonly %table, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) #0 align 64 {
entry:
  %proc_nf_hooks_lwtunnel_enabled = alloca i32, align 4
  %tmp = alloca %struct.ctl_table, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %proc_nf_hooks_lwtunnel_enabled) #3
  %0 = ptrtoint ptr %proc_nf_hooks_lwtunnel_enabled to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %proc_nf_hooks_lwtunnel_enabled, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %tmp) #3
  %1 = getelementptr inbounds i8, ptr %tmp, i32 12
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !11
  %3 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %table, align 4
  %5 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %tmp, align 4
  %data = getelementptr inbounds %struct.ctl_table, ptr %tmp, i32 0, i32 1
  %6 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %proc_nf_hooks_lwtunnel_enabled, ptr %data, align 4
  %maxlen = getelementptr inbounds %struct.ctl_table, ptr %tmp, i32 0, i32 2
  %7 = ptrtoint ptr %maxlen to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 4, ptr %maxlen, align 4
  %mode = getelementptr inbounds %struct.ctl_table, ptr %tmp, i32 0, i32 3
  %mode2 = getelementptr inbounds %struct.ctl_table, ptr %table, i32 0, i32 3
  %8 = ptrtoint ptr %mode2 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %mode2, align 4
  %10 = ptrtoint ptr %mode to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %mode, align 4
  %child = getelementptr inbounds %struct.ctl_table, ptr %tmp, i32 0, i32 4
  %11 = ptrtoint ptr %child to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %child, align 4
  %proc_handler = getelementptr inbounds %struct.ctl_table, ptr %tmp, i32 0, i32 5
  %12 = ptrtoint ptr %proc_handler to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %proc_handler, align 4
  %poll = getelementptr inbounds %struct.ctl_table, ptr %tmp, i32 0, i32 6
  %13 = ptrtoint ptr %poll to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %poll, align 4
  %extra1 = getelementptr inbounds %struct.ctl_table, ptr %tmp, i32 0, i32 7
  %14 = ptrtoint ptr %extra1 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr getelementptr inbounds ([0 x i32], ptr @sysctl_vals, i32 0, i32 1), ptr %extra1, align 4
  %extra2 = getelementptr inbounds %struct.ctl_table, ptr %tmp, i32 0, i32 8
  %15 = ptrtoint ptr %extra2 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr getelementptr inbounds ([0 x i32], ptr @sysctl_vals, i32 0, i32 2), ptr %extra2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %write)
  %tobool.not = icmp eq i32 %write, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @nf_hooks_lwtunnel_enabled, ptr blockaddress(@nf_hooks_lwtunnel_sysctl_handler, %16)) #3
          to label %nf_hooks_lwtunnel_get.exit [label %16], !srcloc !12

16:                                               ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %nf_hooks_lwtunnel_get.exit

nf_hooks_lwtunnel_get.exit:                       ; preds = %16, %if.then
  %17 = phi i32 [ 1, %16 ], [ 0, %if.then ]
  %18 = ptrtoint ptr %proc_nf_hooks_lwtunnel_enabled to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %proc_nf_hooks_lwtunnel_enabled, align 4
  br label %if.end

if.end:                                           ; preds = %nf_hooks_lwtunnel_get.exit, %entry.if.end_crit_edge
  %call3 = call i32 @proc_dointvec_minmax(ptr noundef nonnull %tmp, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) #3
  %tobool.not.not = xor i1 %tobool.not, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp eq i32 %call3, 0
  %or.cond = select i1 %tobool.not.not, i1 %cmp, i1 false
  br i1 %or.cond, label %if.then5, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end7

if.then5:                                         ; preds = %if.end
  %19 = ptrtoint ptr %proc_nf_hooks_lwtunnel_enabled to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %proc_nf_hooks_lwtunnel_enabled, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @nf_hooks_lwtunnel_enabled, ptr blockaddress(@nf_hooks_lwtunnel_sysctl_handler, %if.then.i)) #3
          to label %if.else.i [label %if.then.i], !srcloc !12

if.then.i:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool3.not.i = icmp eq i32 %20, 0
  br i1 %tobool3.not.i, label %if.then.i.if.end7_crit_edge, label %if.then.i.if.end8.i_crit_edge

if.then.i.if.end8.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end8.i

if.then.i.if.end7_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end7

if.else.i:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool5.not.i = icmp eq i32 %20, 0
  br i1 %tobool5.not.i, label %if.else.i.if.end8.i_crit_edge, label %if.then6.i

if.else.i.if.end8.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end8.i

if.then6.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #5
  call void @static_key_enable(ptr noundef nonnull @nf_hooks_lwtunnel_enabled) #3
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then6.i, %if.else.i.if.end8.i_crit_edge, %if.then.i.if.end8.i_crit_edge
  br label %if.end7

if.end7:                                          ; preds = %if.end8.i, %if.then.i.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %ret.0 = phi i32 [ %call3, %if.end.if.end7_crit_edge ], [ 0, %if.end8.i ], [ -16, %if.then.i.if.end7_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %tmp) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %proc_nf_hooks_lwtunnel_enabled) #3
  ret i32 %ret.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec_minmax(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @static_key_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @__ksymtab_nf_hooks_lwtunnel_sysctl_handler, !1, !"__ksymtab_nf_hooks_lwtunnel_sysctl_handler", i1 false, i1 false}
!1 = !{!"../net/netfilter/nf_hooks_lwtunnel.c", i32 52, i32 1}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!11 = !{!"auto-init"}
!12 = !{i64 2148740517, i64 2148740522, i64 2148740535, i64 2148740579, i64 2148740613, i64 2148740634}
