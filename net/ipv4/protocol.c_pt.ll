; ModuleID = '/llk/IR_all_yes/net/ipv4/protocol.c_pt.bc'
source_filename = "../net/ipv4/protocol.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+inet_protos\22, \22a\22\09"
module asm "\09.weak\09__crc_inet_protos\09\09\09\09"
module asm "\09.long\09__crc_inet_protos\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inet_protos:\09\09\09\09\09"
module asm "\09.asciz \09\22inet_protos\22\09\09\09\09\09"
module asm "__kstrtabns_inet_protos:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+inet_offloads\22, \22a\22\09"
module asm "\09.weak\09__crc_inet_offloads\09\09\09\09"
module asm "\09.long\09__crc_inet_offloads\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inet_offloads:\09\09\09\09\09"
module asm "\09.asciz \09\22inet_offloads\22\09\09\09\09\09"
module asm "__kstrtabns_inet_offloads:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+inet_add_protocol\22, \22a\22\09"
module asm "\09.weak\09__crc_inet_add_protocol\09\09\09\09"
module asm "\09.long\09__crc_inet_add_protocol\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inet_add_protocol:\09\09\09\09\09"
module asm "\09.asciz \09\22inet_add_protocol\22\09\09\09\09\09"
module asm "__kstrtabns_inet_add_protocol:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+inet_add_offload\22, \22a\22\09"
module asm "\09.weak\09__crc_inet_add_offload\09\09\09\09"
module asm "\09.long\09__crc_inet_add_offload\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inet_add_offload:\09\09\09\09\09"
module asm "\09.asciz \09\22inet_add_offload\22\09\09\09\09\09"
module asm "__kstrtabns_inet_add_offload:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+inet_del_protocol\22, \22a\22\09"
module asm "\09.weak\09__crc_inet_del_protocol\09\09\09\09"
module asm "\09.long\09__crc_inet_del_protocol\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inet_del_protocol:\09\09\09\09\09"
module asm "\09.asciz \09\22inet_del_protocol\22\09\09\09\09\09"
module asm "__kstrtabns_inet_del_protocol:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+inet_del_offload\22, \22a\22\09"
module asm "\09.weak\09__crc_inet_del_offload\09\09\09\09"
module asm "\09.long\09__crc_inet_del_offload\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inet_del_offload:\09\09\09\09\09"
module asm "\09.asciz \09\22inet_del_offload\22\09\09\09\09\09"
module asm "__kstrtabns_inet_del_offload:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }

@inet_protos = dso_local global [256 x ptr] zeroinitializer, section ".data..read_mostly", align 4
@__kstrtab_inet_protos = external dso_local constant [0 x i8], align 1
@__kstrtabns_inet_protos = external dso_local constant [0 x i8], align 1
@__ksymtab_inet_protos = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inet_protos to i32), ptr @__kstrtab_inet_protos, ptr @__kstrtabns_inet_protos }, section "___ksymtab+inet_protos", align 4
@inet_offloads = dso_local global [256 x ptr] zeroinitializer, section ".data..read_mostly", align 4
@__kstrtab_inet_offloads = external dso_local constant [0 x i8], align 1
@__kstrtabns_inet_offloads = external dso_local constant [0 x i8], align 1
@__ksymtab_inet_offloads = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inet_offloads to i32), ptr @__kstrtab_inet_offloads, ptr @__kstrtabns_inet_offloads }, section "___ksymtab+inet_offloads", align 4
@__kstrtab_inet_add_protocol = external dso_local constant [0 x i8], align 1
@__kstrtabns_inet_add_protocol = external dso_local constant [0 x i8], align 1
@__ksymtab_inet_add_protocol = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inet_add_protocol to i32), ptr @__kstrtab_inet_add_protocol, ptr @__kstrtabns_inet_add_protocol }, section "___ksymtab+inet_add_protocol", align 4
@__kstrtab_inet_add_offload = external dso_local constant [0 x i8], align 1
@__kstrtabns_inet_add_offload = external dso_local constant [0 x i8], align 1
@__ksymtab_inet_add_offload = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inet_add_offload to i32), ptr @__kstrtab_inet_add_offload, ptr @__kstrtabns_inet_add_offload }, section "___ksymtab+inet_add_offload", align 4
@__kstrtab_inet_del_protocol = external dso_local constant [0 x i8], align 1
@__kstrtabns_inet_del_protocol = external dso_local constant [0 x i8], align 1
@__ksymtab_inet_del_protocol = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inet_del_protocol to i32), ptr @__kstrtab_inet_del_protocol, ptr @__kstrtabns_inet_del_protocol }, section "___ksymtab+inet_del_protocol", align 4
@__kstrtab_inet_del_offload = external dso_local constant [0 x i8], align 1
@__kstrtabns_inet_del_offload = external dso_local constant [0 x i8], align 1
@__ksymtab_inet_del_offload = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inet_del_offload to i32), ptr @__kstrtab_inet_del_offload, ptr @__kstrtabns_inet_del_offload }, section "___ksymtab+inet_del_offload", align 4
@llvm.compiler.used = appending global [6 x ptr] [ptr @__ksymtab_inet_add_offload, ptr @__ksymtab_inet_add_protocol, ptr @__ksymtab_inet_del_offload, ptr @__ksymtab_inet_del_protocol, ptr @__ksymtab_inet_offloads, ptr @__ksymtab_inet_protos], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @inet_add_protocol(ptr noundef %prot, i8 noundef zeroext %protocol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %idxprom = zext i8 %protocol to i32
  %arrayidx = getelementptr [256 x ptr], ptr @inet_protos, i32 0, i32 %idxprom
  %call.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx, i32 noundef 4) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #3, !srcloc !25
  %0 = ptrtoint ptr %prot to i32
  tail call void @llvm.prefetch.p0(ptr %arrayidx, i32 1, i32 3, i32 1) #3
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %entry
  %1 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %arrayidx, i32 0, i32 %0) #3, !srcloc !26
  %asmresult.i = extractvalue { i32, i32 } %1, 0
  %tobool.not.i = icmp eq i32 %asmresult.i, 0
  br i1 %tobool.not.i, label %__cmpxchg.exit, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body.i

__cmpxchg.exit:                                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #5
  %asmresult1.i = extractvalue { i32, i32 } %1, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #3, !srcloc !27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult1.i)
  %tobool.not = icmp ne i32 %asmresult1.i, 0
  %cond = sext i1 %tobool.not to i32
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @inet_add_offload(ptr noundef %prot, i8 noundef zeroext %protocol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %idxprom = zext i8 %protocol to i32
  %arrayidx = getelementptr [256 x ptr], ptr @inet_offloads, i32 0, i32 %idxprom
  %call.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx, i32 noundef 4) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #3, !srcloc !28
  %0 = ptrtoint ptr %prot to i32
  tail call void @llvm.prefetch.p0(ptr %arrayidx, i32 1, i32 3, i32 1) #3
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %entry
  %1 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %arrayidx, i32 0, i32 %0) #3, !srcloc !26
  %asmresult.i = extractvalue { i32, i32 } %1, 0
  %tobool.not.i = icmp eq i32 %asmresult.i, 0
  br i1 %tobool.not.i, label %__cmpxchg.exit, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body.i

__cmpxchg.exit:                                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #5
  %asmresult1.i = extractvalue { i32, i32 } %1, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #3, !srcloc !29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult1.i)
  %tobool.not = icmp ne i32 %asmresult1.i, 0
  %cond = sext i1 %tobool.not to i32
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @inet_del_protocol(ptr noundef %prot, i8 noundef zeroext %protocol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %idxprom = zext i8 %protocol to i32
  %arrayidx = getelementptr [256 x ptr], ptr @inet_protos, i32 0, i32 %idxprom
  %call.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx, i32 noundef 4) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #3, !srcloc !30
  %0 = ptrtoint ptr %prot to i32
  tail call void @llvm.prefetch.p0(ptr %arrayidx, i32 1, i32 3, i32 1) #3
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %entry
  %1 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %arrayidx, i32 %0, i32 0) #3, !srcloc !26
  %asmresult.i = extractvalue { i32, i32 } %1, 0
  %tobool.not.i = icmp eq i32 %asmresult.i, 0
  br i1 %tobool.not.i, label %__cmpxchg.exit, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body.i

__cmpxchg.exit:                                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #5
  %asmresult1.i = extractvalue { i32, i32 } %1, 1
  %2 = inttoptr i32 %asmresult1.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #3, !srcloc !31
  %cmp = icmp ne ptr %2, %prot
  %cond = sext i1 %cmp to i32
  tail call void @synchronize_net() #3
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_net() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @inet_del_offload(ptr noundef %prot, i8 noundef zeroext %protocol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %idxprom = zext i8 %protocol to i32
  %arrayidx = getelementptr [256 x ptr], ptr @inet_offloads, i32 0, i32 %idxprom
  %call.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx, i32 noundef 4) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #3, !srcloc !32
  %0 = ptrtoint ptr %prot to i32
  tail call void @llvm.prefetch.p0(ptr %arrayidx, i32 1, i32 3, i32 1) #3
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %entry
  %1 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %arrayidx, i32 %0, i32 0) #3, !srcloc !26
  %asmresult.i = extractvalue { i32, i32 } %1, 0
  %tobool.not.i = icmp eq i32 %asmresult.i, 0
  br i1 %tobool.not.i, label %__cmpxchg.exit, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body.i

__cmpxchg.exit:                                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #5
  %asmresult1.i = extractvalue { i32, i32 } %1, 1
  %2 = inttoptr i32 %asmresult1.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #3, !srcloc !33
  %cmp = icmp ne ptr %2, %prot
  %cond = sext i1 %cmp to i32
  tail call void @synchronize_net() #3
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14}
!llvm.module.flags = !{!16, !17, !18, !19, !20, !21, !22, !23}
!llvm.ident = !{!24}

!0 = !{ptr @__ksymtab_inet_protos, !1, !"__ksymtab_inet_protos", i1 false, i1 false}
!1 = !{!"../net/ipv4/protocol.c", i32 28, i32 1}
!2 = !{ptr @__ksymtab_inet_offloads, !3, !"__ksymtab_inet_offloads", i1 false, i1 false}
!3 = !{!"../net/ipv4/protocol.c", i32 30, i32 1}
!4 = !{ptr @__ksymtab_inet_add_protocol, !5, !"__ksymtab_inet_add_protocol", i1 false, i1 false}
!5 = !{!"../net/ipv4/protocol.c", i32 37, i32 1}
!6 = !{ptr @__ksymtab_inet_add_offload, !7, !"__ksymtab_inet_add_offload", i1 false, i1 false}
!7 = !{!"../net/ipv4/protocol.c", i32 44, i32 1}
!8 = !{ptr @__ksymtab_inet_del_protocol, !9, !"__ksymtab_inet_del_protocol", i1 false, i1 false}
!9 = !{!"../net/ipv4/protocol.c", i32 57, i32 1}
!10 = !{ptr @__ksymtab_inet_del_offload, !11, !"__ksymtab_inet_del_offload", i1 false, i1 false}
!11 = !{!"../net/ipv4/protocol.c", i32 70, i32 1}
!12 = !{ptr @inet_protos, !13, !"inet_protos", i1 false, i1 false}
!13 = !{!"../net/ipv4/protocol.c", i32 27, i32 28}
!14 = !{ptr @inet_offloads, !15, !"inet_offloads", i1 false, i1 false}
!15 = !{!"../net/ipv4/protocol.c", i32 29, i32 33}
!16 = !{i32 1, !"wchar_size", i32 2}
!17 = !{i32 1, !"min_enum_size", i32 4}
!18 = !{i32 8, !"branch-target-enforcement", i32 0}
!19 = !{i32 8, !"sign-return-address", i32 0}
!20 = !{i32 8, !"sign-return-address-all", i32 0}
!21 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!22 = !{i32 7, !"uwtable", i32 1}
!23 = !{i32 7, !"frame-pointer", i32 2}
!24 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!25 = !{i64 2156976408}
!26 = !{i64 849592, i64 849613, i64 849636, i64 849655, i64 849674}
!27 = !{i64 2156976822}
!28 = !{i64 2156979353}
!29 = !{i64 2156979767}
!30 = !{i64 2156982267}
!31 = !{i64 2156982681}
!32 = !{i64 2156989269}
!33 = !{i64 2156989683}
