; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/subdev/bios/disp.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/bios/disp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.bit_entry = type { i8, i8, i16, i16 }
%struct.nvbios_outp = type { i16, i16, [3 x i16] }
%struct.nvbios_ocfg = type { i8, i8, [2 x i16] }

@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @nvbios_disp_table(ptr noundef %bios, ptr nocapture noundef writeonly %ver, ptr nocapture noundef writeonly %hdr, ptr nocapture noundef writeonly %cnt, ptr nocapture noundef writeonly %len, ptr nocapture noundef writeonly %sub) local_unnamed_addr #0 align 64 {
entry:
  %U = alloca %struct.bit_entry, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %U) #4
  %0 = getelementptr inbounds %struct.bit_entry, ptr %U, i32 0, i32 3
  %1 = call ptr @memset(ptr %U, i32 255, i32 6)
  %call = call i32 @bit_entry(ptr noundef %bios, i8 noundef zeroext 85, ptr noundef nonnull %U) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.cleanup24_crit_edge

entry.cleanup24_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup24

if.then:                                          ; preds = %entry
  %2 = getelementptr inbounds %struct.bit_entry, ptr %U, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %4)
  %cmp = icmp eq i8 %4, 1
  br i1 %cmp, label %if.then2, label %if.then.cleanup24_crit_edge

if.then.cleanup24_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup24

if.then2:                                         ; preds = %if.then
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %0, align 2
  %conv3 = zext i16 %6 to i32
  %call4 = call zeroext i16 @nvbios_rd16(ptr noundef %bios, i32 noundef %conv3) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call4)
  %tobool5.not = icmp eq i16 %call4, 0
  br i1 %tobool5.not, label %if.then2.cleanup24_crit_edge, label %if.then6

if.then2.cleanup24_crit_edge:                     ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup24

if.then6:                                         ; preds = %if.then2
  %conv7 = zext i16 %call4 to i32
  %call8 = call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %conv7) #4
  %7 = ptrtoint ptr %ver to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %call8, ptr %ver, align 1
  %call8.off = add i8 %call8, -32
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %call8.off)
  %switch = icmp ult i8 %call8.off, 3
  br i1 %switch, label %sw.bb, label %if.then6.cleanup24_crit_edge

if.then6.cleanup24_crit_edge:                     ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup24

sw.bb:                                            ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #6
  %add11 = add nuw nsw i32 %conv7, 1
  %call12 = call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add11) #4
  %8 = ptrtoint ptr %hdr to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %call12, ptr %hdr, align 1
  %add14 = add nuw nsw i32 %conv7, 2
  %call15 = call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add14) #4
  %9 = ptrtoint ptr %len to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %call15, ptr %len, align 1
  %add17 = add nuw nsw i32 %conv7, 3
  %call18 = call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add17) #4
  %10 = ptrtoint ptr %cnt to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %call18, ptr %cnt, align 1
  %add20 = add nuw nsw i32 %conv7, 4
  %call21 = call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add20) #4
  %11 = ptrtoint ptr %sub to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %call21, ptr %sub, align 1
  br label %cleanup24

cleanup24:                                        ; preds = %sw.bb, %if.then6.cleanup24_crit_edge, %if.then2.cleanup24_crit_edge, %if.then.cleanup24_crit_edge, %entry.cleanup24_crit_edge
  %retval.1 = phi i16 [ %call4, %sw.bb ], [ 0, %if.then6.cleanup24_crit_edge ], [ 0, %if.then2.cleanup24_crit_edge ], [ 0, %if.then.cleanup24_crit_edge ], [ 0, %entry.cleanup24_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %U) #4
  ret i16 %retval.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bit_entry(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @nvbios_rd16(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @nvbios_rd08(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @nvbios_disp_entry(ptr noundef %bios, i8 noundef zeroext %idx, ptr nocapture noundef writeonly %ver, ptr nocapture noundef %len, ptr nocapture noundef writeonly %sub) local_unnamed_addr #0 align 64 {
entry:
  %hdr = alloca i8, align 1
  %cnt = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %hdr) #4
  %0 = ptrtoint ptr %hdr to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %hdr, align 1, !annotation !9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cnt) #4
  %1 = ptrtoint ptr %cnt to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %cnt, align 1, !annotation !9
  %call = call zeroext i16 @nvbios_disp_table(ptr noundef %bios, ptr noundef %ver, ptr noundef nonnull %hdr, ptr noundef nonnull %cnt, ptr noundef %len, ptr noundef %sub)
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call)
  %tobool.not = icmp eq i16 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = ptrtoint ptr %cnt to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cnt, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %idx)
  %cmp = icmp ugt i8 %3, %idx
  br i1 %cmp, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %conv1 = zext i8 %idx to i16
  %4 = ptrtoint ptr %hdr to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %hdr, align 1
  %conv5 = zext i8 %5 to i16
  %add = add i16 %call, %conv5
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %len, align 1
  %conv7 = zext i8 %7 to i16
  %mul = mul nuw i16 %conv7, %conv1
  %add8 = add i16 %add, %mul
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %8 = ptrtoint ptr %ver to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %ver, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i16 [ %add8, %if.then ], [ 0, %if.end ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cnt) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %hdr) #4
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @nvbios_disp_parse(ptr noundef %bios, i8 noundef zeroext %idx, ptr nocapture noundef writeonly %ver, ptr nocapture noundef %len, ptr nocapture noundef writeonly %sub, ptr nocapture noundef writeonly %info) local_unnamed_addr #0 align 64 {
entry:
  %hdr.i = alloca i8, align 1
  %cnt.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %hdr.i) #4
  %0 = ptrtoint ptr %hdr.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %hdr.i, align 1, !annotation !9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cnt.i) #4
  %1 = ptrtoint ptr %cnt.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %cnt.i, align 1, !annotation !9
  %call.i = call zeroext i16 @nvbios_disp_table(ptr noundef %bios, ptr noundef %ver, ptr noundef nonnull %hdr.i, ptr noundef nonnull %cnt.i, ptr noundef %len, ptr noundef %sub) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call.i)
  %tobool.not.i = icmp eq i16 %call.i, 0
  br i1 %tobool.not.i, label %entry.nvbios_disp_entry.exit.thread_crit_edge, label %land.lhs.true.i

entry.nvbios_disp_entry.exit.thread_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %nvbios_disp_entry.exit.thread

land.lhs.true.i:                                  ; preds = %entry
  %2 = ptrtoint ptr %cnt.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cnt.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %idx)
  %cmp.i = icmp ugt i8 %3, %idx
  br i1 %cmp.i, label %nvbios_disp_entry.exit, label %land.lhs.true.i.nvbios_disp_entry.exit.thread_crit_edge

land.lhs.true.i.nvbios_disp_entry.exit.thread_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %nvbios_disp_entry.exit.thread

nvbios_disp_entry.exit.thread:                    ; preds = %land.lhs.true.i.nvbios_disp_entry.exit.thread_crit_edge, %entry.nvbios_disp_entry.exit.thread_crit_edge
  %4 = ptrtoint ptr %ver to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %ver, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cnt.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %hdr.i) #4
  br label %cleanup

nvbios_disp_entry.exit:                           ; preds = %land.lhs.true.i
  %conv1.i = zext i8 %idx to i16
  %5 = ptrtoint ptr %hdr.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %hdr.i, align 1
  %conv5.i = zext i8 %6 to i16
  %add.i = add i16 %call.i, %conv5.i
  %7 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %len, align 1
  %conv7.i = zext i8 %8 to i16
  %mul.i = mul nuw i16 %conv7.i, %conv1.i
  %add8.i = add i16 %add.i, %mul.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cnt.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %hdr.i) #4
  %conv = zext i16 %add8.i to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %add8.i)
  %tobool.not = icmp eq i16 %add8.i, 0
  br i1 %tobool.not, label %nvbios_disp_entry.exit.cleanup_crit_edge, label %land.lhs.true

nvbios_disp_entry.exit.cleanup_crit_edge:         ; preds = %nvbios_disp_entry.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true:                                    ; preds = %nvbios_disp_entry.exit
  %9 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %len, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %10)
  %cmp = icmp ugt i8 %10, 1
  br i1 %cmp, label %if.then, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %call4 = tail call zeroext i16 @nvbios_rd16(ptr noundef %bios, i32 noundef %conv) #4
  %11 = ptrtoint ptr %info to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %call4, ptr %info, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.then, %land.lhs.true.cleanup_crit_edge, %nvbios_disp_entry.exit.cleanup_crit_edge, %nvbios_disp_entry.exit.thread
  %retval.0 = phi i16 [ %add8.i, %if.then ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %nvbios_disp_entry.exit.cleanup_crit_edge ], [ 0, %nvbios_disp_entry.exit.thread ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @nvbios_outp_entry(ptr noundef %bios, i8 noundef zeroext %idx, ptr nocapture noundef writeonly %ver, ptr nocapture noundef writeonly %hdr, ptr nocapture noundef writeonly %cnt, ptr nocapture noundef %len) local_unnamed_addr #0 align 64 {
entry:
  %hdr.i.i = alloca i8, align 1
  %cnt.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %hdr.i.i) #4
  %0 = ptrtoint ptr %hdr.i.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %hdr.i.i, align 1, !annotation !9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cnt.i.i) #4
  %1 = ptrtoint ptr %cnt.i.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %cnt.i.i, align 1, !annotation !9
  %call.i.i = call zeroext i16 @nvbios_disp_table(ptr noundef %bios, ptr noundef %ver, ptr noundef nonnull %hdr.i.i, ptr noundef nonnull %cnt.i.i, ptr noundef %len, ptr noundef %hdr) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call.i.i)
  %tobool.not.i.i = icmp eq i16 %call.i.i, 0
  br i1 %tobool.not.i.i, label %entry.nvbios_disp_entry.exit.thread.i_crit_edge, label %land.lhs.true.i.i

entry.nvbios_disp_entry.exit.thread.i_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %nvbios_disp_entry.exit.thread.i

land.lhs.true.i.i:                                ; preds = %entry
  %2 = ptrtoint ptr %cnt.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cnt.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %idx)
  %cmp.i.i = icmp ugt i8 %3, %idx
  br i1 %cmp.i.i, label %nvbios_disp_entry.exit.i, label %land.lhs.true.i.i.nvbios_disp_entry.exit.thread.i_crit_edge

land.lhs.true.i.i.nvbios_disp_entry.exit.thread.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %nvbios_disp_entry.exit.thread.i

nvbios_disp_entry.exit.thread.i:                  ; preds = %land.lhs.true.i.i.nvbios_disp_entry.exit.thread.i_crit_edge, %entry.nvbios_disp_entry.exit.thread.i_crit_edge
  %4 = ptrtoint ptr %ver to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %ver, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cnt.i.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %hdr.i.i) #4
  br label %if.end

nvbios_disp_entry.exit.i:                         ; preds = %land.lhs.true.i.i
  %conv1.i.i = zext i8 %idx to i16
  %5 = ptrtoint ptr %hdr.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %hdr.i.i, align 1
  %conv5.i.i = zext i8 %6 to i16
  %add.i.i = add i16 %call.i.i, %conv5.i.i
  %7 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %len, align 1
  %conv7.i.i = zext i8 %8 to i16
  %mul.i.i = mul nuw i16 %conv7.i.i, %conv1.i.i
  %add8.i.i = add i16 %add.i.i, %mul.i.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cnt.i.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %hdr.i.i) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %add8.i.i)
  %tobool.not.i = icmp ne i16 %add8.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %8)
  %cmp.i = icmp ugt i8 %8, 1
  %or.cond = select i1 %tobool.not.i, i1 %cmp.i, i1 false
  br i1 %or.cond, label %if.then, label %nvbios_disp_entry.exit.i.if.end_crit_edge

nvbios_disp_entry.exit.i.if.end_crit_edge:        ; preds = %nvbios_disp_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %nvbios_disp_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i = zext i16 %add8.i.i to i32
  %call4.i = tail call zeroext i16 @nvbios_rd16(ptr noundef %bios, i32 noundef %conv.i) #4
  %conv = zext i16 %call4.i to i32
  %add = add nuw nsw i32 %conv, 5
  %call2 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add) #4
  %9 = ptrtoint ptr %cnt to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %call2, ptr %cnt, align 1
  %10 = ptrtoint ptr %len to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 6, ptr %len, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %nvbios_disp_entry.exit.i.if.end_crit_edge, %nvbios_disp_entry.exit.thread.i
  %data.0 = phi i16 [ %call4.i, %if.then ], [ 0, %nvbios_disp_entry.exit.i.if.end_crit_edge ], [ 0, %nvbios_disp_entry.exit.thread.i ]
  ret i16 %data.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @nvbios_outp_parse(ptr noundef %bios, i8 noundef zeroext %idx, ptr nocapture noundef %ver, ptr nocapture noundef %hdr, ptr nocapture noundef writeonly %cnt, ptr nocapture noundef %len, ptr nocapture noundef writeonly %info) local_unnamed_addr #0 align 64 {
entry:
  %hdr.i.i.i = alloca i8, align 1
  %cnt.i.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %hdr.i.i.i) #4
  %0 = ptrtoint ptr %hdr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %hdr.i.i.i, align 1, !annotation !9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cnt.i.i.i) #4
  %1 = ptrtoint ptr %cnt.i.i.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %cnt.i.i.i, align 1, !annotation !9
  %call.i.i.i = call zeroext i16 @nvbios_disp_table(ptr noundef %bios, ptr noundef %ver, ptr noundef nonnull %hdr.i.i.i, ptr noundef nonnull %cnt.i.i.i, ptr noundef %len, ptr noundef %hdr) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i16 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %entry.nvbios_disp_entry.exit.thread.i.i_crit_edge, label %land.lhs.true.i.i.i

entry.nvbios_disp_entry.exit.thread.i.i_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %nvbios_disp_entry.exit.thread.i.i

land.lhs.true.i.i.i:                              ; preds = %entry
  %2 = ptrtoint ptr %cnt.i.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cnt.i.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %idx)
  %cmp.i.i.i = icmp ugt i8 %3, %idx
  br i1 %cmp.i.i.i, label %nvbios_disp_entry.exit.i.i, label %land.lhs.true.i.i.i.nvbios_disp_entry.exit.thread.i.i_crit_edge

land.lhs.true.i.i.i.nvbios_disp_entry.exit.thread.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %nvbios_disp_entry.exit.thread.i.i

nvbios_disp_entry.exit.thread.i.i:                ; preds = %land.lhs.true.i.i.i.nvbios_disp_entry.exit.thread.i.i_crit_edge, %entry.nvbios_disp_entry.exit.thread.i.i_crit_edge
  %4 = ptrtoint ptr %ver to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %ver, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cnt.i.i.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %hdr.i.i.i) #4
  br label %cleanup

nvbios_disp_entry.exit.i.i:                       ; preds = %land.lhs.true.i.i.i
  %conv1.i.i.i = zext i8 %idx to i16
  %5 = ptrtoint ptr %hdr.i.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %hdr.i.i.i, align 1
  %conv5.i.i.i = zext i8 %6 to i16
  %add.i.i.i = add i16 %call.i.i.i, %conv5.i.i.i
  %7 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %len, align 1
  %conv7.i.i.i = zext i8 %8 to i16
  %mul.i.i.i = mul nuw i16 %conv7.i.i.i, %conv1.i.i.i
  %add8.i.i.i = add i16 %add.i.i.i, %mul.i.i.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cnt.i.i.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %hdr.i.i.i) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %add8.i.i.i)
  %tobool.not.i.i = icmp ne i16 %add8.i.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %8)
  %cmp.i.i = icmp ugt i8 %8, 1
  %or.cond.i = select i1 %tobool.not.i.i, i1 %cmp.i.i, i1 false
  br i1 %or.cond.i, label %nvbios_outp_entry.exit, label %nvbios_disp_entry.exit.i.i.cleanup_crit_edge

nvbios_disp_entry.exit.i.i.cleanup_crit_edge:     ; preds = %nvbios_disp_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

nvbios_outp_entry.exit:                           ; preds = %nvbios_disp_entry.exit.i.i
  %conv.i.i = zext i16 %add8.i.i.i to i32
  %call4.i.i = tail call zeroext i16 @nvbios_rd16(ptr noundef %bios, i32 noundef %conv.i.i) #4
  %conv.i = zext i16 %call4.i.i to i32
  %add.i = add nuw nsw i32 %conv.i, 5
  %call2.i = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add.i) #4
  %9 = ptrtoint ptr %cnt to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %call2.i, ptr %cnt, align 1
  %10 = ptrtoint ptr %len to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 6, ptr %len, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call4.i.i)
  %tobool.not = icmp eq i16 %call4.i.i, 0
  br i1 %tobool.not, label %nvbios_outp_entry.exit.cleanup_crit_edge, label %land.lhs.true

nvbios_outp_entry.exit.cleanup_crit_edge:         ; preds = %nvbios_outp_entry.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true:                                    ; preds = %nvbios_outp_entry.exit
  %11 = ptrtoint ptr %hdr to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %hdr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %12)
  %cmp = icmp ugt i8 %12, 9
  br i1 %cmp, label %if.then, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then:                                          ; preds = %land.lhs.true
  %call4 = tail call zeroext i16 @nvbios_rd16(ptr noundef %bios, i32 noundef %conv.i) #4
  %13 = ptrtoint ptr %info to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %call4, ptr %info, align 2
  %add6 = add nuw nsw i32 %conv.i, 2
  %call7 = tail call i32 @nvbios_rd32(ptr noundef %bios, i32 noundef %add6) #4
  %conv8 = trunc i32 %call7 to i16
  %mask = getelementptr inbounds %struct.nvbios_outp, ptr %info, i32 0, i32 1
  %14 = ptrtoint ptr %mask to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv8, ptr %mask, align 2
  %15 = ptrtoint ptr %ver to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %ver, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 33, i8 %16)
  %cmp10 = icmp ult i8 %16, 33
  br i1 %cmp10, label %if.then12, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then12:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %conv15 = or i16 %conv8, 192
  %17 = ptrtoint ptr %mask to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv15, ptr %mask, align 2
  br label %if.end

if.end:                                           ; preds = %if.then12, %if.then.if.end_crit_edge
  %add17 = add nuw nsw i32 %conv.i, 6
  %call18 = tail call zeroext i16 @nvbios_rd16(ptr noundef %bios, i32 noundef %add17) #4
  %script = getelementptr inbounds %struct.nvbios_outp, ptr %info, i32 0, i32 2
  %18 = ptrtoint ptr %script to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %call18, ptr %script, align 2
  %add20 = add nuw nsw i32 %conv.i, 8
  %call21 = tail call zeroext i16 @nvbios_rd16(ptr noundef %bios, i32 noundef %add20) #4
  %arrayidx23 = getelementptr %struct.nvbios_outp, ptr %info, i32 0, i32 2, i32 1
  %19 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %call21, ptr %arrayidx23, align 2
  %arrayidx25 = getelementptr %struct.nvbios_outp, ptr %info, i32 0, i32 2, i32 2
  %20 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 0, ptr %arrayidx25, align 2
  %21 = ptrtoint ptr %hdr to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %hdr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %22)
  %cmp27 = icmp ugt i8 %22, 11
  br i1 %cmp27, label %if.then29, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then29:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %add31 = add nuw nsw i32 %conv.i, 10
  %call32 = tail call zeroext i16 @nvbios_rd16(ptr noundef %bios, i32 noundef %add31) #4
  %23 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %call32, ptr %arrayidx25, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.then29, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %nvbios_outp_entry.exit.cleanup_crit_edge, %nvbios_disp_entry.exit.i.i.cleanup_crit_edge, %nvbios_disp_entry.exit.thread.i.i
  %retval.0 = phi i16 [ %call4.i.i, %if.then29 ], [ %call4.i.i, %if.end.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %nvbios_outp_entry.exit.cleanup_crit_edge ], [ 0, %nvbios_disp_entry.exit.i.i.cleanup_crit_edge ], [ 0, %nvbios_disp_entry.exit.thread.i.i ]
  ret i16 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_rd32(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @nvbios_outp_match(ptr noundef %bios, i16 noundef zeroext %type, i16 noundef zeroext %mask, ptr nocapture noundef %ver, ptr nocapture noundef %hdr, ptr nocapture noundef writeonly %cnt, ptr nocapture noundef %len, ptr nocapture noundef %info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %mask10 = getelementptr inbounds %struct.nvbios_outp, ptr %info, i32 0, i32 1
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %entry
  %idx.0 = phi i16 [ 0, %entry ], [ %inc, %while.cond.backedge ]
  %inc = add i16 %idx.0, 1
  %conv = trunc i16 %idx.0 to i8
  %call = tail call zeroext i16 @nvbios_outp_parse(ptr noundef %bios, i8 noundef zeroext %conv, ptr noundef %ver, ptr noundef %hdr, ptr noundef %cnt, ptr noundef %len, ptr noundef %info)
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call)
  %tobool.not = icmp eq i16 %call, 0
  br i1 %tobool.not, label %lor.rhs, label %land.lhs.true.critedge

lor.rhs:                                          ; preds = %while.cond
  %0 = ptrtoint ptr %ver to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ver, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool3.not = icmp eq i8 %1, 0
  br i1 %tobool3.not, label %lor.rhs.while.end_crit_edge, label %lor.rhs.while.cond.backedge_crit_edge

lor.rhs.while.cond.backedge_crit_edge:            ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond.backedge

lor.rhs.while.end_crit_edge:                      ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.cond.backedge:                              ; preds = %if.then.while.cond.backedge_crit_edge, %land.lhs.true.critedge.while.cond.backedge_crit_edge, %lor.rhs.while.cond.backedge_crit_edge
  br label %while.cond

land.lhs.true.critedge:                           ; preds = %while.cond
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %info, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %3, i16 %type)
  %cmp = icmp eq i16 %3, %type
  br i1 %cmp, label %if.then, label %land.lhs.true.critedge.while.cond.backedge_crit_edge

land.lhs.true.critedge.while.cond.backedge_crit_edge: ; preds = %land.lhs.true.critedge
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond.backedge

if.then:                                          ; preds = %land.lhs.true.critedge
  %4 = ptrtoint ptr %mask10 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %mask10, align 2
  %and23 = and i16 %5, %mask
  call void @__sanitizer_cov_trace_cmp2(i16 %and23, i16 %mask)
  %cmp14 = icmp eq i16 %and23, %mask
  br i1 %cmp14, label %if.then.while.end_crit_edge, label %if.then.while.cond.backedge_crit_edge

if.then.while.cond.backedge_crit_edge:            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond.backedge

if.then.while.end_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.end:                                        ; preds = %if.then.while.end_crit_edge, %lor.rhs.while.end_crit_edge
  ret i16 %call
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i16 @nvbios_ocfg_entry(ptr nocapture readnone %bios, i16 noundef zeroext %outp, i8 noundef zeroext %idx, ptr nocapture readnone %ver, ptr nocapture noundef readonly %hdr, ptr nocapture noundef readonly %cnt, ptr nocapture noundef readonly %len) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cnt to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cnt, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %idx)
  %cmp = icmp ugt i8 %1, %idx
  br i1 %cmp, label %if.then, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %conv = zext i8 %idx to i16
  %2 = ptrtoint ptr %hdr to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %hdr, align 1
  %conv4 = zext i8 %3 to i16
  %add = add i16 %conv4, %outp
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %len, align 1
  %conv6 = zext i8 %5 to i16
  %mul = mul nuw i16 %conv6, %conv
  %add7 = add i16 %add, %mul
  br label %return

return:                                           ; preds = %if.then, %entry.return_crit_edge
  %retval.0 = phi i16 [ %add7, %if.then ], [ 0, %entry.return_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @nvbios_ocfg_parse(ptr noundef %bios, i16 noundef zeroext %outp, i8 noundef zeroext %idx, ptr nocapture readnone %ver, ptr nocapture noundef readonly %hdr, ptr nocapture noundef readonly %cnt, ptr nocapture noundef readonly %len, ptr nocapture noundef writeonly %info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cnt to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cnt, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %idx)
  %cmp.i = icmp ugt i8 %1, %idx
  br i1 %cmp.i, label %nvbios_ocfg_entry.exit, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

nvbios_ocfg_entry.exit:                           ; preds = %entry
  %conv.i = zext i8 %idx to i16
  %2 = ptrtoint ptr %hdr to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %hdr, align 1
  %conv4.i = zext i8 %3 to i16
  %add.i = add i16 %conv4.i, %outp
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %len, align 1
  %conv6.i = zext i8 %5 to i16
  %mul.i = mul nuw i16 %conv6.i, %conv.i
  %add7.i = add i16 %add.i, %mul.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %add7.i)
  %tobool.not = icmp eq i16 %add7.i, 0
  br i1 %tobool.not, label %nvbios_ocfg_entry.exit.if.end_crit_edge, label %if.then

nvbios_ocfg_entry.exit.if.end_crit_edge:          ; preds = %nvbios_ocfg_entry.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %nvbios_ocfg_entry.exit
  call void @__sanitizer_cov_trace_pc() #6
  %conv = zext i16 %add7.i to i32
  %call1 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %conv) #4
  %6 = ptrtoint ptr %info to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %call1, ptr %info, align 2
  %add3 = add nuw nsw i32 %conv, 1
  %call4 = tail call zeroext i16 @nvbios_rd16(ptr noundef %bios, i32 noundef %add3) #4
  %conv5 = trunc i16 %call4 to i8
  %flags = getelementptr inbounds %struct.nvbios_ocfg, ptr %info, i32 0, i32 1
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv5, ptr %flags, align 1
  %add7 = add nuw nsw i32 %conv, 2
  %call8 = tail call zeroext i16 @nvbios_rd16(ptr noundef %bios, i32 noundef %add7) #4
  %clkcmp = getelementptr inbounds %struct.nvbios_ocfg, ptr %info, i32 0, i32 2
  %8 = ptrtoint ptr %clkcmp to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %call8, ptr %clkcmp, align 2
  %add10 = add nuw nsw i32 %conv, 4
  %call11 = tail call zeroext i16 @nvbios_rd16(ptr noundef %bios, i32 noundef %add10) #4
  %arrayidx13 = getelementptr %struct.nvbios_ocfg, ptr %info, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %call11, ptr %arrayidx13, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %nvbios_ocfg_entry.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %retval.0.i28 = phi i16 [ %add7.i, %if.then ], [ 0, %nvbios_ocfg_entry.exit.if.end_crit_edge ], [ 0, %entry.if.end_crit_edge ]
  ret i16 %retval.0.i28
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @nvbios_ocfg_match(ptr noundef %bios, i16 noundef zeroext %outp, i8 noundef zeroext %proto, i8 noundef zeroext %flags, ptr nocapture noundef readnone %ver, ptr nocapture noundef readonly %hdr, ptr nocapture noundef readonly %cnt, ptr nocapture noundef readonly %len, ptr nocapture noundef %info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %flags9 = getelementptr inbounds %struct.nvbios_ocfg, ptr %info, i32 0, i32 1
  %0 = ptrtoint ptr %cnt to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cnt, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp.i.i20.not = icmp eq i8 %1, 0
  br i1 %cmp.i.i20.not, label %entry.while.end_crit_edge, label %nvbios_ocfg_entry.exit.i.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

nvbios_ocfg_entry.exit.i.lr.ph:                   ; preds = %entry
  %clkcmp.i = getelementptr inbounds %struct.nvbios_ocfg, ptr %info, i32 0, i32 2
  %arrayidx13.i = getelementptr %struct.nvbios_ocfg, ptr %info, i32 0, i32 2, i32 1
  br label %nvbios_ocfg_entry.exit.i

nvbios_ocfg_entry.exit.i:                         ; preds = %if.end.nvbios_ocfg_entry.exit.i_crit_edge, %nvbios_ocfg_entry.exit.i.lr.ph
  %inc22 = phi i16 [ 1, %nvbios_ocfg_entry.exit.i.lr.ph ], [ %inc, %if.end.nvbios_ocfg_entry.exit.i_crit_edge ]
  %idx.021 = phi i16 [ 0, %nvbios_ocfg_entry.exit.i.lr.ph ], [ %inc22, %if.end.nvbios_ocfg_entry.exit.i_crit_edge ]
  %conv.i.i = and i16 %idx.021, 255
  %2 = ptrtoint ptr %hdr to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %hdr, align 1
  %conv4.i.i = zext i8 %3 to i16
  %add.i.i = add i16 %conv4.i.i, %outp
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %len, align 1
  %conv6.i.i = zext i8 %5 to i16
  %mul.i.i = mul nuw i16 %conv.i.i, %conv6.i.i
  %add7.i.i = add i16 %add.i.i, %mul.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %add7.i.i)
  %tobool.not.i = icmp eq i16 %add7.i.i, 0
  br i1 %tobool.not.i, label %nvbios_ocfg_entry.exit.i.while.end_crit_edge, label %while.body

nvbios_ocfg_entry.exit.i.while.end_crit_edge:     ; preds = %nvbios_ocfg_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.body:                                       ; preds = %nvbios_ocfg_entry.exit.i
  %conv.i = zext i16 %add7.i.i to i32
  %call1.i = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %conv.i) #4
  %6 = ptrtoint ptr %info to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %call1.i, ptr %info, align 2
  %add3.i = add nuw nsw i32 %conv.i, 1
  %call4.i = tail call zeroext i16 @nvbios_rd16(ptr noundef %bios, i32 noundef %add3.i) #4
  %conv5.i = trunc i16 %call4.i to i8
  %7 = ptrtoint ptr %flags9 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv5.i, ptr %flags9, align 1
  %add7.i = add nuw nsw i32 %conv.i, 2
  %call8.i = tail call zeroext i16 @nvbios_rd16(ptr noundef %bios, i32 noundef %add7.i) #4
  %8 = ptrtoint ptr %clkcmp.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %call8.i, ptr %clkcmp.i, align 2
  %add10.i = add nuw nsw i32 %conv.i, 4
  %call11.i = tail call zeroext i16 @nvbios_rd16(ptr noundef %bios, i32 noundef %add10.i) #4
  %9 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %call11.i, ptr %arrayidx13.i, align 2
  %10 = ptrtoint ptr %info to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %info, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %11, i8 %proto)
  %cmp = icmp eq i8 %11, %proto
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %11)
  %cmp7 = icmp eq i8 %11, -1
  %or.cond = or i1 %cmp, %cmp7
  br i1 %or.cond, label %land.lhs.true, label %while.body.if.end_crit_edge

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true:                                    ; preds = %while.body
  %12 = ptrtoint ptr %flags9 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %flags9, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %13, i8 %flags)
  %cmp12 = icmp eq i8 %13, %flags
  br i1 %cmp12, label %land.lhs.true.while.end_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true.while.end_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %while.body.if.end_crit_edge
  %inc = add i16 %inc22, 1
  %conv = trunc i16 %inc22 to i8
  %14 = ptrtoint ptr %cnt to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %cnt, align 1
  %cmp.i.i = icmp ugt i8 %15, %conv
  br i1 %cmp.i.i, label %if.end.nvbios_ocfg_entry.exit.i_crit_edge, label %if.end.while.end_crit_edge

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

if.end.nvbios_ocfg_entry.exit.i_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %nvbios_ocfg_entry.exit.i

while.end:                                        ; preds = %if.end.while.end_crit_edge, %land.lhs.true.while.end_crit_edge, %nvbios_ocfg_entry.exit.i.while.end_crit_edge, %entry.while.end_crit_edge
  %retval.0.i28.i19 = phi i16 [ 0, %entry.while.end_crit_edge ], [ 0, %if.end.while.end_crit_edge ], [ 0, %nvbios_ocfg_entry.exit.i.while.end_crit_edge ], [ %add7.i.i, %land.lhs.true.while.end_crit_edge ]
  ret i16 %retval.0.i28.i19
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @nvbios_oclk_match(ptr noundef %bios, i16 noundef zeroext %cmp, i32 noundef %khz) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %cmp)
  %tobool.not14 = icmp eq i16 %cmp, 0
  br i1 %tobool.not14, label %entry.return_crit_edge, label %while.body.lr.ph

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

while.body.lr.ph:                                 ; preds = %entry
  %div = udiv i32 %khz, 10
  br label %while.body

while.cond:                                       ; preds = %while.body
  %add8 = add i16 %cmp.addr.015, 4
  %tobool.not = icmp eq i16 %add8, 0
  br i1 %tobool.not, label %while.cond.return_crit_edge, label %while.cond.while.body_crit_edge

while.cond.while.body_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

while.cond.return_crit_edge:                      ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

while.body:                                       ; preds = %while.cond.while.body_crit_edge, %while.body.lr.ph
  %cmp.addr.015 = phi i16 [ %cmp, %while.body.lr.ph ], [ %add8, %while.cond.while.body_crit_edge ]
  %conv = zext i16 %cmp.addr.015 to i32
  %call = tail call zeroext i16 @nvbios_rd16(ptr noundef %bios, i32 noundef %conv) #4
  %conv1 = zext i16 %call to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %conv1)
  %cmp2.not = icmp ult i32 %div, %conv1
  br i1 %cmp2.not, label %while.cond, label %if.then

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  %add5 = add nuw nsw i32 %conv, 2
  %call6 = tail call zeroext i16 @nvbios_rd16(ptr noundef %bios, i32 noundef %add5) #4
  br label %return

return:                                           ; preds = %if.then, %while.cond.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i16 [ %call6, %if.then ], [ 0, %entry.return_crit_edge ], [ 0, %while.cond.return_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare ptr @memset(ptr, i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
