; ModuleID = '/llk/IR_all_yes/net/dccp/ccids/lib/tfrc.c_pt.bc'
source_filename = "../net/dccp/ccids/lib/tfrc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.164 }
%union.anon.164 = type { ptr }

@__param_str_tfrc_debug = internal constant [16 x i8] c"dccp.tfrc_debug\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@tfrc_debug = dso_local global { i8, [31 x i8] } zeroinitializer, align 32
@__param_tfrc_debug = internal constant %struct.kernel_param { ptr @__param_str_tfrc_debug, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.164 { ptr @tfrc_debug } }, section "__param", align 4
@__UNIQUE_ID_tfrc_debugtype595 = internal constant [30 x i8] c"dccp.parmtype=tfrc_debug:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_tfrc_debug596 = internal constant [48 x i8] c"dccp.parm=tfrc_debug:Enable TFRC debug messages\00", section ".modinfo", align 1
@___asan_gen_.1 = private unnamed_addr constant [11 x i8] c"tfrc_debug\00", align 1
@___asan_gen_.2 = private constant [29 x i8] c"../net/dccp/ccids/lib/tfrc.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 12, i32 6 }
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_tfrc_debug596, ptr @__UNIQUE_ID_tfrc_debugtype595, ptr @__param_tfrc_debug, ptr @tfrc_debug], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tfrc_debug to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tfrc_lib_init() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @tfrc_li_init() #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @tfrc_tx_packet_history_init() #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.out_free_loss_intervals_crit_edge

if.end.out_free_loss_intervals_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %out_free_loss_intervals

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @tfrc_rx_packet_history_init() #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end4.cleanup_crit_edge, label %out_free_tx_history

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

out_free_tx_history:                              ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @tfrc_tx_packet_history_exit() #3
  br label %out_free_loss_intervals

out_free_loss_intervals:                          ; preds = %out_free_tx_history, %if.end.out_free_loss_intervals_crit_edge
  %rc.0 = phi i32 [ %call1, %if.end.out_free_loss_intervals_crit_edge ], [ %call5, %out_free_tx_history ]
  tail call void @tfrc_li_exit() #3
  br label %cleanup

cleanup:                                          ; preds = %out_free_loss_intervals, %if.end4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4.cleanup_crit_edge ], [ %call, %entry.cleanup_crit_edge ], [ %rc.0, %out_free_loss_intervals ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tfrc_li_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tfrc_tx_packet_history_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tfrc_rx_packet_history_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tfrc_tx_packet_history_exit() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tfrc_li_exit() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tfrc_lib_exit() local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @tfrc_rx_packet_history_exit() #3
  tail call void @tfrc_tx_packet_history_exit() #3
  tail call void @tfrc_li_exit() #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tfrc_rx_packet_history_exit() local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !{ptr @__param_tfrc_debug, !1, !"__param_tfrc_debug", i1 false, i1 false}
!1 = !{!"../net/dccp/ccids/lib/tfrc.c", i32 13, i32 1}
!2 = !{ptr @__UNIQUE_ID_tfrc_debugtype595, !1, !"__UNIQUE_ID_tfrc_debugtype595", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_tfrc_debug596, !4, !"__UNIQUE_ID_tfrc_debug596", i1 false, i1 false}
!4 = !{!"../net/dccp/ccids/lib/tfrc.c", i32 14, i32 1}
!5 = !{ptr @tfrc_debug, !6, !"tfrc_debug", i1 false, i1 false}
!6 = !{!"../net/dccp/ccids/lib/tfrc.c", i32 12, i32 6}
!7 = !{ptr @__param_str_tfrc_debug, !1, !"__param_str_tfrc_debug", i1 false, i1 false}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 8, !"branch-target-enforcement", i32 0}
!11 = !{i32 8, !"sign-return-address", i32 0}
!12 = !{i32 8, !"sign-return-address-all", i32 0}
!13 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
