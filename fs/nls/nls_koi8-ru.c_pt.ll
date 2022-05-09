; ModuleID = '/llk/IR_all_yes/fs/nls/nls_koi8-ru.c_pt.bc'
source_filename = "../fs/nls/nls_koi8-ru.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nls_table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@table = internal global { %struct.nls_table, [32 x i8] } { %struct.nls_table { ptr @.str, ptr null, ptr @uni2char, ptr @char2uni, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@p_nls = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__initcall__kmod_nls_koi8_ru__106_79_init_nls_koi8_ru6 = internal global ptr @init_nls_koi8_ru, section ".initcall6.init", align 4
@__exitcall_exit_nls_koi8_ru = internal global ptr @exit_nls_koi8_ru, section ".exitcall.exit", align 4
@__UNIQUE_ID_file107 = internal constant [36 x i8] c"nls_koi8_ru.file=fs/nls/nls_koi8-ru\00", section ".modinfo", align 1
@__UNIQUE_ID_license108 = internal constant [33 x i8] c"nls_koi8_ru.license=Dual BSD/GPL\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"koi8-ru\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"koi8-u\00", [25 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 16, i64 1038, i64 1118, i64 9565, i64 9580]
@___asan_gen_.2 = private unnamed_addr constant [6 x i8] c"table\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 54, i32 25 }
@___asan_gen_.5 = private unnamed_addr constant [6 x i8] c"p_nls\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 14, i32 26 }
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 55, i32 13 }
@___asan_gen_.11 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.12 = private constant [24 x i8] c"../fs/nls/nls_koi8-ru.c\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 62, i32 19 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @__UNIQUE_ID_file107, ptr @__UNIQUE_ID_license108, ptr @__exitcall_exit_nls_koi8_ru, ptr @__initcall__kmod_nls_koi8_ru__106_79_init_nls_koi8_ru6, ptr @exit_nls_koi8_ru, ptr @table, ptr @p_nls, ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @table to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p_nls to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @exit_nls_koi8_ru() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  %call = tail call i32 @unregister_nls(ptr noundef nonnull @table) #3
  %0 = load ptr, ptr @p_nls, align 4
  tail call void @unload_nls(ptr noundef %0) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_nls(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unload_nls(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init_nls_koi8_ru() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @load_nls(ptr noundef nonnull @.str.1) #3
  store ptr %call, ptr @p_nls, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.then

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %charset2upper = getelementptr inbounds %struct.nls_table, ptr %call, i32 0, i32 5
  %0 = ptrtoint ptr %charset2upper to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %charset2upper, align 4
  store ptr %1, ptr getelementptr inbounds (%struct.nls_table, ptr @table, i32 0, i32 5), align 4
  %charset2lower = getelementptr inbounds %struct.nls_table, ptr %call, i32 0, i32 4
  %2 = ptrtoint ptr %charset2lower to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %charset2lower, align 4
  store ptr %3, ptr getelementptr inbounds (%struct.nls_table, ptr @table, i32 0, i32 4), align 4
  %call1 = tail call i32 @__register_nls(ptr noundef nonnull @table, ptr noundef null) #3
  br label %return

return:                                           ; preds = %if.then, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call1, %if.then ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uni2char(i16 noundef zeroext %uni, ptr noundef %out, i32 noundef %boundlen) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %boundlen)
  %cmp = icmp slt i32 %boundlen, 1
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end:                                           ; preds = %entry
  %conv = zext i16 %uni to i32
  %and = and i32 %conv, 65455
  call void @__sanitizer_cov_trace_const_cmp4(i32 1038, i32 %and)
  %cmp1 = icmp eq i32 %and, 1038
  %and4 = and i32 %conv, 65486
  call void @__sanitizer_cov_trace_const_cmp4(i32 9548, i32 %and4)
  %cmp5 = icmp eq i32 %and4, 9548
  %or.cond = or i1 %cmp1, %cmp5
  br i1 %or.cond, label %if.then7, label %if.else29

if.then7:                                         ; preds = %if.end
  %0 = zext i16 %uni to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i16 %uni, label %if.else26 [
    i16 1038, label %if.then7.if.end28_crit_edge
    i16 1118, label %if.then15
    i16 9565, label %if.then7.return_crit_edge
    i16 9580, label %if.then7.return_crit_edge44
  ]

if.then7.return_crit_edge44:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.then7.return_crit_edge:                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.then7.if.end28_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end28

if.then15:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end28

if.else26:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #5
  %1 = load ptr, ptr @p_nls, align 4
  %uni2char = getelementptr inbounds %struct.nls_table, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %uni2char to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %uni2char, align 4
  %call = tail call i32 %3(i16 noundef zeroext %uni, ptr noundef %out, i32 noundef %boundlen) #3
  br label %return

if.end28:                                         ; preds = %if.then15, %if.then7.if.end28_crit_edge
  %storemerge = phi i8 [ -82, %if.then15 ], [ -66, %if.then7.if.end28_crit_edge ]
  %4 = ptrtoint ptr %out to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %storemerge, ptr %out, align 1
  br label %return

if.else29:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %5 = load ptr, ptr @p_nls, align 4
  %uni2char30 = getelementptr inbounds %struct.nls_table, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %uni2char30 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %uni2char30, align 4
  %call31 = tail call i32 %7(i16 noundef zeroext %uni, ptr noundef %out, i32 noundef %boundlen) #3
  br label %return

return:                                           ; preds = %if.else29, %if.end28, %if.else26, %if.then7.return_crit_edge, %if.then7.return_crit_edge44, %entry.return_crit_edge
  %retval.0 = phi i32 [ 1, %if.end28 ], [ %call, %if.else26 ], [ %call31, %if.else29 ], [ -36, %entry.return_crit_edge ], [ 0, %if.then7.return_crit_edge ], [ 0, %if.then7.return_crit_edge44 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @char2uni(ptr noundef %rawstring, i32 noundef %boundlen, ptr noundef %uni) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rawstring to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %rawstring, align 1
  %conv = zext i8 %1 to i32
  %and = and i32 %conv, 239
  call void @__sanitizer_cov_trace_const_cmp4(i32 174, i32 %and)
  %cmp.not = icmp eq i32 %and, 174
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %and3 = and i32 %conv, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool.not = icmp eq i32 %and3, 0
  %conv4 = select i1 %tobool.not, i16 1118, i16 1038
  %2 = ptrtoint ptr %uni to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %conv4, ptr %uni, align 2
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %3 = load ptr, ptr @p_nls, align 4
  %char2uni = getelementptr inbounds %struct.nls_table, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %char2uni to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %char2uni, align 4
  %call = tail call i32 %5(ptr noundef %rawstring, i32 noundef %boundlen, ptr noundef %uni) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ %call, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @load_nls(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__register_nls(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

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

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13}
!llvm.module.flags = !{!15, !16, !17, !18, !19, !20, !21, !22}
!llvm.ident = !{!23}

!0 = !{ptr @__initcall__kmod_nls_koi8_ru__106_79_init_nls_koi8_ru6, !1, !"__initcall__kmod_nls_koi8_ru__106_79_init_nls_koi8_ru6", i1 false, i1 false}
!1 = !{!"../fs/nls/nls_koi8-ru.c", i32 79, i32 1}
!2 = !{ptr @__exitcall_exit_nls_koi8_ru, !3, !"__exitcall_exit_nls_koi8_ru", i1 false, i1 false}
!3 = !{!"../fs/nls/nls_koi8-ru.c", i32 80, i32 1}
!4 = !{ptr @__UNIQUE_ID_file107, !5, !"__UNIQUE_ID_file107", i1 false, i1 false}
!5 = !{!"../fs/nls/nls_koi8-ru.c", i32 82, i32 1}
!6 = !{ptr @__UNIQUE_ID_license108, !5, !"__UNIQUE_ID_license108", i1 false, i1 false}
!7 = !{ptr @p_nls, !8, !"p_nls", i1 false, i1 false}
!8 = !{!"../fs/nls/nls_koi8-ru.c", i32 14, i32 26}
!9 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../fs/nls/nls_koi8-ru.c", i32 55, i32 13}
!11 = !{ptr @table, !12, !"table", i1 false, i1 false}
!12 = !{!"../fs/nls/nls_koi8-ru.c", i32 54, i32 25}
!13 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../fs/nls/nls_koi8-ru.c", i32 62, i32 19}
!15 = !{i32 1, !"wchar_size", i32 2}
!16 = !{i32 1, !"min_enum_size", i32 4}
!17 = !{i32 8, !"branch-target-enforcement", i32 0}
!18 = !{i32 8, !"sign-return-address", i32 0}
!19 = !{i32 8, !"sign-return-address-all", i32 0}
!20 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!21 = !{i32 7, !"uwtable", i32 1}
!22 = !{i32 7, !"frame-pointer", i32 2}
!23 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
