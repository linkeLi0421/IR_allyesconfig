; ModuleID = '/llk/IR_all_yes/drivers/virtio/virtio_dma_buf.c_pt.bc'
source_filename = "../drivers/virtio/virtio_dma_buf.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+virtio_dma_buf_export\22, \22a\22\09"
module asm "\09.weak\09__crc_virtio_dma_buf_export\09\09\09\09"
module asm "\09.long\09__crc_virtio_dma_buf_export\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_virtio_dma_buf_export:\09\09\09\09\09"
module asm "\09.asciz \09\22virtio_dma_buf_export\22\09\09\09\09\09"
module asm "__kstrtabns_virtio_dma_buf_export:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+virtio_dma_buf_attach\22, \22a\22\09"
module asm "\09.weak\09__crc_virtio_dma_buf_attach\09\09\09\09"
module asm "\09.long\09__crc_virtio_dma_buf_attach\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_virtio_dma_buf_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22virtio_dma_buf_attach\22\09\09\09\09\09"
module asm "__kstrtabns_virtio_dma_buf_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+is_virtio_dma_buf\22, \22a\22\09"
module asm "\09.weak\09__crc_is_virtio_dma_buf\09\09\09\09"
module asm "\09.long\09__crc_is_virtio_dma_buf\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_is_virtio_dma_buf:\09\09\09\09\09"
module asm "\09.asciz \09\22is_virtio_dma_buf\22\09\09\09\09\09"
module asm "__kstrtabns_is_virtio_dma_buf:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+virtio_dma_buf_get_uuid\22, \22a\22\09"
module asm "\09.weak\09__crc_virtio_dma_buf_get_uuid\09\09\09\09"
module asm "\09.long\09__crc_virtio_dma_buf_get_uuid\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_virtio_dma_buf_get_uuid:\09\09\09\09\09"
module asm "\09.asciz \09\22virtio_dma_buf_get_uuid\22\09\09\09\09\09"
module asm "__kstrtabns_virtio_dma_buf_get_uuid:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.dma_buf_export_info = type { ptr, ptr, ptr, i32, i32, ptr, ptr }
%struct.dma_buf_ops = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.virtio_dma_buf_ops = type { %struct.dma_buf_ops, ptr, ptr }
%struct.dma_buf = type { i32, ptr, %struct.list_head, ptr, %struct.mutex, i32, %struct.dma_buf_map, ptr, ptr, %struct.spinlock, ptr, %struct.list_head, ptr, ptr, %struct.wait_queue_head, %struct.dma_buf_poll_cb_t, %struct.dma_buf_poll_cb_t, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.dma_buf_map = type { %union.anon.71, i8 }
%union.anon.71 = type { ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dma_buf_poll_cb_t = type { %struct.dma_fence_cb, ptr, i32 }
%struct.dma_fence_cb = type { %struct.list_head, ptr }

@__kstrtab_virtio_dma_buf_export = external dso_local constant [0 x i8], align 1
@__kstrtabns_virtio_dma_buf_export = external dso_local constant [0 x i8], align 1
@__ksymtab_virtio_dma_buf_export = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @virtio_dma_buf_export to i32), ptr @__kstrtab_virtio_dma_buf_export, ptr @__kstrtabns_virtio_dma_buf_export }, section "___ksymtab+virtio_dma_buf_export", align 4
@__kstrtab_virtio_dma_buf_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_virtio_dma_buf_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_virtio_dma_buf_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @virtio_dma_buf_attach to i32), ptr @__kstrtab_virtio_dma_buf_attach, ptr @__kstrtabns_virtio_dma_buf_attach }, section "___ksymtab+virtio_dma_buf_attach", align 4
@__kstrtab_is_virtio_dma_buf = external dso_local constant [0 x i8], align 1
@__kstrtabns_is_virtio_dma_buf = external dso_local constant [0 x i8], align 1
@__ksymtab_is_virtio_dma_buf = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @is_virtio_dma_buf to i32), ptr @__kstrtab_is_virtio_dma_buf, ptr @__kstrtabns_is_virtio_dma_buf }, section "___ksymtab+is_virtio_dma_buf", align 4
@__kstrtab_virtio_dma_buf_get_uuid = external dso_local constant [0 x i8], align 1
@__kstrtabns_virtio_dma_buf_get_uuid = external dso_local constant [0 x i8], align 1
@__ksymtab_virtio_dma_buf_get_uuid = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @virtio_dma_buf_get_uuid to i32), ptr @__kstrtab_virtio_dma_buf_get_uuid, ptr @__kstrtabns_virtio_dma_buf_get_uuid }, section "___ksymtab+virtio_dma_buf_get_uuid", align 4
@__UNIQUE_ID_file233 = internal constant [50 x i8] c"virtio_dma_buf.file=drivers/virtio/virtio_dma_buf\00", section ".modinfo", align 1
@__UNIQUE_ID_license234 = internal constant [27 x i8] c"virtio_dma_buf.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_import_ns235 = internal constant [33 x i8] c"virtio_dma_buf.import_ns=DMA_BUF\00", section ".modinfo", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_file233, ptr @__UNIQUE_ID_import_ns235, ptr @__UNIQUE_ID_license234, ptr @__ksymtab_is_virtio_dma_buf, ptr @__ksymtab_virtio_dma_buf_attach, ptr @__ksymtab_virtio_dma_buf_export, ptr @__ksymtab_virtio_dma_buf_get_uuid], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @virtio_dma_buf_export(ptr noundef %exp_info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %ops = getelementptr inbounds %struct.dma_buf_export_info, ptr %exp_info, i32 0, i32 2
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %attach = getelementptr inbounds %struct.dma_buf_ops, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %attach to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %attach, align 4
  %cmp.not = icmp eq ptr %3, @virtio_dma_buf_attach
  br i1 %cmp.not, label %lor.lhs.false3, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %get_uuid = getelementptr inbounds %struct.virtio_dma_buf_ops, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %get_uuid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %get_uuid, align 4
  %tobool4.not = icmp eq ptr %5, null
  br i1 %tobool4.not, label %lor.lhs.false3.cleanup_crit_edge, label %if.end

lor.lhs.false3.cleanup_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #5
  %call5 = tail call ptr @dma_buf_export(ptr noundef %exp_info) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false3.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call5, %if.end ], [ inttoptr (i32 -22 to ptr), %lor.lhs.false3.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %lor.lhs.false.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @virtio_dma_buf_attach(ptr noundef %dma_buf, ptr noundef %attach) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %ops1 = getelementptr inbounds %struct.dma_buf, ptr %dma_buf, i32 0, i32 3
  %0 = ptrtoint ptr %ops1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops1, align 4
  %device_attach = getelementptr inbounds %struct.virtio_dma_buf_ops, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %device_attach to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device_attach, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end5

if.then:                                          ; preds = %entry
  %call = tail call i32 %3(ptr noundef %dma_buf, ptr noundef %attach) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.then.if.end5_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end5

if.end5:                                          ; preds = %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ %call, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_buf_export(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @is_virtio_dma_buf(ptr nocapture noundef readonly %dma_buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %ops = getelementptr inbounds %struct.dma_buf, ptr %dma_buf, i32 0, i32 3
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %attach = getelementptr inbounds %struct.dma_buf_ops, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %attach to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %attach, align 4
  %cmp = icmp eq ptr %3, @virtio_dma_buf_attach
  ret i1 %cmp
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @virtio_dma_buf_get_uuid(ptr noundef %dma_buf, ptr noundef %uuid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %ops1 = getelementptr inbounds %struct.dma_buf, ptr %dma_buf, i32 0, i32 3
  %0 = ptrtoint ptr %ops1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops1, align 4
  %attach.i = getelementptr inbounds %struct.dma_buf_ops, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %attach.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %attach.i, align 4
  %cmp.i = icmp eq ptr %3, @virtio_dma_buf_attach
  br i1 %cmp.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %get_uuid = getelementptr inbounds %struct.virtio_dma_buf_ops, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %get_uuid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %get_uuid, align 4
  %call2 = tail call i32 %5(ptr noundef %dma_buf, ptr noundef %uuid) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11}
!llvm.module.flags = !{!13, !14, !15, !16, !17, !18, !19, !20}
!llvm.ident = !{!21}

!0 = !{ptr @__ksymtab_virtio_dma_buf_export, !1, !"__ksymtab_virtio_dma_buf_export", i1 false, i1 false}
!1 = !{!"../drivers/virtio/virtio_dma_buf.c", i32 35, i32 1}
!2 = !{ptr @__ksymtab_virtio_dma_buf_attach, !3, !"__ksymtab_virtio_dma_buf_attach", i1 false, i1 false}
!3 = !{!"../drivers/virtio/virtio_dma_buf.c", i32 55, i32 1}
!4 = !{ptr @__ksymtab_is_virtio_dma_buf, !5, !"__ksymtab_is_virtio_dma_buf", i1 false, i1 false}
!5 = !{!"../drivers/virtio/virtio_dma_buf.c", i32 65, i32 1}
!6 = !{ptr @__ksymtab_virtio_dma_buf_get_uuid, !7, !"__ksymtab_virtio_dma_buf_get_uuid", i1 false, i1 false}
!7 = !{!"../drivers/virtio/virtio_dma_buf.c", i32 86, i32 1}
!8 = !{ptr @__UNIQUE_ID_file233, !9, !"__UNIQUE_ID_file233", i1 false, i1 false}
!9 = !{!"../drivers/virtio/virtio_dma_buf.c", i32 88, i32 1}
!10 = !{ptr @__UNIQUE_ID_license234, !9, !"__UNIQUE_ID_license234", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_import_ns235, !12, !"__UNIQUE_ID_import_ns235", i1 false, i1 false}
!12 = !{!"../drivers/virtio/virtio_dma_buf.c", i32 89, i32 1}
!13 = !{i32 1, !"wchar_size", i32 2}
!14 = !{i32 1, !"min_enum_size", i32 4}
!15 = !{i32 8, !"branch-target-enforcement", i32 0}
!16 = !{i32 8, !"sign-return-address", i32 0}
!17 = !{i32 8, !"sign-return-address-all", i32 0}
!18 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!19 = !{i32 7, !"uwtable", i32 1}
!20 = !{i32 7, !"frame-pointer", i32 2}
!21 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
