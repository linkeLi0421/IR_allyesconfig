; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/subdev/bios/conn.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/bios/conn.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvbios_connE = type { i8, i8, i8, i8, i8, i8, i8 }

@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 48, i64 64]
@__sancov_gen_cov_switch_values.1 = internal global [4 x i64] [i64 2, i64 8, i64 48, i64 64]
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvbios_connTe(ptr noundef %bios, ptr noundef %ver, ptr noundef %hdr, ptr noundef %cnt, ptr noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i16 @dcb_table(ptr noundef %bios, ptr noundef %ver, ptr noundef %hdr, ptr noundef %cnt, ptr noundef %len) #3
  %conv = zext i16 %call to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call)
  %tobool.not = icmp eq i16 %call, 0
  br i1 %tobool.not, label %entry.cleanup20_crit_edge, label %land.lhs.true

entry.cleanup20_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup20

land.lhs.true:                                    ; preds = %entry
  %0 = ptrtoint ptr %ver to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ver, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %1)
  %cmp = icmp ugt i8 %1, 47
  br i1 %cmp, label %land.lhs.true3, label %land.lhs.true.cleanup20_crit_edge

land.lhs.true.cleanup20_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup20

land.lhs.true3:                                   ; preds = %land.lhs.true
  %2 = ptrtoint ptr %hdr to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %hdr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 21, i8 %3)
  %cmp5 = icmp ugt i8 %3, 21
  br i1 %cmp5, label %if.then, label %land.lhs.true3.cleanup20_crit_edge

land.lhs.true3.cleanup20_crit_edge:               ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup20

if.then:                                          ; preds = %land.lhs.true3
  %add = add nuw nsw i32 %conv, 20
  %call7 = tail call zeroext i16 @nvbios_rd16(ptr noundef %bios, i32 noundef %add) #3
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call7)
  %tobool9.not = icmp eq i16 %call7, 0
  br i1 %tobool9.not, label %if.then.cleanup20_crit_edge, label %if.then10

if.then.cleanup20_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup20

if.then10:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  %conv8 = zext i16 %call7 to i32
  %call12 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %conv8) #3
  %4 = ptrtoint ptr %ver to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %call12, ptr %ver, align 1
  %add13 = add nuw nsw i32 %conv8, 1
  %call14 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add13) #3
  %5 = ptrtoint ptr %hdr to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %call14, ptr %hdr, align 1
  %add15 = add nuw nsw i32 %conv8, 2
  %call16 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add15) #3
  %6 = ptrtoint ptr %cnt to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %call16, ptr %cnt, align 1
  %add17 = add nuw nsw i32 %conv8, 3
  %call18 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add17) #3
  %7 = ptrtoint ptr %len to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %call18, ptr %len, align 1
  br label %cleanup20

cleanup20:                                        ; preds = %if.then10, %if.then.cleanup20_crit_edge, %land.lhs.true3.cleanup20_crit_edge, %land.lhs.true.cleanup20_crit_edge, %entry.cleanup20_crit_edge
  %retval.1 = phi i32 [ %conv8, %if.then10 ], [ 0, %land.lhs.true3.cleanup20_crit_edge ], [ 0, %land.lhs.true.cleanup20_crit_edge ], [ 0, %entry.cleanup20_crit_edge ], [ 0, %if.then.cleanup20_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @dcb_table(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @nvbios_rd16(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @nvbios_rd08(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvbios_connTp(ptr noundef %bios, ptr noundef %ver, ptr noundef %hdr, ptr noundef %cnt, ptr noundef %len, ptr nocapture noundef readnone %info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @nvbios_connTe(ptr noundef %bios, ptr noundef %ver, ptr noundef %hdr, ptr noundef %cnt, ptr noundef %len)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %0 = ptrtoint ptr %ver to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ver, align 1
  %trunc = select i1 %tobool.not, i8 0, i8 %1
  %2 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i8 %trunc, label %sw.epilog [
    i8 48, label %entry.cleanup_crit_edge
    i8 64, label %entry.cleanup_crit_edge4
  ]

entry.cleanup_crit_edge4:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

sw.epilog:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge4
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ %call, %entry.cleanup_crit_edge ], [ %call, %entry.cleanup_crit_edge4 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvbios_connEe(ptr noundef %bios, i8 noundef zeroext %idx, ptr noundef %ver, ptr noundef %len) local_unnamed_addr #0 align 64 {
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
  %call = call i32 @nvbios_connTe(ptr noundef %bios, ptr noundef %ver, ptr noundef nonnull %hdr, ptr noundef nonnull %cnt, ptr noundef %len)
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
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %idx)
  %cmp = icmp ugt i8 %3, %idx
  br i1 %cmp, label %if.then, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  %conv = zext i8 %idx to i32
  %4 = ptrtoint ptr %hdr to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %hdr, align 1
  %conv3 = zext i8 %5 to i32
  %add = add i32 %call, %conv3
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %len, align 1
  %conv5 = zext i8 %7 to i32
  %mul = mul nuw nsw i32 %conv5, %conv
  %add6 = add i32 %add, %mul
  br label %cleanup

cleanup:                                          ; preds = %if.then, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %add6, %if.then ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cnt) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %hdr) #3
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvbios_connEp(ptr noundef %bios, i8 noundef zeroext %idx, ptr noundef %ver, ptr noundef %len, ptr nocapture noundef %info) local_unnamed_addr #0 align 64 {
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
  %call.i = call i32 @nvbios_connTe(ptr noundef %bios, ptr noundef %ver, ptr noundef nonnull %hdr.i, ptr noundef nonnull %cnt.i, ptr noundef %len) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %entry.nvbios_connEe.exit.thread_crit_edge, label %land.lhs.true.i

entry.nvbios_connEe.exit.thread_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %nvbios_connEe.exit.thread

land.lhs.true.i:                                  ; preds = %entry
  %2 = ptrtoint ptr %cnt.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cnt.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %idx)
  %cmp.i = icmp ugt i8 %3, %idx
  br i1 %cmp.i, label %nvbios_connEe.exit, label %land.lhs.true.i.nvbios_connEe.exit.thread_crit_edge

land.lhs.true.i.nvbios_connEe.exit.thread_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %nvbios_connEe.exit.thread

nvbios_connEe.exit.thread:                        ; preds = %land.lhs.true.i.nvbios_connEe.exit.thread_crit_edge, %entry.nvbios_connEe.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cnt.i) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %hdr.i) #3
  %4 = call ptr @memset(ptr %info, i32 0, i32 7)
  br label %cleanup

nvbios_connEe.exit:                               ; preds = %land.lhs.true.i
  %conv.i = zext i8 %idx to i32
  %5 = ptrtoint ptr %hdr.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %hdr.i, align 1
  %conv3.i = zext i8 %6 to i32
  %add.i = add i32 %call.i, %conv3.i
  %7 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %len, align 1
  %conv5.i = zext i8 %8 to i32
  %mul.i = mul nuw nsw i32 %conv5.i, %conv.i
  %add6.i = add i32 %add.i, %mul.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cnt.i) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %hdr.i) #3
  %9 = call ptr @memset(ptr %info, i32 0, i32 7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add6.i)
  %tobool.not = icmp eq i32 %add6.i, 0
  br i1 %tobool.not, label %nvbios_connEe.exit.cleanup_crit_edge, label %10

nvbios_connEe.exit.cleanup_crit_edge:             ; preds = %nvbios_connEe.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

10:                                               ; preds = %nvbios_connEe.exit
  %11 = ptrtoint ptr %ver to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %ver, align 1
  %13 = zext i8 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.1)
  switch i8 %12, label %.cleanup_crit_edge [
    i8 48, label %.sw.bb_crit_edge
    i8 64, label %.sw.bb_crit_edge104
  ]

.sw.bb_crit_edge104:                              ; preds = %10
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb

.sw.bb_crit_edge:                                 ; preds = %10
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb

.cleanup_crit_edge:                               ; preds = %10
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

sw.bb:                                            ; preds = %.sw.bb_crit_edge, %.sw.bb_crit_edge104
  %call2 = call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add6.i) #3
  %14 = ptrtoint ptr %info to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %call2, ptr %info, align 1
  %add3 = add i32 %add6.i, 1
  %call4 = call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add3) #3
  %15 = and i8 %call4, 15
  %location = getelementptr inbounds %struct.nvbios_connE, ptr %info, i32 0, i32 1
  %16 = ptrtoint ptr %location to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %location, align 1
  %call8 = call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add3) #3
  %17 = lshr i8 %call8, 4
  %18 = and i8 %17, 3
  %hpd = getelementptr inbounds %struct.nvbios_connE, ptr %info, i32 0, i32 2
  %19 = ptrtoint ptr %hpd to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %hpd, align 1
  %call13 = call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add3) #3
  %20 = lshr i8 %call13, 6
  %dp = getelementptr inbounds %struct.nvbios_connE, ptr %info, i32 0, i32 3
  %21 = ptrtoint ptr %dp to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %dp, align 1
  %22 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %len, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %23)
  %cmp = icmp ult i8 %23, 4
  br i1 %cmp, label %sw.bb.cleanup_crit_edge, label %if.end

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #5
  %add20 = add i32 %add6.i, 2
  %call21 = call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add20) #3
  %24 = shl i8 %call21, 2
  %25 = and i8 %24, 12
  %26 = ptrtoint ptr %hpd to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %hpd, align 1
  %or96 = or i8 %25, %27
  store i8 %or96, ptr %hpd, align 1
  %call28 = call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add20) #3
  %28 = and i8 %call28, 12
  %29 = ptrtoint ptr %dp to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %dp, align 1
  %or3397 = or i8 %30, %28
  store i8 %or3397, ptr %dp, align 1
  %call36 = call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add20) #3
  %31 = lshr i8 %call36, 4
  %di = getelementptr inbounds %struct.nvbios_connE, ptr %info, i32 0, i32 4
  %32 = ptrtoint ptr %di to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %di, align 1
  %add41 = add i32 %add6.i, 3
  %call42 = call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add41) #3
  %33 = shl i8 %call42, 4
  %34 = and i8 %33, 112
  %35 = ptrtoint ptr %hpd to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %hpd, align 1
  %or4898 = or i8 %34, %36
  store i8 %or4898, ptr %hpd, align 1
  %call51 = call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add41) #3
  %37 = lshr i8 %call51, 3
  %38 = and i8 %37, 1
  %sr = getelementptr inbounds %struct.nvbios_connE, ptr %info, i32 0, i32 5
  %39 = ptrtoint ptr %sr to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %38, ptr %sr, align 1
  %call57 = call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add41) #3
  %40 = lshr i8 %call57, 4
  %41 = and i8 %40, 7
  %lcdid = getelementptr inbounds %struct.nvbios_connE, ptr %info, i32 0, i32 6
  %42 = ptrtoint ptr %lcdid to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %41, ptr %lcdid, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %sw.bb.cleanup_crit_edge, %.cleanup_crit_edge, %nvbios_connEe.exit.cleanup_crit_edge, %nvbios_connEe.exit.thread
  %retval.0 = phi i32 [ %add6.i, %if.end ], [ %add6.i, %sw.bb.cleanup_crit_edge ], [ 0, %.cleanup_crit_edge ], [ 0, %nvbios_connEe.exit.cleanup_crit_edge ], [ 0, %nvbios_connEe.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

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
!9 = !{!"auto-init"}
