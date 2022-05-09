; ModuleID = '/llk/IR_all_yes/kernel/trace/trace_nop.c_pt.bc'
source_filename = "../kernel/trace/trace_nop.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tracer_flags = type { i32, ptr, ptr }
%struct.tracer = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tracer_opt = type { ptr, i32 }

@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"nop\00", [28 x i8] zeroinitializer }, align 32
@nop_flags = internal global { %struct.tracer_flags, [20 x i8] } { %struct.tracer_flags { i32 0, ptr @nop_opts, ptr null }, [20 x i8] zeroinitializer }, align 32
@nop_trace = dso_local local_unnamed_addr global %struct.tracer { ptr @.str, ptr @nop_trace_init, ptr @nop_trace_reset, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @trace_selftest_startup_nop, ptr null, ptr null, ptr @nop_set_flag, ptr null, ptr null, ptr @nop_flags, i32 0, i8 0, i8 1, i8 0, i8 0 }, section ".data..read_mostly", align 4
@nop_set_flag._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 73, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [86 x i8], [42 x i8] } { [86 x i8] c"\017nop_test_accept flag set to %d: we accept. Now cat trace_options to see the result\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"nop_set_flag\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"kernel/trace/trace_nop.c\00", [39 x i8] zeroinitializer }, align 32
@nop_set_flag._entry_ptr = internal global ptr @nop_set_flag._entry, section ".printk_index", align 4
@nop_set_flag._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 80, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [86 x i8], [42 x i8] } { [86 x i8] c"\017nop_test_refuse flag set to %d: we refuse. Now cat trace_options to see the result\0A\00", [42 x i8] zeroinitializer }, align 32
@nop_set_flag._entry_ptr.6 = internal global ptr @nop_set_flag._entry.4, section ".printk_index", align 4
@nop_opts = internal global { [3 x %struct.tracer_opt], [40 x i8] } { [3 x %struct.tracer_opt] [%struct.tracer_opt { ptr @.str.7, i32 1 }, %struct.tracer_opt { ptr @.str.8, i32 2 }, %struct.tracer_opt zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"test_nop_accept\00", [16 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"test_nop_refuse\00", [16 x i8] zeroinitializer }, align 32
@__llvm_gcov_ctr = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.9 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.10 = internal global [3 x i64] zeroinitializer
@__llvm_gcov_ctr.11 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.12 = internal global [1 x i64] zeroinitializer
@0 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"/llk/linux-5.17/build_arm_allyes/kernel/trace/trace_nop.gcda\00", [35 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 90, i32 11 }
@___asan_gen_.16 = private unnamed_addr constant [10 x i8] c"nop_flags\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 29, i32 28 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 71, i32 3 }
@___asan_gen_.31 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 78, i32 3 }
@___asan_gen_.37 = private unnamed_addr constant [9 x i8] c"nop_opts\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 21, i32 26 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 23, i32 4 }
@___asan_gen_.43 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.44 = private constant [28 x i8] c"../kernel/trace/trace_nop.c\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 25, i32 4 }
@___asan_gen_.46 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.compiler.used = appending global [13 x ptr] [ptr @nop_set_flag._entry, ptr @nop_set_flag._entry.4, ptr @nop_set_flag._entry_ptr, ptr @nop_set_flag._entry_ptr.6, ptr @.str, ptr @nop_flags, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @nop_opts, ptr @.str.7, ptr @.str.8], section "llvm.metadata"
@1 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nop_flags to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nop_set_flag._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 86, i32 128, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nop_set_flag._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 86, i32 128, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nop_opts to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @0 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [2 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 0, ptr @__llvm_gcov_init, ptr null }, { i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nop_trace_init(ptr noundef %tr) #0 align 64 !dbg !36 {
entry:
  call void @__sanitizer_cov_trace_pc() #8, !dbg !39
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr, align 8
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.11, align 8
  %1 = add i64 %gcov_ctr.i, 1
  store i64 %1, ptr @__llvm_gcov_ctr.11, align 8
  ret i32 0, !dbg !40
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @nop_trace_reset(ptr nocapture noundef readnone %tr) #0 align 64 !dbg !41 {
entry:
  call void @__sanitizer_cov_trace_pc() #8, !dbg !42
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.9, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.9, align 8
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.12, align 8
  %1 = add i64 %gcov_ctr.i, 1
  store i64 %1, ptr @__llvm_gcov_ctr.12, align 8
  ret void, !dbg !43
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_selftest_startup_nop(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nop_set_flag(ptr nocapture noundef readnone %tr, i32 noundef %old_flags, i32 noundef %bit, i32 noundef %set) #2 align 64 !dbg !44 {
entry:
  call void @__sanitizer_cov_trace_pc() #8, !dbg !45
  %0 = zext i32 %bit to i64, !dbg !46
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values), !dbg !46
  switch i32 %bit, label %if.end7 [
    i32 1, label %do.end
    i32 2, label %if.then2
  ], !dbg !46

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8, !dbg !47
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.10, align 16, !dbg !47
  %1 = add i64 %gcov_ctr, 1, !dbg !47
  store i64 %1, ptr @__llvm_gcov_ctr.10, align 16, !dbg !47
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %set) #9, !dbg !47
  br label %return, !dbg !48

if.then2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8, !dbg !49
  %gcov_ctr8 = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.10, i32 0, i32 1), align 8, !dbg !49
  %2 = add i64 %gcov_ctr8, 1, !dbg !49
  store i64 %2, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.10, i32 0, i32 1), align 8, !dbg !49
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %set) #9, !dbg !49
  br label %return, !dbg !50

if.end7:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8, !dbg !51
  %gcov_ctr9 = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.10, i32 0, i32 2), align 16, !dbg !51
  %3 = add i64 %gcov_ctr9, 1, !dbg !51
  store i64 %3, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.10, i32 0, i32 2), align 16, !dbg !51
  br label %return, !dbg !51

return:                                           ; preds = %if.end7, %if.then2, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ -22, %if.then2 ], [ 0, %if.end7 ], !dbg !52
  ret i32 %retval.0, !dbg !53
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable(sync)
define internal void @__llvm_gcov_writeout() unnamed_addr #4 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @llvm_gcda_start_file(ptr nonnull @0, i32 875575338, i32 -450886081) #10
  tail call void @llvm_gcda_emit_function(i32 0, i32 1364928924, i32 -450886081) #10
  tail call void @llvm_gcda_emit_arcs(i32 1, ptr nonnull @__llvm_gcov_ctr) #10
  tail call void @llvm_gcda_emit_function(i32 1, i32 1164492021, i32 -450886081) #10
  tail call void @llvm_gcda_emit_arcs(i32 1, ptr nonnull @__llvm_gcov_ctr.9) #10
  tail call void @llvm_gcda_emit_function(i32 2, i32 529978068, i32 -450886081) #10
  tail call void @llvm_gcda_emit_arcs(i32 3, ptr nonnull @__llvm_gcov_ctr.10) #10
  tail call void @llvm_gcda_emit_function(i32 3, i32 106596263, i32 -450886081) #10
  tail call void @llvm_gcda_emit_arcs(i32 1, ptr nonnull @__llvm_gcov_ctr.11) #10
  tail call void @llvm_gcda_emit_function(i32 4, i32 -1603530553, i32 -450886081) #10
  tail call void @llvm_gcda_emit_arcs(i32 1, ptr nonnull @__llvm_gcov_ctr.12) #10
  tail call void @llvm_gcda_summary_info() #10
  tail call void @llvm_gcda_end_file() #10
  ret void
}

declare void @llvm_gcda_start_file(ptr, i32, i32) local_unnamed_addr

declare void @llvm_gcda_emit_function(i32, i32, i32) local_unnamed_addr

declare void @llvm_gcda_emit_arcs(i32, ptr) local_unnamed_addr

declare void @llvm_gcda_summary_info() local_unnamed_addr

declare void @llvm_gcda_end_file() local_unnamed_addr

; Function Attrs: mustprogress nofree noinline nosync nounwind willreturn writeonly uwtable(sync)
define internal void @__llvm_gcov_reset() unnamed_addr #5 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  store i64 0, ptr @__llvm_gcov_ctr, align 8
  store i64 0, ptr @__llvm_gcov_ctr.9, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @__llvm_gcov_ctr.10, i8 0, i64 24, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.11, align 8
  store i64 0, ptr @__llvm_gcov_ctr.12, align 8
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: noinline nounwind uwtable(sync)
define internal void @__llvm_gcov_init() unnamed_addr #4 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @llvm_gcov_init(ptr nonnull @__llvm_gcov_writeout, ptr nonnull @__llvm_gcov_reset) #10
  ret void
}

declare void @llvm_gcov_init(ptr, ptr) local_unnamed_addr

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @1 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @1 to i32), i32 12)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { noinline nounwind uwtable(sync) }
attributes #5 = { mustprogress nofree noinline nosync nounwind willreturn writeonly uwtable(sync) }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { nounwind uwtable(sync) }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.asan.globals = !{!2, !4, !6, !8, !10, !11, !12, !13, !14, !16, !17, !18, !20, !22, !24}
!llvm.module.flags = !{!26, !27, !28, !29, !30, !31, !32, !33}
!llvm.gcov = !{!34}
!llvm.ident = !{!35}

!0 = distinct !DICompileUnit(language: DW_LANG_C89, file: !1, producer: "clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)", isOptimized: true, runtimeVersion: 0, emissionKind: NoDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "../kernel/trace/trace_nop.c", directory: "/llk/linux-5.17/build_arm_allyes")
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../kernel/trace/trace_nop.c", i32 90, i32 11}
!4 = !{ptr @nop_trace, !5, !"nop_trace", i1 false, i1 false}
!5 = !{!"../kernel/trace/trace_nop.c", i32 88, i32 15}
!6 = distinct !{null, !7, !"ctx_trace", i1 false, i1 false}
!7 = !{!"../kernel/trace/trace_nop.c", i32 35, i32 28}
!8 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../kernel/trace/trace_nop.c", i32 71, i32 3}
!10 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @nop_set_flag._entry, !9, !"_entry", i1 false, i1 false}
!13 = !{ptr @nop_set_flag._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../kernel/trace/trace_nop.c", i32 78, i32 3}
!16 = !{ptr @nop_set_flag._entry.4, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @nop_set_flag._entry_ptr.6, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @nop_flags, !19, !"nop_flags", i1 false, i1 false}
!19 = !{!"../kernel/trace/trace_nop.c", i32 29, i32 28}
!20 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../kernel/trace/trace_nop.c", i32 23, i32 4}
!22 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../kernel/trace/trace_nop.c", i32 25, i32 4}
!24 = !{ptr @nop_opts, !25, !"nop_opts", i1 false, i1 false}
!25 = !{!"../kernel/trace/trace_nop.c", i32 21, i32 26}
!26 = !{i32 2, !"Debug Info Version", i32 3}
!27 = !{i32 1, !"wchar_size", i32 2}
!28 = !{i32 1, !"min_enum_size", i32 4}
!29 = !{i32 8, !"branch-target-enforcement", i32 0}
!30 = !{i32 8, !"sign-return-address", i32 0}
!31 = !{i32 8, !"sign-return-address-all", i32 0}
!32 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!33 = !{i32 7, !"uwtable", i32 1}
!34 = !{!"/llk/linux-5.17/build_arm_allyes/kernel/trace/trace_nop.gcno", !"/llk/linux-5.17/build_arm_allyes/kernel/trace/trace_nop.gcda", !0}
!35 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!36 = distinct !DISubprogram(name: "nop_trace_init", scope: !1, file: !1, line: 47, type: !37, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !38)
!37 = !DISubroutineType(types: !38)
!38 = !{}
!39 = !DILocation(line: 48, scope: !36)
!40 = !DILocation(line: 51, column: 2, scope: !36)
!41 = distinct !DISubprogram(name: "nop_trace_reset", scope: !1, file: !1, line: 54, type: !37, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !38)
!42 = !DILocation(line: 55, scope: !41)
!43 = !DILocation(line: 57, column: 1, scope: !41)
!44 = distinct !DISubprogram(name: "nop_set_flag", scope: !1, file: !1, line: 64, type: !37, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !38)
!45 = !DILocation(line: 65, scope: !44)
!46 = !DILocation(line: 70, column: 6, scope: !44)
!47 = !DILocation(line: 71, column: 3, scope: !44)
!48 = !DILocation(line: 74, column: 3, scope: !44)
!49 = !DILocation(line: 78, column: 3, scope: !44)
!50 = !DILocation(line: 81, column: 3, scope: !44)
!51 = !DILocation(line: 84, column: 2, scope: !44)
!52 = !DILocation(line: 0, scope: !44)
!53 = !DILocation(line: 85, column: 1, scope: !44)
