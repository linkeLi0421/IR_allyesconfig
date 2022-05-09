; ModuleID = '/llk/IR_all_yes/drivers/staging/vt6655/srom.c_pt.bc'
source_filename = "../drivers/staging/vt6655/srom.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }

@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @SROMbyReadEmbedded(ptr noundef %iobase, i8 noundef zeroext %byContntOffset) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %iobase, i32 11
  %0 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #2, !srcloc !9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !10
  %1 = and i8 %0, -5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !11
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %1) #2, !srcloc !12
  %add.ptr5 = getelementptr i8, ptr %iobase, i32 9
  %add.ptr6 = getelementptr i8, ptr %iobase, i32 10
  %add.ptr7 = getelementptr i8, ptr %iobase, i32 8
  br label %for.body

for.body:                                         ; preds = %for.body.backedge, %entry
  %wNoACK.049 = phi i16 [ 0, %entry ], [ %wNoACK.049.be, %for.body.backedge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !11
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr5, i8 80) #2, !srcloc !12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !11
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr6, i8 %byContntOffset) #2, !srcloc !12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !11
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr7, i8 64) #2, !srcloc !12
  br label %for.body12

for.body12:                                       ; preds = %do.body.for.body12_crit_edge, %for.body
  %wDelay.048 = phi i16 [ 0, %for.body ], [ %inc, %do.body.for.body12_crit_edge ]
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr7) #2, !srcloc !9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !10
  %3 = and i8 %2, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %do.body, label %for.end

do.body:                                          ; preds = %for.body12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 2147480) #2
  %inc = add nuw i16 %wDelay.048, 1
  %cmp10 = icmp ult i16 %wDelay.048, -17
  br i1 %cmp10, label %do.body.for.body12_crit_edge, label %for.inc26

do.body.for.body12_crit_edge:                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body12

for.end:                                          ; preds = %for.body12
  %5 = and i8 %2, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool23.not = icmp ne i8 %5, 0
  %inc27 = add i16 %wNoACK.049, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 4095, i16 %inc27)
  %cmp = icmp ult i16 %inc27, 4095
  %or.cond = select i1 %tobool23.not, i1 %cmp, i1 false
  br i1 %or.cond, label %for.end.for.body.backedge_crit_edge, label %for.end.for.end28_crit_edge

for.end.for.end28_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end28

for.end.for.body.backedge_crit_edge:              ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.backedge

for.inc26:                                        ; preds = %do.body
  %inc27.old = add i16 %wNoACK.049, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 4095, i16 %inc27.old)
  %cmp.old = icmp ult i16 %inc27.old, 4095
  br i1 %cmp.old, label %for.inc26.for.body.backedge_crit_edge, label %for.inc26.for.end28_crit_edge

for.inc26.for.end28_crit_edge:                    ; preds = %for.inc26
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end28

for.inc26.for.body.backedge_crit_edge:            ; preds = %for.inc26
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.backedge

for.body.backedge:                                ; preds = %for.inc26.for.body.backedge_crit_edge, %for.end.for.body.backedge_crit_edge
  %wNoACK.049.be = phi i16 [ %inc27.old, %for.inc26.for.body.backedge_crit_edge ], [ %inc27, %for.end.for.body.backedge_crit_edge ]
  br label %for.body

for.end28:                                        ; preds = %for.inc26.for.end28_crit_edge, %for.end.for.end28_crit_edge
  %add.ptr29 = getelementptr i8, ptr %iobase, i32 12
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr29) #2, !srcloc !9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !11
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %0) #2, !srcloc !12
  ret i8 %6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @SROMvReadAllContents(ptr noundef %iobase, ptr nocapture noundef writeonly %pbyEepromRegs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %ii.05 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %pbyEepromRegs.addr.04 = phi ptr [ %pbyEepromRegs, %entry ], [ %incdec.ptr, %for.body.for.body_crit_edge ]
  %conv = trunc i32 %ii.05 to i8
  %call = tail call zeroext i8 @SROMbyReadEmbedded(ptr noundef %iobase, i8 noundef zeroext %conv)
  %0 = ptrtoint ptr %pbyEepromRegs.addr.04 to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %call, ptr %pbyEepromRegs.addr.04, align 1
  %incdec.ptr = getelementptr i8, ptr %pbyEepromRegs.addr.04, i32 1
  %inc = add nuw nsw i32 %ii.05, 1
  %exitcond.not = icmp eq i32 %inc, 256
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @SROMvReadEtherAddress(ptr noundef %iobase, ptr nocapture noundef writeonly %pbyEtherAddress) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i8 @SROMbyReadEmbedded(ptr noundef %iobase, i8 noundef zeroext 0)
  %0 = ptrtoint ptr %pbyEtherAddress to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %call, ptr %pbyEtherAddress, align 1
  %incdec.ptr = getelementptr i8, ptr %pbyEtherAddress, i32 1
  %call.1 = tail call zeroext i8 @SROMbyReadEmbedded(ptr noundef %iobase, i8 noundef zeroext 1)
  %1 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %call.1, ptr %incdec.ptr, align 1
  %incdec.ptr.1 = getelementptr i8, ptr %pbyEtherAddress, i32 2
  %call.2 = tail call zeroext i8 @SROMbyReadEmbedded(ptr noundef %iobase, i8 noundef zeroext 2)
  %2 = ptrtoint ptr %incdec.ptr.1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %call.2, ptr %incdec.ptr.1, align 1
  %incdec.ptr.2 = getelementptr i8, ptr %pbyEtherAddress, i32 3
  %call.3 = tail call zeroext i8 @SROMbyReadEmbedded(ptr noundef %iobase, i8 noundef zeroext 3)
  %3 = ptrtoint ptr %incdec.ptr.2 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %call.3, ptr %incdec.ptr.2, align 1
  %incdec.ptr.3 = getelementptr i8, ptr %pbyEtherAddress, i32 4
  %call.4 = tail call zeroext i8 @SROMbyReadEmbedded(ptr noundef %iobase, i8 noundef zeroext 4)
  %4 = ptrtoint ptr %incdec.ptr.3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %call.4, ptr %incdec.ptr.3, align 1
  %incdec.ptr.4 = getelementptr i8, ptr %pbyEtherAddress, i32 5
  %call.5 = tail call zeroext i8 @SROMbyReadEmbedded(ptr noundef %iobase, i8 noundef zeroext 5)
  %5 = ptrtoint ptr %incdec.ptr.4 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %call.5, ptr %incdec.ptr.4, align 1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

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
!9 = !{i64 4989625}
!10 = !{i64 2152528970}
!11 = !{i64 2152530575}
!12 = !{i64 4989230}
