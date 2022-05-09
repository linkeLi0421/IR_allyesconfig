; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/subdev/bios/P0260.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/bios/P0260.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.bit_entry = type { i8, i8, i16, i16 }

@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvbios_P0260Te(ptr noundef %bios, ptr nocapture noundef writeonly %ver, ptr nocapture noundef writeonly %hdr, ptr nocapture noundef writeonly %cnt, ptr nocapture noundef writeonly %len, ptr nocapture noundef writeonly %xnr, ptr nocapture noundef writeonly %xsz) local_unnamed_addr #0 align 64 {
entry:
  %bit_P = alloca %struct.bit_entry, align 2
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %bit_P) #3
  %0 = getelementptr inbounds %struct.bit_entry, ptr %bit_P, i32 0, i32 2
  %1 = getelementptr inbounds %struct.bit_entry, ptr %bit_P, i32 0, i32 3
  %2 = call ptr @memset(ptr %bit_P, i32 255, i32 6)
  %call = call i32 @bit_entry(ptr noundef %bios, i8 noundef zeroext 80, ptr noundef nonnull %bit_P) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
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
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

land.lhs.true:                                    ; preds = %if.then
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %0, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 99, i16 %7)
  %cmp3 = icmp ugt i16 %7, 99
  br i1 %cmp3, label %if.end, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %1, align 2
  %conv6 = zext i16 %9 to i32
  %add = add nuw nsw i32 %conv6, 96
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
  %12 = ptrtoint ptr %cnt to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %call16, ptr %cnt, align 1
  %13 = ptrtoint ptr %len to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 4, ptr %len, align 1
  %add17 = add i32 %call7, 3
  %call18 = call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add17) #3
  %14 = ptrtoint ptr %xnr to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %call18, ptr %xnr, align 1
  %15 = ptrtoint ptr %xsz to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 4, ptr %xsz, align 1
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %if.then9.cleanup_crit_edge, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %sw.bb ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.then9.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.then.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %bit_P) #3
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
define dso_local i32 @nvbios_P0260Ee(ptr noundef %bios, i32 noundef %idx, ptr nocapture noundef writeonly %ver, ptr nocapture noundef %len) local_unnamed_addr #0 align 64 {
entry:
  %hdr = alloca i8, align 1
  %cnt = alloca i8, align 1
  %xnr = alloca i8, align 1
  %xsz = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %hdr) #3
  %0 = ptrtoint ptr %hdr to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %hdr, align 1, !annotation !9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cnt) #3
  %1 = ptrtoint ptr %cnt to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %cnt, align 1, !annotation !9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %xnr) #3
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %xsz) #3
  %call = call i32 @nvbios_P0260Te(ptr noundef %bios, ptr noundef %ver, ptr noundef nonnull %hdr, ptr noundef nonnull %cnt, ptr noundef %len, ptr noundef nonnull %xnr, ptr noundef nonnull %xsz)
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
  %mul = mul i32 %conv3, %idx
  %add4 = add i32 %add, %mul
  br label %cleanup

cleanup:                                          ; preds = %if.then, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %add4, %if.then ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %xsz) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %xnr) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cnt) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %hdr) #3
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvbios_P0260Ep(ptr noundef %bios, i32 noundef %idx, ptr nocapture noundef %ver, ptr nocapture noundef %len, ptr nocapture noundef writeonly %info) local_unnamed_addr #0 align 64 {
entry:
  %hdr.i = alloca i8, align 1
  %cnt.i = alloca i8, align 1
  %xnr.i = alloca i8, align 1
  %xsz.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %hdr.i) #3
  %0 = ptrtoint ptr %hdr.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %hdr.i, align 1, !annotation !9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cnt.i) #3
  %1 = ptrtoint ptr %cnt.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %cnt.i, align 1, !annotation !9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %xnr.i) #3
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %xsz.i) #3
  %call.i = call i32 @nvbios_P0260Te(ptr noundef %bios, ptr noundef %ver, ptr noundef nonnull %hdr.i, ptr noundef nonnull %cnt.i, ptr noundef %len, ptr noundef nonnull %xnr.i, ptr noundef nonnull %xsz.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %entry.nvbios_P0260Ee.exit.thread_crit_edge, label %land.lhs.true.i

entry.nvbios_P0260Ee.exit.thread_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %nvbios_P0260Ee.exit.thread

land.lhs.true.i:                                  ; preds = %entry
  %2 = ptrtoint ptr %cnt.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cnt.i, align 1
  %conv.i = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i, i32 %idx)
  %cmp.i = icmp sgt i32 %conv.i, %idx
  br i1 %cmp.i, label %nvbios_P0260Ee.exit, label %land.lhs.true.i.nvbios_P0260Ee.exit.thread_crit_edge

land.lhs.true.i.nvbios_P0260Ee.exit.thread_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %nvbios_P0260Ee.exit.thread

nvbios_P0260Ee.exit.thread:                       ; preds = %land.lhs.true.i.nvbios_P0260Ee.exit.thread_crit_edge, %entry.nvbios_P0260Ee.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %xsz.i) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %xnr.i) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cnt.i) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %hdr.i) #3
  br label %cleanup.sink.split

nvbios_P0260Ee.exit:                              ; preds = %land.lhs.true.i
  %4 = ptrtoint ptr %hdr.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %hdr.i, align 1
  %conv2.i = zext i8 %5 to i32
  %add.i = add i32 %call.i, %conv2.i
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %len, align 1
  %conv3.i = zext i8 %7 to i32
  %mul.i = mul i32 %conv3.i, %idx
  %add4.i = add i32 %add.i, %mul.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %xsz.i) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %xnr.i) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cnt.i) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %hdr.i) #3
  %8 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %info, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add4.i)
  %tobool.not = icmp ne i32 %add4.i, 0
  %9 = ptrtoint ptr %ver to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %ver, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %10)
  %cond9 = icmp eq i8 %10, 16
  %cond = select i1 %tobool.not, i1 %cond9, i1 false
  br i1 %cond, label %sw.bb, label %nvbios_P0260Ee.exit.cleanup_crit_edge

nvbios_P0260Ee.exit.cleanup_crit_edge:            ; preds = %nvbios_P0260Ee.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

sw.bb:                                            ; preds = %nvbios_P0260Ee.exit
  call void @__sanitizer_cov_trace_pc() #5
  %call2 = tail call i32 @nvbios_rd32(ptr noundef %bios, i32 noundef %add4.i) #3
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb, %nvbios_P0260Ee.exit.thread
  %.sink = phi i32 [ 0, %nvbios_P0260Ee.exit.thread ], [ %call2, %sw.bb ]
  %retval.0.ph = phi i32 [ 0, %nvbios_P0260Ee.exit.thread ], [ %add4.i, %sw.bb ]
  %11 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %.sink, ptr %info, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %nvbios_P0260Ee.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %nvbios_P0260Ee.exit.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvbios_P0260Xe(ptr noundef %bios, i32 noundef %idx, ptr nocapture noundef writeonly %ver, ptr nocapture noundef %xsz) local_unnamed_addr #0 align 64 {
entry:
  %hdr = alloca i8, align 1
  %cnt = alloca i8, align 1
  %len = alloca i8, align 1
  %xnr = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %hdr) #3
  %0 = ptrtoint ptr %hdr to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %hdr, align 1, !annotation !9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cnt) #3
  %1 = ptrtoint ptr %cnt to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %cnt, align 1, !annotation !9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %len) #3
  %2 = ptrtoint ptr %len to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %len, align 1, !annotation !9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %xnr) #3
  %3 = ptrtoint ptr %xnr to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %xnr, align 1, !annotation !9
  %call = call i32 @nvbios_P0260Te(ptr noundef %bios, ptr noundef %ver, ptr noundef nonnull %hdr, ptr noundef nonnull %cnt, ptr noundef nonnull %len, ptr noundef nonnull %xnr, ptr noundef %xsz)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %land.lhs.true

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %4 = ptrtoint ptr %xnr to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %xnr, align 1
  %conv = zext i8 %5 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %idx)
  %cmp = icmp sgt i32 %conv, %idx
  br i1 %cmp, label %if.then, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  %6 = ptrtoint ptr %hdr to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %hdr, align 1
  %conv2 = zext i8 %7 to i32
  %add = add i32 %call, %conv2
  %8 = ptrtoint ptr %cnt to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %cnt, align 1
  %conv3 = zext i8 %9 to i32
  %10 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %len, align 1
  %conv4 = zext i8 %11 to i32
  %mul = mul nuw nsw i32 %conv4, %conv3
  %add5 = add i32 %add, %mul
  %12 = ptrtoint ptr %xsz to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %xsz, align 1
  %conv6 = zext i8 %13 to i32
  %mul7 = mul i32 %conv6, %idx
  %add8 = add i32 %add5, %mul7
  br label %cleanup

cleanup:                                          ; preds = %if.then, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %add8, %if.then ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %xnr) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %len) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cnt) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %hdr) #3
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvbios_P0260Xp(ptr noundef %bios, i32 noundef %idx, ptr nocapture noundef %ver, ptr nocapture noundef %hdr, ptr nocapture noundef writeonly %info) local_unnamed_addr #0 align 64 {
entry:
  %hdr.i = alloca i8, align 1
  %cnt.i = alloca i8, align 1
  %len.i = alloca i8, align 1
  %xnr.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %hdr.i) #3
  %0 = ptrtoint ptr %hdr.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %hdr.i, align 1, !annotation !9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cnt.i) #3
  %1 = ptrtoint ptr %cnt.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %cnt.i, align 1, !annotation !9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %len.i) #3
  %2 = ptrtoint ptr %len.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %len.i, align 1, !annotation !9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %xnr.i) #3
  %3 = ptrtoint ptr %xnr.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %xnr.i, align 1, !annotation !9
  %call.i = call i32 @nvbios_P0260Te(ptr noundef %bios, ptr noundef %ver, ptr noundef nonnull %hdr.i, ptr noundef nonnull %cnt.i, ptr noundef nonnull %len.i, ptr noundef nonnull %xnr.i, ptr noundef %hdr) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %entry.nvbios_P0260Xe.exit.thread_crit_edge, label %land.lhs.true.i

entry.nvbios_P0260Xe.exit.thread_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %nvbios_P0260Xe.exit.thread

land.lhs.true.i:                                  ; preds = %entry
  %4 = ptrtoint ptr %xnr.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %xnr.i, align 1
  %conv.i = zext i8 %5 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i, i32 %idx)
  %cmp.i = icmp sgt i32 %conv.i, %idx
  br i1 %cmp.i, label %nvbios_P0260Xe.exit, label %land.lhs.true.i.nvbios_P0260Xe.exit.thread_crit_edge

land.lhs.true.i.nvbios_P0260Xe.exit.thread_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %nvbios_P0260Xe.exit.thread

nvbios_P0260Xe.exit.thread:                       ; preds = %land.lhs.true.i.nvbios_P0260Xe.exit.thread_crit_edge, %entry.nvbios_P0260Xe.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %xnr.i) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %len.i) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cnt.i) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %hdr.i) #3
  br label %cleanup.sink.split

nvbios_P0260Xe.exit:                              ; preds = %land.lhs.true.i
  %6 = ptrtoint ptr %hdr.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %hdr.i, align 1
  %conv2.i = zext i8 %7 to i32
  %add.i = add i32 %call.i, %conv2.i
  %8 = ptrtoint ptr %cnt.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %cnt.i, align 1
  %conv3.i = zext i8 %9 to i32
  %10 = ptrtoint ptr %len.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %len.i, align 1
  %conv4.i = zext i8 %11 to i32
  %mul.i = mul nuw nsw i32 %conv4.i, %conv3.i
  %add5.i = add i32 %add.i, %mul.i
  %12 = ptrtoint ptr %hdr to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %hdr, align 1
  %conv6.i = zext i8 %13 to i32
  %mul7.i = mul i32 %conv6.i, %idx
  %add8.i = add i32 %add5.i, %mul7.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %xnr.i) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %len.i) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cnt.i) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %hdr.i) #3
  %14 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %info, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add8.i)
  %tobool.not = icmp ne i32 %add8.i, 0
  %15 = ptrtoint ptr %ver to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %ver, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %16)
  %cond9 = icmp eq i8 %16, 16
  %cond = select i1 %tobool.not, i1 %cond9, i1 false
  br i1 %cond, label %sw.bb, label %nvbios_P0260Xe.exit.cleanup_crit_edge

nvbios_P0260Xe.exit.cleanup_crit_edge:            ; preds = %nvbios_P0260Xe.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

sw.bb:                                            ; preds = %nvbios_P0260Xe.exit
  call void @__sanitizer_cov_trace_pc() #5
  %call2 = tail call i32 @nvbios_rd32(ptr noundef %bios, i32 noundef %add8.i) #3
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb, %nvbios_P0260Xe.exit.thread
  %.sink = phi i32 [ 0, %nvbios_P0260Xe.exit.thread ], [ %call2, %sw.bb ]
  %retval.0.ph = phi i32 [ 0, %nvbios_P0260Xe.exit.thread ], [ %add8.i, %sw.bb ]
  %17 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %.sink, ptr %info, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %nvbios_P0260Xe.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %nvbios_P0260Xe.exit.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
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
