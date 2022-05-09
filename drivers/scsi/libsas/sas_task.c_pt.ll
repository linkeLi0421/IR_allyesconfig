; ModuleID = '/llk/IR_all_yes/drivers/scsi/libsas/sas_task.c_pt.bc'
source_filename = "../drivers/scsi/libsas/sas_task.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+sas_ssp_task_response\22, \22a\22\09"
module asm "\09.weak\09__crc_sas_ssp_task_response\09\09\09\09"
module asm "\09.long\09__crc_sas_ssp_task_response\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sas_ssp_task_response:\09\09\09\09\09"
module asm "\09.asciz \09\22sas_ssp_task_response\22\09\09\09\09\09"
module asm "__kstrtabns_sas_ssp_task_response:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.sas_task = type { ptr, %struct.spinlock, i32, i32, %union.anon.89, ptr, i32, i32, i8, %struct.task_status_struct, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%union.anon.89 = type { %struct.sas_smp_task }
%struct.sas_smp_task = type { %struct.scatterlist, %struct.scatterlist }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.task_status_struct = type { i32, i32, i32, [96 x i8], i32, i32 }
%struct.ssp_response_iu = type { [10 x i8], i8, i8, i32, i32, i32, %union.anon.93 }
%union.anon.93 = type { %struct.anon.94 }
%struct.anon.94 = type { %struct.anon.95, [0 x i8] }
%struct.anon.95 = type {}
%struct.domain_device = type { %struct.spinlock, i32, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr, %struct.list_head, %struct.list_head, i32, i32, ptr, [8 x i8], [3 x i8], [32 x i8], [101 x i8], %union.anon.83, ptr, i32, %struct.kref, [116 x i8] }
%struct.list_head = type { ptr, ptr }
%union.anon.83 = type { %struct.sata_device }
%struct.sata_device = type { i32, i8, ptr, ptr, [112 x i8], %struct.smp_resp, [24 x i8], [44 x i8] }
%struct.smp_resp = type { i8, i8, i8, i8, %union.anon.85 }
%union.anon.85 = type { %struct.report_phy_sata_resp }
%struct.report_phy_sata_resp = type { [5 x i8], i8, i8, i8, i32, [8 x i8], %struct.dev_to_host_fis, i32, [8 x i8], i32 }
%struct.dev_to_host_fis = type { i8, i8, i8, i8, i8, %union.anon.86, %union.anon.87, i8, i8, i8, i8, i8, %union.anon.88, i8, i8, i8, i32 }
%union.anon.86 = type { i8 }
%union.anon.87 = type { i8 }
%union.anon.88 = type { i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }

@sas_ssp_task_response._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 31, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"dev %016llx sent sense data, but stat(0x%x) is not CHECK CONDITION\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sas_ssp_task_response\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/scsi/libsas/sas_task.c\00", [33 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sas_ssp_task_response._entry_ptr = internal global ptr @sas_ssp_task_response._entry, section ".printk_index", align 4
@__kstrtab_sas_ssp_task_response = external dso_local constant [0 x i8], align 1
@__kstrtabns_sas_ssp_task_response = external dso_local constant [0 x i8], align 1
@__ksymtab_sas_ssp_task_response = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sas_ssp_task_response to i32), ptr @__kstrtab_sas_ssp_task_response, ptr @__kstrtabns_sas_ssp_task_response }, section "___ksymtab_gpl+sas_ssp_task_response", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 2, i64 0, i64 1, i64 2]
@___asan_gen_.5 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.20 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.21 = private constant [34 x i8] c"../drivers/scsi/libsas/sas_task.c\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 30, i32 4 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @__ksymtab_sas_ssp_task_response, ptr @sas_ssp_task_response._entry, ptr @sas_ssp_task_response._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sas_ssp_task_response._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sas_ssp_task_response(ptr noundef %dev, ptr nocapture noundef %task, ptr nocapture noundef readonly %iu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %task_status = getelementptr inbounds %struct.sas_task, ptr %task, i32 0, i32 9
  %0 = ptrtoint ptr %task_status to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %task_status, align 4
  %datapres = getelementptr inbounds %struct.ssp_response_iu, ptr %iu, i32 0, i32 1
  %1 = ptrtoint ptr %datapres to i32
  call void @__asan_load1_noabort(i32 %1)
  %bf.load = load i8, ptr %datapres, align 1
  %trunc = trunc i8 %bf.load to i2
  %2 = zext i2 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i2 %trunc, label %if.else34 [
    i2 0, label %if.then
    i2 1, label %if.then9
    i2 -2, label %if.then19
  ]

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %status = getelementptr inbounds %struct.ssp_response_iu, ptr %iu, i32 0, i32 2
  %3 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %status, align 1
  %conv2 = zext i8 %4 to i32
  %stat = getelementptr inbounds %struct.sas_task, ptr %task, i32 0, i32 9, i32 1
  %5 = ptrtoint ptr %stat to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %conv2, ptr %stat, align 4
  br label %if.end38

if.then9:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx = getelementptr %struct.ssp_response_iu, ptr %iu, i32 1, i32 0, i32 3
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  %conv10 = zext i8 %7 to i32
  %stat11 = getelementptr inbounds %struct.sas_task, ptr %task, i32 0, i32 9, i32 1
  %8 = ptrtoint ptr %stat11 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv10, ptr %stat11, align 4
  br label %if.end38

if.then19:                                        ; preds = %entry
  %stat20 = getelementptr inbounds %struct.sas_task, ptr %task, i32 0, i32 9, i32 1
  %9 = ptrtoint ptr %stat20 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 2, ptr %stat20, align 4
  %sense_data_len = getelementptr inbounds %struct.ssp_response_iu, ptr %iu, i32 0, i32 4
  %10 = ptrtoint ptr %sense_data_len to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %sense_data_len, align 1
  %12 = tail call i32 @llvm.smin.i32(i32 %11, i32 96)
  %buf_valid_size = getelementptr inbounds %struct.sas_task, ptr %task, i32 0, i32 9, i32 2
  %13 = ptrtoint ptr %buf_valid_size to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %buf_valid_size, align 4
  %buf = getelementptr inbounds %struct.sas_task, ptr %task, i32 0, i32 9, i32 3
  %sense_data = getelementptr inbounds %struct.ssp_response_iu, ptr %iu, i32 1
  %14 = call ptr @memcpy(ptr %buf, ptr %sense_data, i32 %12)
  %status25 = getelementptr inbounds %struct.ssp_response_iu, ptr %iu, i32 0, i32 2
  %15 = ptrtoint ptr %status25 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %status25, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %16)
  %cmp27.not = icmp eq i8 %16, 2
  br i1 %cmp27.not, label %if.then19.if.end38_crit_edge, label %do.end

if.then19.if.end38_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end38

do.end:                                           ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #5
  %conv26 = zext i8 %16 to i32
  %17 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %task, align 4
  %sas_addr = getelementptr inbounds %struct.domain_device, ptr %18, i32 0, i32 15
  %19 = ptrtoint ptr %sas_addr to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %sas_addr, align 16
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str, i64 noundef %20, i32 noundef %conv26) #6
  br label %if.end38

if.else34:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %stat35 = getelementptr inbounds %struct.sas_task, ptr %task, i32 0, i32 9, i32 1
  %21 = ptrtoint ptr %stat35 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 2, ptr %stat35, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.else34, %do.end, %if.then19.if.end38_crit_edge, %if.then9, %if.then
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/scsi/libsas/sas_task.c", i32 30, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @sas_ssp_task_response._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @sas_ssp_task_response._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @__ksymtab_sas_ssp_task_response, !9, !"__ksymtab_sas_ssp_task_response", i1 false, i1 false}
!9 = !{!"../drivers/scsi/libsas/sas_task.c", i32 37, i32 1}
!10 = !{i32 1, !"wchar_size", i32 2}
!11 = !{i32 1, !"min_enum_size", i32 4}
!12 = !{i32 8, !"branch-target-enforcement", i32 0}
!13 = !{i32 8, !"sign-return-address", i32 0}
!14 = !{i32 8, !"sign-return-address-all", i32 0}
!15 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
