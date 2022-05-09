; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/subdev/bios/vpstate.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/bios/vpstate.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.bit_entry = type { i8, i8, i16, i16 }
%struct.nvbios_vpstate_header = type { i32, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.nvbios_vpstate_entry = type { i8, i16 }

@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvbios_vpstate_parse(ptr noundef %b, ptr noundef %h) local_unnamed_addr #0 align 64 {
entry:
  %bit_P.i = alloca %struct.bit_entry, align 2
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %h, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %bit_P.i) #3
  %0 = getelementptr inbounds %struct.bit_entry, ptr %bit_P.i, i32 0, i32 2
  %1 = getelementptr inbounds %struct.bit_entry, ptr %bit_P.i, i32 0, i32 3
  %2 = call ptr @memset(ptr %bit_P.i, i32 255, i32 6)
  %call.i = call i32 @bit_entry(ptr noundef %b, i8 noundef zeroext 80, ptr noundef nonnull %bit_P.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.nvbios_vpstate_offset.exit.thread_crit_edge

if.end.nvbios_vpstate_offset.exit.thread_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %nvbios_vpstate_offset.exit.thread

if.then.i:                                        ; preds = %if.end
  %3 = getelementptr inbounds %struct.bit_entry, ptr %bit_P.i, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %5)
  %cmp.i = icmp eq i8 %5, 2
  br i1 %cmp.i, label %land.lhs.true.i, label %if.then.i.nvbios_vpstate_offset.exit.thread_crit_edge

if.then.i.nvbios_vpstate_offset.exit.thread_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %nvbios_vpstate_offset.exit.thread

land.lhs.true.i:                                  ; preds = %if.then.i
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %0, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 59, i16 %7)
  %cmp3.i = icmp ugt i16 %7, 59
  br i1 %cmp3.i, label %nvbios_vpstate_offset.exit, label %land.lhs.true.i.nvbios_vpstate_offset.exit.thread_crit_edge

land.lhs.true.i.nvbios_vpstate_offset.exit.thread_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %nvbios_vpstate_offset.exit.thread

nvbios_vpstate_offset.exit.thread:                ; preds = %land.lhs.true.i.nvbios_vpstate_offset.exit.thread_crit_edge, %if.then.i.nvbios_vpstate_offset.exit.thread_crit_edge, %if.end.nvbios_vpstate_offset.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %bit_P.i) #3
  %8 = ptrtoint ptr %h to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %h, align 4
  br label %return

nvbios_vpstate_offset.exit:                       ; preds = %land.lhs.true.i
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %1, align 2
  %conv6.i = zext i16 %10 to i32
  %add.i = add nuw nsw i32 %conv6.i, 56
  %call7.i = call i32 @nvbios_rd32(ptr noundef %b, i32 noundef %add.i) #3
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %bit_P.i) #3
  %11 = ptrtoint ptr %h to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call7.i, ptr %h, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool2.not = icmp eq i32 %call7.i, 0
  br i1 %tobool2.not, label %nvbios_vpstate_offset.exit.return_crit_edge, label %if.end4

nvbios_vpstate_offset.exit.return_crit_edge:      ; preds = %nvbios_vpstate_offset.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end4:                                          ; preds = %nvbios_vpstate_offset.exit
  %call6 = call zeroext i8 @nvbios_rd08(ptr noundef %b, i32 noundef %call7.i) #3
  %version = getelementptr inbounds %struct.nvbios_vpstate_header, ptr %h, i32 0, i32 1
  %12 = ptrtoint ptr %version to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %call6, ptr %version, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %call6)
  %cond = icmp eq i8 %call6, 16
  br i1 %cond, label %sw.bb, label %if.end4.return_crit_edge

if.end4.return_crit_edge:                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb:                                            ; preds = %if.end4
  %13 = ptrtoint ptr %h to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %h, align 4
  %add = add i32 %14, 1
  %call9 = call zeroext i8 @nvbios_rd08(ptr noundef %b, i32 noundef %add) #3
  %hlen = getelementptr inbounds %struct.nvbios_vpstate_header, ptr %h, i32 0, i32 2
  %15 = ptrtoint ptr %hlen to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %call9, ptr %hlen, align 1
  %16 = ptrtoint ptr %h to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %h, align 4
  %add11 = add i32 %17, 2
  %call12 = call zeroext i8 @nvbios_rd08(ptr noundef %b, i32 noundef %add11) #3
  %elen = getelementptr inbounds %struct.nvbios_vpstate_header, ptr %h, i32 0, i32 4
  %18 = ptrtoint ptr %elen to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %call12, ptr %elen, align 1
  %19 = ptrtoint ptr %h to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %h, align 4
  %add14 = add i32 %20, 3
  %call15 = call zeroext i8 @nvbios_rd08(ptr noundef %b, i32 noundef %add14) #3
  %slen = getelementptr inbounds %struct.nvbios_vpstate_header, ptr %h, i32 0, i32 6
  %21 = ptrtoint ptr %slen to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %call15, ptr %slen, align 1
  %22 = ptrtoint ptr %h to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %h, align 4
  %add17 = add i32 %23, 4
  %call18 = call zeroext i8 @nvbios_rd08(ptr noundef %b, i32 noundef %add17) #3
  %scount = getelementptr inbounds %struct.nvbios_vpstate_header, ptr %h, i32 0, i32 5
  %24 = ptrtoint ptr %scount to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %call18, ptr %scount, align 4
  %25 = ptrtoint ptr %h to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %h, align 4
  %add20 = add i32 %26, 5
  %call21 = call zeroext i8 @nvbios_rd08(ptr noundef %b, i32 noundef %add20) #3
  %ecount = getelementptr inbounds %struct.nvbios_vpstate_header, ptr %h, i32 0, i32 3
  %27 = ptrtoint ptr %ecount to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %call21, ptr %ecount, align 2
  %28 = ptrtoint ptr %h to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %h, align 4
  %add23 = add i32 %29, 15
  %call24 = call zeroext i8 @nvbios_rd08(ptr noundef %b, i32 noundef %add23) #3
  %base_id = getelementptr inbounds %struct.nvbios_vpstate_header, ptr %h, i32 0, i32 7
  %30 = ptrtoint ptr %base_id to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %call24, ptr %base_id, align 2
  %31 = ptrtoint ptr %hlen to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %hlen, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %32)
  %cmp = icmp ugt i8 %32, 16
  br i1 %cmp, label %if.end33, label %if.end33.thread

if.end33.thread:                                  ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #5
  %boost_id32 = getelementptr inbounds %struct.nvbios_vpstate_header, ptr %h, i32 0, i32 8
  %33 = ptrtoint ptr %boost_id32 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 -1, ptr %boost_id32, align 1
  br label %if.else42

if.end33:                                         ; preds = %sw.bb
  %34 = ptrtoint ptr %h to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %h, align 4
  %add30 = add i32 %35, 16
  %call31 = call zeroext i8 @nvbios_rd08(ptr noundef %b, i32 noundef %add30) #3
  %boost_id = getelementptr inbounds %struct.nvbios_vpstate_header, ptr %h, i32 0, i32 8
  %36 = ptrtoint ptr %boost_id to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %call31, ptr %boost_id, align 1
  %37 = ptrtoint ptr %hlen to i32
  call void @__asan_load1_noabort(i32 %37)
  %.pr = load i8, ptr %hlen, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %.pr)
  %cmp36 = icmp ugt i8 %.pr, 17
  br i1 %cmp36, label %if.then38, label %if.end33.if.else42_crit_edge

if.end33.if.else42_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else42

if.then38:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #5
  %38 = ptrtoint ptr %h to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %h, align 4
  %add40 = add i32 %39, 17
  %call41 = call zeroext i8 @nvbios_rd08(ptr noundef %b, i32 noundef %add40) #3
  %tdp_id = getelementptr inbounds %struct.nvbios_vpstate_header, ptr %h, i32 0, i32 9
  %40 = ptrtoint ptr %tdp_id to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %call41, ptr %tdp_id, align 4
  br label %return

if.else42:                                        ; preds = %if.end33.if.else42_crit_edge, %if.end33.thread
  %tdp_id43 = getelementptr inbounds %struct.nvbios_vpstate_header, ptr %h, i32 0, i32 9
  %41 = ptrtoint ptr %tdp_id43 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 -1, ptr %tdp_id43, align 4
  br label %return

return:                                           ; preds = %if.else42, %if.then38, %if.end4.return_crit_edge, %nvbios_vpstate_offset.exit.return_crit_edge, %nvbios_vpstate_offset.exit.thread, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ -19, %nvbios_vpstate_offset.exit.return_crit_edge ], [ 0, %if.else42 ], [ 0, %if.then38 ], [ -22, %if.end4.return_crit_edge ], [ -19, %nvbios_vpstate_offset.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @nvbios_rd08(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvbios_vpstate_entry(ptr noundef %b, ptr noundef readonly %h, i8 noundef zeroext %idx, ptr noundef writeonly %e) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %e, null
  %tobool1.not = icmp eq ptr %h, null
  %or.cond = or i1 %tobool1.not, %tobool.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %lor.lhs.false2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

lor.lhs.false2:                                   ; preds = %entry
  %ecount = getelementptr inbounds %struct.nvbios_vpstate_header, ptr %h, i32 0, i32 3
  %0 = ptrtoint ptr %ecount to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ecount, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %idx)
  %cmp = icmp ult i8 %1, %idx
  br i1 %cmp, label %lor.lhs.false2.cleanup_crit_edge, label %if.end

lor.lhs.false2.cleanup_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #5
  %conv = zext i8 %idx to i32
  %2 = ptrtoint ptr %h to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %h, align 4
  %hlen = getelementptr inbounds %struct.nvbios_vpstate_header, ptr %h, i32 0, i32 2
  %4 = ptrtoint ptr %hlen to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %hlen, align 1
  %conv6 = zext i8 %5 to i32
  %add = add i32 %3, %conv6
  %elen = getelementptr inbounds %struct.nvbios_vpstate_header, ptr %h, i32 0, i32 4
  %6 = ptrtoint ptr %elen to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %elen, align 1
  %conv8 = zext i8 %7 to i32
  %slen = getelementptr inbounds %struct.nvbios_vpstate_header, ptr %h, i32 0, i32 6
  %8 = ptrtoint ptr %slen to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %slen, align 1
  %conv9 = zext i8 %9 to i32
  %scount = getelementptr inbounds %struct.nvbios_vpstate_header, ptr %h, i32 0, i32 5
  %10 = ptrtoint ptr %scount to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %scount, align 4
  %conv10 = zext i8 %11 to i32
  %mul = mul nuw nsw i32 %conv10, %conv9
  %add11 = add nuw nsw i32 %mul, %conv8
  %mul12 = mul nuw nsw i32 %add11, %conv
  %add13 = add i32 %add, %mul12
  %call = tail call zeroext i8 @nvbios_rd08(ptr noundef %b, i32 noundef %add13) #3
  %12 = ptrtoint ptr %e to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %call, ptr %e, align 2
  %add14 = add i32 %add13, 5
  %call15 = tail call zeroext i16 @nvbios_rd16(ptr noundef %b, i32 noundef %add14) #3
  %clock_mhz = getelementptr inbounds %struct.nvbios_vpstate_entry, ptr %e, i32 0, i32 1
  %13 = ptrtoint ptr %clock_mhz to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %call15, ptr %clock_mhz, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %lor.lhs.false2.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @nvbios_rd16(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bit_entry(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_rd32(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
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
