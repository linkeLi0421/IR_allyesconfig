; ModuleID = '/llk/IR_all_yes/drivers/firmware/imx/misc.c_pt.bc'
source_filename = "../drivers/firmware/imx/misc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+imx_sc_misc_set_control\22, \22a\22\09"
module asm "\09.weak\09__crc_imx_sc_misc_set_control\09\09\09\09"
module asm "\09.long\09__crc_imx_sc_misc_set_control\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_imx_sc_misc_set_control:\09\09\09\09\09"
module asm "\09.asciz \09\22imx_sc_misc_set_control\22\09\09\09\09\09"
module asm "__kstrtabns_imx_sc_misc_set_control:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+imx_sc_misc_get_control\22, \22a\22\09"
module asm "\09.weak\09__crc_imx_sc_misc_get_control\09\09\09\09"
module asm "\09.long\09__crc_imx_sc_misc_get_control\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_imx_sc_misc_get_control:\09\09\09\09\09"
module asm "\09.asciz \09\22imx_sc_misc_get_control\22\09\09\09\09\09"
module asm "__kstrtabns_imx_sc_misc_get_control:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+imx_sc_pm_cpu_start\22, \22a\22\09"
module asm "\09.weak\09__crc_imx_sc_pm_cpu_start\09\09\09\09"
module asm "\09.long\09__crc_imx_sc_pm_cpu_start\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_imx_sc_pm_cpu_start:\09\09\09\09\09"
module asm "\09.asciz \09\22imx_sc_pm_cpu_start\22\09\09\09\09\09"
module asm "__kstrtabns_imx_sc_pm_cpu_start:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.imx_sc_msg_req_misc_set_ctrl = type { %struct.imx_sc_rpc_msg, i32, i32, i16 }
%struct.imx_sc_rpc_msg = type { i8, i8, i8, i8 }
%struct.imx_sc_msg_req_misc_get_ctrl = type { %struct.imx_sc_rpc_msg, i32, i16 }
%struct.imx_sc_msg_req_cpu_start = type { %struct.imx_sc_rpc_msg, i32, i32, i16, i8 }

@__kstrtab_imx_sc_misc_set_control = external dso_local constant [0 x i8], align 1
@__kstrtabns_imx_sc_misc_set_control = external dso_local constant [0 x i8], align 1
@__ksymtab_imx_sc_misc_set_control = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @imx_sc_misc_set_control to i32), ptr @__kstrtab_imx_sc_misc_set_control, ptr @__kstrtabns_imx_sc_misc_set_control }, section "___ksymtab+imx_sc_misc_set_control", align 4
@__kstrtab_imx_sc_misc_get_control = external dso_local constant [0 x i8], align 1
@__kstrtabns_imx_sc_misc_get_control = external dso_local constant [0 x i8], align 1
@__ksymtab_imx_sc_misc_get_control = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @imx_sc_misc_get_control to i32), ptr @__kstrtab_imx_sc_misc_get_control, ptr @__kstrtabns_imx_sc_misc_get_control }, section "___ksymtab+imx_sc_misc_get_control", align 4
@__kstrtab_imx_sc_pm_cpu_start = external dso_local constant [0 x i8], align 1
@__kstrtabns_imx_sc_pm_cpu_start = external dso_local constant [0 x i8], align 1
@__ksymtab_imx_sc_pm_cpu_start = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @imx_sc_pm_cpu_start to i32), ptr @__kstrtab_imx_sc_pm_cpu_start, ptr @__kstrtabns_imx_sc_pm_cpu_start }, section "___ksymtab+imx_sc_pm_cpu_start", align 4
@llvm.compiler.used = appending global [3 x ptr] [ptr @__ksymtab_imx_sc_misc_get_control, ptr @__ksymtab_imx_sc_misc_set_control, ptr @__ksymtab_imx_sc_pm_cpu_start], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @imx_sc_misc_set_control(ptr noundef %ipc, i32 noundef %resource, i8 noundef zeroext %ctrl, i32 noundef %val) #0 align 64 {
entry:
  %msg = alloca %struct.imx_sc_msg_req_misc_set_ctrl, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %msg) #3
  %0 = getelementptr inbounds i8, ptr %msg, i32 12
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %0, align 4
  %2 = ptrtoint ptr %msg to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %msg, align 4
  %svc = getelementptr inbounds %struct.imx_sc_rpc_msg, ptr %msg, i32 0, i32 2
  %3 = ptrtoint ptr %svc to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 7, ptr %svc, align 2
  %func = getelementptr inbounds %struct.imx_sc_rpc_msg, ptr %msg, i32 0, i32 3
  %4 = ptrtoint ptr %func to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %func, align 1
  %size = getelementptr inbounds %struct.imx_sc_rpc_msg, ptr %msg, i32 0, i32 1
  %5 = ptrtoint ptr %size to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 4, ptr %size, align 1
  %conv = zext i8 %ctrl to i32
  %ctrl2 = getelementptr inbounds %struct.imx_sc_msg_req_misc_set_ctrl, ptr %msg, i32 0, i32 1
  %6 = ptrtoint ptr %ctrl2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv, ptr %ctrl2, align 4
  %val3 = getelementptr inbounds %struct.imx_sc_msg_req_misc_set_ctrl, ptr %msg, i32 0, i32 2
  %7 = ptrtoint ptr %val3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %val, ptr %val3, align 4
  %conv4 = trunc i32 %resource to i16
  %resource5 = getelementptr inbounds %struct.imx_sc_msg_req_misc_set_ctrl, ptr %msg, i32 0, i32 3
  %8 = ptrtoint ptr %resource5 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv4, ptr %resource5, align 4
  %call = call i32 @imx_scu_call_rpc(ptr noundef %ipc, ptr noundef nonnull %msg, i1 noundef zeroext true) #3
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %msg) #3
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @imx_scu_call_rpc(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @imx_sc_misc_get_control(ptr noundef %ipc, i32 noundef %resource, i8 noundef zeroext %ctrl, ptr noundef writeonly %val) #0 align 64 {
entry:
  %msg = alloca %struct.imx_sc_msg_req_misc_get_ctrl, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #3
  %0 = getelementptr inbounds i8, ptr %msg, i32 8
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %0, align 4
  %2 = ptrtoint ptr %msg to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %msg, align 4
  %svc = getelementptr inbounds %struct.imx_sc_rpc_msg, ptr %msg, i32 0, i32 2
  %3 = ptrtoint ptr %svc to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 7, ptr %svc, align 2
  %func = getelementptr inbounds %struct.imx_sc_rpc_msg, ptr %msg, i32 0, i32 3
  %4 = ptrtoint ptr %func to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 2, ptr %func, align 1
  %size = getelementptr inbounds %struct.imx_sc_rpc_msg, ptr %msg, i32 0, i32 1
  %5 = ptrtoint ptr %size to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 3, ptr %size, align 1
  %conv = zext i8 %ctrl to i32
  %ctrl2 = getelementptr inbounds %struct.imx_sc_msg_req_misc_get_ctrl, ptr %msg, i32 0, i32 1
  %6 = ptrtoint ptr %ctrl2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv, ptr %ctrl2, align 4
  %conv3 = trunc i32 %resource to i16
  %resource4 = getelementptr inbounds %struct.imx_sc_msg_req_misc_get_ctrl, ptr %msg, i32 0, i32 2
  %7 = ptrtoint ptr %resource4 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv3, ptr %resource4, align 4
  %call = call i32 @imx_scu_call_rpc(ptr noundef %ipc, ptr noundef nonnull %msg, i1 noundef zeroext true) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp ne i32 %call, 0
  %cmp.not = icmp eq ptr %val, null
  %or.cond = or i1 %cmp.not, %tobool.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.then6

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %8 = ptrtoint ptr %ctrl2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ctrl2, align 4
  %10 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #3
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @imx_sc_pm_cpu_start(ptr noundef %ipc, i32 noundef %resource, i1 noundef zeroext %enable, i64 noundef %phys_addr) #0 align 64 {
entry:
  %msg = alloca %struct.imx_sc_msg_req_cpu_start, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %enable to i8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %msg) #3
  %0 = getelementptr inbounds i8, ptr %msg, i32 12
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %0, align 4
  %2 = ptrtoint ptr %msg to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %msg, align 4
  %svc = getelementptr inbounds %struct.imx_sc_rpc_msg, ptr %msg, i32 0, i32 2
  %3 = ptrtoint ptr %svc to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 2, ptr %svc, align 2
  %func = getelementptr inbounds %struct.imx_sc_rpc_msg, ptr %msg, i32 0, i32 3
  %4 = ptrtoint ptr %func to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 11, ptr %func, align 1
  %size = getelementptr inbounds %struct.imx_sc_rpc_msg, ptr %msg, i32 0, i32 1
  %5 = ptrtoint ptr %size to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 4, ptr %size, align 1
  %shr = lshr i64 %phys_addr, 32
  %conv = trunc i64 %shr to i32
  %address_hi = getelementptr inbounds %struct.imx_sc_msg_req_cpu_start, ptr %msg, i32 0, i32 1
  %6 = ptrtoint ptr %address_hi to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv, ptr %address_hi, align 4
  %conv2 = trunc i64 %phys_addr to i32
  %address_lo = getelementptr inbounds %struct.imx_sc_msg_req_cpu_start, ptr %msg, i32 0, i32 2
  %7 = ptrtoint ptr %address_lo to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv2, ptr %address_lo, align 4
  %conv3 = trunc i32 %resource to i16
  %resource4 = getelementptr inbounds %struct.imx_sc_msg_req_cpu_start, ptr %msg, i32 0, i32 3
  %8 = ptrtoint ptr %resource4 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv3, ptr %resource4, align 4
  %enable6 = getelementptr inbounds %struct.imx_sc_msg_req_cpu_start, ptr %msg, i32 0, i32 4
  %9 = ptrtoint ptr %enable6 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %frombool, ptr %enable6, align 2
  %call = call i32 @imx_scu_call_rpc(ptr noundef %ipc, ptr noundef nonnull %msg, i1 noundef zeroext true) #3
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %msg) #3
  ret i32 %call
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

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

!llvm.asan.globals = !{!0, !2, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @__ksymtab_imx_sc_misc_set_control, !1, !"__ksymtab_imx_sc_misc_set_control", i1 false, i1 false}
!1 = !{!"../drivers/firmware/imx/misc.c", i32 68, i32 1}
!2 = !{ptr @__ksymtab_imx_sc_misc_get_control, !3, !"__ksymtab_imx_sc_misc_get_control", i1 false, i1 false}
!3 = !{!"../drivers/firmware/imx/misc.c", i32 107, i32 1}
!4 = !{ptr @__ksymtab_imx_sc_pm_cpu_start, !5, !"__ksymtab_imx_sc_pm_cpu_start", i1 false, i1 false}
!5 = !{!"../drivers/firmware/imx/misc.c", i32 137, i32 1}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
