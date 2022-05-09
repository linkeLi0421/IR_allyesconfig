; ModuleID = '/llk/IR_all_yes/sound/drivers/vx/vx_cmd.c_pt.bc'
source_filename = "../sound/drivers/vx/vx_cmd.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.vx_cmd_info = type { i32, i32, i32, i32 }
%struct.vx_rmh = type { i16, i16, [16 x i32], [16 x i32], i16 }

@.str = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sound/drivers/vx/vx_cmd.c\00", [38 x i8] zeroinitializer }, align 32
@vx_dsp_cmds = internal constant { [59 x %struct.vx_cmd_info], [240 x i8] } { [59 x %struct.vx_cmd_info] [%struct.vx_cmd_info { i32 65536, i32 2, i32 0, i32 1 }, %struct.vx_cmd_info { i32 131072, i32 1, i32 0, i32 2 }, %struct.vx_cmd_info { i32 262144, i32 1, i32 0, i32 1 }, %struct.vx_cmd_info { i32 458753, i32 1, i32 0, i32 0 }, %struct.vx_cmd_info { i32 524288, i32 1, i32 0, i32 4 }, %struct.vx_cmd_info { i32 655360, i32 1, i32 1, i32 0 }, %struct.vx_cmd_info { i32 4194304, i32 1, i32 0, i32 0 }, %struct.vx_cmd_info { i32 4259840, i32 1, i32 0, i32 0 }, %struct.vx_cmd_info { i32 4366593, i32 2, i32 0, i32 0 }, %struct.vx_cmd_info { i32 4366592, i32 2, i32 0, i32 0 }, %struct.vx_cmd_info { i32 4431872, i32 2, i32 0, i32 0 }, %struct.vx_cmd_info { i32 4653060, i32 1, i32 0, i32 0 }, %struct.vx_cmd_info { i32 4718592, i32 1, i32 0, i32 1 }, %struct.vx_cmd_info { i32 4825088, i32 2, i32 0, i32 2 }, %struct.vx_cmd_info { i32 4915200, i32 1, i32 0, i32 1 }, %struct.vx_cmd_info { i32 4980736, i32 1, i32 0, i32 1 }, %struct.vx_cmd_info { i32 8429568, i32 2, i32 0, i32 0 }, %struct.vx_cmd_info { i32 8388608, i32 1, i32 0, i32 0 }, %struct.vx_cmd_info { i32 8495104, i32 2, i32 0, i32 0 }, %struct.vx_cmd_info { i32 8454144, i32 1, i32 0, i32 0 }, %struct.vx_cmd_info { i32 8552448, i32 2, i32 0, i32 0 }, %struct.vx_cmd_info { i32 8585216, i32 1, i32 0, i32 0 }, %struct.vx_cmd_info { i32 8814592, i32 1, i32 0, i32 0 }, %struct.vx_cmd_info { i32 8882176, i32 1, i32 0, i32 0 }, %struct.vx_cmd_info { i32 8978433, i32 2, i32 0, i32 1 }, %struct.vx_cmd_info { i32 9076736, i32 2, i32 0, i32 0 }, %struct.vx_cmd_info { i32 9242624, i32 1, i32 0, i32 2 }, %struct.vx_cmd_info { i32 12648448, i32 1, i32 0, i32 0 }, %struct.vx_cmd_info { i32 12754944, i32 3, i32 0, i32 0 }, %struct.vx_cmd_info { i32 12820483, i32 2, i32 0, i32 1 }, %struct.vx_cmd_info { i32 12886016, i32 2, i32 0, i32 0 }, %struct.vx_cmd_info { i32 5046272, i32 1, i32 1, i32 0 }, %struct.vx_cmd_info { i32 720896, i32 1, i32 0, i32 2 }, %struct.vx_cmd_info { i32 622592, i32 1, i32 1, i32 0 }, %struct.vx_cmd_info { i32 4456448, i32 1, i32 1, i32 0 }, %struct.vx_cmd_info { i32 8683520, i32 4, i32 0, i32 0 }, %struct.vx_cmd_info { i32 819200, i32 3, i32 0, i32 1 }, %struct.vx_cmd_info { i32 4554752, i32 0, i32 0, i32 0 }, %struct.vx_cmd_info { i32 851968, i32 1, i32 0, i32 0 }, %struct.vx_cmd_info { i32 8749056, i32 3, i32 0, i32 0 }, %struct.vx_cmd_info { i32 9142272, i32 3, i32 0, i32 0 }, %struct.vx_cmd_info { i32 5111808, i32 1, i32 0, i32 0 }, %struct.vx_cmd_info { i32 819200, i32 1, i32 0, i32 0 }, %struct.vx_cmd_info { i32 9308160, i32 1, i32 0, i32 1 }, %struct.vx_cmd_info { i32 917504, i32 1, i32 0, i32 0 }, %struct.vx_cmd_info { i32 9371648, i32 1, i32 0, i32 0 }, %struct.vx_cmd_info { i32 9437184, i32 1, i32 0, i32 2 }, %struct.vx_cmd_info { i32 327680, i32 2, i32 0, i32 0 }, %struct.vx_cmd_info { i32 393216, i32 1, i32 0, i32 5 }, %struct.vx_cmd_info { i32 983040, i32 1, i32 0, i32 0 }, %struct.vx_cmd_info { i32 9543680, i32 3, i32 0, i32 0 }, %struct.vx_cmd_info { i32 196608, i32 1, i32 0, i32 2 }, %struct.vx_cmd_info { i32 9175040, i32 1, i32 0, i32 3 }, %struct.vx_cmd_info { i32 5210112, i32 3, i32 0, i32 0 }, %struct.vx_cmd_info { i32 12582912, i32 1, i32 0, i32 0 }, %struct.vx_cmd_info { i32 9666560, i32 3, i32 0, i32 0 }, %struct.vx_cmd_info { i32 9732096, i32 4, i32 0, i32 0 }, %struct.vx_cmd_info { i32 9764864, i32 1, i32 0, i32 0 }, %struct.vx_cmd_info { i32 9805824, i32 2, i32 1, i32 0 }], [240 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 89, i32 6 }
@___asan_gen_.4 = private unnamed_addr constant [12 x i8] c"vx_dsp_cmds\00", align 1
@___asan_gen_.5 = private constant [29 x i8] c"../sound/drivers/vx/vx_cmd.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 18, i32 33 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @.str, ptr @vx_dsp_cmds], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vx_dsp_cmds to i32), i32 944, i32 1184, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vx_init_rmh(ptr nocapture noundef writeonly %rmh, i32 noundef %cmd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 58, i32 %cmd)
  %cmp = icmp ugt i32 %cmd, 58
  br i1 %cmp, label %do.end, label %if.end21.critedge, !prof !13

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 89, i32 noundef 9, ptr noundef null) #2
  br label %return

if.end21.critedge:                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %arrayidx = getelementptr [59 x %struct.vx_cmd_info], ptr @vx_dsp_cmds, i32 0, i32 %cmd
  %length = getelementptr [59 x %struct.vx_cmd_info], ptr @vx_dsp_cmds, i32 0, i32 %cmd, i32 1
  %0 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %length, align 4
  %conv = trunc i32 %1 to i16
  %2 = ptrtoint ptr %rmh to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %conv, ptr %rmh, align 4
  %st_length = getelementptr [59 x %struct.vx_cmd_info], ptr @vx_dsp_cmds, i32 0, i32 %cmd, i32 3
  %3 = ptrtoint ptr %st_length to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %st_length, align 4
  %conv23 = trunc i32 %4 to i16
  %LgStat = getelementptr inbounds %struct.vx_rmh, ptr %rmh, i32 0, i32 1
  %5 = ptrtoint ptr %LgStat to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %conv23, ptr %LgStat, align 2
  %st_type = getelementptr [59 x %struct.vx_cmd_info], ptr @vx_dsp_cmds, i32 0, i32 %cmd, i32 2
  %6 = ptrtoint ptr %st_type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %st_type, align 4
  %conv25 = trunc i32 %7 to i16
  %DspStat = getelementptr inbounds %struct.vx_rmh, ptr %rmh, i32 0, i32 4
  %8 = ptrtoint ptr %DspStat to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv25, ptr %DspStat, align 4
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %Cmd = getelementptr inbounds %struct.vx_rmh, ptr %rmh, i32 0, i32 2
  %11 = ptrtoint ptr %Cmd to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %Cmd, align 4
  br label %return

return:                                           ; preds = %if.end21.critedge, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/drivers/vx/vx_cmd.c", i32 89, i32 6}
!2 = !{ptr @vx_dsp_cmds, !3, !"vx_dsp_cmds", i1 false, i1 false}
!3 = !{!"../sound/drivers/vx/vx_cmd.c", i32 18, i32 33}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!13 = !{!"branch_weights", i32 1, i32 2000}
