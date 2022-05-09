; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/subdev/bios/boost.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/bios/boost.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.bit_entry = type { i8, i8, i16, i16 }
%struct.nvbios_boostE = type { i8, i32, i32 }
%struct.nvbios_boostS = type { i8, i8, i32, i32 }

@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvbios_boostTe(ptr noundef %bios, ptr nocapture noundef writeonly %ver, ptr nocapture noundef writeonly %hdr, ptr nocapture noundef writeonly %cnt, ptr nocapture noundef writeonly %len, ptr nocapture noundef writeonly %snr, ptr nocapture noundef writeonly %ssz) local_unnamed_addr #0 align 64 {
entry:
  %bit_P = alloca %struct.bit_entry, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %bit_P) #4
  %0 = getelementptr inbounds %struct.bit_entry, ptr %bit_P, i32 0, i32 2
  %1 = getelementptr inbounds %struct.bit_entry, ptr %bit_P, i32 0, i32 3
  %2 = call ptr @memset(ptr %bit_P, i32 255, i32 6)
  %call = call i32 @bit_entry(ptr noundef %bios, i8 noundef zeroext 80, ptr noundef nonnull %bit_P) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then:                                          ; preds = %entry
  %3 = getelementptr inbounds %struct.bit_entry, ptr %bit_P, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %5)
  %cmp = icmp eq i8 %5, 2
  br i1 %cmp, label %land.lhs.true, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true:                                    ; preds = %if.then
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %0, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 51, i16 %7)
  %cmp3 = icmp ugt i16 %7, 51
  br i1 %cmp3, label %if.end, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %1, align 2
  %conv6 = zext i16 %9 to i32
  %add = add nuw nsw i32 %conv6, 48
  %call7 = call i32 @nvbios_rd32(ptr noundef %bios, i32 noundef %add) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end.cleanup_crit_edge, label %if.then9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then9:                                         ; preds = %if.end
  %call11 = call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %call7) #4
  %10 = ptrtoint ptr %ver to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %call11, ptr %ver, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %call11)
  %cond = icmp eq i8 %call11, 17
  br i1 %cond, label %sw.bb, label %if.then9.cleanup_crit_edge

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb:                                            ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #6
  %add13 = add i32 %call7, 1
  %call14 = call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add13) #4
  %11 = ptrtoint ptr %hdr to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %call14, ptr %hdr, align 1
  %add15 = add i32 %call7, 5
  %call16 = call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add15) #4
  %12 = ptrtoint ptr %cnt to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %call16, ptr %cnt, align 1
  %add17 = add i32 %call7, 2
  %call18 = call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add17) #4
  %13 = ptrtoint ptr %len to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %call18, ptr %len, align 1
  %add19 = add i32 %call7, 4
  %call20 = call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add19) #4
  %14 = ptrtoint ptr %snr to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %call20, ptr %snr, align 1
  %add21 = add i32 %call7, 3
  %call22 = call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add21) #4
  %15 = ptrtoint ptr %ssz to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %call22, ptr %ssz, align 1
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %if.then9.cleanup_crit_edge, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %sw.bb ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.then9.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.then.cleanup_crit_edge ]
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
define dso_local i32 @nvbios_boostEe(ptr noundef %bios, i32 noundef %idx, ptr nocapture noundef writeonly %ver, ptr nocapture noundef %hdr, ptr nocapture noundef %cnt, ptr nocapture noundef %len) local_unnamed_addr #0 align 64 {
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
  %call = call i32 @nvbios_boostTe(ptr noundef %bios, ptr noundef %ver, ptr noundef %hdr, ptr noundef %cnt, ptr noundef %len, ptr noundef nonnull %snr, ptr noundef nonnull %ssz)
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
define dso_local i32 @nvbios_boostEp(ptr noundef %bios, i32 noundef %idx, ptr nocapture noundef writeonly %ver, ptr nocapture noundef %hdr, ptr nocapture noundef %cnt, ptr nocapture noundef %len, ptr nocapture noundef writeonly %info) local_unnamed_addr #0 align 64 {
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
  %call.i = call i32 @nvbios_boostTe(ptr noundef %bios, ptr noundef %ver, ptr noundef %hdr, ptr noundef %cnt, ptr noundef %len, ptr noundef nonnull %snr.i, ptr noundef nonnull %ssz.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %entry.nvbios_boostEe.exit.thread_crit_edge, label %land.lhs.true.i

entry.nvbios_boostEe.exit.thread_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %nvbios_boostEe.exit.thread

land.lhs.true.i:                                  ; preds = %entry
  %2 = ptrtoint ptr %cnt to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cnt, align 1
  %conv.i = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i, i32 %idx)
  %cmp.i = icmp sgt i32 %conv.i, %idx
  br i1 %cmp.i, label %nvbios_boostEe.exit, label %land.lhs.true.i.nvbios_boostEe.exit.thread_crit_edge

land.lhs.true.i.nvbios_boostEe.exit.thread_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %nvbios_boostEe.exit.thread

nvbios_boostEe.exit.thread:                       ; preds = %land.lhs.true.i.nvbios_boostEe.exit.thread_crit_edge, %entry.nvbios_boostEe.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ssz.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %snr.i) #4
  %4 = call ptr @memset(ptr %info, i32 0, i32 12)
  br label %if.end

nvbios_boostEe.exit:                              ; preds = %land.lhs.true.i
  %5 = ptrtoint ptr %hdr to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %hdr, align 1
  %conv2.i = zext i8 %6 to i32
  %add.i = add i32 %call.i, %conv2.i
  %7 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %len, align 1
  %conv3.i = zext i8 %8 to i32
  %9 = ptrtoint ptr %snr.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %snr.i, align 1
  %conv4.i = zext i8 %10 to i32
  %11 = ptrtoint ptr %ssz.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %ssz.i, align 1
  %conv5.i = zext i8 %12 to i32
  %mul.i = mul nuw nsw i32 %conv5.i, %conv4.i
  %add6.i = add nuw nsw i32 %mul.i, %conv3.i
  %mul7.i = mul i32 %add6.i, %idx
  %add8.i = add i32 %add.i, %mul7.i
  store i8 %8, ptr %hdr, align 1
  %13 = ptrtoint ptr %cnt to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %10, ptr %cnt, align 1
  store i8 %12, ptr %len, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ssz.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %snr.i) #4
  %14 = call ptr @memset(ptr %info, i32 0, i32 12)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add8.i)
  %tobool.not = icmp eq i32 %add8.i, 0
  br i1 %tobool.not, label %nvbios_boostEe.exit.if.end_crit_edge, label %if.then

nvbios_boostEe.exit.if.end_crit_edge:             ; preds = %nvbios_boostEe.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %nvbios_boostEe.exit
  call void @__sanitizer_cov_trace_pc() #6
  %call1 = tail call zeroext i16 @nvbios_rd16(ptr noundef %bios, i32 noundef %add8.i) #4
  %15 = lshr i16 %call1, 5
  %16 = trunc i16 %15 to i8
  %conv2 = and i8 %16, 15
  %17 = ptrtoint ptr %info to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv2, ptr %info, align 4
  %add3 = add i32 %add8.i, 2
  %call4 = tail call zeroext i16 @nvbios_rd16(ptr noundef %bios, i32 noundef %add3) #4
  %conv5 = zext i16 %call4 to i32
  %mul = mul nuw nsw i32 %conv5, 1000
  %min = getelementptr inbounds %struct.nvbios_boostE, ptr %info, i32 0, i32 1
  %18 = ptrtoint ptr %min to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %mul, ptr %min, align 4
  %add6 = add i32 %add8.i, 4
  %call7 = tail call zeroext i16 @nvbios_rd16(ptr noundef %bios, i32 noundef %add6) #4
  %conv8 = zext i16 %call7 to i32
  %mul9 = mul nuw nsw i32 %conv8, 1000
  %max = getelementptr inbounds %struct.nvbios_boostE, ptr %info, i32 0, i32 2
  %19 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %mul9, ptr %max, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %nvbios_boostEe.exit.if.end_crit_edge, %nvbios_boostEe.exit.thread
  %retval.0.i22 = phi i32 [ 0, %nvbios_boostEe.exit.thread ], [ %add8.i, %if.then ], [ 0, %nvbios_boostEe.exit.if.end_crit_edge ]
  ret i32 %retval.0.i22
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @nvbios_rd16(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvbios_boostEm(ptr noundef %bios, i8 noundef zeroext %pstate, ptr nocapture noundef writeonly %ver, ptr nocapture noundef %hdr, ptr nocapture noundef %cnt, ptr nocapture noundef %len, ptr nocapture noundef %info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %entry
  %idx.0 = phi i32 [ 0, %entry ], [ %inc, %while.body.while.cond_crit_edge ]
  %call = tail call i32 @nvbios_boostEp(ptr noundef %bios, i32 noundef %idx.0, ptr noundef %ver, ptr noundef %hdr, ptr noundef %cnt, ptr noundef %len, ptr noundef %info)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %while.cond.while.end_crit_edge, label %while.body

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.body:                                       ; preds = %while.cond
  %inc = add i32 %idx.0, 1
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %info, align 4
  %cmp = icmp eq i8 %1, %pstate
  br i1 %cmp, label %while.body.while.end_crit_edge, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %while.cond.while.end_crit_edge
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @nvbios_boostSe(ptr nocapture readnone %bios, i32 noundef %idx, i32 noundef %data, ptr nocapture readnone %ver, ptr nocapture noundef %hdr, i8 noundef zeroext %cnt, i8 noundef zeroext %len) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %data)
  %tobool.not = icmp ne i32 %data, 0
  %conv = zext i8 %cnt to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %idx)
  %cmp = icmp sgt i32 %conv, %idx
  %or.cond = and i1 %tobool.not, %cmp
  br i1 %or.cond, label %if.then, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %0 = ptrtoint ptr %hdr to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %hdr, align 1
  %conv2 = zext i8 %1 to i32
  %conv3 = zext i8 %len to i32
  %mul = mul i32 %conv3, %idx
  %add = add i32 %mul, %data
  %add4 = add i32 %add, %conv2
  store i8 %len, ptr %hdr, align 1
  br label %return

return:                                           ; preds = %if.then, %entry.return_crit_edge
  %retval.0 = phi i32 [ %add4, %if.then ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvbios_boostSp(ptr noundef %bios, i32 noundef %idx, i32 noundef %data, ptr nocapture noundef readnone %ver, ptr nocapture noundef %hdr, i8 noundef zeroext %cnt, i8 noundef zeroext %len, ptr nocapture noundef writeonly %info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %data)
  %tobool.not.i = icmp ne i32 %data, 0
  %conv.i = zext i8 %cnt to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i, i32 %idx)
  %cmp.i = icmp sgt i32 %conv.i, %idx
  %or.cond.i = and i1 %tobool.not.i, %cmp.i
  br i1 %or.cond.i, label %nvbios_boostSe.exit, label %nvbios_boostSe.exit.thread

nvbios_boostSe.exit.thread:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %0 = call ptr @memset(ptr %info, i32 0, i32 12)
  br label %if.end

nvbios_boostSe.exit:                              ; preds = %entry
  %1 = ptrtoint ptr %hdr to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %hdr, align 1
  %conv2.i = zext i8 %2 to i32
  %conv3.i = zext i8 %len to i32
  %mul.i = mul i32 %conv3.i, %idx
  %add.i = add i32 %mul.i, %data
  %add4.i = add i32 %add.i, %conv2.i
  store i8 %len, ptr %hdr, align 1
  %3 = call ptr @memset(ptr %info, i32 0, i32 12)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add4.i)
  %tobool.not = icmp eq i32 %add4.i, 0
  br i1 %tobool.not, label %nvbios_boostSe.exit.if.end_crit_edge, label %if.then

nvbios_boostSe.exit.if.end_crit_edge:             ; preds = %nvbios_boostSe.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %nvbios_boostSe.exit
  call void @__sanitizer_cov_trace_pc() #6
  %call1 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add4.i) #4
  %4 = ptrtoint ptr %info to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %call1, ptr %info, align 4
  %add2 = add i32 %add4.i, 1
  %call3 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add2) #4
  %percent = getelementptr inbounds %struct.nvbios_boostS, ptr %info, i32 0, i32 1
  %5 = ptrtoint ptr %percent to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %call3, ptr %percent, align 1
  %add4 = add i32 %add4.i, 2
  %call5 = tail call zeroext i16 @nvbios_rd16(ptr noundef %bios, i32 noundef %add4) #4
  %conv = zext i16 %call5 to i32
  %mul = mul nuw nsw i32 %conv, 1000
  %min = getelementptr inbounds %struct.nvbios_boostS, ptr %info, i32 0, i32 2
  %6 = ptrtoint ptr %min to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %mul, ptr %min, align 4
  %add6 = add i32 %add4.i, 4
  %call7 = tail call zeroext i16 @nvbios_rd16(ptr noundef %bios, i32 noundef %add6) #4
  %conv8 = zext i16 %call7 to i32
  %mul9 = mul nuw nsw i32 %conv8, 1000
  %max = getelementptr inbounds %struct.nvbios_boostS, ptr %info, i32 0, i32 3
  %7 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %mul9, ptr %max, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %nvbios_boostSe.exit.if.end_crit_edge, %nvbios_boostSe.exit.thread
  %retval.0.i26 = phi i32 [ 0, %nvbios_boostSe.exit.thread ], [ %add4.i, %if.then ], [ 0, %nvbios_boostSe.exit.if.end_crit_edge ]
  ret i32 %retval.0.i26
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

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
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
