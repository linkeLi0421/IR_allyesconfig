; ModuleID = '/llk/IR_all_yes/drivers/media/dvb-frontends/cxd2880/cxd2880_io.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/cxd2880/cxd2880_io.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.cxd2880_io = type { ptr, ptr, ptr, ptr, i8, i8, i8, ptr }
%struct.cxd2880_reg_value = type { i8, i8 }

@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxd2880_io_common_write_one_reg(ptr noundef %io, i32 noundef %tgt, i8 noundef zeroext %sub_address, i8 noundef zeroext %data) local_unnamed_addr #0 align 64 {
entry:
  %data.addr = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data.addr to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %data, ptr %data.addr, align 1
  %tobool.not = icmp eq ptr %io, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %write_regs = getelementptr inbounds %struct.cxd2880_io, ptr %io, i32 0, i32 1
  %1 = ptrtoint ptr %write_regs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %write_regs, align 4
  %call = call i32 %2(ptr noundef nonnull %io, i32 noundef %tgt, i8 noundef zeroext %sub_address, ptr noundef nonnull %data.addr, i32 noundef 1) #2
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxd2880_io_set_reg_bits(ptr noundef %io, i32 noundef %tgt, i8 noundef zeroext %sub_address, i8 noundef zeroext %data, i8 noundef zeroext %mask) local_unnamed_addr #0 align 64 {
entry:
  %rdata = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %io, null
  br i1 %tobool.not, label %entry.cleanup19_crit_edge, label %if.end

entry.cleanup19_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup19

if.end:                                           ; preds = %entry
  %0 = zext i8 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i8 %mask, label %if.then7 [
    i8 0, label %if.end.cleanup19_crit_edge
    i8 -1, label %if.end.if.end17_crit_edge
  ]

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end17

if.end.cleanup19_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup19

if.then7:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rdata) #2
  %1 = ptrtoint ptr %rdata to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %rdata, align 1
  %2 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %io, align 4
  %call = call i32 %3(ptr noundef nonnull %io, i32 noundef %tgt, i8 noundef zeroext %sub_address, ptr noundef nonnull %rdata, i32 noundef 1) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool8.not = icmp eq i32 %call, 0
  br i1 %tobool8.not, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #4
  %and31 = and i8 %mask, %data
  %4 = ptrtoint ptr %rdata to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %rdata, align 1
  %6 = xor i8 %mask, -1
  %and1532 = and i8 %5, %6
  %or33 = or i8 %and1532, %and31
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rdata) #2
  br label %if.end17

cleanup:                                          ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rdata) #2
  br label %cleanup19

if.end17:                                         ; preds = %cleanup.thread, %if.end.if.end17_crit_edge
  %data.addr.1 = phi i8 [ %data, %if.end.if.end17_crit_edge ], [ %or33, %cleanup.thread ]
  %write_reg = getelementptr inbounds %struct.cxd2880_io, ptr %io, i32 0, i32 2
  %7 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %write_reg, align 4
  %call18 = call i32 %8(ptr noundef nonnull %io, i32 noundef %tgt, i8 noundef zeroext %sub_address, i8 noundef zeroext %data.addr.1) #2
  br label %cleanup19

cleanup19:                                        ; preds = %if.end17, %cleanup, %if.end.cleanup19_crit_edge, %entry.cleanup19_crit_edge
  %retval.1 = phi i32 [ %call18, %if.end17 ], [ %call, %cleanup ], [ -22, %entry.cleanup19_crit_edge ], [ 0, %if.end.cleanup19_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxd2880_io_write_multi_regs(ptr noundef %io, i32 noundef %tgt, ptr nocapture noundef readonly %reg_value, i8 noundef zeroext %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %io, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %write_reg = getelementptr inbounds %struct.cxd2880_io, ptr %io, i32 0, i32 2
  %conv = zext i8 %size to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %size)
  %cmp14.not = icmp eq i8 %size, 0
  br i1 %cmp14.not, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.015, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.015 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %0 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %write_reg, align 4
  %arrayidx = getelementptr %struct.cxd2880_reg_value, ptr %reg_value, i32 %i.015
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %value = getelementptr %struct.cxd2880_reg_value, ptr %reg_value, i32 %i.015, i32 1
  %4 = ptrtoint ptr %value to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %value, align 1
  %call = tail call i32 %1(ptr noundef nonnull %io, i32 noundef %tgt, i8 noundef zeroext %3, i8 noundef zeroext %5) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %for.cond, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ %call, %for.body.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
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
