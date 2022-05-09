; ModuleID = '/llk/IR_all_yes/drivers/firmware/smccc/kvm_guest.c_pt.bc'
source_filename = "../drivers/firmware/smccc/kvm_guest.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+kvm_arm_hyp_service_available\22, \22a\22\09"
module asm "\09.weak\09__crc_kvm_arm_hyp_service_available\09\09\09\09"
module asm "\09.long\09__crc_kvm_arm_hyp_service_available\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kvm_arm_hyp_service_available:\09\09\09\09\09"
module asm "\09.asciz \09\22kvm_arm_hyp_service_available\22\09\09\09\09\09"
module asm "__kstrtabns_kvm_arm_hyp_service_available:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }

@__kvm_arm_hyp_services = internal global [4 x i32] zeroinitializer, section ".data..ro_after_init", align 4
@kvm_init_hyp_services._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 40, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"\016smccc: KVM: hypervisor services detected (0x%08lx 0x%08lx 0x%08lx 0x%08lx)\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"kvm_init_hyp_services\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/firmware/smccc/kvm_guest.c\00", [61 x i8] zeroinitializer }, align 32
@kvm_init_hyp_services._entry_ptr = internal global ptr @kvm_init_hyp_services._entry, section ".printk_index", align 4
@__kstrtab_kvm_arm_hyp_service_available = external dso_local constant [0 x i8], align 1
@__kstrtabns_kvm_arm_hyp_service_available = external dso_local constant [0 x i8], align 1
@__ksymtab_kvm_arm_hyp_service_available = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kvm_arm_hyp_service_available to i32), ptr @__kstrtab_kvm_arm_hyp_service_available, ptr @__kstrtabns_kvm_arm_hyp_service_available }, section "___ksymtab_gpl+kvm_arm_hyp_service_available", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.3 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.4 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.13 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.14 = private constant [38 x i8] c"../drivers/firmware/smccc/kvm_guest.c\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 39, i32 2 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @__ksymtab_kvm_arm_hyp_service_available, ptr @kvm_init_hyp_services._entry, ptr @kvm_init_hyp_services._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kvm_init_hyp_services._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @kvm_init_hyp_services() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @arm_smccc_1_1_get_conduit() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call)
  %cmp.not = icmp eq i32 %call, 2
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @arm_smccc_1_1_get_conduit() #4
  %0 = zext i32 %call1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call1, label %sw.epilog.thread [
    i32 2, label %do.body
    i32 1, label %do.body8
  ]

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %1 = tail call { i32, i32, i32, i32 } asm sideeffect ".long ( (((0xE1400070 | (((0) & 0xFFF0) << 4) | ((0) & 0x000F)) << 24) & 0xFF000000) | (((0xE1400070 | (((0) & 0xFFF0) << 4) | ((0) & 0x000F)) << 8) & 0x00FF0000) | (((0xE1400070 | (((0) & 0xFFF0) << 4) | ((0) & 0x000F)) >> 8) & 0x0000FF00) | (((0xE1400070 | (((0) & 0xFFF0) << 4) | ((0) & 0x000F)) >> 24) & 0x000000FF) )\0A\09\0A", "={r0},={r1},={r2},={r3},{r0},~{memory}"(i32 -2046755071) #4, !srcloc !19
  br label %sw.epilog

do.body8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %2 = tail call { i32, i32, i32, i32 } asm sideeffect ".long ( (((0xE1600070 | (((0) & 0xF) << 0)) << 24) & 0xFF000000) | (((0xE1600070 | (((0) & 0xF) << 0)) << 8) & 0x00FF0000) | (((0xE1600070 | (((0) & 0xF) << 0)) >> 8) & 0x0000FF00) | (((0xE1600070 | (((0) & 0xF) << 0)) >> 24) & 0x000000FF) )\0A\09\0A", "={r0},={r1},={r2},={r3},{r0},~{memory}"(i32 -2046755071) #4, !srcloc !20
  br label %sw.epilog

sw.epilog.thread:                                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "", "{r0},~{memory}"(i32 -2046755071) #4, !srcloc !21
  br label %cleanup

sw.epilog:                                        ; preds = %do.body8, %do.body
  %.pn = phi { i32, i32, i32, i32 } [ %2, %do.body8 ], [ %1, %do.body ]
  %res.sroa.29.0 = extractvalue { i32, i32, i32, i32 } %.pn, 3
  %res.sroa.21.0 = extractvalue { i32, i32, i32, i32 } %.pn, 2
  %res.sroa.13.0 = extractvalue { i32, i32, i32, i32 } %.pn, 1
  %res.sroa.0.0 = extractvalue { i32, i32, i32, i32 } %.pn, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1234193368, i32 %res.sroa.0.0)
  %cmp39.not = icmp eq i32 %res.sroa.0.0, -1234193368
  call void @__sanitizer_cov_trace_const_cmp4(i32 -384711378, i32 %res.sroa.13.0)
  %cmp41.not = icmp eq i32 %res.sroa.13.0, -384711378
  %or.cond = select i1 %cmp39.not, i1 %cmp41.not, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 1447807657, i32 %res.sroa.21.0)
  %cmp44.not = icmp eq i32 %res.sroa.21.0, 1447807657
  %or.cond155 = select i1 %or.cond, i1 %cmp44.not, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 1949958221, i32 %res.sroa.29.0)
  %cmp47.not = icmp eq i32 %res.sroa.29.0, 1949958221
  %or.cond156 = select i1 %or.cond155, i1 %cmp47.not, i1 false
  br i1 %or.cond156, label %if.end49, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end49:                                         ; preds = %sw.epilog
  %call51 = tail call i32 @arm_smccc_1_1_get_conduit() #4
  %3 = zext i32 %call51 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.3)
  switch i32 %call51, label %do.body97 [
    i32 2, label %do.body53
    i32 1, label %do.body75
  ]

do.body53:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #6
  %4 = tail call { i32, i32, i32, i32 } asm sideeffect ".long ( (((0xE1400070 | (((0) & 0xFFF0) << 4) | ((0) & 0x000F)) << 24) & 0xFF000000) | (((0xE1400070 | (((0) & 0xFFF0) << 4) | ((0) & 0x000F)) << 8) & 0x00FF0000) | (((0xE1400070 | (((0) & 0xFFF0) << 4) | ((0) & 0x000F)) >> 8) & 0x0000FF00) | (((0xE1400070 | (((0) & 0xFFF0) << 4) | ((0) & 0x000F)) >> 24) & 0x000000FF) )\0A\09\0A", "={r0},={r1},={r2},={r3},{r0},~{memory}"(i32 -2046820352) #4, !srcloc !22
  %asmresult63 = extractvalue { i32, i32, i32, i32 } %4, 3
  %asmresult62 = extractvalue { i32, i32, i32, i32 } %4, 2
  %asmresult61 = extractvalue { i32, i32, i32, i32 } %4, 1
  %asmresult60 = extractvalue { i32, i32, i32, i32 } %4, 0
  br label %sw.epilog106

do.body75:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #6
  %5 = tail call { i32, i32, i32, i32 } asm sideeffect ".long ( (((0xE1600070 | (((0) & 0xF) << 0)) << 24) & 0xFF000000) | (((0xE1600070 | (((0) & 0xF) << 0)) << 8) & 0x00FF0000) | (((0xE1600070 | (((0) & 0xF) << 0)) >> 8) & 0x0000FF00) | (((0xE1600070 | (((0) & 0xF) << 0)) >> 24) & 0x000000FF) )\0A\09\0A", "={r0},={r1},={r2},={r3},{r0},~{memory}"(i32 -2046820352) #4, !srcloc !23
  %asmresult85 = extractvalue { i32, i32, i32, i32 } %5, 3
  %asmresult84 = extractvalue { i32, i32, i32, i32 } %5, 2
  %asmresult83 = extractvalue { i32, i32, i32, i32 } %5, 1
  %asmresult82 = extractvalue { i32, i32, i32, i32 } %5, 0
  br label %sw.epilog106

do.body97:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "", "{r0},~{memory}"(i32 -2046820352) #4, !srcloc !24
  br label %sw.epilog106

sw.epilog106:                                     ; preds = %do.body97, %do.body75, %do.body53
  %res.sroa.0.1 = phi i32 [ -1, %do.body97 ], [ %asmresult82, %do.body75 ], [ %asmresult60, %do.body53 ]
  %res.sroa.13.1 = phi i32 [ 0, %do.body97 ], [ %asmresult83, %do.body75 ], [ %asmresult61, %do.body53 ]
  %res.sroa.21.1 = phi i32 [ 0, %do.body97 ], [ %asmresult84, %do.body75 ], [ %asmresult62, %do.body53 ]
  %res.sroa.29.1 = phi i32 [ 0, %do.body97 ], [ %asmresult85, %do.body75 ], [ %asmresult63, %do.body53 ]
  store i32 %res.sroa.0.1, ptr @__kvm_arm_hyp_services, align 4
  store i32 %res.sroa.13.1, ptr getelementptr inbounds ([4 x i32], ptr @__kvm_arm_hyp_services, i32 0, i32 1), align 4
  store i32 %res.sroa.21.1, ptr getelementptr inbounds ([4 x i32], ptr @__kvm_arm_hyp_services, i32 0, i32 2), align 4
  store i32 %res.sroa.29.1, ptr getelementptr inbounds ([4 x i32], ptr @__kvm_arm_hyp_services, i32 0, i32 3), align 4
  %call126 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %res.sroa.29.1, i32 noundef %res.sroa.21.1, i32 noundef %res.sroa.13.1, i32 noundef %res.sroa.0.1) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog106, %sw.epilog.cleanup_crit_edge, %sw.epilog.thread, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_smccc_1_1_get_conduit() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @kvm_arm_hyp_service_available(i32 noundef %func_id) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %func_id)
  %cmp = icmp ugt i32 %func_id, 127
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %div1.i = lshr i32 %func_id, 5
  %arrayidx.i = getelementptr i32, ptr @__kvm_arm_hyp_services, i32 %div1.i
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %func_id, 31
  %2 = shl nuw i32 1, %and.i
  %3 = and i32 %1, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool = icmp ne i32 %3, 0
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i1 [ %tobool, %if.end ], [ false, %entry.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/firmware/smccc/kvm_guest.c", i32 39, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @kvm_init_hyp_services._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @kvm_init_hyp_services._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @__ksymtab_kvm_arm_hyp_service_available, !7, !"__ksymtab_kvm_arm_hyp_service_available", i1 false, i1 false}
!7 = !{!"../drivers/firmware/smccc/kvm_guest.c", i32 50, i32 1}
!8 = !{ptr @__kvm_arm_hyp_services, !9, !"__kvm_arm_hyp_services", i1 false, i1 false}
!9 = !{!"../drivers/firmware/smccc/kvm_guest.c", i32 12, i32 8}
!10 = !{i32 1, !"wchar_size", i32 2}
!11 = !{i32 1, !"min_enum_size", i32 4}
!12 = !{i32 8, !"branch-target-enforcement", i32 0}
!13 = !{i32 8, !"sign-return-address", i32 0}
!14 = !{i32 8, !"sign-return-address-all", i32 0}
!15 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!19 = !{i64 2148790481, i64 2148790811}
!20 = !{i64 2148794152, i64 2148794402}
!21 = !{i64 2148795546}
!22 = !{i64 2148800845, i64 2148801175}
!23 = !{i64 2148804471, i64 2148804721}
!24 = !{i64 2148805835}
