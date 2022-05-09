; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/subdev/bios/timing.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/bios/timing.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.bit_entry = type { i8, i8, i16, i16 }
%struct.nvbios_ramcfg = type <{ i32, i32, i32, i32, %union.anon.140, i32, i32, i32, i32, i32, i32, %union.anon.144, i32, i32, [11 x i32], %union.anon.148 }>
%union.anon.140 = type { %struct.anon.143 }
%struct.anon.143 = type { i64 }
%union.anon.144 = type { %struct.anon.147 }
%struct.anon.147 = type { i32, i32, i8 }
%union.anon.148 = type <{ %struct.anon.150, [12 x i8] }>
%struct.anon.150 = type { i48 }

@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.1 = internal global [4 x i64] [i64 2, i64 8, i64 16, i64 32]
@__sancov_gen_cov_switch_values.2 = internal global [4 x i64] [i64 2, i64 8, i64 16, i64 32]
@__sancov_gen_cov_switch_values.3 = internal global [11 x i64] [i64 9, i64 5, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25]
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvbios_timingTe(ptr noundef %bios, ptr nocapture noundef writeonly %ver, ptr nocapture noundef writeonly %hdr, ptr nocapture noundef writeonly %cnt, ptr nocapture noundef writeonly %len, ptr nocapture noundef writeonly %snr, ptr nocapture noundef writeonly %ssz) local_unnamed_addr #0 align 64 {
entry:
  %bit_P = alloca %struct.bit_entry, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %bit_P) #4
  %0 = getelementptr inbounds %struct.bit_entry, ptr %bit_P, i32 0, i32 3
  %1 = call ptr @memset(ptr %bit_P, i32 255, i32 6)
  %call = call i32 @bit_entry(ptr noundef %bios, i8 noundef zeroext 80, ptr noundef nonnull %bit_P) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then:                                          ; preds = %entry
  %2 = getelementptr inbounds %struct.bit_entry, ptr %bit_P, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %2, align 1
  %5 = zext i8 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i8 %4, label %if.then.cleanup_crit_edge [
    i8 1, label %if.then.if.end14_crit_edge
    i8 2, label %if.then9
  ]

if.then.if.end14_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end14

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then9:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end14

if.end14:                                         ; preds = %if.then9, %if.then.if.end14_crit_edge
  %.sink = phi i32 [ 8, %if.then9 ], [ 4, %if.then.if.end14_crit_edge ]
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %0, align 2
  %conv11 = zext i16 %7 to i32
  %add12 = add nuw nsw i32 %.sink, %conv11
  %call13 = call i32 @nvbios_rd32(ptr noundef %bios, i32 noundef %add12) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool15.not = icmp eq i32 %call13, 0
  br i1 %tobool15.not, label %if.end14.cleanup_crit_edge, label %if.then16

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then16:                                        ; preds = %if.end14
  %call18 = call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %call13) #4
  %8 = ptrtoint ptr %ver to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %call18, ptr %ver, align 1
  %9 = zext i8 %call18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.1)
  switch i8 %call18, label %if.then16.cleanup_crit_edge [
    i8 16, label %sw.bb
    i8 32, label %sw.bb26
  ]

if.then16.cleanup_crit_edge:                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb:                                            ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #6
  %add20 = add i32 %call13, 1
  %call21 = call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add20) #4
  %10 = ptrtoint ptr %hdr to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %call21, ptr %hdr, align 1
  %add22 = add i32 %call13, 2
  %call23 = call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add22) #4
  %11 = ptrtoint ptr %cnt to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %call23, ptr %cnt, align 1
  %add24 = add i32 %call13, 3
  %call25 = call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add24) #4
  %12 = ptrtoint ptr %len to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %call25, ptr %len, align 1
  %13 = ptrtoint ptr %snr to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %snr, align 1
  br label %cleanup.sink.split

sw.bb26:                                          ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #6
  %add27 = add i32 %call13, 1
  %call28 = call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add27) #4
  %14 = ptrtoint ptr %hdr to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %call28, ptr %hdr, align 1
  %add29 = add i32 %call13, 5
  %call30 = call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add29) #4
  %15 = ptrtoint ptr %cnt to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %call30, ptr %cnt, align 1
  %add31 = add i32 %call13, 2
  %call32 = call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add31) #4
  %16 = ptrtoint ptr %len to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %call32, ptr %len, align 1
  %add33 = add i32 %call13, 4
  %call34 = call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add33) #4
  %17 = ptrtoint ptr %snr to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %call34, ptr %snr, align 1
  %add35 = add i32 %call13, 3
  %call36 = call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add35) #4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb26, %sw.bb
  %call36.sink = phi i8 [ %call36, %sw.bb26 ], [ 0, %sw.bb ]
  %18 = ptrtoint ptr %ssz to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %call36.sink, ptr %ssz, align 1
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then16.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end14.cleanup_crit_edge ], [ 0, %if.then16.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.then.cleanup_crit_edge ], [ %call13, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %bit_P) #4
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bit_entry(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_rd32(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @nvbios_rd08(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvbios_timingEe(ptr noundef %bios, i32 noundef %idx, ptr nocapture noundef writeonly %ver, ptr nocapture noundef %hdr, ptr nocapture noundef %cnt, ptr nocapture noundef %len) local_unnamed_addr #0 align 64 {
entry:
  %snr = alloca i8, align 1
  %ssz = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %snr) #4
  %0 = ptrtoint ptr %snr to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %snr, align 1, !annotation !9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ssz) #4
  %1 = ptrtoint ptr %ssz to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %ssz, align 1, !annotation !9
  %call = call i32 @nvbios_timingTe(ptr noundef %bios, ptr noundef %ver, ptr noundef %hdr, ptr noundef %cnt, ptr noundef %len, ptr noundef nonnull %snr, ptr noundef nonnull %ssz)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %land.lhs.true

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %2 = ptrtoint ptr %cnt to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cnt, align 1
  %conv = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %idx)
  %cmp = icmp sgt i32 %conv, %idx
  br i1 %cmp, label %if.then, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %hdr to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %hdr, align 1
  %conv2 = zext i8 %5 to i32
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %len, align 1
  %conv3 = zext i8 %7 to i32
  %8 = ptrtoint ptr %snr to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %snr, align 1
  %conv4 = zext i8 %9 to i32
  %10 = ptrtoint ptr %ssz to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %ssz, align 1
  %conv5 = zext i8 %11 to i32
  %mul = mul nuw nsw i32 %conv5, %conv4
  %add = add nuw nsw i32 %mul, %conv3
  %mul6 = mul i32 %add, %idx
  %add7 = add i32 %call, %conv2
  %add8 = add i32 %add7, %mul6
  store i8 %7, ptr %hdr, align 1
  %12 = ptrtoint ptr %cnt to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %9, ptr %cnt, align 1
  store i8 %11, ptr %len, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %add8, %if.then ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ssz) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %snr) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvbios_timingEp(ptr noundef %bios, i32 noundef %idx, ptr nocapture noundef %ver, ptr nocapture noundef %hdr, ptr nocapture noundef %cnt, ptr nocapture noundef %len, ptr noundef %p) local_unnamed_addr #0 align 64 {
entry:
  %snr.i = alloca i8, align 1
  %ssz.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %snr.i) #4
  %0 = ptrtoint ptr %snr.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %snr.i, align 1, !annotation !9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ssz.i) #4
  %1 = ptrtoint ptr %ssz.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %ssz.i, align 1, !annotation !9
  %call.i = call i32 @nvbios_timingTe(ptr noundef %bios, ptr noundef %ver, ptr noundef %hdr, ptr noundef %cnt, ptr noundef %len, ptr noundef nonnull %snr.i, ptr noundef nonnull %ssz.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %entry.nvbios_timingEe.exit.thread_crit_edge, label %land.lhs.true.i

entry.nvbios_timingEe.exit.thread_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %nvbios_timingEe.exit.thread

land.lhs.true.i:                                  ; preds = %entry
  %2 = ptrtoint ptr %cnt to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cnt, align 1
  %conv.i = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i, i32 %idx)
  %cmp.i = icmp sgt i32 %conv.i, %idx
  br i1 %cmp.i, label %nvbios_timingEe.exit, label %land.lhs.true.i.nvbios_timingEe.exit.thread_crit_edge

land.lhs.true.i.nvbios_timingEe.exit.thread_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %nvbios_timingEe.exit.thread

nvbios_timingEe.exit.thread:                      ; preds = %land.lhs.true.i.nvbios_timingEe.exit.thread_crit_edge, %entry.nvbios_timingEe.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ssz.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %snr.i) #4
  %4 = ptrtoint ptr %ver to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ver, align 1
  %conv523 = zext i8 %5 to i32
  %timing_ver524 = getelementptr inbounds %struct.nvbios_ramcfg, ptr %p, i32 0, i32 12
  %6 = ptrtoint ptr %timing_ver524 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv523, ptr %timing_ver524, align 4
  %7 = ptrtoint ptr %hdr to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %hdr, align 1
  %conv1525 = zext i8 %8 to i32
  %timing_hdr526 = getelementptr inbounds %struct.nvbios_ramcfg, ptr %p, i32 0, i32 13
  %9 = ptrtoint ptr %timing_hdr526 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv1525, ptr %timing_hdr526, align 4
  br label %sw.epilog378

nvbios_timingEe.exit:                             ; preds = %land.lhs.true.i
  %10 = ptrtoint ptr %hdr to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %hdr, align 1
  %conv2.i = zext i8 %11 to i32
  %12 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %len, align 1
  %conv3.i = zext i8 %13 to i32
  %14 = ptrtoint ptr %snr.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %snr.i, align 1
  %conv4.i = zext i8 %15 to i32
  %16 = ptrtoint ptr %ssz.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %ssz.i, align 1
  %conv5.i = zext i8 %17 to i32
  %mul.i = mul nuw nsw i32 %conv5.i, %conv4.i
  %add.i = add nuw nsw i32 %mul.i, %conv3.i
  %mul6.i = mul i32 %add.i, %idx
  %add7.i = add i32 %call.i, %conv2.i
  %add8.i = add i32 %add7.i, %mul6.i
  store i8 %13, ptr %hdr, align 1
  %18 = ptrtoint ptr %cnt to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %15, ptr %cnt, align 1
  store i8 %17, ptr %len, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ssz.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %snr.i) #4
  %19 = ptrtoint ptr %ver to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %ver, align 1
  %conv = zext i8 %20 to i32
  %timing_ver = getelementptr inbounds %struct.nvbios_ramcfg, ptr %p, i32 0, i32 12
  %21 = ptrtoint ptr %timing_ver to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %conv, ptr %timing_ver, align 4
  %22 = ptrtoint ptr %hdr to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %hdr, align 1
  %conv1 = zext i8 %23 to i32
  %timing_hdr = getelementptr inbounds %struct.nvbios_ramcfg, ptr %p, i32 0, i32 13
  %24 = ptrtoint ptr %timing_hdr to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %conv1, ptr %timing_hdr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add8.i)
  %tobool.not = icmp eq i32 %add8.i, 0
  br i1 %tobool.not, label %nvbios_timingEe.exit.sw.epilog378_crit_edge, label %25

nvbios_timingEe.exit.sw.epilog378_crit_edge:      ; preds = %nvbios_timingEe.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog378

25:                                               ; preds = %nvbios_timingEe.exit
  %26 = ptrtoint ptr %ver to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %ver, align 1
  %28 = zext i8 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.2)
  switch i8 %27, label %.sw.epilog378_crit_edge [
    i8 16, label %sw.bb
    i8 32, label %sw.bb200
  ]

.sw.epilog378_crit_edge:                          ; preds = %25
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog378

sw.bb:                                            ; preds = %25
  %call4 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add8.i) #4
  %29 = getelementptr inbounds %struct.nvbios_ramcfg, ptr %p, i32 0, i32 15
  %30 = zext i8 %call4 to i96
  %31 = ptrtoint ptr %29 to i32
  call void @__asan_loadN_noabort(i32 %31, i32 12)
  %bf.load = load i96, ptr %29, align 4
  %bf.shl = shl nuw i96 %30, 88
  %bf.clear = and i96 %bf.load, 309485009821345068724781055
  %bf.set = or i96 %bf.clear, %bf.shl
  store i96 %bf.set, ptr %29, align 4
  %add6 = add i32 %add8.i, 1
  %call7 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add6) #4
  %32 = zext i8 %call7 to i96
  %33 = ptrtoint ptr %29 to i32
  call void @__asan_loadN_noabort(i32 %33, i32 12)
  %bf.load9 = load i96, ptr %29, align 4
  %bf.shl11 = shl nuw nsw i96 %32, 80
  %bf.clear12 = and i96 %bf.load9, -308276084001730439550074881
  %bf.set13 = or i96 %bf.clear12, %bf.shl11
  store i96 %bf.set13, ptr %29, align 4
  %add15 = add i32 %add8.i, 2
  %call16 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add15) #4
  %34 = zext i8 %call16 to i96
  %35 = ptrtoint ptr %29 to i32
  call void @__asan_loadN_noabort(i32 %35, i32 12)
  %bf.load18 = load i96, ptr %29, align 4
  %bf.shl20 = shl nuw nsw i96 %34, 72
  %bf.clear21 = and i96 %bf.load18, -1204203453131759529492481
  %bf.set22 = or i96 %bf.clear21, %bf.shl20
  store i96 %bf.set22, ptr %29, align 4
  %add24 = add i32 %add8.i, 3
  %call25 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add24) #4
  %36 = zext i8 %call25 to i96
  %37 = ptrtoint ptr %29 to i32
  call void @__asan_loadN_noabort(i32 %37, i32 12)
  %bf.load27 = load i96, ptr %29, align 4
  %bf.shl29 = shl nuw nsw i96 %36, 64
  %bf.clear30 = and i96 %bf.load27, -4703919738795935662081
  %bf.set31 = or i96 %bf.clear30, %bf.shl29
  store i96 %bf.set31, ptr %29, align 4
  %add33 = add i32 %add8.i, 5
  %call34 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add33) #4
  %38 = zext i8 %call34 to i96
  %39 = ptrtoint ptr %29 to i32
  call void @__asan_loadN_noabort(i32 %39, i32 12)
  %bf.load36 = load i96, ptr %29, align 4
  %bf.shl38 = shl nuw nsw i96 %38, 56
  %bf.clear39 = and i96 %bf.load36, -18374686479671623681
  %bf.set40 = or i96 %bf.clear39, %bf.shl38
  store i96 %bf.set40, ptr %29, align 4
  %add42 = add i32 %add8.i, 7
  %call43 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add42) #4
  %40 = zext i8 %call43 to i96
  %41 = ptrtoint ptr %29 to i32
  call void @__asan_loadN_noabort(i32 %41, i32 12)
  %bf.load45 = load i96, ptr %29, align 4
  %bf.shl47 = shl nuw nsw i96 %40, 48
  %bf.clear48 = and i96 %bf.load45, -71776119061217281
  %bf.set49 = or i96 %bf.clear48, %bf.shl47
  store i96 %bf.set49, ptr %29, align 4
  %add51 = add i32 %add8.i, 9
  %call52 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add51) #4
  %42 = zext i8 %call52 to i96
  %43 = ptrtoint ptr %29 to i32
  call void @__asan_loadN_noabort(i32 %43, i32 12)
  %bf.load54 = load i96, ptr %29, align 4
  %bf.shl56 = shl nuw nsw i96 %42, 40
  %bf.clear57 = and i96 %bf.load54, -280375465082881
  %bf.set58 = or i96 %bf.clear57, %bf.shl56
  store i96 %bf.set58, ptr %29, align 4
  %add60 = add i32 %add8.i, 10
  %call61 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add60) #4
  %44 = zext i8 %call61 to i96
  %45 = ptrtoint ptr %29 to i32
  call void @__asan_loadN_noabort(i32 %45, i32 12)
  %bf.load63 = load i96, ptr %29, align 4
  %bf.shl65 = shl nuw nsw i96 %44, 32
  %bf.clear66 = and i96 %bf.load63, -1095216660481
  %bf.set67 = or i96 %bf.clear66, %bf.shl65
  store i96 %bf.set67, ptr %29, align 4
  %add69 = add i32 %add8.i, 11
  %call70 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add69) #4
  %46 = zext i8 %call70 to i96
  %47 = ptrtoint ptr %29 to i32
  call void @__asan_loadN_noabort(i32 %47, i32 12)
  %bf.load72 = load i96, ptr %29, align 4
  %bf.shl74 = shl nuw nsw i96 %46, 24
  %bf.clear75 = and i96 %bf.load72, -4278190081
  %bf.set76 = or i96 %bf.clear75, %bf.shl74
  store i96 %bf.set76, ptr %29, align 4
  %add78 = add i32 %add8.i, 12
  %call79 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add78) #4
  %48 = zext i8 %call79 to i96
  %49 = ptrtoint ptr %29 to i32
  call void @__asan_loadN_noabort(i32 %49, i32 12)
  %bf.load81 = load i96, ptr %29, align 4
  %bf.shl83 = shl nuw nsw i96 %48, 16
  %bf.clear84 = and i96 %bf.load81, -16711681
  %bf.set85 = or i96 %bf.clear84, %bf.shl83
  store i96 %bf.set85, ptr %29, align 4
  %add87 = add i32 %add8.i, 13
  %call88 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add87) #4
  %50 = zext i8 %call88 to i96
  %51 = ptrtoint ptr %29 to i32
  call void @__asan_loadN_noabort(i32 %51, i32 12)
  %bf.load90 = load i96, ptr %29, align 4
  %bf.shl92 = shl nuw nsw i96 %50, 8
  %bf.clear93 = and i96 %bf.load90, -65281
  %bf.set94 = or i96 %bf.clear93, %bf.shl92
  store i96 %bf.set94, ptr %29, align 4
  %add96 = add i32 %add8.i, 14
  %call97 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add96) #4
  %52 = ptrtoint ptr %29 to i32
  call void @__asan_loadN_noabort(i32 %52, i32 12)
  %bf.load99 = load i96, ptr %29, align 4
  %53 = shl i8 %call97, 5
  %bf.shl101 = zext i8 %53 to i96
  %bf.clear102 = and i96 %bf.load99, -225
  %bf.set103 = or i96 %bf.clear102, %bf.shl101
  store i96 %bf.set103, ptr %29, align 4
  %ramcfg_ver = getelementptr inbounds %struct.nvbios_ramcfg, ptr %p, i32 0, i32 5
  %54 = ptrtoint ptr %ramcfg_ver to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %ramcfg_ver, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %55)
  %cmp = icmp ugt i32 %55, 15
  br i1 %cmp, label %if.then, label %sw.bb.if.end_crit_edge

sw.bb.if.end_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  %call107 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add96) #4
  %56 = and i8 %call107, 7
  %and109 = zext i8 %56 to i32
  %ramcfg_RON = getelementptr inbounds %struct.nvbios_ramcfg, ptr %p, i32 0, i32 9
  %57 = ptrtoint ptr %ramcfg_RON to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %and109, ptr %ramcfg_RON, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb.if.end_crit_edge
  %timing_10_24 = getelementptr inbounds %struct.nvbios_ramcfg, ptr %p, i32 0, i32 15, i32 1, i32 4
  %58 = ptrtoint ptr %timing_10_24 to i32
  call void @__asan_loadN_noabort(i32 %58, i32 8)
  %bf.load110 = load i64, ptr %timing_10_24, align 4
  %bf.set112 = and i64 %bf.load110, 65535
  %bf.clear114 = or i64 %bf.set112, 16711680
  store i64 %bf.clear114, ptr %timing_10_24, align 4
  %59 = ptrtoint ptr %hdr to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %hdr, align 1
  %61 = tail call i8 @llvm.umin.i8(i8 %60, i8 25)
  %trunc = trunc i8 %61 to i5
  %62 = zext i5 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %62, ptr @__sancov_gen_cov_switch_values.3)
  switch i5 %trunc, label %if.end.sw.epilog378_crit_edge [
    i5 -7, label %sw.bb134
    i5 -8, label %if.end.sw.bb145_crit_edge
    i5 -9, label %if.end.sw.bb145_crit_edge536
    i5 -10, label %if.end.sw.bb145_crit_edge537
    i5 -11, label %if.end.sw.bb156_crit_edge
    i5 -12, label %if.end.sw.bb167_crit_edge
    i5 -13, label %if.end.sw.bb178_crit_edge
    i5 -14, label %if.end.sw.bb189_crit_edge
    i5 -15, label %if.end.sw.bb189_crit_edge538
  ]

if.end.sw.bb189_crit_edge538:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb189

if.end.sw.bb189_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb189

if.end.sw.bb178_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb178

if.end.sw.bb167_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb167

if.end.sw.bb156_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb156

if.end.sw.bb145_crit_edge537:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb145

if.end.sw.bb145_crit_edge536:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb145

if.end.sw.bb145_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb145

if.end.sw.epilog378_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog378

sw.bb134:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %add135 = add i32 %add8.i, 24
  %call136 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add135) #4
  %63 = zext i8 %call136 to i64
  %64 = ptrtoint ptr %timing_10_24 to i32
  call void @__asan_loadN_noabort(i32 %64, i32 8)
  %bf.load139 = load i64, ptr %timing_10_24, align 4
  %bf.shl141 = shl nuw nsw i64 %63, 16
  %bf.clear142 = and i64 %bf.load139, -16711681
  %bf.set143 = or i64 %bf.clear142, %bf.shl141
  store i64 %bf.set143, ptr %timing_10_24, align 4
  br label %sw.bb145

sw.bb145:                                         ; preds = %sw.bb134, %if.end.sw.bb145_crit_edge, %if.end.sw.bb145_crit_edge536, %if.end.sw.bb145_crit_edge537
  %add146 = add i32 %add8.i, 21
  %call147 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add146) #4
  %65 = zext i8 %call147 to i64
  %66 = ptrtoint ptr %timing_10_24 to i32
  call void @__asan_loadN_noabort(i32 %66, i32 8)
  %bf.load150 = load i64, ptr %timing_10_24, align 4
  %bf.shl152 = shl nuw nsw i64 %65, 24
  %bf.clear153 = and i64 %bf.load150, -4278190081
  %bf.set154 = or i64 %bf.clear153, %bf.shl152
  store i64 %bf.set154, ptr %timing_10_24, align 4
  br label %sw.bb156

sw.bb156:                                         ; preds = %sw.bb145, %if.end.sw.bb156_crit_edge
  %add157 = add i32 %add8.i, 20
  %call158 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add157) #4
  %67 = zext i8 %call158 to i64
  %68 = ptrtoint ptr %timing_10_24 to i32
  call void @__asan_loadN_noabort(i32 %68, i32 8)
  %bf.load161 = load i64, ptr %timing_10_24, align 4
  %bf.shl163 = shl nuw nsw i64 %67, 32
  %bf.clear164 = and i64 %bf.load161, -1095216660481
  %bf.set165 = or i64 %bf.clear164, %bf.shl163
  store i64 %bf.set165, ptr %timing_10_24, align 4
  br label %sw.bb167

sw.bb167:                                         ; preds = %sw.bb156, %if.end.sw.bb167_crit_edge
  %add168 = add i32 %add8.i, 19
  %call169 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add168) #4
  %69 = zext i8 %call169 to i64
  %70 = ptrtoint ptr %timing_10_24 to i32
  call void @__asan_loadN_noabort(i32 %70, i32 8)
  %bf.load172 = load i64, ptr %timing_10_24, align 4
  %bf.shl174 = shl nuw nsw i64 %69, 40
  %bf.clear175 = and i64 %bf.load172, -280375465082881
  %bf.set176 = or i64 %bf.clear175, %bf.shl174
  store i64 %bf.set176, ptr %timing_10_24, align 4
  br label %sw.bb178

sw.bb178:                                         ; preds = %sw.bb167, %if.end.sw.bb178_crit_edge
  %add179 = add i32 %add8.i, 18
  %call180 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add179) #4
  %71 = zext i8 %call180 to i64
  %72 = ptrtoint ptr %timing_10_24 to i32
  call void @__asan_loadN_noabort(i32 %72, i32 8)
  %bf.load183 = load i64, ptr %timing_10_24, align 4
  %bf.shl185 = shl nuw nsw i64 %71, 48
  %bf.clear186 = and i64 %bf.load183, -71776119061217281
  %bf.set187 = or i64 %bf.clear186, %bf.shl185
  store i64 %bf.set187, ptr %timing_10_24, align 4
  br label %sw.bb189

sw.bb189:                                         ; preds = %sw.bb178, %if.end.sw.bb189_crit_edge, %if.end.sw.bb189_crit_edge538
  %add190 = add i32 %add8.i, 16
  %call191 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add190) #4
  %73 = zext i8 %call191 to i64
  %74 = ptrtoint ptr %timing_10_24 to i32
  call void @__asan_loadN_noabort(i32 %74, i32 8)
  %bf.load194 = load i64, ptr %timing_10_24, align 4
  %bf.shl196 = shl nuw i64 %73, 56
  %bf.clear197 = and i64 %bf.load194, 72057594037927935
  %bf.set198 = or i64 %bf.clear197, %bf.shl196
  store i64 %bf.set198, ptr %timing_10_24, align 4
  br label %sw.epilog378

sw.bb200:                                         ; preds = %25
  call void @__sanitizer_cov_trace_pc() #6
  %call202 = tail call i32 @nvbios_rd32(ptr noundef %bios, i32 noundef %add8.i) #4
  %timing = getelementptr inbounds %struct.nvbios_ramcfg, ptr %p, i32 0, i32 14
  %75 = ptrtoint ptr %timing to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %call202, ptr %timing, align 4
  %add203 = add i32 %add8.i, 4
  %call204 = tail call i32 @nvbios_rd32(ptr noundef %bios, i32 noundef %add203) #4
  %arrayidx206 = getelementptr %struct.nvbios_ramcfg, ptr %p, i32 0, i32 14, i32 1
  %76 = ptrtoint ptr %arrayidx206 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %call204, ptr %arrayidx206, align 4
  %add207 = add i32 %add8.i, 8
  %call208 = tail call i32 @nvbios_rd32(ptr noundef %bios, i32 noundef %add207) #4
  %arrayidx210 = getelementptr %struct.nvbios_ramcfg, ptr %p, i32 0, i32 14, i32 2
  %77 = ptrtoint ptr %arrayidx210 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %call208, ptr %arrayidx210, align 4
  %add211 = add i32 %add8.i, 12
  %call212 = tail call i32 @nvbios_rd32(ptr noundef %bios, i32 noundef %add211) #4
  %arrayidx214 = getelementptr %struct.nvbios_ramcfg, ptr %p, i32 0, i32 14, i32 3
  %78 = ptrtoint ptr %arrayidx214 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %call212, ptr %arrayidx214, align 4
  %add215 = add i32 %add8.i, 16
  %call216 = tail call i32 @nvbios_rd32(ptr noundef %bios, i32 noundef %add215) #4
  %arrayidx218 = getelementptr %struct.nvbios_ramcfg, ptr %p, i32 0, i32 14, i32 4
  %79 = ptrtoint ptr %arrayidx218 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %call216, ptr %arrayidx218, align 4
  %add219 = add i32 %add8.i, 20
  %call220 = tail call i32 @nvbios_rd32(ptr noundef %bios, i32 noundef %add219) #4
  %arrayidx222 = getelementptr %struct.nvbios_ramcfg, ptr %p, i32 0, i32 14, i32 5
  %80 = ptrtoint ptr %arrayidx222 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %call220, ptr %arrayidx222, align 4
  %add223 = add i32 %add8.i, 24
  %call224 = tail call i32 @nvbios_rd32(ptr noundef %bios, i32 noundef %add223) #4
  %arrayidx226 = getelementptr %struct.nvbios_ramcfg, ptr %p, i32 0, i32 14, i32 6
  %81 = ptrtoint ptr %arrayidx226 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %call224, ptr %arrayidx226, align 4
  %add227 = add i32 %add8.i, 28
  %call228 = tail call i32 @nvbios_rd32(ptr noundef %bios, i32 noundef %add227) #4
  %arrayidx230 = getelementptr %struct.nvbios_ramcfg, ptr %p, i32 0, i32 14, i32 7
  %82 = ptrtoint ptr %arrayidx230 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %call228, ptr %arrayidx230, align 4
  %add231 = add i32 %add8.i, 32
  %call232 = tail call i32 @nvbios_rd32(ptr noundef %bios, i32 noundef %add231) #4
  %arrayidx234 = getelementptr %struct.nvbios_ramcfg, ptr %p, i32 0, i32 14, i32 8
  %83 = ptrtoint ptr %arrayidx234 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %call232, ptr %arrayidx234, align 4
  %add235 = add i32 %add8.i, 36
  %call236 = tail call i32 @nvbios_rd32(ptr noundef %bios, i32 noundef %add235) #4
  %arrayidx238 = getelementptr %struct.nvbios_ramcfg, ptr %p, i32 0, i32 14, i32 9
  %84 = ptrtoint ptr %arrayidx238 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %call236, ptr %arrayidx238, align 4
  %add239 = add i32 %add8.i, 40
  %call240 = tail call i32 @nvbios_rd32(ptr noundef %bios, i32 noundef %add239) #4
  %arrayidx242 = getelementptr %struct.nvbios_ramcfg, ptr %p, i32 0, i32 14, i32 10
  %85 = ptrtoint ptr %arrayidx242 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %call240, ptr %arrayidx242, align 4
  %add243 = add i32 %add8.i, 46
  %call244 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add243) #4
  %86 = getelementptr inbounds %struct.nvbios_ramcfg, ptr %p, i32 0, i32 15
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_loadN_noabort(i32 %87, i32 8)
  %bf.load247 = load i64, ptr %86, align 4
  %bf.value248 = zext i8 %call244 to i64
  %bf.shl249 = shl i64 %bf.value248, 62
  %bf.clear250 = and i64 %bf.load247, 4611686018427387903
  %bf.set251 = or i64 %bf.clear250, %bf.shl249
  store i64 %bf.set251, ptr %86, align 4
  %call254 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add243) #4
  %88 = lshr i8 %call254, 4
  %89 = ptrtoint ptr %86 to i32
  call void @__asan_loadN_noabort(i32 %89, i32 8)
  %bf.load258 = load i64, ptr %86, align 4
  %90 = and i8 %88, 3
  %bf.value259 = zext i8 %90 to i64
  %bf.shl260 = shl nuw nsw i64 %bf.value259, 60
  %bf.clear261 = and i64 %bf.load258, -3458764513820540929
  %bf.set262 = or i64 %bf.shl260, %bf.clear261
  store i64 %bf.set262, ptr %86, align 4
  %call265 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add243) #4
  %91 = lshr i8 %call265, 6
  %92 = zext i8 %91 to i64
  %93 = ptrtoint ptr %86 to i32
  call void @__asan_loadN_noabort(i32 %93, i32 8)
  %bf.load269 = load i64, ptr %86, align 4
  %bf.shl271 = shl nuw nsw i64 %92, 58
  %bf.clear272 = and i64 %bf.load269, -864691128455135233
  %bf.set273 = or i64 %bf.shl271, %bf.clear272
  store i64 %bf.set273, ptr %86, align 4
  %add275 = add i32 %add8.i, 47
  %call276 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add275) #4
  %94 = ptrtoint ptr %86 to i32
  call void @__asan_loadN_noabort(i32 %94, i32 8)
  %bf.load280 = load i64, ptr %86, align 4
  %95 = and i8 %call276, 3
  %bf.value281 = zext i8 %95 to i64
  %bf.shl282 = shl nuw nsw i64 %bf.value281, 56
  %bf.clear283 = and i64 %bf.load280, -216172782113783809
  %bf.set284 = or i64 %bf.shl282, %bf.clear283
  store i64 %bf.set284, ptr %86, align 4
  %add286 = add i32 %add8.i, 44
  %call287 = tail call zeroext i16 @nvbios_rd16(ptr noundef %bios, i32 noundef %add286) #4
  %conv288 = zext i16 %call287 to i32
  %96 = ptrtoint ptr %86 to i32
  call void @__asan_loadN_noabort(i32 %96, i32 8)
  %bf.load291 = load i64, ptr %86, align 4
  %97 = and i32 %conv288, 63
  %bf.value292 = zext i32 %97 to i64
  %bf.shl293 = shl nuw nsw i64 %bf.value292, 50
  %bf.clear294 = and i64 %bf.load291, -72048797944905729
  %bf.set295 = or i64 %bf.shl293, %bf.clear294
  %and297 = lshr i32 %conv288, 6
  %98 = and i32 %and297, 127
  %bf.value300 = zext i32 %98 to i64
  %bf.shl301 = shl nuw nsw i64 %bf.value300, 43
  %bf.set303 = or i64 %bf.set295, %bf.shl301
  store i64 %bf.set303, ptr %86, align 4
  %add305 = add i32 %add8.i, 48
  %call306 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add305) #4
  %99 = ptrtoint ptr %86 to i32
  call void @__asan_loadN_noabort(i32 %99, i32 8)
  %bf.load310 = load i64, ptr %86, align 4
  %100 = and i8 %call306, 7
  %bf.value311 = zext i8 %100 to i64
  %bf.shl312 = shl nuw nsw i64 %bf.value311, 35
  %bf.clear313 = and i64 %bf.load310, -240518168577
  %bf.set314 = or i64 %bf.shl312, %bf.clear313
  store i64 %bf.set314, ptr %86, align 4
  %call317 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add305) #4
  %101 = lshr i8 %call317, 3
  %102 = zext i8 %101 to i64
  %103 = ptrtoint ptr %86 to i32
  call void @__asan_loadN_noabort(i32 %103, i32 8)
  %bf.load321 = load i64, ptr %86, align 4
  %bf.shl323 = shl nuw nsw i64 %102, 38
  %bf.clear324 = and i64 %bf.load321, -8521215115265
  %bf.set325 = or i64 %bf.shl323, %bf.clear324
  store i64 %bf.set325, ptr %86, align 4
  %add327 = add i32 %add8.i, 49
  %call328 = tail call zeroext i16 @nvbios_rd16(ptr noundef %bios, i32 noundef %add327) #4
  %conv329 = zext i16 %call328 to i32
  %104 = ptrtoint ptr %86 to i32
  call void @__asan_loadN_noabort(i32 %104, i32 8)
  %bf.load332 = load i64, ptr %86, align 4
  %105 = and i32 %conv329, 7
  %bf.value333 = zext i32 %105 to i64
  %bf.shl334 = shl nuw nsw i64 %bf.value333, 32
  %bf.clear335 = and i64 %bf.load332, -34359214081
  %bf.set336 = or i64 %bf.shl334, %bf.clear335
  %106 = shl i32 %conv329, 25
  %107 = shl i32 %conv329, 17
  %108 = and i32 %107, 251658240
  %bf.shl350 = zext i32 %108 to i64
  %109 = and i32 %106, -268435456
  %bf.shl342.masked = zext i32 %109 to i64
  %bf.clear351 = or i64 %bf.set336, %bf.shl342.masked
  %bf.set352 = or i64 %bf.clear351, %bf.shl350
  %110 = shl nuw nsw i32 %conv329, 12
  %111 = and i32 %110, 8388608
  %bf.shl358 = zext i32 %111 to i64
  %bf.set360 = or i64 %bf.set352, %bf.shl358
  %112 = shl nuw nsw i32 %conv329, 8
  %113 = and i32 %112, 7340032
  %bf.shl366 = zext i32 %113 to i64
  %114 = shl nuw nsw i32 %conv329, 4
  %115 = and i32 %114, 524288
  %bf.shl374 = zext i32 %115 to i64
  %bf.clear375 = or i64 %bf.set360, %bf.shl366
  %bf.set376 = or i64 %bf.clear375, %bf.shl374
  store i64 %bf.set376, ptr %86, align 4
  br label %sw.epilog378

sw.epilog378:                                     ; preds = %sw.bb200, %sw.bb189, %if.end.sw.epilog378_crit_edge, %.sw.epilog378_crit_edge, %nvbios_timingEe.exit.sw.epilog378_crit_edge, %nvbios_timingEe.exit.thread
  %data.0 = phi i32 [ %add8.i, %sw.bb200 ], [ %add8.i, %if.end.sw.epilog378_crit_edge ], [ %add8.i, %sw.bb189 ], [ 0, %.sw.epilog378_crit_edge ], [ 0, %nvbios_timingEe.exit.sw.epilog378_crit_edge ], [ 0, %nvbios_timingEe.exit.thread ]
  ret i32 %data.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @nvbios_rd16(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

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
!9 = !{!"auto-init"}
