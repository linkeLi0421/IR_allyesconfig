; ModuleID = '/llk/IR_all_yes/drivers/firmware/arm_scmi/shmem.c_pt.bc'
source_filename = "../drivers/firmware/arm_scmi/shmem.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.scmi_shared_mem = type { i32, i32, [2 x i32], i32, i32, i32, [0 x i8] }
%struct.scmi_xfer = type { i32, %struct.scmi_msg_hdr, %struct.scmi_msg, %struct.scmi_msg, %struct.completion, ptr, i8, %struct.hlist_node, %struct.refcount_struct, %struct.atomic_t, i32, %struct.spinlock, ptr }
%struct.scmi_msg_hdr = type { i8, i8, i8, i16, i32, i8 }
%struct.scmi_msg = type { ptr, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }

@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @shmem_tx_prepare(ptr noundef %shmem, ptr nocapture noundef readonly %xfer) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %channel_status = getelementptr inbounds %struct.scmi_shared_mem, ptr %shmem, i32 0, i32 1
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %channel_status) #3, !srcloc !9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !10
  %1 = and i32 %0, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.do.body4_crit_edge, label %entry.do.end18_crit_edge, !prof !11

entry.do.end18_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end18

entry.do.body4_crit_edge:                         ; preds = %entry
  br label %do.body4

do.body4:                                         ; preds = %do.body4.do.body4_crit_edge, %entry.do.body4_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #3, !srcloc !12
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #3, !srcloc !13
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %channel_status) #3, !srcloc !9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !10
  %3 = and i32 %2, 16777216
  %tobool13.not = icmp eq i32 %3, 0
  br i1 %tobool13.not, label %do.body4.do.body4_crit_edge, label %do.body4.do.end18_crit_edge

do.body4.do.end18_crit_edge:                      ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end18

do.body4.do.body4_crit_edge:                      ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body4

do.end18:                                         ; preds = %do.body4.do.end18_crit_edge, %entry.do.end18_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !14
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %channel_status, i32 0) #3, !srcloc !15
  %hdr = getelementptr inbounds %struct.scmi_xfer, ptr %xfer, i32 0, i32 1
  %poll_completion = getelementptr inbounds %struct.scmi_xfer, ptr %xfer, i32 0, i32 1, i32 5
  %4 = ptrtoint ptr %poll_completion to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %poll_completion, align 4, !range !16
  %6 = xor i8 %5, 1
  %7 = zext i8 %6 to i32
  %flags = getelementptr inbounds %struct.scmi_shared_mem, ptr %shmem, i32 0, i32 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !14
  tail call void @arm_heavy_mb() #3
  %8 = shl nuw nsw i32 %7, 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %flags, i32 %8) #3, !srcloc !15
  %tx = getelementptr inbounds %struct.scmi_xfer, ptr %xfer, i32 0, i32 2
  %len = getelementptr inbounds %struct.scmi_xfer, ptr %xfer, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len, align 4
  %add = add i32 %10, 4
  %length = getelementptr inbounds %struct.scmi_shared_mem, ptr %shmem, i32 0, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !14
  tail call void @arm_heavy_mb() #3
  %11 = tail call i32 @llvm.bswap.i32(i32 %add) #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %length, i32 %11) #3, !srcloc !15
  %12 = ptrtoint ptr %hdr to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %hdr, align 4
  %type.i = getelementptr inbounds %struct.scmi_xfer, ptr %xfer, i32 0, i32 1, i32 2
  %14 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %type.i, align 2
  %seq.i = getelementptr inbounds %struct.scmi_xfer, ptr %xfer, i32 0, i32 1, i32 3
  %16 = ptrtoint ptr %seq.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %seq.i, align 4
  %protocol_id.i = getelementptr inbounds %struct.scmi_xfer, ptr %xfer, i32 0, i32 1, i32 1
  %18 = ptrtoint ptr %protocol_id.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %protocol_id.i, align 1
  %conv33.i = zext i8 %15 to i32
  %shl34.i = shl nuw nsw i32 %conv33.i, 8
  %and35.i = and i32 %shl34.i, 768
  %conv11.i = zext i8 %13 to i32
  %or.i = or i32 %and35.i, %conv11.i
  %conv56.i = zext i16 %17 to i32
  %shl57.i = shl i32 %conv56.i, 18
  %and58.i = and i32 %shl57.i, 268173312
  %or59.i = or i32 %or.i, %and58.i
  %conv80.i = zext i8 %19 to i32
  %shl81.i = shl nuw nsw i32 %conv80.i, 10
  %or83.i = or i32 %or59.i, %shl81.i
  %msg_header = getelementptr inbounds %struct.scmi_shared_mem, ptr %shmem, i32 0, i32 5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !14
  tail call void @arm_heavy_mb() #3
  %20 = tail call i32 @llvm.bswap.i32(i32 %or83.i) #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %msg_header, i32 %20) #3, !srcloc !15
  %21 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tx, align 4
  %tobool24.not = icmp eq ptr %22, null
  br i1 %tobool24.not, label %do.end18.if.end30_crit_edge, label %if.then25

do.end18.if.end30_crit_edge:                      ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end30

if.then25:                                        ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #5
  %msg_payload = getelementptr inbounds %struct.scmi_shared_mem, ptr %shmem, i32 0, i32 6
  %23 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %len, align 4
  tail call void @mmiocpy(ptr noundef %msg_payload, ptr noundef nonnull %22, i32 noundef %24) #3
  br label %if.end30

if.end30:                                         ; preds = %if.then25, %do.end18.if.end30_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @shmem_read_header(ptr noundef %shmem) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_header = getelementptr inbounds %struct.scmi_shared_mem, ptr %shmem, i32 0, i32 5
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %msg_header) #3, !srcloc !9
  %1 = tail call i32 @llvm.bswap.i32(i32 %0) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !10
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @shmem_fetch_response(ptr noundef %shmem, ptr nocapture noundef %xfer) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_payload = getelementptr inbounds %struct.scmi_shared_mem, ptr %shmem, i32 0, i32 6
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %msg_payload) #3, !srcloc !9
  %1 = tail call i32 @llvm.bswap.i32(i32 %0) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !10
  %status = getelementptr inbounds %struct.scmi_xfer, ptr %xfer, i32 0, i32 1, i32 4
  %2 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %status, align 4
  %len = getelementptr inbounds %struct.scmi_xfer, ptr %xfer, i32 0, i32 3, i32 1
  %3 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %len, align 4
  %length = getelementptr inbounds %struct.scmi_shared_mem, ptr %shmem, i32 0, i32 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %length) #3, !srcloc !9
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !10
  %sub = add i32 %6, -8
  %7 = tail call i32 @llvm.umin.i32(i32 %4, i32 %sub)
  %rx = getelementptr inbounds %struct.scmi_xfer, ptr %xfer, i32 0, i32 3
  %8 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %len, align 4
  %9 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rx, align 4
  %add.ptr = getelementptr %struct.scmi_shared_mem, ptr %shmem, i32 1, i32 1
  tail call void @mmiocpy(ptr noundef %10, ptr noundef %add.ptr, i32 noundef %7) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @shmem_fetch_notification(ptr noundef %shmem, i32 noundef %max_len, ptr nocapture noundef %xfer) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %length = getelementptr inbounds %struct.scmi_shared_mem, ptr %shmem, i32 0, i32 4
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %length) #3, !srcloc !9
  %1 = tail call i32 @llvm.bswap.i32(i32 %0) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !10
  %sub = add i32 %1, -4
  %2 = tail call i32 @llvm.umin.i32(i32 %sub, i32 %max_len)
  %rx = getelementptr inbounds %struct.scmi_xfer, ptr %xfer, i32 0, i32 3
  %len = getelementptr inbounds %struct.scmi_xfer, ptr %xfer, i32 0, i32 3, i32 1
  %3 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %len, align 4
  %4 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rx, align 4
  %msg_payload = getelementptr inbounds %struct.scmi_shared_mem, ptr %shmem, i32 0, i32 6
  tail call void @mmiocpy(ptr noundef %5, ptr noundef %msg_payload, i32 noundef %2) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @shmem_clear_channel(ptr noundef %shmem) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %channel_status = getelementptr inbounds %struct.scmi_shared_mem, ptr %shmem, i32 0, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !14
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %channel_status, i32 16777216) #3, !srcloc !15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @shmem_poll_done(ptr noundef %shmem, ptr nocapture noundef readonly %xfer) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_header = getelementptr inbounds %struct.scmi_shared_mem, ptr %shmem, i32 0, i32 5
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %msg_header) #3, !srcloc !9
  %1 = tail call i32 @llvm.bswap.i32(i32 %0) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !10
  %and = lshr i32 %1, 18
  %conv = and i32 %and, 1023
  %seq = getelementptr inbounds %struct.scmi_xfer, ptr %xfer, i32 0, i32 1, i32 3
  %2 = ptrtoint ptr %seq to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %seq, align 4
  %conv13 = zext i16 %3 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %conv13)
  %cmp.not = icmp eq i32 %conv, %conv13
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %channel_status = getelementptr inbounds %struct.scmi_shared_mem, ptr %shmem, i32 0, i32 1
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %channel_status) #3, !srcloc !9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !10
  %5 = and i32 %4, 50331648
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool = icmp ne i32 %5, 0
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %tobool, %if.end ], [ false, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"branch-target-enforcement", i32 0}
!3 = !{i32 8, !"sign-return-address", i32 0}
!4 = !{i32 8, !"sign-return-address-all", i32 0}
!5 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{i32 7, !"frame-pointer", i32 2}
!8 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!9 = !{i64 686470}
!10 = !{i64 2148871643}
!11 = !{!"branch_weights", i32 1, i32 2000}
!12 = !{i64 2152728519}
!13 = !{i64 2152728361}
!14 = !{i64 2148872998}
!15 = !{i64 686052}
!16 = !{i8 0, i8 2}
