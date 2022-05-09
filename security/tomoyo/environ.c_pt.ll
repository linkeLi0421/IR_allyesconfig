; ModuleID = '/llk/IR_all_yes/security/tomoyo/environ.c_pt.bc'
source_filename = "../security/tomoyo/environ.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tomoyo_acl_info = type <{ %struct.list_head, ptr, i8, i8 }>
%struct.list_head = type { ptr, ptr }
%struct.tomoyo_path_info = type { ptr, i32, i16, i8, i8 }
%struct.tomoyo_request_info = type { ptr, ptr, ptr, %union.anon.130, ptr, i8, i8, i8, i8, i8, i8 }
%union.anon.130 = type { %struct.anon.133 }
%struct.anon.133 = type { ptr, i32, i32, i32, i8 }
%struct.tomoyo_env_acl = type { %struct.tomoyo_acl_info, ptr }

@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"env \00", [27 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"misc env %s\0A\00", [19 x i8] zeroinitializer }, align 32
@__const.tomoyo_write_env.e = private unnamed_addr constant { %struct.tomoyo_acl_info, [2 x i8], ptr } { %struct.tomoyo_acl_info <{ %struct.list_head zeroinitializer, ptr null, i8 0, i8 7 }>, [2 x i8] zeroinitializer, ptr null }, align 4
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 120, i32 38 }
@___asan_gen_.5 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.6 = private constant [29 x i8] c"../security/tomoyo/environ.c\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 36, i32 30 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tomoyo_env_perm(ptr noundef %r, ptr noundef %env) local_unnamed_addr #0 align 64 {
entry:
  %environ = alloca %struct.tomoyo_path_info, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %environ) #6
  %tobool.not = icmp eq ptr %env, null
  %0 = getelementptr inbounds i8, ptr %environ, i32 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %1, i32 8)
  store i64 -1, ptr %0, align 4
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %env to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %env, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %4 = ptrtoint ptr %environ to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %env, ptr %environ, align 4
  call void @tomoyo_fill_path_info(ptr noundef nonnull %environ) #6
  %param_type = getelementptr inbounds %struct.tomoyo_request_info, ptr %r, i32 0, i32 5
  %5 = ptrtoint ptr %param_type to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 7, ptr %param_type, align 4
  %param = getelementptr inbounds %struct.tomoyo_request_info, ptr %r, i32 0, i32 3
  %6 = ptrtoint ptr %param to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %environ, ptr %param, align 4
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %if.end
  call void @tomoyo_check_acl(ptr noundef %r, ptr noundef nonnull @tomoyo_check_env_acl) #6
  %7 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %param, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %call.i = call i32 (ptr, ptr, ...) @tomoyo_supervisor(ptr noundef %r, ptr noundef nonnull @.str.1, ptr noundef %10) #6
  %cmp = icmp eq i32 %call.i, 1
  br i1 %cmp, label %do.body.do.body_crit_edge, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

cleanup:                                          ; preds = %do.body.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ %call.i, %do.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %environ) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tomoyo_fill_path_info(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tomoyo_check_acl(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @tomoyo_check_env_acl(ptr nocapture noundef readonly %r, ptr nocapture noundef readonly %ptr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %param = getelementptr inbounds %struct.tomoyo_request_info, ptr %r, i32 0, i32 3
  %0 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %param, align 4
  %env = getelementptr inbounds %struct.tomoyo_env_acl, ptr %ptr, i32 0, i32 1
  %2 = ptrtoint ptr %env to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %env, align 4
  %call = tail call zeroext i1 @tomoyo_path_matches_pattern(ptr noundef %1, ptr noundef %3) #6
  ret i1 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tomoyo_write_misc(ptr noundef %param) local_unnamed_addr #0 align 64 {
entry:
  %e.i = alloca %struct.tomoyo_env_acl, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @tomoyo_str_starts(ptr noundef %param, ptr noundef nonnull @.str) #6
  br i1 %call, label %if.then, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %e.i) #6
  %0 = call ptr @memcpy(ptr %e.i, ptr @__const.tomoyo_write_env.e, i32 16)
  %call.i = tail call ptr @tomoyo_read_token(ptr noundef %param) #6
  %call1.i = tail call zeroext i1 @tomoyo_correct_word(ptr noundef %call.i) #6
  br i1 %call1.i, label %lor.lhs.false.i, label %if.then.tomoyo_write_env.exit_crit_edge

if.then.tomoyo_write_env.exit_crit_edge:          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %tomoyo_write_env.exit

lor.lhs.false.i:                                  ; preds = %if.then
  %call2.i = tail call ptr @strchr(ptr noundef %call.i, i32 noundef 61) #6
  %tobool.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool.not.i, label %if.end.i, label %lor.lhs.false.i.tomoyo_write_env.exit_crit_edge

lor.lhs.false.i.tomoyo_write_env.exit_crit_edge:  ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tomoyo_write_env.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %call3.i = tail call ptr @tomoyo_get_name(ptr noundef %call.i) #6
  %env.i = getelementptr inbounds %struct.tomoyo_env_acl, ptr %e.i, i32 0, i32 1
  %1 = ptrtoint ptr %env.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call3.i, ptr %env.i, align 4
  %tobool5.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool5.not.i, label %if.end.i.tomoyo_write_env.exit_crit_edge, label %if.end7.i

if.end.i.tomoyo_write_env.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tomoyo_write_env.exit

if.end7.i:                                        ; preds = %if.end.i
  %call8.i = call i32 @tomoyo_update_domain(ptr noundef nonnull %e.i, i32 noundef 20, ptr noundef %param, ptr noundef nonnull @tomoyo_same_env_acl, ptr noundef null) #6
  %2 = ptrtoint ptr %env.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %env.i, align 4
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %if.end7.i.tomoyo_write_env.exit_crit_edge, label %if.then.i.i

if.end7.i.tomoyo_write_env.exit_crit_edge:        ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tomoyo_write_env.exit

if.then.i.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  %users.i.i = getelementptr i8, ptr %3, i32 -4
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %users.i.i, i32 noundef 4) #6
  call void @llvm.prefetch.p0(ptr %users.i.i, i32 1, i32 3, i32 1) #6
  %4 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users.i.i, ptr %users.i.i, i32 1, ptr elementtype(i32) %users.i.i) #6, !srcloc !13
  br label %tomoyo_write_env.exit

tomoyo_write_env.exit:                            ; preds = %if.then.i.i, %if.end7.i.tomoyo_write_env.exit_crit_edge, %if.end.i.tomoyo_write_env.exit_crit_edge, %lor.lhs.false.i.tomoyo_write_env.exit_crit_edge, %if.then.tomoyo_write_env.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %lor.lhs.false.i.tomoyo_write_env.exit_crit_edge ], [ -22, %if.then.tomoyo_write_env.exit_crit_edge ], [ -12, %if.end.i.tomoyo_write_env.exit_crit_edge ], [ %call8.i, %if.end7.i.tomoyo_write_env.exit_crit_edge ], [ %call8.i, %if.then.i.i ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %e.i) #6
  br label %return

return:                                           ; preds = %tomoyo_write_env.exit, %entry.return_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %tomoyo_write_env.exit ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tomoyo_str_starts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tomoyo_path_matches_pattern(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tomoyo_supervisor(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tomoyo_read_token(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tomoyo_correct_word(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tomoyo_get_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tomoyo_update_domain(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @tomoyo_same_env_acl(ptr nocapture noundef readonly %a, ptr nocapture noundef readonly %b) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %env = getelementptr inbounds %struct.tomoyo_env_acl, ptr %a, i32 0, i32 1
  %0 = ptrtoint ptr %env to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %env, align 4
  %env4 = getelementptr inbounds %struct.tomoyo_env_acl, ptr %b, i32 0, i32 1
  %2 = ptrtoint ptr %env4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %env4, align 4
  %cmp = icmp eq ptr %1, %3
  ret i1 %cmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../security/tomoyo/environ.c", i32 120, i32 38}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../security/tomoyo/environ.c", i32 36, i32 30}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!13 = !{i64 2148726827, i64 2148726853, i64 2148726882, i64 2148726916, i64 2148726947, i64 2148726970}
