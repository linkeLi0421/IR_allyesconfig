; ModuleID = '/llk/IR_all_yes/lib/globtest.c_pt.bc'
source_filename = "../lib/globtest.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.6 }
%union.anon.6 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }

@__param_str_verbose = internal constant [17 x i8] c"globtest.verbose\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@verbose = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_verbose = internal constant %struct.kernel_param { ptr @__param_str_verbose, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.6 { ptr @verbose } }, section "__param", align 4
@__UNIQUE_ID_verbosetype106 = internal constant [31 x i8] c"globtest.parmtype=verbose:bool\00", section ".modinfo", align 1
@__initcall__kmod_globtest__107_163_glob_init6 = internal global ptr @glob_init, section ".initcall6.init", align 4
@__exitcall_glob_fini = internal global ptr @glob_fini, section ".exitcall.exit", align 4
@__UNIQUE_ID_description108 = internal constant [44 x i8] c"globtest.description=glob(7) matching tests\00", section ".modinfo", align 1
@__UNIQUE_ID_file109 = internal constant [27 x i8] c"globtest.file=lib/globtest\00", section ".modinfo", align 1
@__UNIQUE_ID_license110 = internal constant [30 x i8] c"globtest.license=Dual MIT/GPL\00", section ".modinfo", align 1
@glob_tests = internal constant [748 x i8] c"1a\00a\000a\00b\000a\00aa\000a\00\001\00\000\00a\001[a]\00a\000[a]\00b\000[!a]\00a\001[!a]\00b\001[ab]\00a\001[ab]\00b\000[ab]\00c\001[!ab]\00c\001[a-c]\00b\000[a-c]\00d\001[a-c-e-g]\00-\000[a-c-e-g]\00d\001[a-c-e-g]\00f\001[]a-ceg-ik[]\00a\001[]a-ceg-ik[]\00]\001[]a-ceg-ik[]\00[\001[]a-ceg-ik[]\00h\000[]a-ceg-ik[]\00f\000[!]a-ceg-ik[]\00h\000[!]a-ceg-ik[]\00]\001[!]a-ceg-ik[]\00f\001?\00a\000?\00aa\000??\00a\001?x?\00axb\000?x?\00abx\000?x?\00xab\000*??\00a\001*??\00ab\001*??\00abc\001*??\00abcd\000??*\00a\001??*\00ab\001??*\00abc\001??*\00abcd\000?*?\00a\001?*?\00ab\001?*?\00abc\001?*?\00abcd\001*b\00b\001*b\00ab\000*b\00ba\001*b\00bb\001*b\00abb\001*b\00bab\001*bc\00abbc\001*bc\00bc\001*bc\00bbc\001*bc\00bcbc\001*ac*\00abacadaeafag\001*ac*ae*ag*\00abacadaeafag\001*a*b*[bc]*[ef]*g*\00abacadaeafag\000*a*b*[ef]*[cd]*g*\00abacadaeafag\001*abcd*\00abcabcabcabcdefg\001*ab*cd*\00abcabcabcabcdefg\001*abcd*abcdef*\00abcabcdabcdeabcdefg\000*abcd*\00abcabcabcabcefg\000*ab*cd*\00abcabcabcabcefg\00\00", section ".init.rodata", align 1
@glob_init.message = internal constant [41 x i8] c"\016glob: %u self-tests passed, %u failed\0A\00", section ".init.rodata", align 1
@glob_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr null, ptr @.str, ptr @.str.1, i32 154, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"glob_init\00", [22 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"lib/globtest.c\00", [17 x i8] zeroinitializer }, align 32
@glob_init._entry_ptr = internal global ptr @glob_init._entry, section ".printk_index", align 4
@test.msg_error = internal constant [41 x i8] c"\013glob: \22%s\22 vs. \22%s\22: %s *** ERROR ***\0A\00", section ".init.rodata", align 1
@test.msg_ok = internal constant [30 x i8] c"\017glob: \22%s\22 vs. \22%s\22: %s OK\0A\00", section ".init.rodata", align 1
@test.mismatch = internal constant [9 x i8] c"mismatch\00", section ".init.rodata", align 1
@test._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr null, ptr @.str.2, ptr @.str.1, i32 39, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"test\00", [27 x i8] zeroinitializer }, align 32
@test._entry_ptr = internal global ptr @test._entry, section ".printk_index", align 4
@___asan_gen_.3 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 11, i32 13 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 154, i32 2 }
@___asan_gen_.15 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.18 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.19 = private constant [18 x i8] c"../lib/globtest.c\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 39, i32 2 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @__UNIQUE_ID_description108, ptr @__UNIQUE_ID_file109, ptr @__UNIQUE_ID_license110, ptr @__UNIQUE_ID_verbosetype106, ptr @__exitcall_glob_fini, ptr @__initcall__kmod_globtest__107_163_glob_init6, ptr @__param_verbose, ptr @glob_fini, ptr @glob_init._entry, ptr @glob_init._entry_ptr, ptr @test._entry, ptr @test._entry_ptr, ptr @verbose, ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @verbose to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @glob_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @glob_fini() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @glob_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry
  %0 = phi i8 [ 49, %entry ], [ %3, %while.body.while.body_crit_edge ]
  %successes.025 = phi i32 [ 0, %entry ], [ %add5, %while.body.while.body_crit_edge ]
  %n.024 = phi i32 [ 0, %entry ], [ %inc, %while.body.while.body_crit_edge ]
  %p.023 = phi ptr [ @glob_tests, %entry ], [ %add.ptr8, %while.body.while.body_crit_edge ]
  %incdec.ptr = getelementptr i8, ptr %p.023, i32 1
  %1 = and i8 %0, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool1 = icmp ne i8 %1, 0
  %call = tail call i32 @strlen(ptr noundef %incdec.ptr) #8
  %add = add i32 %call, 1
  %add.ptr = getelementptr i8, ptr %incdec.ptr, i32 %add
  %call3 = tail call fastcc zeroext i1 @test(ptr noundef %incdec.ptr, ptr noundef %add.ptr, i1 noundef zeroext %tobool1) #9
  %conv4 = zext i1 %call3 to i32
  %add5 = add i32 %successes.025, %conv4
  %call6 = tail call i32 @strlen(ptr noundef %add.ptr) #8
  %add7 = add i32 %call6, 1
  %add.ptr8 = getelementptr i8, ptr %add.ptr, i32 %add7
  %inc = add i32 %n.024, 1
  %2 = ptrtoint ptr %add.ptr8 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %add.ptr8, align 1
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %while.end, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.end:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  %sub = sub i32 %inc, %add5
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @glob_init.message, i32 noundef %add5, i32 noundef %sub) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %add5)
  %tobool10.not = icmp eq i32 %inc, %add5
  %cond = select i1 %tobool10.not, i32 0, i32 -125
  ret i32 %cond
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress nofree nounwind null_pointer_is_valid optsize readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc zeroext i1 @test(ptr noundef %pat, ptr noundef %str, i1 noundef zeroext %expected) unnamed_addr #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call zeroext i1 @glob_match(ptr noundef %pat, ptr noundef %str) #11
  %0 = xor i1 %call, %expected
  br i1 %0, label %entry.do.end_crit_edge, label %if.else

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.else:                                          ; preds = %entry
  %1 = load i8, ptr @verbose, align 1, !range !42
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool7.not = icmp eq i8 %1, 0
  br i1 %tobool7.not, label %if.else.cleanup_crit_edge, label %if.else.do.end_crit_edge

if.else.do.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %if.else.do.end_crit_edge, %entry.do.end_crit_edge
  %message.0 = phi ptr [ @test.msg_error, %entry.do.end_crit_edge ], [ @test.msg_ok, %if.else.do.end_crit_edge ]
  %mul = select i1 %call, i32 3, i32 0
  %add.ptr = getelementptr i8, ptr @test.mismatch, i32 %mul
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %message.0, ptr noundef %pat, ptr noundef %str, ptr noundef %add.ptr) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.else.cleanup_crit_edge
  %cmp = xor i1 %0, true
  ret i1 %cmp
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local zeroext i1 @glob_match(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold mustprogress nofree nounwind null_pointer_is_valid optsize readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind uwtable(sync) }
attributes #7 = { nomerge }
attributes #8 = { nobuiltin }
attributes #9 = { cold nounwind readonly willreturn }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !13, !15, !17, !19, !20, !21, !22, !24, !26, !28, !30, !32, !33}
!llvm.module.flags = !{!34, !35, !36, !37, !38, !39, !40}
!llvm.ident = !{!41}

!0 = !{ptr @__param_verbose, !1, !"__param_verbose", i1 false, i1 false}
!1 = !{!"../lib/globtest.c", i32 12, i32 1}
!2 = !{ptr @__UNIQUE_ID_verbosetype106, !1, !"__UNIQUE_ID_verbosetype106", i1 false, i1 false}
!3 = !{ptr @__initcall__kmod_globtest__107_163_glob_init6, !4, !"__initcall__kmod_globtest__107_163_glob_init6", i1 false, i1 false}
!4 = !{!"../lib/globtest.c", i32 163, i32 1}
!5 = !{ptr @__exitcall_glob_fini, !6, !"__exitcall_glob_fini", i1 false, i1 false}
!6 = !{!"../lib/globtest.c", i32 164, i32 1}
!7 = !{ptr @__UNIQUE_ID_description108, !8, !"__UNIQUE_ID_description108", i1 false, i1 false}
!8 = !{!"../lib/globtest.c", i32 166, i32 1}
!9 = !{ptr @__UNIQUE_ID_file109, !10, !"__UNIQUE_ID_file109", i1 false, i1 false}
!10 = !{!"../lib/globtest.c", i32 167, i32 1}
!11 = !{ptr @__UNIQUE_ID_license110, !10, !"__UNIQUE_ID_license110", i1 false, i1 false}
!12 = !{ptr @__param_str_verbose, !1, !"__param_str_verbose", i1 false, i1 false}
!13 = !{ptr @verbose, !14, !"verbose", i1 false, i1 false}
!14 = !{!"../lib/globtest.c", i32 11, i32 13}
!15 = !{ptr @glob_init.message, !16, !"message", i1 false, i1 false}
!16 = !{!"../lib/globtest.c", i32 134, i32 20}
!17 = !{ptr @.str, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../lib/globtest.c", i32 154, i32 2}
!19 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @glob_init._entry, !18, !"_entry", i1 false, i1 false}
!21 = !{ptr @glob_init._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @glob_tests, !23, !"glob_tests", i1 false, i1 false}
!23 = !{!"../lib/globtest.c", i32 57, i32 19}
!24 = !{ptr @test.msg_error, !25, !"msg_error", i1 false, i1 false}
!25 = !{!"../lib/globtest.c", i32 25, i32 20}
!26 = !{ptr @test.msg_ok, !27, !"msg_ok", i1 false, i1 false}
!27 = !{!"../lib/globtest.c", i32 27, i32 20}
!28 = !{ptr @test.mismatch, !29, !"mismatch", i1 false, i1 false}
!29 = !{!"../lib/globtest.c", i32 29, i32 20}
!30 = !{ptr @.str.2, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../lib/globtest.c", i32 39, i32 2}
!32 = !{ptr @test._entry, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @test._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{i32 1, !"wchar_size", i32 2}
!35 = !{i32 1, !"min_enum_size", i32 4}
!36 = !{i32 8, !"branch-target-enforcement", i32 0}
!37 = !{i32 8, !"sign-return-address", i32 0}
!38 = !{i32 8, !"sign-return-address-all", i32 0}
!39 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!40 = !{i32 7, !"uwtable", i32 1}
!41 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!42 = !{i8 0, i8 2}
