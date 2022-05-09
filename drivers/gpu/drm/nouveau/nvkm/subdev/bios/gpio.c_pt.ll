; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/subdev/bios/gpio.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/bios/gpio.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.dcb_gpio_func = type { i8, i8, [2 x i8], i8 }

@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @dcb_gpio_table(ptr noundef %bios, ptr noundef %ver, ptr noundef %hdr, ptr noundef %cnt, ptr noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i16 @dcb_table(ptr noundef %bios, ptr noundef %ver, ptr noundef %hdr, ptr noundef %cnt, ptr noundef %len) #3
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call)
  %tobool.not = icmp eq i16 %call, 0
  br i1 %tobool.not, label %entry.if.end55_crit_edge, label %if.then

entry.if.end55_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end55

if.then:                                          ; preds = %entry
  %0 = ptrtoint ptr %ver to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ver, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %1)
  %cmp = icmp ugt i8 %1, 47
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %2 = ptrtoint ptr %hdr to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %hdr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %3)
  %cmp3 = icmp ugt i8 %3, 11
  br i1 %cmp3, label %if.then5, label %land.lhs.true.land.lhs.true11_crit_edge

land.lhs.true.land.lhs.true11_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %land.lhs.true11

if.then5:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  %conv6 = zext i16 %call to i32
  %add = add nuw nsw i32 %conv6, 10
  br label %if.end21

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp1(i8 33, i8 %1)
  %cmp9 = icmp ugt i8 %1, 33
  br i1 %cmp9, label %if.else.land.lhs.true11_crit_edge, label %if.else.if.end55_crit_edge

if.else.if.end55_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end55

if.else.land.lhs.true11_crit_edge:                ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %land.lhs.true11

land.lhs.true11:                                  ; preds = %if.else.land.lhs.true11_crit_edge, %land.lhs.true.land.lhs.true11_crit_edge
  %conv12 = zext i16 %call to i32
  %sub = add nsw i32 %conv12, -1
  %call13 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %sub) #3
  call void @__sanitizer_cov_trace_const_cmp1(i8 18, i8 %call13)
  %cmp15 = icmp ugt i8 %call13, 18
  br i1 %cmp15, label %if.then17, label %land.lhs.true11.if.end55_crit_edge

land.lhs.true11.if.end55_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end55

if.then17:                                        ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #5
  %sub19 = add nsw i32 %conv12, -15
  br label %if.end21

if.end21:                                         ; preds = %if.then17, %if.then5
  %sub19.sink = phi i32 [ %sub19, %if.then17 ], [ %add, %if.then5 ]
  %call20 = tail call zeroext i16 @nvbios_rd16(ptr noundef %bios, i32 noundef %sub19.sink) #3
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call20)
  %tobool22.not = icmp eq i16 %call20, 0
  br i1 %tobool22.not, label %if.end21.if.end55_crit_edge, label %if.then23

if.end21.if.end55_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end55

if.then23:                                        ; preds = %if.end21
  %conv24 = zext i16 %call20 to i32
  %call26 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %conv24) #3
  %4 = ptrtoint ptr %ver to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %call26, ptr %ver, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %call26)
  %cmp28 = icmp ult i8 %call26, 48
  br i1 %cmp28, label %if.then23.if.end55.sink.split_crit_edge, label %if.else37

if.then23.if.end55.sink.split_crit_edge:          ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end55.sink.split

if.else37:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_const_cmp1(i8 66, i8 %call26)
  %cmp39 = icmp ult i8 %call26, 66
  br i1 %cmp39, label %if.then41, label %if.else37.if.end55_crit_edge

if.else37.if.end55_crit_edge:                     ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end55

if.then41:                                        ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #5
  %add43 = add nuw nsw i32 %conv24, 1
  %call44 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add43) #3
  br label %if.end55.sink.split

if.end55.sink.split:                              ; preds = %if.then41, %if.then23.if.end55.sink.split_crit_edge
  %call44.sink = phi i8 [ %call44, %if.then41 ], [ 3, %if.then23.if.end55.sink.split_crit_edge ]
  %.sink = phi i32 [ 3, %if.then41 ], [ 1, %if.then23.if.end55.sink.split_crit_edge ]
  %5 = ptrtoint ptr %hdr to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %call44.sink, ptr %hdr, align 1
  %add46 = add nuw nsw i32 %conv24, 2
  %call47 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add46) #3
  %6 = ptrtoint ptr %cnt to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %call47, ptr %cnt, align 1
  %add49 = add nuw nsw i32 %.sink, %conv24
  %call50 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add49) #3
  %7 = ptrtoint ptr %len to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %call50, ptr %len, align 1
  br label %if.end55

if.end55:                                         ; preds = %if.end55.sink.split, %if.else37.if.end55_crit_edge, %if.end21.if.end55_crit_edge, %land.lhs.true11.if.end55_crit_edge, %if.else.if.end55_crit_edge, %entry.if.end55_crit_edge
  %data.1 = phi i16 [ 0, %if.end21.if.end55_crit_edge ], [ 0, %entry.if.end55_crit_edge ], [ 0, %if.else37.if.end55_crit_edge ], [ 0, %land.lhs.true11.if.end55_crit_edge ], [ 0, %if.else.if.end55_crit_edge ], [ %call20, %if.end55.sink.split ]
  ret i16 %data.1
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
define dso_local zeroext i16 @dcb_gpio_entry(ptr noundef %bios, i32 noundef %idx, i32 noundef %ent, ptr noundef %ver, ptr noundef %len) local_unnamed_addr #0 align 64 {
entry:
  %hdr = alloca i8, align 1
  %cnt = alloca i8, align 1
  %xver = alloca i8, align 1
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
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %xver) #3
  %2 = ptrtoint ptr %xver to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %xver, align 1, !annotation !9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %idx)
  %tobool.not = icmp eq i32 %idx, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call = call zeroext i16 @dcb_gpio_table(ptr noundef %bios, ptr noundef %ver, ptr noundef nonnull %hdr, ptr noundef nonnull %cnt, ptr noundef %len)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %3 = trunc i32 %idx to i8
  %conv = add i8 %3, -1
  %call1 = call zeroext i16 @dcb_xpio_table(ptr noundef %bios, i8 noundef zeroext %conv, ptr noundef nonnull %xver, ptr noundef nonnull %hdr, ptr noundef nonnull %cnt, ptr noundef %len) #3
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %gpio.0 = phi i16 [ %call1, %if.else ], [ %call, %if.then ]
  %conv2 = zext i16 %gpio.0 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %gpio.0)
  %tobool3.not = icmp eq i16 %gpio.0, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %land.lhs.true

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end
  %4 = ptrtoint ptr %cnt to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %cnt, align 1
  %conv4 = zext i8 %5 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv4, i32 %ent)
  %cmp = icmp sgt i32 %conv4, %ent
  br i1 %cmp, label %if.then6, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then6:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  %6 = ptrtoint ptr %hdr to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %hdr, align 1
  %conv8 = zext i8 %7 to i32
  %add = add nuw nsw i32 %conv8, %conv2
  %8 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %len, align 1
  %conv9 = zext i8 %9 to i32
  %mul = mul i32 %conv9, %ent
  %add10 = add i32 %add, %mul
  %conv11 = trunc i32 %add10 to i16
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i16 [ %conv11, %if.then6 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %xver) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cnt) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %hdr) #3
  ret i16 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @dcb_xpio_table(ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @dcb_gpio_parse(ptr noundef %bios, i32 noundef %idx, i32 noundef %ent, ptr noundef %ver, ptr noundef %len, ptr nocapture noundef writeonly %gpio) local_unnamed_addr #0 align 64 {
entry:
  %hdr.i = alloca i8, align 1
  %cnt.i = alloca i8, align 1
  %xver.i = alloca i8, align 1
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
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %xver.i) #3
  %2 = ptrtoint ptr %xver.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %xver.i, align 1, !annotation !9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %idx)
  %tobool.not.i = icmp eq i32 %idx, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call.i = call zeroext i16 @dcb_gpio_table(ptr noundef %bios, ptr noundef %ver, ptr noundef nonnull %hdr.i, ptr noundef nonnull %cnt.i, ptr noundef %len) #3
  br label %if.end.i

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %3 = trunc i32 %idx to i8
  %conv.i = add i8 %3, -1
  %call1.i = call zeroext i16 @dcb_xpio_table(ptr noundef %bios, i8 noundef zeroext %conv.i, ptr noundef nonnull %xver.i, ptr noundef nonnull %hdr.i, ptr noundef nonnull %cnt.i, ptr noundef %len) #3
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %gpio.0.i = phi i16 [ %call1.i, %if.else.i ], [ %call.i, %if.then.i ]
  %conv2.i = zext i16 %gpio.0.i to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %gpio.0.i)
  %tobool3.not.i = icmp eq i16 %gpio.0.i, 0
  br i1 %tobool3.not.i, label %if.end.i.dcb_gpio_entry.exit.thread_crit_edge, label %land.lhs.true.i

if.end.i.dcb_gpio_entry.exit.thread_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %dcb_gpio_entry.exit.thread

land.lhs.true.i:                                  ; preds = %if.end.i
  %4 = ptrtoint ptr %cnt.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %cnt.i, align 1
  %conv4.i = zext i8 %5 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv4.i, i32 %ent)
  %cmp.i = icmp sgt i32 %conv4.i, %ent
  br i1 %cmp.i, label %dcb_gpio_entry.exit, label %land.lhs.true.i.dcb_gpio_entry.exit.thread_crit_edge

land.lhs.true.i.dcb_gpio_entry.exit.thread_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %dcb_gpio_entry.exit.thread

dcb_gpio_entry.exit.thread:                       ; preds = %land.lhs.true.i.dcb_gpio_entry.exit.thread_crit_edge, %if.end.i.dcb_gpio_entry.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %xver.i) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cnt.i) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %hdr.i) #3
  br label %if.end94

dcb_gpio_entry.exit:                              ; preds = %land.lhs.true.i
  %6 = ptrtoint ptr %hdr.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %hdr.i, align 1
  %conv8.i = zext i8 %7 to i32
  %add.i = add nuw nsw i32 %conv8.i, %conv2.i
  %8 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %len, align 1
  %conv9.i = zext i8 %9 to i32
  %mul.i = mul i32 %conv9.i, %ent
  %add10.i = add i32 %add.i, %mul.i
  %conv11.i = trunc i32 %add10.i to i16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %xver.i) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cnt.i) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %hdr.i) #3
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv11.i)
  %tobool.not = icmp eq i16 %conv11.i, 0
  br i1 %tobool.not, label %dcb_gpio_entry.exit.if.end94_crit_edge, label %if.then

dcb_gpio_entry.exit.if.end94_crit_edge:           ; preds = %dcb_gpio_entry.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end94

if.then:                                          ; preds = %dcb_gpio_entry.exit
  %10 = ptrtoint ptr %ver to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %ver, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %11)
  %cmp = icmp ult i8 %11, 64
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  %conv3 = and i32 %add10.i, 65535
  %call4 = call zeroext i16 @nvbios_rd16(ptr noundef %bios, i32 noundef %conv3) #3
  %and = lshr i16 %call4, 5
  %12 = trunc i16 %and to i8
  %conv6 = and i8 %12, 63
  %13 = trunc i16 %call4 to i8
  %conv10 = and i8 %13, 31
  %and12 = lshr i16 %call4, 11
  %14 = trunc i16 %and12 to i8
  %conv14 = and i8 %14, 3
  %and16 = lshr i16 %call4, 13
  %15 = trunc i16 %and16 to i8
  %conv18 = and i8 %15, 3
  %call4.lobit = lshr i16 %call4, 15
  %16 = trunc i16 %call4.lobit to i8
  %17 = ptrtoint ptr %gpio to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv6, ptr %gpio, align 1
  %.compoundliteral.sroa.2.0..sroa_idx = getelementptr inbounds i8, ptr %gpio, i32 1
  %18 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv10, ptr %.compoundliteral.sroa.2.0..sroa_idx, align 1
  %.compoundliteral.sroa.3.0..sroa_idx = getelementptr inbounds i8, ptr %gpio, i32 2
  %19 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv14, ptr %.compoundliteral.sroa.3.0..sroa_idx, align 1
  %.compoundliteral.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr %gpio, i32 3
  %20 = ptrtoint ptr %.compoundliteral.sroa.4.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv18, ptr %.compoundliteral.sroa.4.0..sroa_idx, align 1
  %.compoundliteral.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %gpio, i32 4
  %21 = ptrtoint ptr %.compoundliteral.sroa.5.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %16, ptr %.compoundliteral.sroa.5.0..sroa_idx, align 1
  br label %if.end94

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %11)
  %cmp25 = icmp eq i8 %11, 64
  %conv29 = and i32 %add10.i, 65535
  %call30 = call i32 @nvbios_rd32(ptr noundef %bios, i32 noundef %conv29) #3
  br i1 %cmp25, label %if.then27, label %if.else57

if.then27:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  %and33 = lshr i32 %call30, 8
  %conv35 = trunc i32 %and33 to i8
  %22 = trunc i32 %call30 to i8
  %conv39 = and i8 %22, 31
  %and42 = lshr i32 %call30, 27
  %23 = trunc i32 %and42 to i8
  %conv44 = and i8 %23, 3
  %and46 = lshr i32 %call30, 29
  %24 = trunc i32 %and46 to i8
  %conv48 = and i8 %24, 3
  %call30.lobit = lshr i32 %call30, 31
  %25 = trunc i32 %call30.lobit to i8
  %26 = ptrtoint ptr %gpio to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv35, ptr %gpio, align 1
  %.compoundliteral31.sroa.2.0..sroa_idx = getelementptr inbounds i8, ptr %gpio, i32 1
  %27 = ptrtoint ptr %.compoundliteral31.sroa.2.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv39, ptr %.compoundliteral31.sroa.2.0..sroa_idx, align 1
  %.compoundliteral31.sroa.3.0..sroa_idx = getelementptr inbounds i8, ptr %gpio, i32 2
  %28 = ptrtoint ptr %.compoundliteral31.sroa.3.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv44, ptr %.compoundliteral31.sroa.3.0..sroa_idx, align 1
  %.compoundliteral31.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr %gpio, i32 3
  %29 = ptrtoint ptr %.compoundliteral31.sroa.4.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv48, ptr %.compoundliteral31.sroa.4.0..sroa_idx, align 1
  %.compoundliteral31.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %gpio, i32 4
  %30 = ptrtoint ptr %.compoundliteral31.sroa.5.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %25, ptr %.compoundliteral31.sroa.5.0..sroa_idx, align 1
  br label %if.end94

if.else57:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  %add62 = add nuw nsw i32 %conv29, 4
  %call63 = call i32 @nvbios_rd32(ptr noundef %bios, i32 noundef %add62) #3
  %and67 = lshr i32 %call30, 8
  %conv69 = trunc i32 %and67 to i8
  %31 = trunc i32 %call30 to i8
  %conv73 = and i8 %31, 63
  %32 = trunc i32 %call63 to i8
  %33 = lshr i8 %32, 4
  %conv79 = and i8 %33, 3
  %34 = lshr i8 %32, 6
  %call60.lobit = lshr i32 %call30, 31
  %35 = trunc i32 %call60.lobit to i8
  %36 = ptrtoint ptr %gpio to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv69, ptr %gpio, align 1
  %.compoundliteral65.sroa.2.0..sroa_idx = getelementptr inbounds i8, ptr %gpio, i32 1
  %37 = ptrtoint ptr %.compoundliteral65.sroa.2.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv73, ptr %.compoundliteral65.sroa.2.0..sroa_idx, align 1
  %.compoundliteral65.sroa.3.0..sroa_idx = getelementptr inbounds i8, ptr %gpio, i32 2
  %38 = ptrtoint ptr %.compoundliteral65.sroa.3.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv79, ptr %.compoundliteral65.sroa.3.0..sroa_idx, align 1
  %.compoundliteral65.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr %gpio, i32 3
  %39 = ptrtoint ptr %.compoundliteral65.sroa.4.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %34, ptr %.compoundliteral65.sroa.4.0..sroa_idx, align 1
  %.compoundliteral65.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %gpio, i32 4
  %40 = ptrtoint ptr %.compoundliteral65.sroa.5.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %35, ptr %.compoundliteral65.sroa.5.0..sroa_idx, align 1
  br label %if.end94

if.end94:                                         ; preds = %if.else57, %if.then27, %if.then2, %dcb_gpio_entry.exit.if.end94_crit_edge, %dcb_gpio_entry.exit.thread
  %retval.0.i121 = phi i16 [ 0, %dcb_gpio_entry.exit.thread ], [ %conv11.i, %if.then2 ], [ %conv11.i, %if.else57 ], [ %conv11.i, %if.then27 ], [ 0, %dcb_gpio_entry.exit.if.end94_crit_edge ]
  ret i16 %retval.0.i121
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_rd32(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @dcb_gpio_match(ptr noundef %bios, i32 noundef %idx, i8 noundef zeroext %func, i8 noundef zeroext %line, ptr noundef %ver, ptr noundef %len, ptr nocapture noundef %gpio) local_unnamed_addr #0 align 64 {
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
  %call85 = tail call zeroext i16 @dcb_gpio_parse(ptr noundef %bios, i32 noundef %idx, i32 noundef 0, ptr noundef %ver, ptr noundef %len, ptr noundef %gpio)
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call85)
  %tobool.not86 = icmp eq i16 %call85, 0
  br i1 %tobool.not86, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %line)
  %cmp = icmp eq i8 %line, -1
  %line4 = getelementptr inbounds %struct.dcb_gpio_func, ptr %gpio, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %func)
  %cmp9 = icmp eq i8 %func, -1
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %while.body.lr.ph
  %call88 = phi i16 [ %call85, %while.body.lr.ph ], [ %call, %if.end.while.body_crit_edge ]
  %inc87 = phi i8 [ 1, %while.body.lr.ph ], [ %inc, %if.end.while.body_crit_edge ]
  br i1 %cmp, label %while.body.land.lhs.true_crit_edge, label %lor.lhs.false

while.body.land.lhs.true_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %land.lhs.true

lor.lhs.false:                                    ; preds = %while.body
  %2 = ptrtoint ptr %line4 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %line4, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %line)
  %cmp6 = icmp eq i8 %3, %line
  br i1 %cmp6, label %lor.lhs.false.land.lhs.true_crit_edge, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

lor.lhs.false.land.lhs.true_crit_edge:            ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false.land.lhs.true_crit_edge, %while.body.land.lhs.true_crit_edge
  br i1 %cmp9, label %land.lhs.true.cleanup59_crit_edge, label %lor.lhs.false11

land.lhs.true.cleanup59_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup59

lor.lhs.false11:                                  ; preds = %land.lhs.true
  %4 = ptrtoint ptr %gpio to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %gpio, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %func)
  %cmp15 = icmp eq i8 %5, %func
  br i1 %cmp15, label %lor.lhs.false11.cleanup59_crit_edge, label %lor.lhs.false11.if.end_crit_edge

lor.lhs.false11.if.end_crit_edge:                 ; preds = %lor.lhs.false11
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

lor.lhs.false11.cleanup59_crit_edge:              ; preds = %lor.lhs.false11
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup59

if.end:                                           ; preds = %lor.lhs.false11.if.end_crit_edge, %lor.lhs.false.if.end_crit_edge
  %inc = add i8 %inc87, 1
  %conv = zext i8 %inc87 to i32
  %call = tail call zeroext i16 @dcb_gpio_parse(ptr noundef %bios, i32 noundef %idx, i32 noundef %conv, ptr noundef %ver, ptr noundef %len, ptr noundef %gpio)
  %tobool.not = icmp eq i16 %call, 0
  br i1 %tobool.not, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %entry.while.end_crit_edge
  %call17 = call zeroext i16 @dcb_table(ptr noundef %bios, ptr noundef %ver, ptr noundef nonnull %hdr, ptr noundef nonnull %cnt, ptr noundef %len) #3
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call17)
  %tobool18.not = icmp eq i16 %call17, 0
  br i1 %tobool18.not, label %while.end.cleanup59_crit_edge, label %if.then19

while.end.cleanup59_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup59

if.then19:                                        ; preds = %while.end
  %6 = ptrtoint ptr %ver to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ver, align 1
  %8 = add i8 %7, -34
  call void @__sanitizer_cov_trace_const_cmp1(i8 14, i8 %8)
  %9 = icmp ult i8 %8, 14
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %func)
  %cmp29 = icmp eq i8 %func, 12
  %or.cond83 = and i1 %cmp29, %9
  br i1 %or.cond83, label %if.then31, label %if.then19.cleanup59_crit_edge

if.then19.cleanup59_crit_edge:                    ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup59

if.then31:                                        ; preds = %if.then19
  %conv32 = zext i16 %call17 to i32
  %sub = add nsw i32 %conv32, -5
  %call33 = call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %sub) #3
  %sub35 = add nsw i32 %conv32, -4
  %call36 = call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %sub35) #3
  %10 = and i8 %call33, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool38.not = icmp eq i8 %10, 0
  br i1 %tobool38.not, label %if.then31.cleanup59_crit_edge, label %if.then39

if.then31.cleanup59_crit_edge:                    ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup59

if.then39:                                        ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #5
  %11 = lshr i8 %call36, 4
  %and45 = lshr i8 %call33, 1
  %and45.lobit = and i8 %and45, 1
  %12 = xor i8 %and45.lobit, 1
  %13 = ptrtoint ptr %gpio to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 12, ptr %gpio, align 1
  %.compoundliteral.sroa.2.0..sroa_idx = getelementptr inbounds i8, ptr %gpio, i32 1
  %14 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %11, ptr %.compoundliteral.sroa.2.0..sroa_idx, align 1
  %.compoundliteral.sroa.3.0..sroa_idx = getelementptr inbounds i8, ptr %gpio, i32 2
  %15 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %and45.lobit, ptr %.compoundliteral.sroa.3.0..sroa_idx, align 1
  %.compoundliteral.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr %gpio, i32 3
  %16 = ptrtoint ptr %.compoundliteral.sroa.4.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %12, ptr %.compoundliteral.sroa.4.0..sroa_idx, align 1
  %.compoundliteral.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %gpio, i32 4
  %17 = ptrtoint ptr %.compoundliteral.sroa.5.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %.compoundliteral.sroa.5.0..sroa_idx, align 1
  %18 = ptrtoint ptr %ver to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %ver, align 1
  br label %cleanup59

cleanup59:                                        ; preds = %if.then39, %if.then31.cleanup59_crit_edge, %if.then19.cleanup59_crit_edge, %while.end.cleanup59_crit_edge, %lor.lhs.false11.cleanup59_crit_edge, %land.lhs.true.cleanup59_crit_edge
  %retval.1 = phi i16 [ %call17, %if.then39 ], [ 0, %if.then19.cleanup59_crit_edge ], [ 0, %while.end.cleanup59_crit_edge ], [ 0, %if.then31.cleanup59_crit_edge ], [ %call88, %lor.lhs.false11.cleanup59_crit_edge ], [ %call88, %land.lhs.true.cleanup59_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cnt) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %hdr) #3
  ret i16 %retval.1
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
