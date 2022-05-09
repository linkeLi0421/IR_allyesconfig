; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/subdev/bios/M0209.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/bios/M0209.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.bit_entry = type { i8, i8, i16, i16 }
%struct.nvbios_M0209E = type { i8, i8, i8, i8, i8, i8 }

@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvbios_M0209Te(ptr noundef %bios, ptr nocapture noundef writeonly %ver, ptr nocapture noundef writeonly %hdr, ptr nocapture noundef writeonly %cnt, ptr nocapture noundef writeonly %len, ptr nocapture noundef writeonly %snr, ptr nocapture noundef writeonly %ssz) local_unnamed_addr #0 align 64 {
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
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %5)
  %cmp = icmp eq i8 %5, 2
  br i1 %cmp, label %land.lhs.true, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

land.lhs.true:                                    ; preds = %if.then
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %0, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 12, i16 %7)
  %cmp3 = icmp ugt i16 %7, 12
  br i1 %cmp3, label %if.end, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %1, align 2
  %conv6 = zext i16 %9 to i32
  %add = add nuw nsw i32 %conv6, 9
  %call7 = call i32 @nvbios_rd32(ptr noundef %bios, i32 noundef %add) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end.cleanup_crit_edge, label %if.then9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then9:                                         ; preds = %if.end
  %call11 = call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %call7) #3
  %10 = ptrtoint ptr %ver to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %call11, ptr %ver, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %call11)
  %cond = icmp eq i8 %call11, 16
  br i1 %cond, label %sw.bb, label %if.then9.cleanup_crit_edge

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

sw.bb:                                            ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #5
  %add13 = add i32 %call7, 1
  %call14 = call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add13) #3
  %11 = ptrtoint ptr %hdr to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %call14, ptr %hdr, align 1
  %add15 = add i32 %call7, 2
  %call16 = call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add15) #3
  %12 = ptrtoint ptr %len to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %call16, ptr %len, align 1
  %add17 = add i32 %call7, 3
  %call18 = call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add17) #3
  %13 = ptrtoint ptr %ssz to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %call18, ptr %ssz, align 1
  %14 = ptrtoint ptr %snr to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %snr, align 1
  %add19 = add i32 %call7, 4
  %call20 = call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add19) #3
  %15 = ptrtoint ptr %cnt to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %call20, ptr %cnt, align 1
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %if.then9.cleanup_crit_edge, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %sw.bb ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.then9.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.then.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %bit_M) #3
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
define dso_local i32 @nvbios_M0209Ee(ptr noundef %bios, i32 noundef %idx, ptr nocapture noundef writeonly %ver, ptr nocapture noundef %hdr, ptr nocapture noundef %cnt, ptr nocapture noundef %len) local_unnamed_addr #0 align 64 {
entry:
  %snr = alloca i8, align 1
  %ssz = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %snr) #3
  %0 = ptrtoint ptr %snr to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %snr, align 1, !annotation !9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ssz) #3
  %1 = ptrtoint ptr %ssz to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %ssz, align 1, !annotation !9
  %call = call i32 @nvbios_M0209Te(ptr noundef %bios, ptr noundef %ver, ptr noundef %hdr, ptr noundef %cnt, ptr noundef %len, ptr noundef nonnull %snr, ptr noundef nonnull %ssz)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %land.lhs.true

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
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
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
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
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ssz) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %snr) #3
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvbios_M0209Ep(ptr noundef %bios, i32 noundef %idx, ptr nocapture noundef %ver, ptr nocapture noundef %hdr, ptr nocapture noundef %cnt, ptr nocapture noundef %len, ptr nocapture noundef writeonly %info) local_unnamed_addr #0 align 64 {
entry:
  %snr.i = alloca i8, align 1
  %ssz.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %snr.i) #3
  %0 = ptrtoint ptr %snr.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %snr.i, align 1, !annotation !9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ssz.i) #3
  %1 = ptrtoint ptr %ssz.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %ssz.i, align 1, !annotation !9
  %call.i = call i32 @nvbios_M0209Te(ptr noundef %bios, ptr noundef %ver, ptr noundef %hdr, ptr noundef %cnt, ptr noundef %len, ptr noundef nonnull %snr.i, ptr noundef nonnull %ssz.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %entry.nvbios_M0209Ee.exit.thread_crit_edge, label %land.lhs.true.i

entry.nvbios_M0209Ee.exit.thread_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %nvbios_M0209Ee.exit.thread

land.lhs.true.i:                                  ; preds = %entry
  %2 = ptrtoint ptr %cnt to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cnt, align 1
  %conv.i = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i, i32 %idx)
  %cmp.i = icmp sgt i32 %conv.i, %idx
  br i1 %cmp.i, label %nvbios_M0209Ee.exit, label %land.lhs.true.i.nvbios_M0209Ee.exit.thread_crit_edge

land.lhs.true.i.nvbios_M0209Ee.exit.thread_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %nvbios_M0209Ee.exit.thread

nvbios_M0209Ee.exit.thread:                       ; preds = %land.lhs.true.i.nvbios_M0209Ee.exit.thread_crit_edge, %entry.nvbios_M0209Ee.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ssz.i) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %snr.i) #3
  %4 = call ptr @memset(ptr %info, i32 0, i32 6)
  br label %cleanup

nvbios_M0209Ee.exit:                              ; preds = %land.lhs.true.i
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
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ssz.i) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %snr.i) #3
  %14 = call ptr @memset(ptr %info, i32 0, i32 6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add8.i)
  %tobool.not = icmp ne i32 %add8.i, 0
  %15 = ptrtoint ptr %ver to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %ver, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %16)
  %cond45 = icmp eq i8 %16, 16
  %cond = select i1 %tobool.not, i1 %cond45, i1 false
  br i1 %cond, label %sw.bb, label %nvbios_M0209Ee.exit.cleanup_crit_edge

nvbios_M0209Ee.exit.cleanup_crit_edge:            ; preds = %nvbios_M0209Ee.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

sw.bb:                                            ; preds = %nvbios_M0209Ee.exit
  call void @__sanitizer_cov_trace_pc() #5
  %call2 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add8.i) #3
  %17 = lshr i8 %call2, 6
  %18 = and i8 %17, 1
  %19 = ptrtoint ptr %info to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %info, align 1
  %call6 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add8.i) #3
  %20 = and i8 %call6, 63
  %bits = getelementptr inbounds %struct.nvbios_M0209E, ptr %info, i32 0, i32 1
  %21 = ptrtoint ptr %bits to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %bits, align 1
  %add10 = add i32 %add8.i, 1
  %call11 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add10) #3
  %modulo = getelementptr inbounds %struct.nvbios_M0209E, ptr %info, i32 0, i32 2
  %22 = ptrtoint ptr %modulo to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %call11, ptr %modulo, align 1
  %add12 = add i32 %add8.i, 2
  %call13 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add12) #3
  %23 = lshr i8 %call13, 6
  %24 = and i8 %23, 1
  %v02_40 = getelementptr inbounds %struct.nvbios_M0209E, ptr %info, i32 0, i32 3
  %25 = ptrtoint ptr %v02_40 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %v02_40, align 1
  %call19 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add12) #3
  %26 = and i8 %call19, 7
  %v02_07 = getelementptr inbounds %struct.nvbios_M0209E, ptr %info, i32 0, i32 4
  %27 = ptrtoint ptr %v02_07 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %v02_07, align 1
  %add23 = add i32 %add8.i, 3
  %call24 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add23) #3
  %v03 = getelementptr inbounds %struct.nvbios_M0209E, ptr %info, i32 0, i32 5
  %28 = ptrtoint ptr %v03 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %call24, ptr %v03, align 1
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %nvbios_M0209Ee.exit.cleanup_crit_edge, %nvbios_M0209Ee.exit.thread
  %retval.0 = phi i32 [ %add8.i, %sw.bb ], [ 0, %nvbios_M0209Ee.exit.cleanup_crit_edge ], [ 0, %nvbios_M0209Ee.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvbios_M0209Se(ptr noundef %bios, i32 noundef %ent, i32 noundef %idx, ptr nocapture noundef writeonly %ver, ptr nocapture noundef %hdr) local_unnamed_addr #0 align 64 {
entry:
  %snr.i = alloca i8, align 1
  %ssz.i = alloca i8, align 1
  %cnt = alloca i8, align 1
  %len = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cnt) #3
  %0 = ptrtoint ptr %cnt to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %cnt, align 1, !annotation !9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %len) #3
  %1 = ptrtoint ptr %len to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %len, align 1, !annotation !9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %snr.i) #3
  %2 = ptrtoint ptr %snr.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %snr.i, align 1, !annotation !9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ssz.i) #3
  %3 = ptrtoint ptr %ssz.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %ssz.i, align 1, !annotation !9
  %call.i = call i32 @nvbios_M0209Te(ptr noundef %bios, ptr noundef %ver, ptr noundef %hdr, ptr noundef nonnull %cnt, ptr noundef nonnull %len, ptr noundef nonnull %snr.i, ptr noundef nonnull %ssz.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %entry.nvbios_M0209Ee.exit.thread_crit_edge, label %land.lhs.true.i

entry.nvbios_M0209Ee.exit.thread_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %nvbios_M0209Ee.exit.thread

land.lhs.true.i:                                  ; preds = %entry
  %4 = ptrtoint ptr %cnt to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %cnt, align 1
  %conv.i = zext i8 %5 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i, i32 %ent)
  %cmp.i = icmp sgt i32 %conv.i, %ent
  br i1 %cmp.i, label %nvbios_M0209Ee.exit, label %land.lhs.true.i.nvbios_M0209Ee.exit.thread_crit_edge

land.lhs.true.i.nvbios_M0209Ee.exit.thread_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %nvbios_M0209Ee.exit.thread

nvbios_M0209Ee.exit.thread:                       ; preds = %land.lhs.true.i.nvbios_M0209Ee.exit.thread_crit_edge, %entry.nvbios_M0209Ee.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ssz.i) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %snr.i) #3
  br label %cleanup

nvbios_M0209Ee.exit:                              ; preds = %land.lhs.true.i
  %6 = ptrtoint ptr %hdr to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %hdr, align 1
  %conv2.i = zext i8 %7 to i32
  %add.i = add i32 %call.i, %conv2.i
  %8 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %len, align 1
  %conv3.i = zext i8 %9 to i32
  %10 = ptrtoint ptr %snr.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %snr.i, align 1
  %conv4.i = zext i8 %11 to i32
  %12 = ptrtoint ptr %ssz.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %ssz.i, align 1
  %conv5.i = zext i8 %13 to i32
  %mul.i = mul nuw nsw i32 %conv5.i, %conv4.i
  %add6.i = add nuw nsw i32 %mul.i, %conv3.i
  %mul7.i = mul i32 %add6.i, %ent
  %add8.i = add i32 %add.i, %mul7.i
  store i8 %9, ptr %hdr, align 1
  %14 = ptrtoint ptr %cnt to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %11, ptr %cnt, align 1
  store i8 %13, ptr %len, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ssz.i) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %snr.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add8.i)
  %tobool.not = icmp eq i32 %add8.i, 0
  br i1 %tobool.not, label %nvbios_M0209Ee.exit.cleanup_crit_edge, label %land.lhs.true

nvbios_M0209Ee.exit.cleanup_crit_edge:            ; preds = %nvbios_M0209Ee.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

land.lhs.true:                                    ; preds = %nvbios_M0209Ee.exit
  %15 = ptrtoint ptr %cnt to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %cnt, align 1
  %conv = zext i8 %16 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %idx)
  %cmp = icmp sgt i32 %conv, %idx
  br i1 %cmp, label %if.then, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  %17 = ptrtoint ptr %hdr to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %hdr, align 1
  %conv2 = zext i8 %18 to i32
  %add = add i32 %add8.i, %conv2
  %19 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %len, align 1
  %conv3 = zext i8 %20 to i32
  %mul = mul i32 %conv3, %idx
  %add4 = add i32 %add, %mul
  store i8 %20, ptr %hdr, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then, %land.lhs.true.cleanup_crit_edge, %nvbios_M0209Ee.exit.cleanup_crit_edge, %nvbios_M0209Ee.exit.thread
  %retval.0 = phi i32 [ %add4, %if.then ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %nvbios_M0209Ee.exit.cleanup_crit_edge ], [ 0, %nvbios_M0209Ee.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %len) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cnt) #3
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvbios_M0209Sp(ptr noundef %bios, i32 noundef %ent, i32 noundef %idx, ptr nocapture noundef %ver, ptr nocapture noundef %hdr, ptr nocapture noundef writeonly %info) local_unnamed_addr #0 align 64 {
entry:
  %snr.i.i = alloca i8, align 1
  %ssz.i.i = alloca i8, align 1
  %cnt.i = alloca i8, align 1
  %len.i = alloca i8, align 1
  %M0209E = alloca %struct.nvbios_M0209E, align 1
  %cnt = alloca i8, align 1
  %len = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %M0209E) #3
  %0 = getelementptr inbounds %struct.nvbios_M0209E, ptr %M0209E, i32 0, i32 1
  %1 = getelementptr inbounds %struct.nvbios_M0209E, ptr %M0209E, i32 0, i32 2
  %2 = call ptr @memset(ptr %M0209E, i32 255, i32 6)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cnt) #3
  %3 = ptrtoint ptr %cnt to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %cnt, align 1, !annotation !9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %len) #3
  %4 = ptrtoint ptr %len to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %len, align 1, !annotation !9
  %call = call i32 @nvbios_M0209Ep(ptr noundef %bios, i32 noundef %ent, ptr noundef %ver, ptr noundef %hdr, ptr noundef nonnull %cnt, ptr noundef nonnull %len, ptr noundef nonnull %M0209E)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup29_crit_edge, label %if.then

entry.cleanup29_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup29

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cnt.i) #3
  %5 = ptrtoint ptr %cnt.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %cnt.i, align 1, !annotation !9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %len.i) #3
  %6 = ptrtoint ptr %len.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %len.i, align 1, !annotation !9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %snr.i.i) #3
  %7 = ptrtoint ptr %snr.i.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %snr.i.i, align 1, !annotation !9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ssz.i.i) #3
  %8 = ptrtoint ptr %ssz.i.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %ssz.i.i, align 1, !annotation !9
  %call.i.i = call i32 @nvbios_M0209Te(ptr noundef %bios, ptr noundef %ver, ptr noundef %hdr, ptr noundef nonnull %cnt.i, ptr noundef nonnull %len.i, ptr noundef nonnull %snr.i.i, ptr noundef nonnull %ssz.i.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.nvbios_M0209Ee.exit.thread.i_crit_edge, label %land.lhs.true.i.i

if.then.nvbios_M0209Ee.exit.thread.i_crit_edge:   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %nvbios_M0209Ee.exit.thread.i

land.lhs.true.i.i:                                ; preds = %if.then
  %9 = ptrtoint ptr %cnt.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %cnt.i, align 1
  %conv.i.i = zext i8 %10 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i, i32 %ent)
  %cmp.i.i = icmp sgt i32 %conv.i.i, %ent
  br i1 %cmp.i.i, label %nvbios_M0209Ee.exit.i, label %land.lhs.true.i.i.nvbios_M0209Ee.exit.thread.i_crit_edge

land.lhs.true.i.i.nvbios_M0209Ee.exit.thread.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %nvbios_M0209Ee.exit.thread.i

nvbios_M0209Ee.exit.thread.i:                     ; preds = %land.lhs.true.i.i.nvbios_M0209Ee.exit.thread.i_crit_edge, %if.then.nvbios_M0209Ee.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ssz.i.i) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %snr.i.i) #3
  br label %nvbios_M0209Se.exit.thread

nvbios_M0209Ee.exit.i:                            ; preds = %land.lhs.true.i.i
  %11 = ptrtoint ptr %hdr to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %hdr, align 1
  %conv2.i.i = zext i8 %12 to i32
  %add.i.i = add i32 %call.i.i, %conv2.i.i
  %13 = ptrtoint ptr %len.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %len.i, align 1
  %conv3.i.i = zext i8 %14 to i32
  %15 = ptrtoint ptr %snr.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %snr.i.i, align 1
  %conv4.i.i = zext i8 %16 to i32
  %17 = ptrtoint ptr %ssz.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %ssz.i.i, align 1
  %conv5.i.i = zext i8 %18 to i32
  %mul.i.i = mul nuw nsw i32 %conv5.i.i, %conv4.i.i
  %add6.i.i = add nuw nsw i32 %mul.i.i, %conv3.i.i
  %mul7.i.i = mul i32 %add6.i.i, %ent
  %add8.i.i = add i32 %add.i.i, %mul7.i.i
  store i8 %14, ptr %hdr, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ssz.i.i) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %snr.i.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add8.i.i)
  %tobool.not.i = icmp ne i32 %add8.i.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %conv4.i.i, i32 %idx)
  %cmp.i = icmp sgt i32 %conv4.i.i, %idx
  %or.cond = select i1 %tobool.not.i, i1 %cmp.i, i1 false
  br i1 %or.cond, label %nvbios_M0209Se.exit, label %nvbios_M0209Ee.exit.i.nvbios_M0209Se.exit.thread_crit_edge

nvbios_M0209Ee.exit.i.nvbios_M0209Se.exit.thread_crit_edge: ; preds = %nvbios_M0209Ee.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %nvbios_M0209Se.exit.thread

nvbios_M0209Se.exit.thread:                       ; preds = %nvbios_M0209Ee.exit.i.nvbios_M0209Se.exit.thread_crit_edge, %nvbios_M0209Ee.exit.thread.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %len.i) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cnt.i) #3
  %19 = call ptr @memset(ptr %info, i32 0, i32 2048)
  br label %cleanup29

nvbios_M0209Se.exit:                              ; preds = %nvbios_M0209Ee.exit.i
  %mul.i = mul i32 %conv5.i.i, %idx
  %add.i = add i32 %mul.i, %conv3.i.i
  %add4.i = add i32 %add.i, %add8.i.i
  %20 = ptrtoint ptr %hdr to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %18, ptr %hdr, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %len.i) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cnt.i) #3
  %21 = call ptr @memset(ptr %info, i32 0, i32 2048)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add4.i)
  %tobool3.not = icmp ne i32 %add4.i, 0
  %22 = ptrtoint ptr %ver to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %ver, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %23)
  %cond55 = icmp eq i8 %23, 16
  %cond = select i1 %tobool3.not, i1 %cond55, i1 false
  br i1 %cond, label %for.cond.preheader, label %nvbios_M0209Se.exit.cleanup29_crit_edge

nvbios_M0209Se.exit.cleanup29_crit_edge:          ; preds = %nvbios_M0209Se.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup29

for.cond.preheader:                               ; preds = %nvbios_M0209Se.exit
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %1, align 1
  %rem.rhs.trunc = zext i8 %25 to i16
  %26 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %0, align 1
  %conv8 = zext i8 %27 to i32
  %sh_prom = zext i8 %27 to i64
  %notmask = shl nsw i64 -1, %sh_prom
  %28 = trunc i64 %notmask to i32
  %conv12 = xor i32 %28, -1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader
  %i.062 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.body.for.body_crit_edge ]
  %rem.lhs.trunc = trunc i32 %i.062 to i16
  %rem61 = urem i16 %rem.lhs.trunc, %rem.rhs.trunc
  %rem.zext = zext i16 %rem61 to i32
  %mul9 = mul nuw nsw i32 %conv8, %rem.zext
  %div56 = lshr i32 %mul9, 3
  %conv15 = and i32 %mul9, 7
  %add = add i32 %div56, %add4.i
  %call17 = tail call i32 @nvbios_rd32(ptr noundef %bios, i32 noundef %add) #3
  %arrayidx = getelementptr [512 x i32], ptr %info, i32 0, i32 %i.062
  %shr = lshr i32 %call17, %conv15
  %and = and i32 %shr, %conv12
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %and, ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %i.062, 1
  %exitcond.not = icmp eq i32 %inc, 512
  br i1 %exitcond.not, label %for.body.cleanup29_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.body.cleanup29_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup29

cleanup29:                                        ; preds = %for.body.cleanup29_crit_edge, %nvbios_M0209Se.exit.cleanup29_crit_edge, %nvbios_M0209Se.exit.thread, %entry.cleanup29_crit_edge
  %retval.1 = phi i32 [ 0, %nvbios_M0209Se.exit.thread ], [ 0, %nvbios_M0209Se.exit.cleanup29_crit_edge ], [ 0, %entry.cleanup29_crit_edge ], [ %add4.i, %for.body.cleanup29_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %len) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cnt) #3
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %M0209E) #3
  ret i32 %retval.1
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

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
!9 = !{!"auto-init"}
