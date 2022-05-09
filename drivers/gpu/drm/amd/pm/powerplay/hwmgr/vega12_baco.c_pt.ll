; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/pm/powerplay/hwmgr/vega12_baco.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega12_baco.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.soc15_baco_cmd_entry = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@pre_baco_tbl = internal constant { [4 x %struct.soc15_baco_cmd_entry], [48 x i8] } { [4 x %struct.soc15_baco_cmd_entry] [%struct.soc15_baco_cmd_entry { i32 1, i32 108, i32 0, i32 2, i32 252, i32 16, i32 4, i32 0, i32 0 }, %struct.soc15_baco_cmd_entry { i32 0, i32 108, i32 0, i32 2, i32 255, i32 0, i32 0, i32 0, i32 0 }, %struct.soc15_baco_cmd_entry { i32 1, i32 108, i32 0, i32 2, i32 267, i32 32, i32 5, i32 0, i32 1 }, %struct.soc15_baco_cmd_entry { i32 1, i32 108, i32 0, i32 2, i32 267, i32 64, i32 6, i32 0, i32 1 }], [48 x i8] zeroinitializer }, align 32
@enter_baco_tbl = internal constant { [15 x %struct.soc15_baco_cmd_entry], [132 x i8] } { [15 x %struct.soc15_baco_cmd_entry] [%struct.soc15_baco_cmd_entry { i32 2, i32 3, i32 0, i32 0, i32 124, i32 -2147483648, i32 31, i32 -1, i32 -2147483648 }, %struct.soc15_baco_cmd_entry { i32 1, i32 108, i32 0, i32 2, i32 267, i32 1, i32 0, i32 0, i32 1 }, %struct.soc15_baco_cmd_entry { i32 1, i32 108, i32 0, i32 2, i32 267, i32 2, i32 1, i32 0, i32 1 }, %struct.soc15_baco_cmd_entry { i32 1, i32 108, i32 0, i32 2, i32 267, i32 4, i32 2, i32 0, i32 1 }, %struct.soc15_baco_cmd_entry { i32 1, i32 3, i32 0, i32 0, i32 124, i32 16, i32 4, i32 0, i32 1 }, %struct.soc15_baco_cmd_entry { i32 1, i32 3, i32 0, i32 0, i32 124, i32 32, i32 5, i32 0, i32 1 }, %struct.soc15_baco_cmd_entry { i32 1, i32 3, i32 0, i32 0, i32 124, i32 2, i32 1, i32 0, i32 1 }, %struct.soc15_baco_cmd_entry { i32 1, i32 3, i32 0, i32 0, i32 124, i32 128, i32 7, i32 0, i32 1 }, %struct.soc15_baco_cmd_entry { i32 1, i32 3, i32 0, i32 0, i32 124, i32 512, i32 9, i32 0, i32 1 }, %struct.soc15_baco_cmd_entry { i32 1, i32 3, i32 0, i32 0, i32 124, i32 64, i32 6, i32 0, i32 1 }, %struct.soc15_baco_cmd_entry { i32 1, i32 108, i32 0, i32 2, i32 267, i32 8, i32 3, i32 0, i32 1 }, %struct.soc15_baco_cmd_entry { i32 3, i32 0, i32 0, i32 0, i32 5, i32 0, i32 0, i32 0, i32 0 }, %struct.soc15_baco_cmd_entry { i32 1, i32 3, i32 0, i32 0, i32 124, i32 8, i32 3, i32 0, i32 1 }, %struct.soc15_baco_cmd_entry { i32 1, i32 3, i32 0, i32 0, i32 124, i32 4, i32 2, i32 0, i32 0 }, %struct.soc15_baco_cmd_entry { i32 2, i32 108, i32 0, i32 2, i32 267, i32 256, i32 8, i32 -1, i32 256 }], [132 x i8] zeroinitializer }, align 32
@exit_baco_tbl = internal constant { [17 x %struct.soc15_baco_cmd_entry], [156 x i8] } { [17 x %struct.soc15_baco_cmd_entry] [%struct.soc15_baco_cmd_entry { i32 1, i32 108, i32 0, i32 2, i32 267, i32 8, i32 3, i32 0, i32 0 }, %struct.soc15_baco_cmd_entry { i32 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 10, i32 0 }, %struct.soc15_baco_cmd_entry { i32 1, i32 3, i32 0, i32 0, i32 124, i32 64, i32 6, i32 0, i32 0 }, %struct.soc15_baco_cmd_entry { i32 1, i32 3, i32 0, i32 0, i32 124, i32 512, i32 9, i32 0, i32 0 }, %struct.soc15_baco_cmd_entry { i32 1, i32 3, i32 0, i32 0, i32 124, i32 128, i32 7, i32 0, i32 0 }, %struct.soc15_baco_cmd_entry { i32 1, i32 3, i32 0, i32 0, i32 124, i32 2, i32 1, i32 0, i32 0 }, %struct.soc15_baco_cmd_entry { i32 1, i32 3, i32 0, i32 0, i32 124, i32 4, i32 2, i32 0, i32 1 }, %struct.soc15_baco_cmd_entry { i32 1, i32 3, i32 0, i32 0, i32 124, i32 32, i32 5, i32 0, i32 0 }, %struct.soc15_baco_cmd_entry { i32 1, i32 3, i32 0, i32 0, i32 124, i32 16, i32 4, i32 0, i32 0 }, %struct.soc15_baco_cmd_entry { i32 1, i32 3, i32 0, i32 0, i32 124, i32 256, i32 8, i32 0, i32 1 }, %struct.soc15_baco_cmd_entry { i32 1, i32 3, i32 0, i32 0, i32 124, i32 8, i32 3, i32 0, i32 0 }, %struct.soc15_baco_cmd_entry { i32 2, i32 3, i32 0, i32 0, i32 124, i32 256, i32 0, i32 -1, i32 0 }, %struct.soc15_baco_cmd_entry { i32 1, i32 3, i32 0, i32 0, i32 124, i32 1073741824, i32 30, i32 0, i32 0 }, %struct.soc15_baco_cmd_entry { i32 1, i32 108, i32 0, i32 2, i32 267, i32 4, i32 2, i32 0, i32 0 }, %struct.soc15_baco_cmd_entry { i32 1, i32 108, i32 0, i32 2, i32 267, i32 2, i32 1, i32 0, i32 0 }, %struct.soc15_baco_cmd_entry { i32 1, i32 108, i32 0, i32 2, i32 267, i32 1, i32 0, i32 0, i32 0 }, %struct.soc15_baco_cmd_entry { i32 2, i32 108, i32 0, i32 2, i32 267, i32 256, i32 0, i32 -1, i32 0 }], [156 x i8] zeroinitializer }, align 32
@clean_baco_tbl = internal constant { [2 x %struct.soc15_baco_cmd_entry], [56 x i8] } { [2 x %struct.soc15_baco_cmd_entry] [%struct.soc15_baco_cmd_entry { i32 0, i32 108, i32 0, i32 1, i32 62, i32 0, i32 0, i32 0, i32 0 }, %struct.soc15_baco_cmd_entry { i32 0, i32 108, i32 0, i32 1, i32 63, i32 0, i32 0, i32 0, i32 0 }], [56 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.1 = private unnamed_addr constant [13 x i8] c"pre_baco_tbl\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 32, i32 43 }
@___asan_gen_.4 = private unnamed_addr constant [15 x i8] c"enter_baco_tbl\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 40, i32 42 }
@___asan_gen_.7 = private unnamed_addr constant [14 x i8] c"exit_baco_tbl\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 59, i32 42 }
@___asan_gen_.10 = private unnamed_addr constant [15 x i8] c"clean_baco_tbl\00", align 1
@___asan_gen_.11 = private constant [66 x i8] c"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega12_baco.c\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 80, i32 42 }
@llvm.compiler.used = appending global [4 x ptr] [ptr @pre_baco_tbl, ptr @enter_baco_tbl, ptr @exit_baco_tbl, ptr @clean_baco_tbl], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pre_baco_tbl to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enter_baco_tbl to i32), i32 540, i32 672, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exit_baco_tbl to i32), i32 612, i32 768, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clean_baco_tbl to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vega12_baco_set_state(ptr noundef %hwmgr, i32 noundef %state) local_unnamed_addr #0 align 64 {
entry:
  %cur_state = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cur_state) #3
  %0 = ptrtoint ptr %cur_state to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %cur_state, align 4, !annotation !17
  %call = call i32 @smu9_baco_get_state(ptr noundef %hwmgr, ptr noundef nonnull %cur_state) #3
  %1 = ptrtoint ptr %cur_state to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %cur_state, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %state)
  %cmp = icmp eq i32 %2, %state
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = zext i32 %state to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %state, label %if.end.if.end21_crit_edge [
    i32 1, label %if.then2
    i32 0, label %if.then13
  ]

if.end.if.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end21

if.then2:                                         ; preds = %if.end
  %call3 = call zeroext i1 @soc15_baco_program_registers(ptr noundef %hwmgr, ptr noundef nonnull @pre_baco_tbl, i32 noundef 4) #3
  br i1 %call3, label %if.then4, label %if.then2.if.end21_crit_edge

if.then2.if.end21_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end21

if.then4:                                         ; preds = %if.then2
  %call5 = call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 37, i32 noundef 0, ptr noundef null) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.end7, label %if.then4.cleanup_crit_edge

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end7:                                          ; preds = %if.then4
  %call8 = call zeroext i1 @soc15_baco_program_registers(ptr noundef %hwmgr, ptr noundef nonnull @enter_baco_tbl, i32 noundef 15) #3
  br i1 %call8, label %if.end7.cleanup_crit_edge, label %if.end7.if.end21_crit_edge

if.end7.if.end21_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end21

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then13:                                        ; preds = %if.end
  call void @msleep(i32 noundef 20) #3
  %call14 = call zeroext i1 @soc15_baco_program_registers(ptr noundef %hwmgr, ptr noundef nonnull @exit_baco_tbl, i32 noundef 17) #3
  br i1 %call14, label %if.then15, label %if.then13.if.end21_crit_edge

if.then13.if.end21_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end21

if.then15:                                        ; preds = %if.then13
  %call16 = call zeroext i1 @soc15_baco_program_registers(ptr noundef %hwmgr, ptr noundef nonnull @clean_baco_tbl, i32 noundef 2) #3
  br i1 %call16, label %if.then15.cleanup_crit_edge, label %if.then15.if.end21_crit_edge

if.then15.if.end21_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end21

if.then15.cleanup_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end21:                                         ; preds = %if.then15.if.end21_crit_edge, %if.then13.if.end21_crit_edge, %if.end7.if.end21_crit_edge, %if.then2.if.end21_crit_edge, %if.end.if.end21_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.then15.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.then4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.end21 ], [ 0, %entry.cleanup_crit_edge ], [ -22, %if.then4.cleanup_crit_edge ], [ 0, %if.end7.cleanup_crit_edge ], [ 0, %if.then15.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cur_state) #3
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu9_baco_get_state(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @soc15_baco_program_registers(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smum_send_msg_to_smc_with_parameter(ptr noundef, i16 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !{ptr @pre_baco_tbl, !1, !"pre_baco_tbl", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega12_baco.c", i32 32, i32 43}
!2 = !{ptr @enter_baco_tbl, !3, !"enter_baco_tbl", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega12_baco.c", i32 40, i32 42}
!4 = !{ptr @exit_baco_tbl, !5, !"exit_baco_tbl", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega12_baco.c", i32 59, i32 42}
!6 = !{ptr @clean_baco_tbl, !7, !"clean_baco_tbl", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega12_baco.c", i32 80, i32 42}
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
