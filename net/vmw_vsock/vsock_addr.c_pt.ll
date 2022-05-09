; ModuleID = '/llk/IR_all_yes/net/vmw_vsock/vsock_addr.c_pt.bc'
source_filename = "../net/vmw_vsock/vsock_addr.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+vsock_addr_init\22, \22a\22\09"
module asm "\09.weak\09__crc_vsock_addr_init\09\09\09\09"
module asm "\09.long\09__crc_vsock_addr_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vsock_addr_init:\09\09\09\09\09"
module asm "\09.asciz \09\22vsock_addr_init\22\09\09\09\09\09"
module asm "__kstrtabns_vsock_addr_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+vsock_addr_validate\22, \22a\22\09"
module asm "\09.weak\09__crc_vsock_addr_validate\09\09\09\09"
module asm "\09.long\09__crc_vsock_addr_validate\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vsock_addr_validate:\09\09\09\09\09"
module asm "\09.asciz \09\22vsock_addr_validate\22\09\09\09\09\09"
module asm "__kstrtabns_vsock_addr_validate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+vsock_addr_bound\22, \22a\22\09"
module asm "\09.weak\09__crc_vsock_addr_bound\09\09\09\09"
module asm "\09.long\09__crc_vsock_addr_bound\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vsock_addr_bound:\09\09\09\09\09"
module asm "\09.asciz \09\22vsock_addr_bound\22\09\09\09\09\09"
module asm "__kstrtabns_vsock_addr_bound:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+vsock_addr_unbind\22, \22a\22\09"
module asm "\09.weak\09__crc_vsock_addr_unbind\09\09\09\09"
module asm "\09.long\09__crc_vsock_addr_unbind\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vsock_addr_unbind:\09\09\09\09\09"
module asm "\09.asciz \09\22vsock_addr_unbind\22\09\09\09\09\09"
module asm "__kstrtabns_vsock_addr_unbind:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+vsock_addr_equals_addr\22, \22a\22\09"
module asm "\09.weak\09__crc_vsock_addr_equals_addr\09\09\09\09"
module asm "\09.long\09__crc_vsock_addr_equals_addr\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vsock_addr_equals_addr:\09\09\09\09\09"
module asm "\09.asciz \09\22vsock_addr_equals_addr\22\09\09\09\09\09"
module asm "__kstrtabns_vsock_addr_equals_addr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+vsock_addr_cast\22, \22a\22\09"
module asm "\09.weak\09__crc_vsock_addr_cast\09\09\09\09"
module asm "\09.long\09__crc_vsock_addr_cast\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vsock_addr_cast:\09\09\09\09\09"
module asm "\09.asciz \09\22vsock_addr_cast\22\09\09\09\09\09"
module asm "__kstrtabns_vsock_addr_cast:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.sockaddr_vm = type { i16, i16, i32, i32, i8, [3 x i8] }

@__kstrtab_vsock_addr_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_vsock_addr_init = external dso_local constant [0 x i8], align 1
@__ksymtab_vsock_addr_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vsock_addr_init to i32), ptr @__kstrtab_vsock_addr_init, ptr @__kstrtabns_vsock_addr_init }, section "___ksymtab_gpl+vsock_addr_init", align 4
@__kstrtab_vsock_addr_validate = external dso_local constant [0 x i8], align 1
@__kstrtabns_vsock_addr_validate = external dso_local constant [0 x i8], align 1
@__ksymtab_vsock_addr_validate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vsock_addr_validate to i32), ptr @__kstrtab_vsock_addr_validate, ptr @__kstrtabns_vsock_addr_validate }, section "___ksymtab_gpl+vsock_addr_validate", align 4
@__kstrtab_vsock_addr_bound = external dso_local constant [0 x i8], align 1
@__kstrtabns_vsock_addr_bound = external dso_local constant [0 x i8], align 1
@__ksymtab_vsock_addr_bound = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vsock_addr_bound to i32), ptr @__kstrtab_vsock_addr_bound, ptr @__kstrtabns_vsock_addr_bound }, section "___ksymtab_gpl+vsock_addr_bound", align 4
@__kstrtab_vsock_addr_unbind = external dso_local constant [0 x i8], align 1
@__kstrtabns_vsock_addr_unbind = external dso_local constant [0 x i8], align 1
@__ksymtab_vsock_addr_unbind = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vsock_addr_unbind to i32), ptr @__kstrtab_vsock_addr_unbind, ptr @__kstrtabns_vsock_addr_unbind }, section "___ksymtab_gpl+vsock_addr_unbind", align 4
@__kstrtab_vsock_addr_equals_addr = external dso_local constant [0 x i8], align 1
@__kstrtabns_vsock_addr_equals_addr = external dso_local constant [0 x i8], align 1
@__ksymtab_vsock_addr_equals_addr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vsock_addr_equals_addr to i32), ptr @__kstrtab_vsock_addr_equals_addr, ptr @__kstrtabns_vsock_addr_equals_addr }, section "___ksymtab_gpl+vsock_addr_equals_addr", align 4
@__kstrtab_vsock_addr_cast = external dso_local constant [0 x i8], align 1
@__kstrtabns_vsock_addr_cast = external dso_local constant [0 x i8], align 1
@__ksymtab_vsock_addr_cast = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vsock_addr_cast to i32), ptr @__kstrtab_vsock_addr_cast, ptr @__kstrtabns_vsock_addr_cast }, section "___ksymtab_gpl+vsock_addr_cast", align 4
@llvm.compiler.used = appending global [6 x ptr] [ptr @__ksymtab_vsock_addr_bound, ptr @__ksymtab_vsock_addr_cast, ptr @__ksymtab_vsock_addr_equals_addr, ptr @__ksymtab_vsock_addr_init, ptr @__ksymtab_vsock_addr_unbind, ptr @__ksymtab_vsock_addr_validate], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @vsock_addr_init(ptr nocapture noundef writeonly %addr, i32 noundef %cid, i32 noundef %port) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %addr, i32 0, i32 16)
  %1 = ptrtoint ptr %addr to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 40, ptr %addr, align 4
  %svm_cid = getelementptr inbounds %struct.sockaddr_vm, ptr %addr, i32 0, i32 3
  %2 = ptrtoint ptr %svm_cid to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %cid, ptr %svm_cid, align 4
  %svm_port = getelementptr inbounds %struct.sockaddr_vm, ptr %addr, i32 0, i32 2
  %3 = ptrtoint ptr %svm_port to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %port, ptr %svm_port, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @vsock_addr_validate(ptr noundef readonly %addr) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %addr, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %addr, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 40, i16 %1)
  %cmp.not = icmp eq i16 %1, 40
  br i1 %cmp.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %svm_flags = getelementptr inbounds %struct.sockaddr_vm, ptr %addr, i32 0, i32 4
  %2 = ptrtoint ptr %svm_flags to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %svm_flags, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %3)
  %tobool6.not = icmp ult i8 %3, 2
  %. = select i1 %tobool6.not, i32 0, i32 -22
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -14, %entry.cleanup_crit_edge ], [ -97, %if.end.cleanup_crit_edge ], [ %., %if.end3 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @vsock_addr_bound(ptr nocapture noundef readonly %addr) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %svm_port = getelementptr inbounds %struct.sockaddr_vm, ptr %addr, i32 0, i32 2
  %0 = ptrtoint ptr %svm_port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %svm_port, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp = icmp ne i32 %1, -1
  ret i1 %cmp
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @vsock_addr_unbind(ptr nocapture noundef writeonly %addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %addr, i32 0, i32 16)
  %1 = ptrtoint ptr %addr to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 40, ptr %addr, align 4
  %svm_cid.i = getelementptr inbounds %struct.sockaddr_vm, ptr %addr, i32 0, i32 3
  %2 = ptrtoint ptr %svm_cid.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %svm_cid.i, align 4
  %svm_port.i = getelementptr inbounds %struct.sockaddr_vm, ptr %addr, i32 0, i32 2
  %3 = ptrtoint ptr %svm_port.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %svm_port.i, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @vsock_addr_equals_addr(ptr nocapture noundef readonly %addr, ptr nocapture noundef readonly %other) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %svm_cid = getelementptr inbounds %struct.sockaddr_vm, ptr %addr, i32 0, i32 3
  %0 = ptrtoint ptr %svm_cid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %svm_cid, align 4
  %svm_cid1 = getelementptr inbounds %struct.sockaddr_vm, ptr %other, i32 0, i32 3
  %2 = ptrtoint ptr %svm_cid1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %svm_cid1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp = icmp eq i32 %1, %3
  br i1 %cmp, label %land.rhs, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %svm_port = getelementptr inbounds %struct.sockaddr_vm, ptr %addr, i32 0, i32 2
  %4 = ptrtoint ptr %svm_port to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %svm_port, align 4
  %svm_port2 = getelementptr inbounds %struct.sockaddr_vm, ptr %other, i32 0, i32 2
  %6 = ptrtoint ptr %svm_port2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %svm_port2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp3 = icmp eq i32 %5, %7
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %8 = phi i1 [ false, %entry.land.end_crit_edge ], [ %cmp3, %land.rhs ]
  ret i1 %8
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @vsock_addr_cast(ptr noundef %addr, i32 noundef %len, ptr nocapture noundef writeonly %out_addr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %len)
  %cmp = icmp ult i32 %len, 16
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %out_addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %addr, ptr %out_addr, align 4
  %tobool.not.i = icmp eq ptr %addr, null
  br i1 %tobool.not.i, label %if.end.return_crit_edge, label %if.end.i

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end.i:                                         ; preds = %if.end
  %1 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %addr, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 40, i16 %2)
  %cmp.not.i = icmp eq i16 %2, 40
  br i1 %cmp.not.i, label %if.end3.i, label %if.end.i.return_crit_edge

if.end.i.return_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  %svm_flags.i = getelementptr inbounds %struct.sockaddr_vm, ptr %addr, i32 0, i32 4
  %3 = ptrtoint ptr %svm_flags.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %svm_flags.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %4)
  %tobool6.not.i = icmp ult i8 %4, 2
  %..i = select i1 %tobool6.not.i, i32 0, i32 -22
  br label %return

return:                                           ; preds = %if.end3.i, %if.end.i.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -14, %entry.return_crit_edge ], [ -14, %if.end.return_crit_edge ], [ -97, %if.end.i.return_crit_edge ], [ %..i, %if.end3.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  ret void
}

attributes #0 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = !{ptr @__ksymtab_vsock_addr_init, !1, !"__ksymtab_vsock_addr_init", i1 false, i1 false}
!1 = !{!"../net/vmw_vsock/vsock_addr.c", i32 21, i32 1}
!2 = !{ptr @__ksymtab_vsock_addr_validate, !3, !"__ksymtab_vsock_addr_validate", i1 false, i1 false}
!3 = !{!"../net/vmw_vsock/vsock_addr.c", i32 38, i32 1}
!4 = !{ptr @__ksymtab_vsock_addr_bound, !5, !"__ksymtab_vsock_addr_bound", i1 false, i1 false}
!5 = !{!"../net/vmw_vsock/vsock_addr.c", i32 44, i32 1}
!6 = !{ptr @__ksymtab_vsock_addr_unbind, !7, !"__ksymtab_vsock_addr_unbind", i1 false, i1 false}
!7 = !{!"../net/vmw_vsock/vsock_addr.c", i32 50, i32 1}
!8 = !{ptr @__ksymtab_vsock_addr_equals_addr, !9, !"__ksymtab_vsock_addr_equals_addr", i1 false, i1 false}
!9 = !{!"../net/vmw_vsock/vsock_addr.c", i32 58, i32 1}
!10 = !{ptr @__ksymtab_vsock_addr_cast, !11, !"__ksymtab_vsock_addr_cast", i1 false, i1 false}
!11 = !{!"../net/vmw_vsock/vsock_addr.c", i32 69, i32 1}
!12 = !{i32 1, !"wchar_size", i32 2}
!13 = !{i32 1, !"min_enum_size", i32 4}
!14 = !{i32 8, !"branch-target-enforcement", i32 0}
!15 = !{i32 8, !"sign-return-address", i32 0}
!16 = !{i32 8, !"sign-return-address-all", i32 0}
!17 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!18 = !{i32 7, !"uwtable", i32 1}
!19 = !{i32 7, !"frame-pointer", i32 2}
!20 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
