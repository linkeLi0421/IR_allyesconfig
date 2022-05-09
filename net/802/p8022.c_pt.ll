; ModuleID = '/llk/IR_all_yes/net/802/p8022.c_pt.bc'
source_filename = "../net/802/p8022.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+register_8022_client\22, \22a\22\09"
module asm "\09.weak\09__crc_register_8022_client\09\09\09\09"
module asm "\09.long\09__crc_register_8022_client\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_register_8022_client:\09\09\09\09\09"
module asm "\09.asciz \09\22register_8022_client\22\09\09\09\09\09"
module asm "__kstrtabns_register_8022_client:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+unregister_8022_client\22, \22a\22\09"
module asm "\09.weak\09__crc_unregister_8022_client\09\09\09\09"
module asm "\09.long\09__crc_unregister_8022_client\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_unregister_8022_client:\09\09\09\09\09"
module asm "\09.asciz \09\22unregister_8022_client\22\09\09\09\09\09"
module asm "__kstrtabns_unregister_8022_client:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.datalink_proto = type { [8 x i8], ptr, i16, ptr, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.llc_sap = type { i8, i8, i8, %struct.refcount_struct, ptr, %struct.llc_addr, %struct.list_head, %struct.spinlock, i32, [64 x %struct.hlist_nulls_head], [64 x %struct.hlist_head], %struct.callback_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.llc_addr = type { i8, [6 x i8] }
%struct.spinlock = type { %union.anon.6 }
%union.anon.6 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.7 }
%union.anon.7 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_nulls_head = type { ptr }
%struct.hlist_head = type { ptr }
%struct.callback_head = type { ptr, ptr }

@__kstrtab_register_8022_client = external dso_local constant [0 x i8], align 1
@__kstrtabns_register_8022_client = external dso_local constant [0 x i8], align 1
@__ksymtab_register_8022_client = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @register_8022_client to i32), ptr @__kstrtab_register_8022_client, ptr @__kstrtabns_register_8022_client }, section "___ksymtab+register_8022_client", align 4
@__kstrtab_unregister_8022_client = external dso_local constant [0 x i8], align 1
@__kstrtabns_unregister_8022_client = external dso_local constant [0 x i8], align 1
@__ksymtab_unregister_8022_client = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @unregister_8022_client to i32), ptr @__kstrtab_unregister_8022_client, ptr @__kstrtabns_unregister_8022_client }, section "___ksymtab+unregister_8022_client", align 4
@__UNIQUE_ID_file347 = internal constant [25 x i8] c"p8022.file=net/802/p8022\00", section ".modinfo", align 1
@__UNIQUE_ID_license348 = internal constant [18 x i8] c"p8022.license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_file347, ptr @__UNIQUE_ID_license348, ptr @__ksymtab_register_8022_client, ptr @__ksymtab_unregister_8022_client], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @register_8022_client(i8 noundef zeroext %type, ptr noundef %func) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 2592, i32 noundef 32) #7
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %if.then

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6

if.then:                                          ; preds = %entry
  %1 = ptrtoint ptr %call7.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %type, ptr %call7.i, align 8
  %header_length = getelementptr inbounds %struct.datalink_proto, ptr %call7.i, i32 0, i32 2
  %2 = ptrtoint ptr %header_length to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 3, ptr %header_length, align 4
  %request = getelementptr inbounds %struct.datalink_proto, ptr %call7.i, i32 0, i32 4
  %3 = ptrtoint ptr %request to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @p8022_request, ptr %request, align 4
  %call2 = tail call ptr @llc_sap_open(i8 noundef zeroext %type, ptr noundef %func) #4
  %sap = getelementptr inbounds %struct.datalink_proto, ptr %call7.i, i32 0, i32 1
  %4 = ptrtoint ptr %sap to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call2, ptr %sap, align 8
  %tobool4.not = icmp eq ptr %call2, null
  br i1 %tobool4.not, label %if.then5, label %if.then.if.end6_crit_edge

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @kfree(ptr noundef nonnull %call7.i) #4
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.then.if.end6_crit_edge, %entry.if.end6_crit_edge
  %proto.0 = phi ptr [ %call7.i, %if.then.if.end6_crit_edge ], [ null, %if.then5 ], [ null, %entry.if.end6_crit_edge ]
  ret ptr %proto.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @p8022_request(ptr nocapture noundef readonly %dl, ptr noundef %skb, ptr noundef %dest) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %sap = getelementptr inbounds %struct.datalink_proto, ptr %dl, i32 0, i32 1
  %0 = ptrtoint ptr %sap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sap, align 4
  %laddr = getelementptr inbounds %struct.llc_sap, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %laddr to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %laddr, align 4
  %call = tail call i32 @llc_build_and_send_ui_pkt(ptr noundef %1, ptr noundef %skb, ptr noundef %dest, i8 noundef zeroext %3) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @llc_sap_open(i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @unregister_8022_client(ptr noundef %proto) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %sap = getelementptr inbounds %struct.datalink_proto, ptr %proto, i32 0, i32 1
  %0 = ptrtoint ptr %sap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sap, align 4
  %refcnt.i = getelementptr inbounds %struct.llc_sap, ptr %1, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !16
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #4
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #4, !srcloc !17
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.llc_sap_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !18

if.end5.i.i.i.i.llc_sap_put.exit_crit_edge:       ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %llc_sap_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 3) #4
  br label %llc_sap_put.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !19
  tail call void @llc_sap_close(ptr noundef %1) #4
  br label %llc_sap_put.exit

llc_sap_put.exit:                                 ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.llc_sap_put.exit_crit_edge
  tail call void @kfree(ptr noundef %proto) #4
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @llc_build_and_send_ui_pkt(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @llc_sap_close(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6}
!llvm.module.flags = !{!7, !8, !9, !10, !11, !12, !13, !14}
!llvm.ident = !{!15}

!0 = !{ptr @__ksymtab_register_8022_client, !1, !"__ksymtab_register_8022_client", i1 false, i1 false}
!1 = !{!"../net/802/p8022.c", i32 60, i32 1}
!2 = !{ptr @__ksymtab_unregister_8022_client, !3, !"__ksymtab_unregister_8022_client", i1 false, i1 false}
!3 = !{!"../net/802/p8022.c", i32 61, i32 1}
!4 = !{ptr @__UNIQUE_ID_file347, !5, !"__UNIQUE_ID_file347", i1 false, i1 false}
!5 = !{!"../net/802/p8022.c", i32 63, i32 1}
!6 = !{ptr @__UNIQUE_ID_license348, !5, !"__UNIQUE_ID_license348", i1 false, i1 false}
!7 = !{i32 1, !"wchar_size", i32 2}
!8 = !{i32 1, !"min_enum_size", i32 4}
!9 = !{i32 8, !"branch-target-enforcement", i32 0}
!10 = !{i32 8, !"sign-return-address", i32 0}
!11 = !{i32 8, !"sign-return-address-all", i32 0}
!12 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!13 = !{i32 7, !"uwtable", i32 1}
!14 = !{i32 7, !"frame-pointer", i32 2}
!15 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!16 = !{i64 2148429325}
!17 = !{i64 2148343765, i64 2148343797, i64 2148343826, i64 2148343860, i64 2148343891, i64 2148343914}
!18 = !{!"branch_weights", i32 2000, i32 1}
!19 = !{i64 2149305439}
