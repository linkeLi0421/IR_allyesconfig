; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/subdev/bios/ramcfg.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/bios/ramcfg.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.bit_entry = type { i8, i8, i16, i16 }
%struct.nvbios_M0203E = type { i8, i8, i8 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.132, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.anon.132 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }

@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @nvbios_ramcfg_count(ptr noundef %bios) local_unnamed_addr #0 align 64 {
entry:
  %bit_M = alloca %struct.bit_entry, align 2
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %bit_M) #3
  %0 = getelementptr inbounds %struct.bit_entry, ptr %bit_M, i32 0, i32 2
  %1 = getelementptr inbounds %struct.bit_entry, ptr %bit_M, i32 0, i32 3
  %2 = call ptr @memset(ptr %bit_M, i32 255, i32 6)
  %call = call i32 @bit_entry(ptr noundef %bios, i8 noundef zeroext 77, ptr noundef nonnull %bit_M) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then:                                          ; preds = %entry
  %3 = getelementptr inbounds %struct.bit_entry, ptr %bit_M, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 1
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i8 %5, label %if.then.cleanup_crit_edge [
    i8 1, label %land.lhs.true
    i8 2, label %land.lhs.true12
  ]

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

land.lhs.true:                                    ; preds = %if.then
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %0, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %8)
  %cmp3 = icmp ugt i16 %8, 4
  br i1 %cmp3, label %if.then5, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then5:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %1, align 2
  %conv6 = zext i16 %10 to i32
  %add = add nuw nsw i32 %conv6, 2
  br label %cleanup.sink.split

land.lhs.true12:                                  ; preds = %if.then
  %11 = ptrtoint ptr %0 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %0, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %12)
  %cmp15 = icmp ugt i16 %12, 2
  br i1 %cmp15, label %if.then17, label %land.lhs.true12.cleanup_crit_edge

land.lhs.true12.cleanup_crit_edge:                ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then17:                                        ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #5
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %1, align 2
  %conv19 = zext i16 %14 to i32
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then17, %if.then5
  %conv19.sink = phi i32 [ %conv19, %if.then17 ], [ %add, %if.then5 ]
  %call21 = call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %conv19.sink) #3
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %land.lhs.true12.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i8 [ 0, %land.lhs.true12.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.then.cleanup_crit_edge ], [ %call21, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %bit_M) #3
  ret i8 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bit_entry(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @nvbios_rd08(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @nvbios_ramcfg_index(ptr nocapture noundef readonly %subdev) local_unnamed_addr #0 align 64 {
entry:
  %bit_M = alloca %struct.bit_entry, align 2
  %M0203E = alloca %struct.nvbios_M0203E, align 1
  %ver = alloca i8, align 1
  %hdr = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.nvkm_subdev, ptr %subdev, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %bios1 = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %bios1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bios1, align 8
  %pri.i = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pri.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 1052672
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #3, !srcloc !9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !10
  %7 = trunc i32 %6 to i8
  %8 = lshr i8 %7, 2
  %conv.i = and i8 %8, 15
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %bit_M) #3
  %9 = getelementptr inbounds %struct.bit_entry, ptr %bit_M, i32 0, i32 1
  %10 = getelementptr inbounds %struct.bit_entry, ptr %bit_M, i32 0, i32 2
  %11 = getelementptr inbounds %struct.bit_entry, ptr %bit_M, i32 0, i32 3
  %12 = call ptr @memset(ptr %bit_M, i32 255, i32 6)
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %M0203E) #3
  %13 = ptrtoint ptr %M0203E to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 -1, ptr %M0203E, align 1, !annotation !11
  %14 = getelementptr inbounds %struct.nvbios_M0203E, ptr %M0203E, i32 0, i32 1
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 -1, ptr %14, align 1, !annotation !11
  %16 = getelementptr inbounds %struct.nvbios_M0203E, ptr %M0203E, i32 0, i32 2
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 -1, ptr %16, align 1, !annotation !11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ver) #3
  %18 = ptrtoint ptr %ver to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 -1, ptr %ver, align 1, !annotation !11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %hdr) #3
  %19 = ptrtoint ptr %hdr to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 -1, ptr %hdr, align 1, !annotation !11
  %call2 = call i32 @bit_entry(ptr noundef %3, i8 noundef zeroext 77, ptr noundef nonnull %bit_M) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then:                                          ; preds = %entry
  %20 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %21)
  %cmp = icmp eq i8 %21, 1
  br i1 %cmp, label %land.lhs.true, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

land.lhs.true:                                    ; preds = %if.then
  %22 = ptrtoint ptr %10 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %10, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %23)
  %cmp5 = icmp ugt i16 %23, 4
  br i1 %cmp5, label %if.then7, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then7:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  %24 = ptrtoint ptr %11 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %11, align 2
  %conv8 = zext i16 %25 to i32
  %add = add nuw nsw i32 %conv8, 3
  %call9 = call zeroext i16 @nvbios_rd16(ptr noundef %3, i32 noundef %add) #3
  %conv10 = zext i16 %call9 to i32
  %26 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %26)
  %.pr = load i8, ptr %9, align 1
  br label %if.end

if.end:                                           ; preds = %if.then7, %if.then.if.end_crit_edge
  %27 = phi i8 [ %.pr, %if.then7 ], [ %21, %if.then.if.end_crit_edge ]
  %xlat.0 = phi i32 [ %conv10, %if.then7 ], [ 0, %if.then.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %27)
  %cmp13 = icmp eq i8 %27, 2
  br i1 %cmp13, label %land.lhs.true15, label %if.end.if.end36_crit_edge

if.end.if.end36_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end36

land.lhs.true15:                                  ; preds = %if.end
  %28 = ptrtoint ptr %10 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %10, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %29)
  %cmp18 = icmp ugt i16 %29, 2
  br i1 %cmp18, label %if.then20, label %land.lhs.true15.if.end36_crit_edge

land.lhs.true15.if.end36_crit_edge:               ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end36

if.then20:                                        ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_const_cmp2(i16 6, i16 %29)
  %cmp23 = icmp ugt i16 %29, 6
  br i1 %cmp23, label %land.lhs.true25, label %if.then20.if.end29_crit_edge

if.then20.if.end29_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end29

land.lhs.true25:                                  ; preds = %if.then20
  %call26 = call i32 @nvbios_M0203Em(ptr noundef %3, i8 noundef zeroext %conv.i, ptr noundef nonnull %ver, ptr noundef nonnull %hdr, ptr noundef nonnull %M0203E) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %land.lhs.true25.if.end29_crit_edge, label %if.then28

land.lhs.true25.if.end29_crit_edge:               ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end29

if.then28:                                        ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #5
  %30 = ptrtoint ptr %16 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %16, align 1
  br label %cleanup

if.end29:                                         ; preds = %land.lhs.true25.if.end29_crit_edge, %if.then20.if.end29_crit_edge
  %32 = ptrtoint ptr %11 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %11, align 2
  %conv31 = zext i16 %33 to i32
  %add32 = add nuw nsw i32 %conv31, 1
  %call33 = call zeroext i16 @nvbios_rd16(ptr noundef %3, i32 noundef %add32) #3
  %conv34 = zext i16 %call33 to i32
  br label %if.end36

if.end36:                                         ; preds = %if.end29, %land.lhs.true15.if.end36_crit_edge, %if.end.if.end36_crit_edge
  %xlat.1 = phi i32 [ %conv34, %if.end29 ], [ %xlat.0, %land.lhs.true15.if.end36_crit_edge ], [ %xlat.0, %if.end.if.end36_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xlat.1)
  %tobool37.not = icmp eq i32 %xlat.1, 0
  br i1 %tobool37.not, label %if.end36.cleanup_crit_edge, label %if.then38

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then38:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #5
  %conv39 = zext i8 %conv.i to i32
  %add40 = add nuw nsw i32 %xlat.1, %conv39
  %call41 = call zeroext i8 @nvbios_rd08(ptr noundef %3, i32 noundef %add40) #3
  br label %cleanup

cleanup:                                          ; preds = %if.then38, %if.end36.cleanup_crit_edge, %if.then28, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i8 [ %31, %if.then28 ], [ %call41, %if.then38 ], [ %conv.i, %if.end36.cleanup_crit_edge ], [ %conv.i, %entry.cleanup_crit_edge ], [ %conv.i, %land.lhs.true.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %hdr) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ver) #3
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %M0203E) #3
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %bit_M) #3
  ret i8 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @nvbios_rd16(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_M0203Em(ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare ptr @memset(ptr, i32, i32)

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
!9 = !{i64 5383218}
!10 = !{i64 2156224223}
!11 = !{!"auto-init"}
