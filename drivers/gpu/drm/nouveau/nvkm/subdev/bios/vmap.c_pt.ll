; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/subdev/bios/vmap.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/bios/vmap.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.bit_entry = type { i8, i8, i16, i16 }
%struct.nvbios_vmap = type { i8, i8, i8 }
%struct.nvbios_vmap_entry = type { i8, i8, i32, i32, [6 x i32] }

@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 16, i64 32]
@__sancov_gen_cov_switch_values.1 = internal global [4 x i64] [i64 2, i64 8, i64 16, i64 32]
@__sancov_gen_cov_switch_values.2 = internal global [4 x i64] [i64 2, i64 8, i64 16, i64 32]
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvbios_vmap_table(ptr noundef %bios, ptr nocapture noundef writeonly %ver, ptr nocapture noundef writeonly %hdr, ptr nocapture noundef writeonly %cnt, ptr nocapture noundef writeonly %len) local_unnamed_addr #0 align 64 {
entry:
  %bit_P = alloca %struct.bit_entry, align 2
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %bit_P) #3
  %0 = getelementptr inbounds %struct.bit_entry, ptr %bit_P, i32 0, i32 3
  %1 = call ptr @memset(ptr %bit_P, i32 255, i32 6)
  %call = call i32 @bit_entry(ptr noundef %bios, i8 noundef zeroext 80, ptr noundef nonnull %bit_P) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then:                                          ; preds = %entry
  %2 = getelementptr inbounds %struct.bit_entry, ptr %bit_P, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %4)
  %cmp = icmp eq i8 %4, 2
  br i1 %cmp, label %if.then2, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then2:                                         ; preds = %if.then
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %0, align 2
  %conv3 = zext i16 %6 to i32
  %add = add nuw nsw i32 %conv3, 32
  %call4 = call i32 @nvbios_rd32(ptr noundef %bios, i32 noundef %add) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then2.cleanup_crit_edge, label %if.then6

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then6:                                         ; preds = %if.then2
  %call8 = call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %call4) #3
  %7 = ptrtoint ptr %ver to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %call8, ptr %ver, align 1
  %8 = zext i8 %call8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i8 %call8, label %if.then6.cleanup_crit_edge [
    i8 16, label %if.then6.sw.bb_crit_edge
    i8 32, label %if.then6.sw.bb_crit_edge30
  ]

if.then6.sw.bb_crit_edge30:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb

if.then6.sw.bb_crit_edge:                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

sw.bb:                                            ; preds = %if.then6.sw.bb_crit_edge, %if.then6.sw.bb_crit_edge30
  %add10 = add i32 %call4, 1
  %call11 = call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add10) #3
  %9 = ptrtoint ptr %hdr to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %call11, ptr %hdr, align 1
  %add12 = add i32 %call4, 3
  %call13 = call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add12) #3
  %10 = ptrtoint ptr %cnt to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %call13, ptr %cnt, align 1
  %add14 = add i32 %call4, 2
  %call15 = call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add14) #3
  %11 = ptrtoint ptr %len to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %call15, ptr %len, align 1
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %if.then6.cleanup_crit_edge, %if.then2.cleanup_crit_edge, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %sw.bb ], [ 0, %if.then.cleanup_crit_edge ], [ 0, %if.then6.cleanup_crit_edge ], [ 0, %if.then2.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
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
define dso_local i32 @nvbios_vmap_parse(ptr noundef %bios, ptr nocapture noundef %ver, ptr nocapture noundef writeonly %hdr, ptr nocapture noundef writeonly %cnt, ptr nocapture noundef %len, ptr nocapture noundef writeonly %info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @nvbios_vmap_table(ptr noundef %bios, ptr noundef %ver, ptr noundef %hdr, ptr noundef %cnt, ptr noundef %len)
  %0 = call ptr @memset(ptr %info, i32 0, i32 3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %1 = ptrtoint ptr %ver to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %ver, align 1
  %trunc = select i1 %tobool.not, i8 0, i8 %2
  %3 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.1)
  switch i8 %trunc, label %entry.sw.epilog_crit_edge [
    i8 16, label %sw.bb
    i8 32, label %sw.bb2
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %4 = ptrtoint ptr %info to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %info, align 1
  %max1 = getelementptr inbounds %struct.nvbios_vmap, ptr %info, i32 0, i32 1
  %5 = ptrtoint ptr %max1 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %max1, align 1
  br label %sw.epilog.sink.split

sw.bb2:                                           ; preds = %entry
  %add = add i32 %call, 7
  %call3 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add) #3
  %6 = ptrtoint ptr %info to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %call3, ptr %info, align 1
  %add5 = add i32 %call, 8
  %call6 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add5) #3
  %max17 = getelementptr inbounds %struct.nvbios_vmap, ptr %info, i32 0, i32 1
  %7 = ptrtoint ptr %max17 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %call6, ptr %max17, align 1
  %8 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %len, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %9)
  %cmp = icmp ugt i8 %9, 11
  br i1 %cmp, label %if.then, label %sw.bb2.sw.epilog.sink.split_crit_edge

sw.bb2.sw.epilog.sink.split_crit_edge:            ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog.sink.split

if.then:                                          ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #5
  %add10 = add i32 %call, 12
  %call11 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add10) #3
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %if.then, %sw.bb2.sw.epilog.sink.split_crit_edge, %sw.bb
  %call11.sink = phi i8 [ %call11, %if.then ], [ -1, %sw.bb ], [ -1, %sw.bb2.sw.epilog.sink.split_crit_edge ]
  %max212 = getelementptr inbounds %struct.nvbios_vmap, ptr %info, i32 0, i32 2
  %10 = ptrtoint ptr %max212 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %call11.sink, ptr %max212, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvbios_vmap_entry(ptr noundef %bios, i32 noundef %idx, ptr nocapture noundef writeonly %ver, ptr nocapture noundef %len) local_unnamed_addr #0 align 64 {
entry:
  %hdr = alloca i8, align 1
  %cnt = alloca i8, align 1
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
  %call = call i32 @nvbios_vmap_table(ptr noundef %bios, ptr noundef %ver, ptr noundef nonnull %hdr, ptr noundef nonnull %cnt, ptr noundef %len)
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
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cnt) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %hdr) #3
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvbios_vmap_entry_parse(ptr noundef %bios, i32 noundef %idx, ptr nocapture noundef %ver, ptr nocapture noundef %len, ptr nocapture noundef writeonly %info) local_unnamed_addr #0 align 64 {
entry:
  %hdr.i = alloca i8, align 1
  %cnt.i = alloca i8, align 1
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
  %call.i = call i32 @nvbios_vmap_table(ptr noundef %bios, ptr noundef %ver, ptr noundef nonnull %hdr.i, ptr noundef nonnull %cnt.i, ptr noundef %len) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %entry.nvbios_vmap_entry.exit.thread_crit_edge, label %land.lhs.true.i

entry.nvbios_vmap_entry.exit.thread_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %nvbios_vmap_entry.exit.thread

land.lhs.true.i:                                  ; preds = %entry
  %2 = ptrtoint ptr %cnt.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cnt.i, align 1
  %conv.i = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i, i32 %idx)
  %cmp.i = icmp sgt i32 %conv.i, %idx
  br i1 %cmp.i, label %nvbios_vmap_entry.exit, label %land.lhs.true.i.nvbios_vmap_entry.exit.thread_crit_edge

land.lhs.true.i.nvbios_vmap_entry.exit.thread_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %nvbios_vmap_entry.exit.thread

nvbios_vmap_entry.exit.thread:                    ; preds = %land.lhs.true.i.nvbios_vmap_entry.exit.thread_crit_edge, %entry.nvbios_vmap_entry.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cnt.i) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %hdr.i) #3
  %4 = call ptr @memset(ptr %info, i32 0, i32 36)
  br label %sw.epilog

nvbios_vmap_entry.exit:                           ; preds = %land.lhs.true.i
  %5 = ptrtoint ptr %hdr.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %hdr.i, align 1
  %conv2.i = zext i8 %6 to i32
  %add.i = add i32 %call.i, %conv2.i
  %7 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %len, align 1
  %conv3.i = zext i8 %8 to i32
  %mul.i = mul i32 %conv3.i, %idx
  %add4.i = add i32 %add.i, %mul.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cnt.i) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %hdr.i) #3
  %9 = call ptr @memset(ptr %info, i32 0, i32 36)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add4.i)
  %tobool.not = icmp eq i32 %add4.i, 0
  br i1 %tobool.not, label %nvbios_vmap_entry.exit.sw.epilog_crit_edge, label %10

nvbios_vmap_entry.exit.sw.epilog_crit_edge:       ; preds = %nvbios_vmap_entry.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

10:                                               ; preds = %nvbios_vmap_entry.exit
  %11 = ptrtoint ptr %ver to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %ver, align 1
  %13 = zext i8 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.2)
  switch i8 %12, label %.sw.epilog_crit_edge [
    i8 16, label %sw.bb
    i8 32, label %sw.bb15
  ]

.sw.epilog_crit_edge:                             ; preds = %10
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

sw.bb:                                            ; preds = %10
  call void @__sanitizer_cov_trace_pc() #5
  %link = getelementptr inbounds %struct.nvbios_vmap_entry, ptr %info, i32 0, i32 1
  %14 = ptrtoint ptr %link to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -1, ptr %link, align 1
  %call2 = tail call i32 @nvbios_rd32(ptr noundef %bios, i32 noundef %add4.i) #3
  %min = getelementptr inbounds %struct.nvbios_vmap_entry, ptr %info, i32 0, i32 2
  %15 = ptrtoint ptr %min to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call2, ptr %min, align 4
  %add3 = add i32 %add4.i, 4
  %call4 = tail call i32 @nvbios_rd32(ptr noundef %bios, i32 noundef %add3) #3
  %max = getelementptr inbounds %struct.nvbios_vmap_entry, ptr %info, i32 0, i32 3
  %16 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call4, ptr %max, align 4
  %add5 = add i32 %add4.i, 8
  %call6 = tail call i32 @nvbios_rd32(ptr noundef %bios, i32 noundef %add5) #3
  %arg = getelementptr inbounds %struct.nvbios_vmap_entry, ptr %info, i32 0, i32 4
  %17 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call6, ptr %arg, align 4
  %add7 = add i32 %add4.i, 12
  %call8 = tail call i32 @nvbios_rd32(ptr noundef %bios, i32 noundef %add7) #3
  %arrayidx10 = getelementptr %struct.nvbios_vmap_entry, ptr %info, i32 0, i32 4, i32 1
  %18 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call8, ptr %arrayidx10, align 4
  %add11 = add i32 %add4.i, 16
  %call12 = tail call i32 @nvbios_rd32(ptr noundef %bios, i32 noundef %add11) #3
  %arrayidx14 = getelementptr %struct.nvbios_vmap_entry, ptr %info, i32 0, i32 4, i32 2
  %19 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call12, ptr %arrayidx14, align 4
  br label %sw.epilog

sw.bb15:                                          ; preds = %10
  call void @__sanitizer_cov_trace_pc() #5
  %call17 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add4.i) #3
  %20 = ptrtoint ptr %info to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %call17, ptr %info, align 4
  %add18 = add i32 %add4.i, 1
  %call19 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add18) #3
  %link20 = getelementptr inbounds %struct.nvbios_vmap_entry, ptr %info, i32 0, i32 1
  %21 = ptrtoint ptr %link20 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %call19, ptr %link20, align 1
  %add21 = add i32 %add4.i, 2
  %call22 = tail call i32 @nvbios_rd32(ptr noundef %bios, i32 noundef %add21) #3
  %min23 = getelementptr inbounds %struct.nvbios_vmap_entry, ptr %info, i32 0, i32 2
  %22 = ptrtoint ptr %min23 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %call22, ptr %min23, align 4
  %add24 = add i32 %add4.i, 6
  %call25 = tail call i32 @nvbios_rd32(ptr noundef %bios, i32 noundef %add24) #3
  %max26 = getelementptr inbounds %struct.nvbios_vmap_entry, ptr %info, i32 0, i32 3
  %23 = ptrtoint ptr %max26 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %call25, ptr %max26, align 4
  %add27 = add i32 %add4.i, 10
  %call28 = tail call i32 @nvbios_rd32(ptr noundef %bios, i32 noundef %add27) #3
  %arg29 = getelementptr inbounds %struct.nvbios_vmap_entry, ptr %info, i32 0, i32 4
  %24 = ptrtoint ptr %arg29 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %call28, ptr %arg29, align 4
  %add31 = add i32 %add4.i, 14
  %call32 = tail call i32 @nvbios_rd32(ptr noundef %bios, i32 noundef %add31) #3
  %arrayidx34 = getelementptr %struct.nvbios_vmap_entry, ptr %info, i32 0, i32 4, i32 1
  %25 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %call32, ptr %arrayidx34, align 4
  %add35 = add i32 %add4.i, 18
  %call36 = tail call i32 @nvbios_rd32(ptr noundef %bios, i32 noundef %add35) #3
  %arrayidx38 = getelementptr %struct.nvbios_vmap_entry, ptr %info, i32 0, i32 4, i32 2
  %26 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %call36, ptr %arrayidx38, align 4
  %add39 = add i32 %add4.i, 22
  %call40 = tail call i32 @nvbios_rd32(ptr noundef %bios, i32 noundef %add39) #3
  %arrayidx42 = getelementptr %struct.nvbios_vmap_entry, ptr %info, i32 0, i32 4, i32 3
  %27 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %call40, ptr %arrayidx42, align 4
  %add43 = add i32 %add4.i, 26
  %call44 = tail call i32 @nvbios_rd32(ptr noundef %bios, i32 noundef %add43) #3
  %arrayidx46 = getelementptr %struct.nvbios_vmap_entry, ptr %info, i32 0, i32 4, i32 4
  %28 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %call44, ptr %arrayidx46, align 4
  %add47 = add i32 %add4.i, 30
  %call48 = tail call i32 @nvbios_rd32(ptr noundef %bios, i32 noundef %add47) #3
  %arrayidx50 = getelementptr %struct.nvbios_vmap_entry, ptr %info, i32 0, i32 4, i32 5
  %29 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %call48, ptr %arrayidx50, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb15, %sw.bb, %.sw.epilog_crit_edge, %nvbios_vmap_entry.exit.sw.epilog_crit_edge, %nvbios_vmap_entry.exit.thread
  %retval.0.i103 = phi i32 [ %add4.i, %.sw.epilog_crit_edge ], [ %add4.i, %sw.bb15 ], [ %add4.i, %sw.bb ], [ 0, %nvbios_vmap_entry.exit.thread ], [ 0, %nvbios_vmap_entry.exit.sw.epilog_crit_edge ]
  ret i32 %retval.0.i103
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

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
