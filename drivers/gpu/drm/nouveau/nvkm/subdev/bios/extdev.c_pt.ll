; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extdev.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/bios/extdev.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvbios_extdev_func = type { i8, i8, i8 }

@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 48, i64 64, i64 65]
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @nvbios_extdev_skip_probe(ptr noundef %bios) local_unnamed_addr #0 align 64 {
entry:
  %ver = alloca i8, align 1
  %hdr = alloca i8, align 1
  %len = alloca i8, align 1
  %cnt = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ver) #3
  %0 = ptrtoint ptr %ver to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %ver, align 1, !annotation !9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %hdr) #3
  %1 = ptrtoint ptr %hdr to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %hdr, align 1, !annotation !9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %len) #3
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cnt) #3
  %call = call fastcc zeroext i16 @extdev_table(ptr noundef %bios, ptr noundef nonnull %ver, ptr noundef nonnull %hdr, ptr noundef nonnull %len, ptr noundef nonnull %cnt)
  %conv = zext i16 %call to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call)
  %tobool.not = icmp eq i16 %call, 0
  br i1 %tobool.not, label %entry.if.end13_crit_edge, label %land.lhs.true

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end13

land.lhs.true:                                    ; preds = %entry
  %2 = ptrtoint ptr %ver to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ver, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %3)
  %cmp = icmp eq i8 %3, 64
  br i1 %cmp, label %land.lhs.true3, label %land.lhs.true.if.end13_crit_edge

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end13

land.lhs.true3:                                   ; preds = %land.lhs.true
  %4 = ptrtoint ptr %hdr to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %hdr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %5)
  %cmp5 = icmp ugt i8 %5, 4
  br i1 %cmp5, label %if.then, label %land.lhs.true3.if.end13_crit_edge

land.lhs.true3.if.end13_crit_edge:                ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end13

if.then:                                          ; preds = %land.lhs.true3
  %conv4 = zext i8 %5 to i32
  %sub = add nuw nsw i32 %conv, 4
  %add = sub nsw i32 %sub, %conv4
  %call9 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add) #3
  %6 = and i8 %call9, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool11.not = icmp eq i8 %6, 0
  br i1 %tobool11.not, label %if.then.if.end13_crit_edge, label %if.then.cleanup14_crit_edge

if.then.cleanup14_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup14

if.then.if.end13_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end13

if.end13:                                         ; preds = %if.then.if.end13_crit_edge, %land.lhs.true3.if.end13_crit_edge, %land.lhs.true.if.end13_crit_edge, %entry.if.end13_crit_edge
  br label %cleanup14

cleanup14:                                        ; preds = %if.end13, %if.then.cleanup14_crit_edge
  %retval.1 = phi i1 [ false, %if.end13 ], [ true, %if.then.cleanup14_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cnt) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %len) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %hdr) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ver) #3
  ret i1 %retval.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i16 @extdev_table(ptr noundef %bios, ptr nocapture noundef writeonly %ver, ptr nocapture noundef %hdr, ptr nocapture noundef writeonly %len, ptr nocapture noundef writeonly %cnt) unnamed_addr #0 align 64 {
entry:
  %dcb_ver = alloca i8, align 1
  %dcb_hdr = alloca i8, align 1
  %dcb_cnt = alloca i8, align 1
  %dcb_len = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %dcb_ver) #3
  %0 = ptrtoint ptr %dcb_ver to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %dcb_ver, align 1, !annotation !9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %dcb_hdr) #3
  %1 = ptrtoint ptr %dcb_hdr to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %dcb_hdr, align 1, !annotation !9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %dcb_cnt) #3
  %2 = ptrtoint ptr %dcb_cnt to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %dcb_cnt, align 1, !annotation !9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %dcb_len) #3
  %3 = ptrtoint ptr %dcb_len to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %dcb_len, align 1, !annotation !9
  %call = call zeroext i16 @dcb_table(ptr noundef %bios, ptr noundef nonnull %dcb_ver, ptr noundef nonnull %dcb_hdr, ptr noundef nonnull %dcb_cnt, ptr noundef nonnull %dcb_len) #3
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call)
  %tobool.not = icmp eq i16 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %4 = ptrtoint ptr %dcb_ver to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dcb_ver, align 1
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i8 %5, label %lor.lhs.false.cleanup_crit_edge [
    i8 48, label %lor.lhs.false.if.end_crit_edge
    i8 64, label %lor.lhs.false.if.end_crit_edge47
    i8 65, label %lor.lhs.false.if.end_crit_edge48
  ]

lor.lhs.false.if.end_crit_edge48:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

lor.lhs.false.if.end_crit_edge47:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false.if.end_crit_edge, %lor.lhs.false.if.end_crit_edge47, %lor.lhs.false.if.end_crit_edge48
  %conv9 = zext i16 %call to i32
  %add = add nuw nsw i32 %conv9, 18
  %call10 = call zeroext i16 @nvbios_rd16(ptr noundef %bios, i32 noundef %add) #3
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call10)
  %tobool11.not = icmp eq i16 %call10, 0
  br i1 %tobool11.not, label %if.end.cleanup_crit_edge, label %if.end13

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end13:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %conv14 = zext i16 %call10 to i32
  %call16 = call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %conv14) #3
  %7 = ptrtoint ptr %ver to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %call16, ptr %ver, align 1
  %add18 = add nuw nsw i32 %conv14, 1
  %call19 = call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add18) #3
  %8 = ptrtoint ptr %hdr to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %call19, ptr %hdr, align 1
  %add21 = add nuw nsw i32 %conv14, 2
  %call22 = call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add21) #3
  %9 = ptrtoint ptr %cnt to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %call22, ptr %cnt, align 1
  %add24 = add nuw nsw i32 %conv14, 3
  %call25 = call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add24) #3
  %10 = ptrtoint ptr %len to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %call25, ptr %len, align 1
  %11 = ptrtoint ptr %hdr to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %hdr, align 1
  %conv27 = zext i8 %12 to i16
  %add28 = add i16 %call10, %conv27
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i16 [ %add28, %if.end13 ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dcb_len) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dcb_cnt) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dcb_hdr) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dcb_ver) #3
  ret i16 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @nvbios_rd08(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvbios_extdev_parse(ptr noundef %bios, i32 noundef %idx, ptr nocapture noundef writeonly %func) local_unnamed_addr #0 align 64 {
entry:
  %hdr.i = alloca i8, align 1
  %cnt.i = alloca i8, align 1
  %ver = alloca i8, align 1
  %len = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ver) #3
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %len) #3
  %0 = ptrtoint ptr %len to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %len, align 1, !annotation !9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %hdr.i) #3
  %1 = ptrtoint ptr %hdr.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %hdr.i, align 1, !annotation !9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cnt.i) #3
  %2 = ptrtoint ptr %cnt.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %cnt.i, align 1, !annotation !9
  %call.i = call fastcc zeroext i16 @extdev_table(ptr noundef %bios, ptr noundef nonnull %ver, ptr noundef nonnull %hdr.i, ptr noundef nonnull %len, ptr noundef nonnull %cnt.i) #3
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call.i)
  %tobool.not.i = icmp eq i16 %call.i, 0
  br i1 %tobool.not.i, label %entry.nvbios_extdev_entry.exit.thread_crit_edge, label %land.lhs.true.i

entry.nvbios_extdev_entry.exit.thread_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %nvbios_extdev_entry.exit.thread

land.lhs.true.i:                                  ; preds = %entry
  %3 = ptrtoint ptr %cnt.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %cnt.i, align 1
  %conv1.i = zext i8 %4 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv1.i, i32 %idx)
  %cmp.i = icmp sgt i32 %conv1.i, %idx
  br i1 %cmp.i, label %nvbios_extdev_entry.exit, label %land.lhs.true.i.nvbios_extdev_entry.exit.thread_crit_edge

land.lhs.true.i.nvbios_extdev_entry.exit.thread_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %nvbios_extdev_entry.exit.thread

nvbios_extdev_entry.exit.thread:                  ; preds = %land.lhs.true.i.nvbios_extdev_entry.exit.thread_crit_edge, %entry.nvbios_extdev_entry.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cnt.i) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %hdr.i) #3
  br label %cleanup

nvbios_extdev_entry.exit:                         ; preds = %land.lhs.true.i
  %5 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %len, align 1
  %conv4.i = zext i8 %6 to i32
  %mul.i = mul i32 %conv4.i, %idx
  %7 = trunc i32 %mul.i to i16
  %conv5.i = add i16 %call.i, %7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cnt.i) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %hdr.i) #3
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv5.i)
  %tobool.not = icmp eq i16 %conv5.i, 0
  br i1 %tobool.not, label %nvbios_extdev_entry.exit.cleanup_crit_edge, label %if.end

nvbios_extdev_entry.exit.cleanup_crit_edge:       ; preds = %nvbios_extdev_entry.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %nvbios_extdev_entry.exit
  call void @__sanitizer_cov_trace_pc() #5
  %conv.i = zext i16 %conv5.i to i32
  %call.i5 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %conv.i) #3
  %8 = ptrtoint ptr %func to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %call.i5, ptr %func, align 1
  %add3.i = add nuw nsw i32 %conv.i, 1
  %call4.i = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add3.i) #3
  %addr.i = getelementptr inbounds %struct.nvbios_extdev_func, ptr %func, i32 0, i32 1
  %9 = ptrtoint ptr %addr.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %call4.i, ptr %addr.i, align 1
  %add6.i = add nuw nsw i32 %conv.i, 2
  %call7.i = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add6.i) #3
  %10 = lshr i8 %call7.i, 4
  %11 = and i8 %10, 1
  %bus.i = getelementptr inbounds %struct.nvbios_extdev_func, ptr %func, i32 0, i32 2
  %12 = ptrtoint ptr %bus.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %bus.i, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %nvbios_extdev_entry.exit.cleanup_crit_edge, %nvbios_extdev_entry.exit.thread
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %nvbios_extdev_entry.exit.cleanup_crit_edge ], [ -22, %nvbios_extdev_entry.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %len) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ver) #3
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvbios_extdev_find(ptr noundef %bios, i32 noundef %type, ptr nocapture noundef %func) local_unnamed_addr #0 align 64 {
entry:
  %hdr.i = alloca i8, align 1
  %cnt.i = alloca i8, align 1
  %ver = alloca i8, align 1
  %len = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ver) #3
  %0 = ptrtoint ptr %ver to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %ver, align 1, !annotation !9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %len) #3
  %1 = ptrtoint ptr %len to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %len, align 1, !annotation !9
  %addr.i = getelementptr inbounds %struct.nvbios_extdev_func, ptr %func, i32 0, i32 1
  %bus.i = getelementptr inbounds %struct.nvbios_extdev_func, ptr %func, i32 0, i32 2
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %entry
  %i.0 = phi i8 [ 0, %entry ], [ %inc, %while.body.while.cond_crit_edge ]
  %conv = zext i8 %i.0 to i16
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %hdr.i) #3
  %2 = ptrtoint ptr %hdr.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %hdr.i, align 1, !annotation !9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cnt.i) #3
  %3 = ptrtoint ptr %cnt.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %cnt.i, align 1, !annotation !9
  %call.i = call fastcc zeroext i16 @extdev_table(ptr noundef %bios, ptr noundef nonnull %ver, ptr noundef nonnull %hdr.i, ptr noundef nonnull %len, ptr noundef nonnull %cnt.i) #3
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call.i)
  %tobool.not.i = icmp eq i16 %call.i, 0
  br i1 %tobool.not.i, label %while.cond.nvbios_extdev_entry.exit.thread_crit_edge, label %land.lhs.true.i

while.cond.nvbios_extdev_entry.exit.thread_crit_edge: ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #5
  br label %nvbios_extdev_entry.exit.thread

land.lhs.true.i:                                  ; preds = %while.cond
  %4 = ptrtoint ptr %cnt.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %cnt.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %i.0)
  %cmp.i = icmp ugt i8 %5, %i.0
  br i1 %cmp.i, label %nvbios_extdev_entry.exit, label %land.lhs.true.i.nvbios_extdev_entry.exit.thread_crit_edge

land.lhs.true.i.nvbios_extdev_entry.exit.thread_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %nvbios_extdev_entry.exit.thread

nvbios_extdev_entry.exit.thread:                  ; preds = %land.lhs.true.i.nvbios_extdev_entry.exit.thread_crit_edge, %while.cond.nvbios_extdev_entry.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cnt.i) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %hdr.i) #3
  br label %cleanup

nvbios_extdev_entry.exit:                         ; preds = %land.lhs.true.i
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %len, align 1
  %conv4.i = zext i8 %7 to i16
  %mul.i = mul nuw i16 %conv4.i, %conv
  %conv5.i = add i16 %mul.i, %call.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cnt.i) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %hdr.i) #3
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv5.i)
  %tobool.not = icmp eq i16 %conv5.i, 0
  br i1 %tobool.not, label %nvbios_extdev_entry.exit.cleanup_crit_edge, label %while.body

nvbios_extdev_entry.exit.cleanup_crit_edge:       ; preds = %nvbios_extdev_entry.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

while.body:                                       ; preds = %nvbios_extdev_entry.exit
  %inc = add nuw i8 %i.0, 1
  %conv.i = zext i16 %conv5.i to i32
  %call.i10 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %conv.i) #3
  %8 = ptrtoint ptr %func to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %call.i10, ptr %func, align 1
  %add3.i = add nuw nsw i32 %conv.i, 1
  %call4.i = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add3.i) #3
  %9 = ptrtoint ptr %addr.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %call4.i, ptr %addr.i, align 1
  %add6.i = add nuw nsw i32 %conv.i, 2
  %call7.i = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add6.i) #3
  %10 = lshr i8 %call7.i, 4
  %11 = and i8 %10, 1
  %12 = ptrtoint ptr %bus.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %bus.i, align 1
  %13 = ptrtoint ptr %func to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %func, align 1
  %conv3 = zext i8 %14 to i32
  %cmp = icmp eq i32 %conv3, %type
  br i1 %cmp, label %while.body.cleanup_crit_edge, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

cleanup:                                          ; preds = %while.body.cleanup_crit_edge, %nvbios_extdev_entry.exit.cleanup_crit_edge, %nvbios_extdev_entry.exit.thread
  %retval.0 = phi i32 [ -22, %nvbios_extdev_entry.exit.thread ], [ -22, %nvbios_extdev_entry.exit.cleanup_crit_edge ], [ 0, %while.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %len) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ver) #3
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @dcb_table(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @nvbios_rd16(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_store1_noabort(i32)

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
