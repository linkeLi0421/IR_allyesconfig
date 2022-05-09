; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/subdev/bios/rammap.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/bios/rammap.c"
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

@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 16, i64 17]
@__sancov_gen_cov_switch_values.1 = internal global [4 x i64] [i64 2, i64 8, i64 16, i64 17]
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvbios_rammapTe(ptr noundef %bios, ptr nocapture noundef writeonly %ver, ptr nocapture noundef writeonly %hdr, ptr nocapture noundef writeonly %cnt, ptr nocapture noundef writeonly %len, ptr nocapture noundef writeonly %snr, ptr nocapture noundef writeonly %ssz) local_unnamed_addr #0 align 64 {
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
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %4)
  %cmp = icmp eq i8 %4, 2
  br i1 %cmp, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %if.then
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %0, align 2
  %conv3 = zext i16 %6 to i32
  %add = add nuw nsw i32 %conv3, 4
  %call4 = call i32 @nvbios_rd32(ptr noundef %bios, i32 noundef %add) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.then6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then6:                                         ; preds = %if.end
  %call8 = call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %call4) #4
  %7 = ptrtoint ptr %ver to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %call8, ptr %ver, align 1
  %8 = and i8 %call8, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %8)
  %switch = icmp eq i8 %8, 16
  br i1 %switch, label %sw.bb, label %if.then6.cleanup_crit_edge

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb:                                            ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #6
  %add10 = add i32 %call4, 1
  %call11 = call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add10) #4
  %9 = ptrtoint ptr %hdr to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %call11, ptr %hdr, align 1
  %add12 = add i32 %call4, 5
  %call13 = call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add12) #4
  %10 = ptrtoint ptr %cnt to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %call13, ptr %cnt, align 1
  %add14 = add i32 %call4, 2
  %call15 = call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add14) #4
  %11 = ptrtoint ptr %len to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %call15, ptr %len, align 1
  %add16 = add i32 %call4, 4
  %call17 = call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add16) #4
  %12 = ptrtoint ptr %snr to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %call17, ptr %snr, align 1
  %add18 = add i32 %call4, 3
  %call19 = call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add18) #4
  %13 = ptrtoint ptr %ssz to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %call19, ptr %ssz, align 1
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %if.then6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %sw.bb ], [ 0, %if.then6.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.then.cleanup_crit_edge ]
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
define dso_local i32 @nvbios_rammapEe(ptr noundef %bios, i32 noundef %idx, ptr nocapture noundef writeonly %ver, ptr nocapture noundef %hdr, ptr nocapture noundef %cnt, ptr nocapture noundef %len) local_unnamed_addr #0 align 64 {
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
  %call = call i32 @nvbios_rammapTe(ptr noundef %bios, ptr noundef %ver, ptr noundef %hdr, ptr noundef %cnt, ptr noundef %len, ptr noundef nonnull %snr, ptr noundef nonnull %ssz)
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
  %add = add i32 %call, %conv2
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
  %add6 = add nuw nsw i32 %mul, %conv3
  %mul7 = mul i32 %add6, %idx
  %add8 = add i32 %add, %mul7
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
define dso_local i32 @nvbios_rammapEp_from_perf(ptr noundef %bios, i32 noundef returned %data, i8 noundef zeroext %size, ptr nocapture noundef %p) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %p, i32 0, i32 132)
  %add = add i32 %data, 22
  %call = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add) #4
  %1 = getelementptr inbounds %struct.nvbios_ramcfg, ptr %p, i32 0, i32 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %1, align 4
  %3 = shl i8 %call, 2
  %bf.shl = and i8 %3, -128
  %bf.clear = and i8 %bf.load, 127
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, ptr %1, align 4
  %call2 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add) #4
  %4 = and i8 %call2, 64
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load6 = load i8, ptr %1, align 4
  %bf.clear9 = and i8 %bf.load6, -65
  %bf.set10 = or i8 %bf.clear9, %4
  store i8 %bf.set10, ptr %1, align 4
  %add12 = add i32 %data, 23
  %call13 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add12) #4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load17 = load i8, ptr %1, align 4
  %7 = shl i8 %call13, 4
  %bf.shl19 = and i8 %7, 32
  %bf.clear20 = and i8 %bf.load17, -33
  %bf.set21 = or i8 %bf.clear20, %bf.shl19
  store i8 %bf.set21, ptr %1, align 4
  ret i32 %data
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvbios_rammapEp(ptr noundef %bios, i32 noundef %idx, ptr nocapture noundef %ver, ptr nocapture noundef %hdr, ptr nocapture noundef %cnt, ptr nocapture noundef %len, ptr nocapture noundef %p) local_unnamed_addr #0 align 64 {
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
  %call.i = call i32 @nvbios_rammapTe(ptr noundef %bios, ptr noundef %ver, ptr noundef %hdr, ptr noundef %cnt, ptr noundef %len, ptr noundef nonnull %snr.i, ptr noundef nonnull %ssz.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %entry.nvbios_rammapEe.exit_crit_edge, label %land.lhs.true.i

entry.nvbios_rammapEe.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %nvbios_rammapEe.exit

land.lhs.true.i:                                  ; preds = %entry
  %2 = ptrtoint ptr %cnt to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cnt, align 1
  %conv.i = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i, i32 %idx)
  %cmp.i = icmp sgt i32 %conv.i, %idx
  br i1 %cmp.i, label %if.then.i, label %land.lhs.true.i.nvbios_rammapEe.exit_crit_edge

land.lhs.true.i.nvbios_rammapEe.exit_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %nvbios_rammapEe.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %hdr to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %hdr, align 1
  %conv2.i = zext i8 %5 to i32
  %add.i = add i32 %call.i, %conv2.i
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %len, align 1
  %conv3.i = zext i8 %7 to i32
  %8 = ptrtoint ptr %snr.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %snr.i, align 1
  %conv4.i = zext i8 %9 to i32
  %10 = ptrtoint ptr %ssz.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %ssz.i, align 1
  %conv5.i = zext i8 %11 to i32
  %mul.i = mul nuw nsw i32 %conv5.i, %conv4.i
  %add6.i = add nuw nsw i32 %mul.i, %conv3.i
  %mul7.i = mul i32 %add6.i, %idx
  %add8.i = add i32 %add.i, %mul7.i
  store i8 %7, ptr %hdr, align 1
  %12 = ptrtoint ptr %cnt to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %9, ptr %cnt, align 1
  store i8 %11, ptr %len, align 1
  br label %nvbios_rammapEe.exit

nvbios_rammapEe.exit:                             ; preds = %if.then.i, %land.lhs.true.i.nvbios_rammapEe.exit_crit_edge, %entry.nvbios_rammapEe.exit_crit_edge
  %retval.0.i = phi i32 [ %add8.i, %if.then.i ], [ 0, %land.lhs.true.i.nvbios_rammapEe.exit_crit_edge ], [ 0, %entry.nvbios_rammapEe.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ssz.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %snr.i) #4
  %13 = call ptr @memset(ptr %p, i32 0, i32 132)
  %14 = ptrtoint ptr %ver to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %ver, align 1
  %conv = zext i8 %15 to i32
  %16 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %conv, ptr %p, align 4
  %17 = ptrtoint ptr %hdr to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %hdr, align 1
  %conv1 = zext i8 %18 to i32
  %rammap_hdr = getelementptr inbounds %struct.nvbios_ramcfg, ptr %p, i32 0, i32 1
  %19 = ptrtoint ptr %rammap_hdr to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv1, ptr %rammap_hdr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool.not, label %nvbios_rammapEe.exit.sw.epilog_crit_edge, label %20

nvbios_rammapEe.exit.sw.epilog_crit_edge:         ; preds = %nvbios_rammapEe.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

20:                                               ; preds = %nvbios_rammapEe.exit
  %21 = ptrtoint ptr %ver to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %ver, align 1
  %23 = zext i8 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values)
  switch i8 %22, label %.sw.epilog_crit_edge [
    i8 16, label %sw.bb
    i8 17, label %sw.bb23
  ]

.sw.epilog_crit_edge:                             ; preds = %20
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb:                                            ; preds = %20
  call void @__sanitizer_cov_trace_pc() #6
  %call4 = tail call zeroext i16 @nvbios_rd16(ptr noundef %bios, i32 noundef %retval.0.i) #4
  %conv5 = zext i16 %call4 to i32
  %rammap_min = getelementptr inbounds %struct.nvbios_ramcfg, ptr %p, i32 0, i32 2
  %24 = ptrtoint ptr %rammap_min to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %conv5, ptr %rammap_min, align 4
  %add6 = add i32 %retval.0.i, 2
  %call7 = tail call zeroext i16 @nvbios_rd16(ptr noundef %bios, i32 noundef %add6) #4
  %conv8 = zext i16 %call7 to i32
  %rammap_max = getelementptr inbounds %struct.nvbios_ramcfg, ptr %p, i32 0, i32 3
  %25 = ptrtoint ptr %rammap_max to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %conv8, ptr %rammap_max, align 4
  %add9 = add i32 %retval.0.i, 4
  %call10 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add9) #4
  %26 = getelementptr inbounds %struct.nvbios_ramcfg, ptr %p, i32 0, i32 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load1_noabort(i32 %27)
  %bf.load = load i8, ptr %26, align 4
  %28 = shl i8 %call10, 6
  %bf.shl = and i8 %28, -128
  %bf.clear = and i8 %bf.load, 127
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, ptr %26, align 4
  %call13 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add9) #4
  %29 = ptrtoint ptr %26 to i32
  call void @__asan_load1_noabort(i32 %29)
  %bf.load17 = load i8, ptr %26, align 4
  %30 = shl i8 %call13, 3
  %bf.shl19 = and i8 %30, 64
  %bf.clear20 = and i8 %bf.load17, -65
  %bf.set21 = or i8 %bf.clear20, %bf.shl19
  store i8 %bf.set21, ptr %26, align 4
  br label %sw.epilog

sw.bb23:                                          ; preds = %20
  call void @__sanitizer_cov_trace_pc() #6
  %call25 = tail call zeroext i16 @nvbios_rd16(ptr noundef %bios, i32 noundef %retval.0.i) #4
  %conv26 = zext i16 %call25 to i32
  %rammap_min27 = getelementptr inbounds %struct.nvbios_ramcfg, ptr %p, i32 0, i32 2
  %31 = ptrtoint ptr %rammap_min27 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %conv26, ptr %rammap_min27, align 4
  %add28 = add i32 %retval.0.i, 2
  %call29 = tail call zeroext i16 @nvbios_rd16(ptr noundef %bios, i32 noundef %add28) #4
  %conv30 = zext i16 %call29 to i32
  %rammap_max31 = getelementptr inbounds %struct.nvbios_ramcfg, ptr %p, i32 0, i32 3
  %32 = ptrtoint ptr %rammap_max31 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %conv30, ptr %rammap_max31, align 4
  %add32 = add i32 %retval.0.i, 8
  %call33 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add32) #4
  %33 = getelementptr inbounds %struct.nvbios_ramcfg, ptr %p, i32 0, i32 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_loadN_noabort(i32 %34, i32 8)
  %bf.load37 = load i64, ptr %33, align 4
  %bf.value38 = zext i8 %call33 to i64
  %bf.shl39 = shl i64 %bf.value38, 63
  %bf.clear40 = and i64 %bf.load37, 9223372036854775807
  %bf.set41 = or i64 %bf.clear40, %bf.shl39
  store i64 %bf.set41, ptr %33, align 4
  %call44 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add32) #4
  %35 = lshr i8 %call44, 2
  %36 = ptrtoint ptr %33 to i32
  call void @__asan_loadN_noabort(i32 %36, i32 8)
  %bf.load48 = load i64, ptr %33, align 4
  %37 = and i8 %35, 3
  %bf.value49 = zext i8 %37 to i64
  %bf.shl50 = shl nuw nsw i64 %bf.value49, 61
  %bf.clear51 = and i64 %bf.load48, -6917529027641081857
  %bf.set52 = or i64 %bf.shl50, %bf.clear51
  store i64 %bf.set52, ptr %33, align 4
  %call55 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add32) #4
  %38 = lshr i8 %call55, 4
  %39 = ptrtoint ptr %33 to i32
  call void @__asan_loadN_noabort(i32 %39, i32 8)
  %bf.load59 = load i64, ptr %33, align 4
  %40 = and i8 %38, 1
  %bf.value60 = zext i8 %40 to i64
  %bf.shl61 = shl nuw nsw i64 %bf.value60, 60
  %bf.clear62 = and i64 %bf.load59, -1152921504606846977
  %bf.set63 = or i64 %bf.shl61, %bf.clear62
  store i64 %bf.set63, ptr %33, align 4
  %add65 = add i32 %retval.0.i, 9
  %call66 = tail call i32 @nvbios_rd32(ptr noundef %bios, i32 noundef %add65) #4
  %41 = ptrtoint ptr %33 to i32
  call void @__asan_loadN_noabort(i32 %41, i32 8)
  %bf.load69 = load i64, ptr %33, align 4
  %42 = and i32 %call66, 511
  %bf.value70 = zext i32 %42 to i64
  %bf.shl71 = shl nuw nsw i64 %bf.value70, 51
  %bf.clear72 = and i64 %bf.load69, -1152921500311879681
  %bf.set73 = or i64 %bf.shl71, %bf.clear72
  %and75 = lshr i32 %call66, 9
  %43 = and i32 %and75, 511
  %bf.value78 = zext i32 %43 to i64
  %bf.shl79 = shl nuw nsw i64 %bf.value78, 42
  %bf.set81 = or i64 %bf.set73, %bf.shl79
  %and83 = lshr i32 %call66, 18
  %44 = and i32 %and83, 1
  %bf.value86 = zext i32 %44 to i64
  %bf.shl87 = shl nuw nsw i64 %bf.value86, 41
  %bf.set89 = or i64 %bf.set81, %bf.shl87
  %and91 = lshr i32 %call66, 19
  %45 = and i32 %and91, 1
  %bf.value94 = zext i32 %45 to i64
  %bf.shl95 = shl nuw nsw i64 %bf.value94, 40
  %bf.set97 = or i64 %bf.set89, %bf.shl95
  %and99 = lshr i32 %call66, 20
  %46 = and i32 %and99, 31
  %bf.value102 = zext i32 %46 to i64
  %bf.shl103 = shl nuw nsw i64 %bf.value102, 35
  %and107 = lshr i32 %call66, 25
  %47 = and i32 %and107, 1
  %bf.value110 = zext i32 %47 to i64
  %bf.shl111 = shl nuw nsw i64 %bf.value110, 34
  %and115 = lshr i32 %call66, 26
  %48 = and i32 %and115, 1
  %bf.value118 = zext i32 %48 to i64
  %bf.shl119 = shl nuw nsw i64 %bf.value118, 33
  %and123 = lshr i32 %call66, 27
  %49 = and i32 %and123, 1
  %bf.value126 = zext i32 %49 to i64
  %bf.shl127 = shl nuw nsw i64 %bf.value126, 32
  %bf.clear112.masked.masked = or i64 %bf.set97, %bf.shl103
  %bf.clear120.masked = or i64 %bf.clear112.masked.masked, %bf.shl111
  %bf.clear128 = or i64 %bf.shl127, %bf.shl119
  %bf.set129 = or i64 %bf.clear128, %bf.clear120.masked
  store i64 %bf.set129, ptr %33, align 4
  %add131 = add i32 %retval.0.i, 13
  %call132 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add131) #4
  %50 = zext i8 %call132 to i64
  %51 = ptrtoint ptr %33 to i32
  call void @__asan_loadN_noabort(i32 %51, i32 8)
  %bf.load134 = load i64, ptr %33, align 4
  %bf.shl136 = shl nuw nsw i64 %50, 24
  %bf.clear137 = and i64 %bf.load134, -4278190081
  %bf.set138 = or i64 %bf.clear137, %bf.shl136
  store i64 %bf.set138, ptr %33, align 4
  %add140 = add i32 %retval.0.i, 14
  %call141 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add140) #4
  %52 = zext i8 %call141 to i64
  %53 = ptrtoint ptr %33 to i32
  call void @__asan_loadN_noabort(i32 %53, i32 8)
  %bf.load143 = load i64, ptr %33, align 4
  %bf.shl145 = shl nuw nsw i64 %52, 16
  %bf.clear146 = and i64 %bf.load143, -16711681
  %bf.set147 = or i64 %bf.clear146, %bf.shl145
  store i64 %bf.set147, ptr %33, align 4
  %add149 = add i32 %retval.0.i, 15
  %call150 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add149) #4
  %54 = zext i8 %call150 to i64
  %55 = ptrtoint ptr %33 to i32
  call void @__asan_loadN_noabort(i32 %55, i32 8)
  %bf.load152 = load i64, ptr %33, align 4
  %bf.shl154 = shl nuw nsw i64 %54, 8
  %bf.clear155 = and i64 %bf.load152, -65281
  %bf.set156 = or i64 %bf.clear155, %bf.shl154
  store i64 %bf.set156, ptr %33, align 4
  %add158 = add i32 %retval.0.i, 17
  %call159 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add158) #4
  %56 = ptrtoint ptr %33 to i32
  call void @__asan_loadN_noabort(i32 %56, i32 8)
  %bf.load163 = load i64, ptr %33, align 4
  %57 = shl i8 %call159, 4
  %58 = and i8 %57, -64
  %bf.shl165 = zext i8 %58 to i64
  %bf.clear166 = and i64 %bf.load163, -193
  %bf.set167 = or i64 %bf.clear166, %bf.shl165
  store i64 %bf.set167, ptr %33, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb23, %sw.bb, %.sw.epilog_crit_edge, %nvbios_rammapEe.exit.sw.epilog_crit_edge
  %data.0 = phi i32 [ %retval.0.i, %sw.bb23 ], [ %retval.0.i, %sw.bb ], [ 0, %.sw.epilog_crit_edge ], [ 0, %nvbios_rammapEe.exit.sw.epilog_crit_edge ]
  ret i32 %data.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @nvbios_rd16(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvbios_rammapEm(ptr noundef %bios, i16 noundef zeroext %mhz, ptr nocapture noundef %ver, ptr nocapture noundef %hdr, ptr nocapture noundef %cnt, ptr nocapture noundef %len, ptr nocapture noundef %info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %rammap_max = getelementptr inbounds %struct.nvbios_ramcfg, ptr %info, i32 0, i32 3
  %call8 = tail call i32 @nvbios_rammapEp(ptr noundef %bios, i32 noundef 0, ptr noundef %ver, ptr noundef %hdr, ptr noundef %cnt, ptr noundef %len, ptr noundef %info)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not9 = icmp eq i32 %call8, 0
  br i1 %tobool.not9, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %conv = zext i16 %mhz to i32
  %rammap_min = getelementptr inbounds %struct.nvbios_ramcfg, ptr %info, i32 0, i32 2
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %while.body.lr.ph
  %call11 = phi i32 [ %call8, %while.body.lr.ph ], [ %call, %if.end.while.body_crit_edge ]
  %inc10 = phi i32 [ 1, %while.body.lr.ph ], [ %inc, %if.end.while.body_crit_edge ]
  %0 = ptrtoint ptr %rammap_min to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rammap_min, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %conv)
  %cmp.not = icmp ugt i32 %1, %conv
  br i1 %cmp.not, label %while.body.if.end_crit_edge, label %land.lhs.true

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true:                                    ; preds = %while.body
  %2 = ptrtoint ptr %rammap_max to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rammap_max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv)
  %cmp3.not = icmp ult i32 %3, %conv
  br i1 %cmp3.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.while.end_crit_edge

land.lhs.true.while.end_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %while.body.if.end_crit_edge
  %inc = add i32 %inc10, 1
  %call = tail call i32 @nvbios_rammapEp(ptr noundef %bios, i32 noundef %inc10, ptr noundef %ver, ptr noundef %hdr, ptr noundef %cnt, ptr noundef %len, ptr noundef %info)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %land.lhs.true.while.end_crit_edge, %entry.while.end_crit_edge
  %call.lcssa = phi i32 [ 0, %entry.while.end_crit_edge ], [ %call11, %land.lhs.true.while.end_crit_edge ], [ 0, %if.end.while.end_crit_edge ]
  ret i32 %call.lcssa
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @nvbios_rammapSe(ptr nocapture readnone %bios, i32 noundef %data, i8 noundef zeroext %ever, i8 noundef zeroext %ehdr, i8 noundef zeroext %ecnt, i8 noundef zeroext %elen, i32 noundef %idx, ptr nocapture noundef writeonly %ver, ptr nocapture noundef writeonly %hdr) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %ecnt to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %idx)
  %cmp = icmp sgt i32 %conv, %idx
  br i1 %cmp, label %if.then, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %conv2 = zext i8 %ehdr to i32
  %add = add i32 %conv2, %data
  %conv3 = zext i8 %elen to i32
  %mul = mul i32 %conv3, %idx
  %add4 = add i32 %add, %mul
  %0 = ptrtoint ptr %ver to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %ever, ptr %ver, align 1
  %1 = ptrtoint ptr %hdr to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %elen, ptr %hdr, align 1
  br label %return

return:                                           ; preds = %if.then, %entry.return_crit_edge
  %retval.0 = phi i32 [ %add4, %if.then ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvbios_rammapSp_from_perf(ptr noundef %bios, i32 noundef %data, i8 noundef zeroext %size, i32 noundef %idx, ptr nocapture noundef %p) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %size)
  %cmp = icmp ult i8 %size, 11
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %conv = zext i8 %size to i32
  %mul = mul i32 %conv, %idx
  %add = add i32 %mul, %data
  %ramcfg_ver = getelementptr inbounds %struct.nvbios_ramcfg, ptr %p, i32 0, i32 5
  %0 = ptrtoint ptr %ramcfg_ver to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %ramcfg_ver, align 4
  %add3 = add i32 %add, 1
  %call = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add3) #4
  %conv4 = zext i8 %call to i32
  %ramcfg_timing = getelementptr inbounds %struct.nvbios_ramcfg, ptr %p, i32 0, i32 7
  %1 = ptrtoint ptr %ramcfg_timing to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %conv4, ptr %ramcfg_timing, align 4
  %add5 = add i32 %add, 3
  %call6 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add5) #4
  %and = zext i8 %call6 to i32
  %2 = getelementptr inbounds %struct.nvbios_ramcfg, ptr %p, i32 0, i32 11
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %bf.load = load i32, ptr %2, align 4
  %bf.shl = shl i32 %and, 31
  %bf.clear = and i32 %bf.load, 2147483647
  %bf.set = or i32 %bf.clear, %bf.shl
  store i32 %bf.set, ptr %2, align 4
  %call9 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add5) #4
  %4 = lshr i8 %call9, 1
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %bf.load13 = load i32, ptr %2, align 4
  %6 = and i8 %4, 1
  %bf.value14 = zext i8 %6 to i32
  %bf.shl15 = shl nuw nsw i32 %bf.value14, 30
  %bf.clear16 = and i32 %bf.load13, -1073741825
  %bf.set17 = or i32 %bf.shl15, %bf.clear16
  store i32 %bf.set17, ptr %2, align 4
  %call19 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add5) #4
  %7 = lshr i8 %call19, 2
  %8 = and i8 %7, 1
  %9 = zext i8 %8 to i32
  %ramcfg_DLLoff = getelementptr inbounds %struct.nvbios_ramcfg, ptr %p, i32 0, i32 8
  %10 = ptrtoint ptr %ramcfg_DLLoff to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %ramcfg_DLLoff, align 4
  %call24 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add5) #4
  %11 = lshr i8 %call24, 3
  %12 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %bf.load28 = load i32, ptr %2, align 4
  %13 = and i8 %11, 1
  %bf.value29 = zext i8 %13 to i32
  %bf.shl30 = shl nuw nsw i32 %bf.value29, 29
  %bf.clear31 = and i32 %bf.load28, -536870913
  %bf.set32 = or i32 %bf.shl30, %bf.clear31
  store i32 %bf.set32, ptr %2, align 4
  %call34 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add5) #4
  %14 = lshr i8 %call34, 3
  %15 = and i8 %14, 2
  %16 = zext i8 %15 to i32
  %ramcfg_RON = getelementptr inbounds %struct.nvbios_ramcfg, ptr %p, i32 0, i32 9
  %17 = ptrtoint ptr %ramcfg_RON to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %ramcfg_RON, align 4
  %call39 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add5) #4
  %18 = lshr i8 %call39, 7
  %19 = zext i8 %18 to i32
  %ramcfg_FBVDDQ = getelementptr inbounds %struct.nvbios_ramcfg, ptr %p, i32 0, i32 10
  %20 = ptrtoint ptr %ramcfg_FBVDDQ to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %ramcfg_FBVDDQ, align 4
  %add43 = add i32 %add, 4
  %call44 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add43) #4
  %21 = lshr i8 %call44, 1
  %22 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %bf.load48 = load i32, ptr %2, align 4
  %23 = and i8 %21, 1
  %bf.value49 = zext i8 %23 to i32
  %bf.shl50 = shl nuw nsw i32 %bf.value49, 27
  %bf.clear51 = and i32 %bf.load48, -134217729
  %bf.set52 = or i32 %bf.shl50, %bf.clear51
  store i32 %bf.set52, ptr %2, align 4
  %call54 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add43) #4
  %24 = lshr i8 %call54, 2
  %25 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %bf.load58 = load i32, ptr %2, align 4
  %26 = and i8 %24, 1
  %bf.value59 = zext i8 %26 to i32
  %bf.shl60 = shl nuw nsw i32 %bf.value59, 26
  %bf.clear61 = and i32 %bf.load58, -67108865
  %bf.set62 = or i32 %bf.shl60, %bf.clear61
  store i32 %bf.set62, ptr %2, align 4
  %call64 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add43) #4
  %27 = lshr i8 %call64, 5
  %28 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %28)
  %bf.load68 = load i32, ptr %2, align 4
  %29 = and i8 %27, 1
  %bf.value69 = zext i8 %29 to i32
  %bf.shl70 = shl nuw nsw i32 %bf.value69, 25
  %bf.clear71 = and i32 %bf.load68, -33554433
  %bf.set72 = or i32 %bf.shl70, %bf.clear71
  store i32 %bf.set72, ptr %2, align 4
  %add73 = add i32 %add, 5
  %call74 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add73) #4
  %conv75 = zext i8 %call74 to i32
  %30 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %30)
  %bf.load78 = load i32, ptr %2, align 4
  %bf.shl80 = shl nuw nsw i32 %conv75, 17
  %bf.clear81 = and i32 %bf.load78, -33423361
  %bf.set82 = or i32 %bf.clear81, %bf.shl80
  store i32 %bf.set82, ptr %2, align 4
  %add83 = add i32 %add, 6
  %call84 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add83) #4
  %conv85 = zext i8 %call84 to i32
  %31 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %31)
  %bf.load88 = load i32, ptr %2, align 4
  %bf.shl90 = shl nuw nsw i32 %conv85, 9
  %bf.clear91 = and i32 %bf.load88, -130561
  %bf.set92 = or i32 %bf.clear91, %bf.shl90
  store i32 %bf.set92, ptr %2, align 4
  %add93 = add i32 %add, 7
  %call94 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add93) #4
  %conv95 = zext i8 %call94 to i32
  %32 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %32)
  %bf.load98 = load i32, ptr %2, align 4
  %bf.shl100 = shl nuw nsw i32 %conv95, 1
  %bf.clear101 = and i32 %bf.load98, -511
  %bf.set102 = or i32 %bf.clear101, %bf.shl100
  store i32 %bf.set102, ptr %2, align 4
  %add103 = add i32 %add, 8
  %call104 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add103) #4
  %conv105 = zext i8 %call104 to i32
  %ramcfg_00_08 = getelementptr inbounds %struct.nvbios_ramcfg, ptr %p, i32 0, i32 11, i32 0, i32 1
  %33 = ptrtoint ptr %ramcfg_00_08 to i32
  call void @__asan_load4_noabort(i32 %33)
  %bf.load108 = load i32, ptr %ramcfg_00_08, align 4
  %bf.shl110 = shl nuw i32 %conv105, 24
  %bf.clear111 = and i32 %bf.load108, 16777215
  %bf.set112 = or i32 %bf.clear111, %bf.shl110
  store i32 %bf.set112, ptr %ramcfg_00_08, align 4
  %add113 = add i32 %add, 9
  %call114 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add113) #4
  %conv115 = zext i8 %call114 to i32
  %34 = ptrtoint ptr %ramcfg_00_08 to i32
  call void @__asan_load4_noabort(i32 %34)
  %bf.load118 = load i32, ptr %ramcfg_00_08, align 4
  %bf.shl120 = shl nuw nsw i32 %conv115, 16
  %bf.clear121 = and i32 %bf.load118, -16711681
  %bf.set122 = or i32 %bf.clear121, %bf.shl120
  store i32 %bf.set122, ptr %ramcfg_00_08, align 4
  %add123 = add i32 %add, 10
  %call124 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add123) #4
  %35 = and i8 %call124, 15
  %and126 = zext i8 %35 to i32
  %36 = ptrtoint ptr %ramcfg_00_08 to i32
  call void @__asan_load4_noabort(i32 %36)
  %bf.load128 = load i32, ptr %ramcfg_00_08, align 4
  %bf.shl130 = shl nuw nsw i32 %and126, 12
  %bf.clear131 = and i32 %bf.load128, -61441
  %bf.set132 = or i32 %bf.shl130, %bf.clear131
  store i32 %bf.set132, ptr %ramcfg_00_08, align 4
  %call134 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add123) #4
  %37 = lshr i8 %call134, 4
  %38 = zext i8 %37 to i32
  %39 = ptrtoint ptr %ramcfg_00_08 to i32
  call void @__asan_load4_noabort(i32 %39)
  %bf.load138 = load i32, ptr %ramcfg_00_08, align 4
  %bf.shl140 = shl nuw nsw i32 %38, 8
  %bf.clear141 = and i32 %bf.load138, -3841
  %bf.set142 = or i32 %bf.shl140, %bf.clear141
  store i32 %bf.set142, ptr %ramcfg_00_08, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %add, %if.end ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvbios_rammapSp(ptr noundef %bios, i32 noundef %data, i8 noundef zeroext %ever, i8 noundef zeroext %ehdr, i8 noundef zeroext %ecnt, i8 noundef zeroext %elen, i32 noundef %idx, ptr nocapture noundef %ver, ptr nocapture noundef %hdr, ptr noundef %p) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %conv.i = zext i8 %ecnt to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i, i32 %idx)
  %cmp.i = icmp sgt i32 %conv.i, %idx
  br i1 %cmp.i, label %nvbios_rammapSe.exit, label %nvbios_rammapSe.exit.thread

nvbios_rammapSe.exit.thread:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %0 = ptrtoint ptr %ver to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ver, align 1
  %conv635 = zext i8 %1 to i32
  %ramcfg_ver636 = getelementptr inbounds %struct.nvbios_ramcfg, ptr %p, i32 0, i32 5
  %2 = ptrtoint ptr %ramcfg_ver636 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %conv635, ptr %ramcfg_ver636, align 4
  %3 = ptrtoint ptr %hdr to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %hdr, align 1
  %conv1637 = zext i8 %4 to i32
  %ramcfg_hdr638 = getelementptr inbounds %struct.nvbios_ramcfg, ptr %p, i32 0, i32 6
  %5 = ptrtoint ptr %ramcfg_hdr638 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %conv1637, ptr %ramcfg_hdr638, align 4
  br label %sw.epilog

nvbios_rammapSe.exit:                             ; preds = %entry
  %conv2.i = zext i8 %ehdr to i32
  %add.i = add i32 %conv2.i, %data
  %conv3.i = zext i8 %elen to i32
  %mul.i = mul i32 %conv3.i, %idx
  %add4.i = add i32 %add.i, %mul.i
  %6 = ptrtoint ptr %ver to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %ever, ptr %ver, align 1
  %7 = ptrtoint ptr %hdr to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %elen, ptr %hdr, align 1
  %8 = load i8, ptr %ver, align 1
  %conv = zext i8 %8 to i32
  %ramcfg_ver = getelementptr inbounds %struct.nvbios_ramcfg, ptr %p, i32 0, i32 5
  %9 = ptrtoint ptr %ramcfg_ver to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv, ptr %ramcfg_ver, align 4
  %10 = load i8, ptr %hdr, align 1
  %conv1 = zext i8 %10 to i32
  %ramcfg_hdr = getelementptr inbounds %struct.nvbios_ramcfg, ptr %p, i32 0, i32 6
  %11 = ptrtoint ptr %ramcfg_hdr to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv1, ptr %ramcfg_hdr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add4.i)
  %tobool.not = icmp eq i32 %add4.i, 0
  br i1 %tobool.not, label %nvbios_rammapSe.exit.sw.epilog_crit_edge, label %12

nvbios_rammapSe.exit.sw.epilog_crit_edge:         ; preds = %nvbios_rammapSe.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

12:                                               ; preds = %nvbios_rammapSe.exit
  %13 = ptrtoint ptr %ver to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %ver, align 1
  %15 = zext i8 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.1)
  switch i8 %14, label %.sw.epilog_crit_edge [
    i8 16, label %sw.bb
    i8 17, label %sw.bb149
  ]

.sw.epilog_crit_edge:                             ; preds = %12
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb:                                            ; preds = %12
  call void @__sanitizer_cov_trace_pc() #6
  %add = add i32 %add4.i, 1
  %call4 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add) #4
  %conv5 = zext i8 %call4 to i32
  %ramcfg_timing = getelementptr inbounds %struct.nvbios_ramcfg, ptr %p, i32 0, i32 7
  %16 = ptrtoint ptr %ramcfg_timing to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %conv5, ptr %ramcfg_timing, align 4
  %add6 = add i32 %add4.i, 2
  %call7 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add6) #4
  %and = zext i8 %call7 to i32
  %17 = getelementptr inbounds %struct.nvbios_ramcfg, ptr %p, i32 0, i32 11
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %bf.load = load i32, ptr %17, align 4
  %bf.shl = shl i32 %and, 31
  %bf.clear = and i32 %bf.load, 2147483647
  %bf.set = or i32 %bf.clear, %bf.shl
  store i32 %bf.set, ptr %17, align 4
  %call10 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add6) #4
  %19 = lshr i8 %call10, 1
  %20 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %bf.load14 = load i32, ptr %17, align 4
  %21 = and i8 %19, 1
  %bf.value15 = zext i8 %21 to i32
  %bf.shl16 = shl nuw nsw i32 %bf.value15, 30
  %bf.clear17 = and i32 %bf.load14, -1073741825
  %bf.set18 = or i32 %bf.shl16, %bf.clear17
  store i32 %bf.set18, ptr %17, align 4
  %call20 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add6) #4
  %22 = lshr i8 %call20, 2
  %23 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %23)
  %bf.load24 = load i32, ptr %17, align 4
  %24 = and i8 %22, 1
  %bf.value25 = zext i8 %24 to i32
  %bf.shl26 = shl nuw nsw i32 %bf.value25, 29
  %bf.clear27 = and i32 %bf.load24, -536870913
  %bf.set28 = or i32 %bf.shl26, %bf.clear27
  store i32 %bf.set28, ptr %17, align 4
  %call30 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add6) #4
  %25 = lshr i8 %call30, 3
  %26 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %26)
  %bf.load34 = load i32, ptr %17, align 4
  %27 = and i8 %25, 1
  %bf.value35 = zext i8 %27 to i32
  %bf.shl36 = shl nuw nsw i32 %bf.value35, 28
  %bf.clear37 = and i32 %bf.load34, -268435457
  %bf.set38 = or i32 %bf.shl36, %bf.clear37
  store i32 %bf.set38, ptr %17, align 4
  %call40 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add6) #4
  %28 = lshr i8 %call40, 4
  %29 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %29)
  %bf.load44 = load i32, ptr %17, align 4
  %30 = and i8 %28, 1
  %bf.value45 = zext i8 %30 to i32
  %bf.shl46 = shl nuw nsw i32 %bf.value45, 27
  %bf.clear47 = and i32 %bf.load44, -134217729
  %bf.set48 = or i32 %bf.shl46, %bf.clear47
  store i32 %bf.set48, ptr %17, align 4
  %call50 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add6) #4
  %31 = lshr i8 %call50, 5
  %32 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %32)
  %bf.load54 = load i32, ptr %17, align 4
  %33 = and i8 %31, 1
  %bf.value55 = zext i8 %33 to i32
  %bf.shl56 = shl nuw nsw i32 %bf.value55, 26
  %bf.clear57 = and i32 %bf.load54, -67108865
  %bf.set58 = or i32 %bf.shl56, %bf.clear57
  store i32 %bf.set58, ptr %17, align 4
  %call60 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add6) #4
  %34 = lshr i8 %call60, 6
  %35 = and i8 %34, 1
  %36 = zext i8 %35 to i32
  %ramcfg_DLLoff = getelementptr inbounds %struct.nvbios_ramcfg, ptr %p, i32 0, i32 8
  %37 = ptrtoint ptr %ramcfg_DLLoff to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %ramcfg_DLLoff, align 4
  %add64 = add i32 %add4.i, 3
  %call65 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add64) #4
  %38 = and i8 %call65, 15
  %and67 = zext i8 %38 to i32
  %39 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %39)
  %bf.load69 = load i32, ptr %17, align 4
  %bf.shl71 = shl nuw nsw i32 %and67, 22
  %bf.clear72 = and i32 %bf.load69, -62914561
  %bf.set73 = or i32 %bf.shl71, %bf.clear72
  store i32 %bf.set73, ptr %17, align 4
  %add74 = add i32 %add4.i, 4
  %call75 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add74) #4
  %40 = and i8 %call75, 1
  %and77 = zext i8 %40 to i32
  %41 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %41)
  %bf.load79 = load i32, ptr %17, align 4
  %bf.shl81 = shl nuw nsw i32 %and77, 21
  %bf.clear82 = and i32 %bf.load79, -2097153
  %bf.set83 = or i32 %bf.shl81, %bf.clear82
  store i32 %bf.set83, ptr %17, align 4
  %call85 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add74) #4
  %42 = lshr i8 %call85, 3
  %43 = and i8 %42, 1
  %44 = zext i8 %43 to i32
  %ramcfg_FBVDDQ = getelementptr inbounds %struct.nvbios_ramcfg, ptr %p, i32 0, i32 10
  %45 = ptrtoint ptr %ramcfg_FBVDDQ to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %ramcfg_FBVDDQ, align 4
  %add89 = add i32 %add4.i, 5
  %call90 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add89) #4
  %conv91 = zext i8 %call90 to i32
  %46 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %46)
  %bf.load94 = load i32, ptr %17, align 4
  %bf.shl96 = shl nuw nsw i32 %conv91, 13
  %bf.clear97 = and i32 %bf.load94, -2088961
  %bf.set98 = or i32 %bf.clear97, %bf.shl96
  store i32 %bf.set98, ptr %17, align 4
  %add99 = add i32 %add4.i, 6
  %call100 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add99) #4
  %conv101 = zext i8 %call100 to i32
  %47 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %47)
  %bf.load104 = load i32, ptr %17, align 4
  %bf.shl106 = shl nuw nsw i32 %conv101, 5
  %bf.clear107 = and i32 %bf.load104, -8161
  %bf.set108 = or i32 %bf.clear107, %bf.shl106
  store i32 %bf.set108, ptr %17, align 4
  %add109 = add i32 %add4.i, 7
  %call110 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add109) #4
  %conv111 = zext i8 %call110 to i32
  %ramcfg_10_07 = getelementptr inbounds %struct.nvbios_ramcfg, ptr %p, i32 0, i32 11, i32 0, i32 1
  %48 = ptrtoint ptr %ramcfg_10_07 to i32
  call void @__asan_load4_noabort(i32 %48)
  %bf.load114 = load i32, ptr %ramcfg_10_07, align 4
  %bf.shl116 = shl nuw i32 %conv111, 24
  %bf.clear117 = and i32 %bf.load114, 16777215
  %bf.set118 = or i32 %bf.clear117, %bf.shl116
  store i32 %bf.set118, ptr %ramcfg_10_07, align 4
  %add119 = add i32 %add4.i, 8
  %call120 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add119) #4
  %conv121 = zext i8 %call120 to i32
  %49 = ptrtoint ptr %ramcfg_10_07 to i32
  call void @__asan_load4_noabort(i32 %49)
  %bf.load124 = load i32, ptr %ramcfg_10_07, align 4
  %bf.shl126 = shl nuw nsw i32 %conv121, 16
  %bf.clear127 = and i32 %bf.load124, -16711681
  %bf.set128 = or i32 %bf.clear127, %bf.shl126
  store i32 %bf.set128, ptr %ramcfg_10_07, align 4
  %add129 = add i32 %add4.i, 9
  %call130 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add129) #4
  %50 = and i8 %call130, 15
  %and132 = zext i8 %50 to i32
  %51 = ptrtoint ptr %ramcfg_10_07 to i32
  call void @__asan_load4_noabort(i32 %51)
  %bf.load134 = load i32, ptr %ramcfg_10_07, align 4
  %bf.shl136 = shl nuw nsw i32 %and132, 12
  %bf.clear137 = and i32 %bf.load134, -61441
  %bf.set138 = or i32 %bf.shl136, %bf.clear137
  store i32 %bf.set138, ptr %ramcfg_10_07, align 4
  %call140 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add129) #4
  %52 = lshr i8 %call140, 4
  %53 = zext i8 %52 to i32
  %54 = ptrtoint ptr %ramcfg_10_07 to i32
  call void @__asan_load4_noabort(i32 %54)
  %bf.load144 = load i32, ptr %ramcfg_10_07, align 4
  %bf.shl146 = shl nuw nsw i32 %53, 8
  %bf.clear147 = and i32 %bf.load144, -3841
  %bf.set148 = or i32 %bf.shl146, %bf.clear147
  store i32 %bf.set148, ptr %ramcfg_10_07, align 4
  br label %sw.epilog

sw.bb149:                                         ; preds = %12
  call void @__sanitizer_cov_trace_pc() #6
  %call151 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add4.i) #4
  %conv152 = zext i8 %call151 to i32
  %ramcfg_timing153 = getelementptr inbounds %struct.nvbios_ramcfg, ptr %p, i32 0, i32 7
  %55 = ptrtoint ptr %ramcfg_timing153 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %conv152, ptr %ramcfg_timing153, align 4
  %add154 = add i32 %add4.i, 1
  %call155 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add154) #4
  %and157 = zext i8 %call155 to i32
  %56 = getelementptr inbounds %struct.nvbios_ramcfg, ptr %p, i32 0, i32 11
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %bf.load159 = load i32, ptr %56, align 4
  %bf.shl161 = shl i32 %and157, 31
  %bf.clear162 = and i32 %bf.load159, 2147483647
  %bf.set163 = or i32 %bf.clear162, %bf.shl161
  store i32 %bf.set163, ptr %56, align 4
  %call165 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add154) #4
  %58 = lshr i8 %call165, 1
  %59 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %59)
  %bf.load169 = load i32, ptr %56, align 4
  %60 = and i8 %58, 1
  %bf.value170 = zext i8 %60 to i32
  %bf.shl171 = shl nuw nsw i32 %bf.value170, 30
  %bf.clear172 = and i32 %bf.load169, -1073741825
  %bf.set173 = or i32 %bf.shl171, %bf.clear172
  store i32 %bf.set173, ptr %56, align 4
  %call175 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add154) #4
  %61 = lshr i8 %call175, 2
  %62 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %62)
  %bf.load179 = load i32, ptr %56, align 4
  %63 = and i8 %61, 1
  %bf.value180 = zext i8 %63 to i32
  %bf.shl181 = shl nuw nsw i32 %bf.value180, 29
  %bf.clear182 = and i32 %bf.load179, -536870913
  %bf.set183 = or i32 %bf.shl181, %bf.clear182
  store i32 %bf.set183, ptr %56, align 4
  %call185 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add154) #4
  %64 = lshr i8 %call185, 3
  %65 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %65)
  %bf.load189 = load i32, ptr %56, align 4
  %66 = and i8 %64, 1
  %bf.value190 = zext i8 %66 to i32
  %bf.shl191 = shl nuw nsw i32 %bf.value190, 28
  %bf.clear192 = and i32 %bf.load189, -268435457
  %bf.set193 = or i32 %bf.shl191, %bf.clear192
  store i32 %bf.set193, ptr %56, align 4
  %call195 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add154) #4
  %67 = lshr i8 %call195, 4
  %68 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %68)
  %bf.load199 = load i32, ptr %56, align 4
  %69 = and i8 %67, 1
  %bf.value200 = zext i8 %69 to i32
  %bf.shl201 = shl nuw nsw i32 %bf.value200, 27
  %bf.clear202 = and i32 %bf.load199, -134217729
  %bf.set203 = or i32 %bf.shl201, %bf.clear202
  store i32 %bf.set203, ptr %56, align 4
  %call205 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add154) #4
  %70 = lshr i8 %call205, 5
  %71 = and i8 %70, 1
  %72 = zext i8 %71 to i32
  %ramcfg_DLLoff209 = getelementptr inbounds %struct.nvbios_ramcfg, ptr %p, i32 0, i32 8
  %73 = ptrtoint ptr %ramcfg_DLLoff209 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %ramcfg_DLLoff209, align 4
  %call211 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add154) #4
  %74 = lshr i8 %call211, 6
  %75 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %75)
  %bf.load215 = load i32, ptr %56, align 4
  %76 = and i8 %74, 1
  %bf.value216 = zext i8 %76 to i32
  %bf.shl217 = shl nuw nsw i32 %bf.value216, 26
  %bf.clear218 = and i32 %bf.load215, -67108865
  %bf.set219 = or i32 %bf.shl217, %bf.clear218
  store i32 %bf.set219, ptr %56, align 4
  %call221 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add154) #4
  %77 = lshr i8 %call221, 7
  %78 = zext i8 %77 to i32
  %79 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %79)
  %bf.load225 = load i32, ptr %56, align 4
  %bf.shl227 = shl nuw nsw i32 %78, 25
  %bf.clear228 = and i32 %bf.load225, -33554433
  %bf.set229 = or i32 %bf.shl227, %bf.clear228
  store i32 %bf.set229, ptr %56, align 4
  %add230 = add i32 %add4.i, 2
  %call231 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add230) #4
  %80 = and i8 %call231, 3
  %and233 = zext i8 %80 to i32
  %81 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %81)
  %bf.load235 = load i32, ptr %56, align 4
  %bf.shl237 = shl nuw nsw i32 %and233, 23
  %bf.clear238 = and i32 %bf.load235, -25165825
  %bf.set239 = or i32 %bf.shl237, %bf.clear238
  store i32 %bf.set239, ptr %56, align 4
  %call241 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add230) #4
  %82 = lshr i8 %call241, 2
  %83 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %83)
  %bf.load245 = load i32, ptr %56, align 4
  %84 = and i8 %82, 1
  %bf.value246 = zext i8 %84 to i32
  %bf.shl247 = shl nuw nsw i32 %bf.value246, 22
  %bf.clear248 = and i32 %bf.load245, -4194305
  %bf.set249 = or i32 %bf.shl247, %bf.clear248
  store i32 %bf.set249, ptr %56, align 4
  %call251 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add230) #4
  %85 = lshr i8 %call251, 3
  %86 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %86)
  %bf.load255 = load i32, ptr %56, align 4
  %87 = and i8 %85, 1
  %bf.value256 = zext i8 %87 to i32
  %bf.shl257 = shl nuw nsw i32 %bf.value256, 21
  %bf.clear258 = and i32 %bf.load255, -2097153
  %bf.set259 = or i32 %bf.shl257, %bf.clear258
  store i32 %bf.set259, ptr %56, align 4
  %call261 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add230) #4
  %88 = lshr i8 %call261, 4
  %89 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %89)
  %bf.load265 = load i32, ptr %56, align 4
  %90 = and i8 %88, 1
  %bf.value266 = zext i8 %90 to i32
  %bf.shl267 = shl nuw nsw i32 %bf.value266, 20
  %bf.clear268 = and i32 %bf.load265, -1048577
  %bf.set269 = or i32 %bf.shl267, %bf.clear268
  store i32 %bf.set269, ptr %56, align 4
  %call271 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add230) #4
  %91 = lshr i8 %call271, 6
  %92 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %92)
  %bf.load275 = load i32, ptr %56, align 4
  %93 = and i8 %91, 1
  %bf.value276 = zext i8 %93 to i32
  %bf.shl277 = shl nuw nsw i32 %bf.value276, 19
  %bf.clear278 = and i32 %bf.load275, -524289
  %bf.set279 = or i32 %bf.shl277, %bf.clear278
  store i32 %bf.set279, ptr %56, align 4
  %call281 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add230) #4
  %94 = lshr i8 %call281, 7
  %95 = zext i8 %94 to i32
  %96 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %96)
  %bf.load285 = load i32, ptr %56, align 4
  %bf.shl287 = shl nuw nsw i32 %95, 18
  %bf.clear288 = and i32 %bf.load285, -262145
  %bf.set289 = or i32 %bf.shl287, %bf.clear288
  store i32 %bf.set289, ptr %56, align 4
  %add290 = add i32 %add4.i, 3
  %call291 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add290) #4
  %97 = and i8 %call291, 15
  %and293 = zext i8 %97 to i32
  %98 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %98)
  %bf.load295 = load i32, ptr %56, align 4
  %bf.shl297 = shl nuw nsw i32 %and293, 14
  %bf.clear298 = and i32 %bf.load295, -245761
  %bf.set299 = or i32 %bf.shl297, %bf.clear298
  store i32 %bf.set299, ptr %56, align 4
  %call301 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add290) #4
  %99 = lshr i8 %call301, 4
  %100 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %100)
  %bf.load305 = load i32, ptr %56, align 4
  %101 = and i8 %99, 3
  %bf.value306 = zext i8 %101 to i32
  %bf.shl307 = shl nuw nsw i32 %bf.value306, 12
  %bf.clear308 = and i32 %bf.load305, -12289
  %bf.set309 = or i32 %bf.shl307, %bf.clear308
  store i32 %bf.set309, ptr %56, align 4
  %call311 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add290) #4
  %102 = lshr i8 %call311, 6
  %103 = zext i8 %102 to i32
  %104 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %104)
  %bf.load315 = load i32, ptr %56, align 4
  %bf.shl317 = shl nuw nsw i32 %103, 10
  %bf.clear318 = and i32 %bf.load315, -3073
  %bf.set319 = or i32 %bf.shl317, %bf.clear318
  store i32 %bf.set319, ptr %56, align 4
  %call321 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add290) #4
  %105 = lshr i8 %call321, 4
  %106 = zext i8 %105 to i32
  %107 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %107)
  %bf.load325 = load i32, ptr %56, align 4
  %bf.shl327 = shl nuw nsw i32 %106, 6
  %bf.clear328 = and i32 %bf.load325, -961
  %bf.set329 = or i32 %bf.shl327, %bf.clear328
  store i32 %bf.set329, ptr %56, align 4
  %add330 = add i32 %add4.i, 4
  %call331 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add330) #4
  %conv332 = zext i8 %call331 to i32
  %ramcfg_11_04 = getelementptr inbounds %struct.nvbios_ramcfg, ptr %p, i32 0, i32 11, i32 0, i32 1
  %108 = ptrtoint ptr %ramcfg_11_04 to i32
  call void @__asan_load4_noabort(i32 %108)
  %bf.load335 = load i32, ptr %ramcfg_11_04, align 4
  %bf.shl337 = shl nuw i32 %conv332, 24
  %bf.clear338 = and i32 %bf.load335, 16777215
  %bf.set339 = or i32 %bf.clear338, %bf.shl337
  store i32 %bf.set339, ptr %ramcfg_11_04, align 4
  %add340 = add i32 %add4.i, 6
  %call341 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add340) #4
  %conv342 = zext i8 %call341 to i32
  %109 = ptrtoint ptr %ramcfg_11_04 to i32
  call void @__asan_load4_noabort(i32 %109)
  %bf.load345 = load i32, ptr %ramcfg_11_04, align 4
  %bf.shl347 = shl nuw nsw i32 %conv342, 16
  %bf.clear348 = and i32 %bf.load345, -16711681
  %bf.set349 = or i32 %bf.clear348, %bf.shl347
  store i32 %bf.set349, ptr %ramcfg_11_04, align 4
  %add350 = add i32 %add4.i, 7
  %call351 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add350) #4
  %110 = lshr i8 %call351, 1
  %111 = ptrtoint ptr %ramcfg_11_04 to i32
  call void @__asan_load4_noabort(i32 %111)
  %bf.load355 = load i32, ptr %ramcfg_11_04, align 4
  %112 = and i8 %110, 1
  %bf.value356 = zext i8 %112 to i32
  %bf.shl357 = shl nuw nsw i32 %bf.value356, 15
  %bf.clear358 = and i32 %bf.load355, -32769
  %bf.set359 = or i32 %bf.shl357, %bf.clear358
  store i32 %bf.set359, ptr %ramcfg_11_04, align 4
  %call361 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add350) #4
  %113 = lshr i8 %call361, 2
  %114 = ptrtoint ptr %ramcfg_11_04 to i32
  call void @__asan_load4_noabort(i32 %114)
  %bf.load365 = load i32, ptr %ramcfg_11_04, align 4
  %115 = and i8 %113, 1
  %bf.value366 = zext i8 %115 to i32
  %bf.shl367 = shl nuw nsw i32 %bf.value366, 14
  %bf.clear368 = and i32 %bf.load365, -16385
  %bf.set369 = or i32 %bf.shl367, %bf.clear368
  store i32 %bf.set369, ptr %ramcfg_11_04, align 4
  %call371 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add350) #4
  %116 = lshr i8 %call371, 3
  %117 = ptrtoint ptr %ramcfg_11_04 to i32
  call void @__asan_load4_noabort(i32 %117)
  %bf.load375 = load i32, ptr %ramcfg_11_04, align 4
  %118 = and i8 %116, 1
  %bf.value376 = zext i8 %118 to i32
  %bf.shl377 = shl nuw nsw i32 %bf.value376, 13
  %bf.clear378 = and i32 %bf.load375, -8193
  %bf.set379 = or i32 %bf.shl377, %bf.clear378
  store i32 %bf.set379, ptr %ramcfg_11_04, align 4
  %call381 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add350) #4
  %119 = lshr i8 %call381, 4
  %120 = ptrtoint ptr %ramcfg_11_04 to i32
  call void @__asan_load4_noabort(i32 %120)
  %bf.load385 = load i32, ptr %ramcfg_11_04, align 4
  %121 = and i8 %119, 1
  %bf.value386 = zext i8 %121 to i32
  %bf.shl387 = shl nuw nsw i32 %bf.value386, 12
  %bf.clear388 = and i32 %bf.load385, -4097
  %bf.set389 = or i32 %bf.shl387, %bf.clear388
  store i32 %bf.set389, ptr %ramcfg_11_04, align 4
  %call391 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add350) #4
  %122 = lshr i8 %call391, 6
  %123 = ptrtoint ptr %ramcfg_11_04 to i32
  call void @__asan_load4_noabort(i32 %123)
  %bf.load395 = load i32, ptr %ramcfg_11_04, align 4
  %124 = and i8 %122, 1
  %bf.value396 = zext i8 %124 to i32
  %bf.shl397 = shl nuw nsw i32 %bf.value396, 11
  %bf.clear398 = and i32 %bf.load395, -2049
  %bf.set399 = or i32 %bf.shl397, %bf.clear398
  store i32 %bf.set399, ptr %ramcfg_11_04, align 4
  %call401 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add350) #4
  %125 = lshr i8 %call401, 7
  %126 = zext i8 %125 to i32
  %127 = ptrtoint ptr %ramcfg_11_04 to i32
  call void @__asan_load4_noabort(i32 %127)
  %bf.load405 = load i32, ptr %ramcfg_11_04, align 4
  %bf.shl407 = shl nuw nsw i32 %126, 10
  %bf.clear408 = and i32 %bf.load405, -1025
  %bf.set409 = or i32 %bf.shl407, %bf.clear408
  store i32 %bf.set409, ptr %ramcfg_11_04, align 4
  %add410 = add i32 %add4.i, 8
  %call411 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add410) #4
  %128 = and i8 %call411, 1
  %and413 = zext i8 %128 to i32
  %129 = ptrtoint ptr %ramcfg_11_04 to i32
  call void @__asan_load4_noabort(i32 %129)
  %bf.load415 = load i32, ptr %ramcfg_11_04, align 4
  %bf.shl417 = shl nuw nsw i32 %and413, 9
  %bf.clear418 = and i32 %bf.load415, -513
  %bf.set419 = or i32 %bf.shl417, %bf.clear418
  store i32 %bf.set419, ptr %ramcfg_11_04, align 4
  %call421 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add410) #4
  %130 = lshr i8 %call421, 1
  %131 = ptrtoint ptr %ramcfg_11_04 to i32
  call void @__asan_load4_noabort(i32 %131)
  %bf.load425 = load i32, ptr %ramcfg_11_04, align 4
  %132 = and i8 %130, 1
  %bf.value426 = zext i8 %132 to i32
  %bf.shl427 = shl nuw nsw i32 %bf.value426, 8
  %bf.clear428 = and i32 %bf.load425, -257
  %bf.set429 = or i32 %bf.shl427, %bf.clear428
  store i32 %bf.set429, ptr %ramcfg_11_04, align 4
  %call431 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add410) #4
  %133 = ptrtoint ptr %ramcfg_11_04 to i32
  call void @__asan_load4_noabort(i32 %133)
  %bf.load435 = load i32, ptr %ramcfg_11_04, align 4
  %134 = shl i8 %call431, 5
  %135 = and i8 %134, -128
  %bf.shl437 = zext i8 %135 to i32
  %bf.clear438 = and i32 %bf.load435, -129
  %bf.set439 = or i32 %bf.clear438, %bf.shl437
  store i32 %bf.set439, ptr %ramcfg_11_04, align 4
  %call441 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add410) #4
  %136 = ptrtoint ptr %ramcfg_11_04 to i32
  call void @__asan_load4_noabort(i32 %136)
  %bf.load445 = load i32, ptr %ramcfg_11_04, align 4
  %137 = shl i8 %call441, 3
  %138 = and i8 %137, 64
  %bf.shl447 = zext i8 %138 to i32
  %bf.clear448 = and i32 %bf.load445, -65
  %bf.set449 = or i32 %bf.clear448, %bf.shl447
  store i32 %bf.set449, ptr %ramcfg_11_04, align 4
  %call451 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add410) #4
  %139 = ptrtoint ptr %ramcfg_11_04 to i32
  call void @__asan_load4_noabort(i32 %139)
  %bf.load455 = load i32, ptr %ramcfg_11_04, align 4
  %140 = shl i8 %call451, 1
  %141 = and i8 %140, 32
  %bf.shl457 = zext i8 %141 to i32
  %bf.clear458 = and i32 %bf.load455, -33
  %bf.set459 = or i32 %bf.clear458, %bf.shl457
  store i32 %bf.set459, ptr %ramcfg_11_04, align 4
  %call461 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add410) #4
  %142 = ptrtoint ptr %ramcfg_11_04 to i32
  call void @__asan_load4_noabort(i32 %142)
  %bf.load465 = load i32, ptr %ramcfg_11_04, align 4
  %143 = lshr i8 %call461, 1
  %144 = and i8 %143, 16
  %bf.shl467 = zext i8 %144 to i32
  %bf.clear468 = and i32 %bf.load465, -17
  %bf.set469 = or i32 %bf.clear468, %bf.shl467
  store i32 %bf.set469, ptr %ramcfg_11_04, align 4
  %add470 = add i32 %add4.i, 9
  %call471 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add470) #4
  %ramcfg_11_09 = getelementptr inbounds %struct.nvbios_ramcfg, ptr %p, i32 0, i32 11, i32 0, i32 2
  %145 = ptrtoint ptr %ramcfg_11_09 to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 %call471, ptr %ramcfg_11_09, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb149, %sw.bb, %.sw.epilog_crit_edge, %nvbios_rammapSe.exit.sw.epilog_crit_edge, %nvbios_rammapSe.exit.thread
  %data.addr.0 = phi i32 [ %add4.i, %sw.bb149 ], [ %add4.i, %sw.bb ], [ 0, %.sw.epilog_crit_edge ], [ 0, %nvbios_rammapSe.exit.sw.epilog_crit_edge ], [ 0, %nvbios_rammapSe.exit.thread ]
  ret i32 %data.addr.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
