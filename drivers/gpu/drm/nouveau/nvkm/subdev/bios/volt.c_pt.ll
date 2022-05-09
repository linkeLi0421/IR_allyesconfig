; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/subdev/bios/volt.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/bios/volt.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.bit_entry = type { i8, i8, i16, i16 }
%struct.nvbios_volt = type { i32, i32, i32, i32, i8, i8, i16, i32, i32 }
%struct.nvbios_volt_entry = type { i32, i8 }

@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.1 = internal global [7 x i64] [i64 5, i64 8, i64 18, i64 32, i64 48, i64 64, i64 80]
@__sancov_gen_cov_switch_values.2 = internal global [7 x i64] [i64 5, i64 8, i64 18, i64 32, i64 48, i64 64, i64 80]
@__sancov_gen_cov_switch_values.3 = internal global [6 x i64] [i64 4, i64 8, i64 18, i64 32, i64 48, i64 80]
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvbios_volt_table(ptr noundef %bios, ptr nocapture noundef writeonly %ver, ptr nocapture noundef writeonly %hdr, ptr nocapture noundef writeonly %cnt, ptr nocapture noundef writeonly %len) local_unnamed_addr #0 align 64 {
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
    i8 2, label %if.then.if.end14_crit_edge
    i8 1, label %if.then9
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
  %.sink = phi i32 [ 16, %if.then9 ], [ 12, %if.then.if.end14_crit_edge ]
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
    i8 18, label %if.then16.cleanup.sink.split_crit_edge
    i8 32, label %if.then16.cleanup.sink.split.sink.split_crit_edge
    i8 48, label %if.then16.sw.bb31_crit_edge
    i8 64, label %if.then16.sw.bb31_crit_edge76
    i8 80, label %if.then16.sw.bb31_crit_edge77
  ]

if.then16.sw.bb31_crit_edge77:                    ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb31

if.then16.sw.bb31_crit_edge76:                    ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb31

if.then16.sw.bb31_crit_edge:                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb31

if.then16.cleanup.sink.split.sink.split_crit_edge: ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split.sink.split

if.then16.cleanup.sink.split_crit_edge:           ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

if.then16.cleanup_crit_edge:                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb31:                                          ; preds = %if.then16.sw.bb31_crit_edge, %if.then16.sw.bb31_crit_edge76, %if.then16.sw.bb31_crit_edge77
  br label %cleanup.sink.split.sink.split

cleanup.sink.split.sink.split:                    ; preds = %sw.bb31, %if.then16.cleanup.sink.split.sink.split_crit_edge
  %.sink75.ph = phi i32 [ 3, %sw.bb31 ], [ 2, %if.then16.cleanup.sink.split.sink.split_crit_edge ]
  %.sink74.ph = phi i32 [ 2, %sw.bb31 ], [ 3, %if.then16.cleanup.sink.split.sink.split_crit_edge ]
  %add25 = add i32 %call13, 1
  %call26 = call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add25) #4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %cleanup.sink.split.sink.split, %if.then16.cleanup.sink.split_crit_edge
  %call33.sink = phi i8 [ 5, %if.then16.cleanup.sink.split_crit_edge ], [ %call26, %cleanup.sink.split.sink.split ]
  %.sink75 = phi i32 [ 2, %if.then16.cleanup.sink.split_crit_edge ], [ %.sink75.ph, %cleanup.sink.split.sink.split ]
  %.sink74 = phi i32 [ 1, %if.then16.cleanup.sink.split_crit_edge ], [ %.sink74.ph, %cleanup.sink.split.sink.split ]
  %10 = ptrtoint ptr %hdr to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %call33.sink, ptr %hdr, align 1
  %add34 = add i32 %call13, %.sink75
  %call35 = call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add34) #4
  %11 = ptrtoint ptr %cnt to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %call35, ptr %cnt, align 1
  %add36 = add i32 %call13, %.sink74
  %call37 = call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add36) #4
  %12 = ptrtoint ptr %len to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %call37, ptr %len, align 1
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
define dso_local i32 @nvbios_volt_parse(ptr noundef %bios, ptr nocapture noundef %ver, ptr nocapture noundef writeonly %hdr, ptr nocapture noundef writeonly %cnt, ptr nocapture noundef writeonly %len, ptr noundef %info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @nvbios_volt_table(ptr noundef %bios, ptr noundef %ver, ptr noundef %hdr, ptr noundef %cnt, ptr noundef %len)
  %0 = call ptr @memset(ptr %info, i32 0, i32 28)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %1 = ptrtoint ptr %ver to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %ver, align 1
  %trunc = select i1 %tobool.not, i8 0, i8 %2
  %3 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.2)
  switch i8 %trunc, label %entry.sw.epilog_crit_edge [
    i8 18, label %sw.bb
    i8 32, label %sw.bb3
    i8 48, label %sw.bb9
    i8 64, label %sw.bb15
    i8 80, label %sw.bb54
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %add = add i32 %call, 4
  %call2 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add) #4
  %vidmask = getelementptr inbounds %struct.nvbios_volt, ptr %info, i32 0, i32 5
  %4 = ptrtoint ptr %vidmask to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %call2, ptr %vidmask, align 1
  %ranged = getelementptr inbounds %struct.nvbios_volt, ptr %info, i32 0, i32 4
  %5 = ptrtoint ptr %ranged to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %ranged, align 4
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %add5 = add i32 %call, 5
  %call6 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add5) #4
  %vidmask7 = getelementptr inbounds %struct.nvbios_volt, ptr %info, i32 0, i32 5
  %6 = ptrtoint ptr %vidmask7 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %call6, ptr %vidmask7, align 1
  %ranged8 = getelementptr inbounds %struct.nvbios_volt, ptr %info, i32 0, i32 4
  %7 = ptrtoint ptr %ranged8 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %ranged8, align 4
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %add11 = add i32 %call, 4
  %call12 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add11) #4
  %vidmask13 = getelementptr inbounds %struct.nvbios_volt, ptr %info, i32 0, i32 5
  %8 = ptrtoint ptr %vidmask13 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %call12, ptr %vidmask13, align 1
  %ranged14 = getelementptr inbounds %struct.nvbios_volt, ptr %info, i32 0, i32 4
  %9 = ptrtoint ptr %ranged14 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %ranged14, align 4
  br label %sw.epilog

sw.bb15:                                          ; preds = %entry
  %add17 = add i32 %call, 4
  %call18 = tail call i32 @nvbios_rd32(ptr noundef %bios, i32 noundef %add17) #4
  %base = getelementptr inbounds %struct.nvbios_volt, ptr %info, i32 0, i32 3
  %10 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call18, ptr %base, align 4
  %add19 = add i32 %call, 8
  %call20 = tail call zeroext i16 @nvbios_rd16(ptr noundef %bios, i32 noundef %add19) #4
  %step = getelementptr inbounds %struct.nvbios_volt, ptr %info, i32 0, i32 6
  %11 = ptrtoint ptr %step to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %call20, ptr %step, align 2
  %add21 = add i32 %call, 11
  %call22 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add21) #4
  %vidmask23 = getelementptr inbounds %struct.nvbios_volt, ptr %info, i32 0, i32 5
  %12 = ptrtoint ptr %vidmask23 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %call22, ptr %vidmask23, align 1
  %ranged24 = getelementptr inbounds %struct.nvbios_volt, ptr %info, i32 0, i32 4
  %13 = ptrtoint ptr %ranged24 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %ranged24, align 4
  %14 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %base, align 4
  %16 = ptrtoint ptr %step to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %step, align 2
  %conv28 = sext i16 %17 to i32
  %conv30 = zext i8 %call22 to i32
  %mul31 = mul nsw i32 %conv28, %conv30
  %add32 = add i32 %mul31, %15
  %18 = tail call i32 @llvm.umin.i32(i32 %15, i32 %add32)
  %min = getelementptr inbounds %struct.nvbios_volt, ptr %info, i32 0, i32 1
  %19 = ptrtoint ptr %min to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %min, align 4
  %add34 = add i32 %call, 14
  %call35 = tail call i32 @nvbios_rd32(ptr noundef %bios, i32 noundef %add34) #4
  %max = getelementptr inbounds %struct.nvbios_volt, ptr %info, i32 0, i32 2
  %20 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call35, ptr %max, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool37.not = icmp eq i32 %call35, 0
  br i1 %tobool37.not, label %if.then, label %sw.bb15.sw.epilog_crit_edge

sw.bb15.sw.epilog_crit_edge:                      ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #6
  %21 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %base, align 4
  %23 = ptrtoint ptr %step to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %step, align 2
  %conv41 = sext i16 %24 to i32
  %25 = ptrtoint ptr %vidmask23 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %vidmask23, align 1
  %conv43 = zext i8 %26 to i32
  %mul44 = mul nsw i32 %conv43, %conv41
  %add45 = add i32 %mul44, %22
  %27 = tail call i32 @llvm.umax.i32(i32 %22, i32 %add45)
  %28 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %max, align 4
  br label %sw.epilog

sw.bb54:                                          ; preds = %entry
  %add55 = add i32 %call, 10
  %call56 = tail call i32 @nvbios_rd32(ptr noundef %bios, i32 noundef %add55) #4
  %min57 = getelementptr inbounds %struct.nvbios_volt, ptr %info, i32 0, i32 1
  %29 = ptrtoint ptr %min57 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %call56, ptr %min57, align 4
  %add58 = add i32 %call, 14
  %call59 = tail call i32 @nvbios_rd32(ptr noundef %bios, i32 noundef %add58) #4
  %max60 = getelementptr inbounds %struct.nvbios_volt, ptr %info, i32 0, i32 2
  %30 = ptrtoint ptr %max60 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %call59, ptr %max60, align 4
  %add61 = add i32 %call, 18
  %call62 = tail call i32 @nvbios_rd32(ptr noundef %bios, i32 noundef %add61) #4
  %and = and i32 %call62, 16777215
  %base63 = getelementptr inbounds %struct.nvbios_volt, ptr %info, i32 0, i32 3
  %31 = ptrtoint ptr %base63 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %and, ptr %base63, align 4
  %add64 = add i32 %call, 4
  %call65 = tail call i32 @nvbios_rd32(ptr noundef %bios, i32 noundef %add64) #4
  %and66 = and i32 %call65, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66)
  %tobool67.not = icmp eq i32 %and66, 0
  br i1 %tobool67.not, label %if.else, label %if.then68

if.then68:                                        ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #6
  %32 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1, ptr %info, align 4
  %add70 = add i32 %call, 5
  %call71 = tail call i32 @nvbios_rd32(ptr noundef %bios, i32 noundef %add70) #4
  %div = udiv i32 %call71, 1000
  %pwm_freq = getelementptr inbounds %struct.nvbios_volt, ptr %info, i32 0, i32 7
  %33 = ptrtoint ptr %pwm_freq to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %div, ptr %pwm_freq, align 4
  %add72 = add i32 %call, 22
  %call73 = tail call i32 @nvbios_rd32(ptr noundef %bios, i32 noundef %add72) #4
  %pwm_range = getelementptr inbounds %struct.nvbios_volt, ptr %info, i32 0, i32 8
  %34 = ptrtoint ptr %pwm_range to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %call73, ptr %pwm_range, align 4
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #6
  %35 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %info, align 4
  %add75 = add i32 %call, 6
  %call76 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add75) #4
  %vidmask77 = getelementptr inbounds %struct.nvbios_volt, ptr %info, i32 0, i32 5
  %36 = ptrtoint ptr %vidmask77 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %call76, ptr %vidmask77, align 1
  %add78 = add i32 %call, 22
  %call79 = tail call zeroext i16 @nvbios_rd16(ptr noundef %bios, i32 noundef %add78) #4
  %step80 = getelementptr inbounds %struct.nvbios_volt, ptr %info, i32 0, i32 6
  %37 = ptrtoint ptr %step80 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %call79, ptr %step80, align 2
  %call82 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add64) #4
  %ranged90 = getelementptr inbounds %struct.nvbios_volt, ptr %info, i32 0, i32 4
  %38 = lshr i8 %call82, 1
  %.lobit = and i8 %38, 1
  %39 = ptrtoint ptr %ranged90 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %.lobit, ptr %ranged90, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else, %if.then68, %if.then, %sw.bb15.sw.epilog_crit_edge, %sw.bb9, %sw.bb3, %sw.bb, %entry.sw.epilog_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @nvbios_rd16(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvbios_volt_entry(ptr noundef %bios, i32 noundef %idx, ptr nocapture noundef writeonly %ver, ptr nocapture noundef %len) local_unnamed_addr #0 align 64 {
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
  %call = call i32 @nvbios_volt_table(ptr noundef %bios, ptr noundef %ver, ptr noundef nonnull %hdr, ptr noundef nonnull %cnt, ptr noundef %len)
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
  %mul = mul i32 %conv3, %idx
  %add4 = add i32 %add, %mul
  br label %cleanup

cleanup:                                          ; preds = %if.then, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %add4, %if.then ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cnt) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %hdr) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvbios_volt_entry_parse(ptr noundef %bios, i32 noundef %idx, ptr nocapture noundef %ver, ptr nocapture noundef %len, ptr nocapture noundef writeonly %info) local_unnamed_addr #0 align 64 {
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
  %call.i = call i32 @nvbios_volt_table(ptr noundef %bios, ptr noundef %ver, ptr noundef nonnull %hdr.i, ptr noundef nonnull %cnt.i, ptr noundef %len) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %entry.nvbios_volt_entry.exit.thread_crit_edge, label %land.lhs.true.i

entry.nvbios_volt_entry.exit.thread_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %nvbios_volt_entry.exit.thread

land.lhs.true.i:                                  ; preds = %entry
  %2 = ptrtoint ptr %cnt.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cnt.i, align 1
  %conv.i = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i, i32 %idx)
  %cmp.i = icmp sgt i32 %conv.i, %idx
  br i1 %cmp.i, label %nvbios_volt_entry.exit, label %land.lhs.true.i.nvbios_volt_entry.exit.thread_crit_edge

land.lhs.true.i.nvbios_volt_entry.exit.thread_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %nvbios_volt_entry.exit.thread

nvbios_volt_entry.exit.thread:                    ; preds = %land.lhs.true.i.nvbios_volt_entry.exit.thread_crit_edge, %entry.nvbios_volt_entry.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cnt.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %hdr.i) #4
  %4 = ptrtoint ptr %info to i32
  call void @__asan_storeN_noabort(i32 %4, i32 8)
  store i64 0, ptr %info, align 4
  br label %sw.epilog

nvbios_volt_entry.exit:                           ; preds = %land.lhs.true.i
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
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cnt.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %hdr.i) #4
  %9 = ptrtoint ptr %info to i32
  call void @__asan_storeN_noabort(i32 %9, i32 8)
  store i64 0, ptr %info, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add4.i)
  %tobool.not = icmp eq i32 %add4.i, 0
  br i1 %tobool.not, label %nvbios_volt_entry.exit.sw.epilog_crit_edge, label %10

nvbios_volt_entry.exit.sw.epilog_crit_edge:       ; preds = %nvbios_volt_entry.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

10:                                               ; preds = %nvbios_volt_entry.exit
  %11 = ptrtoint ptr %ver to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %ver, align 1
  %13 = zext i8 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.3)
  switch i8 %12, label %.sw.epilog_crit_edge [
    i8 18, label %.sw.bb_crit_edge
    i8 32, label %.sw.bb_crit_edge52
    i8 48, label %sw.bb7
    i8 80, label %sw.bb18
  ]

.sw.bb_crit_edge52:                               ; preds = %10
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb

.sw.bb_crit_edge:                                 ; preds = %10
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb

.sw.epilog_crit_edge:                             ; preds = %10
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb:                                            ; preds = %.sw.bb_crit_edge, %.sw.bb_crit_edge52
  %call2 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add4.i) #4
  %conv3 = zext i8 %call2 to i32
  %mul4 = mul nuw nsw i32 %conv3, 10000
  %14 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %mul4, ptr %info, align 4
  %add5 = add i32 %add4.i, 1
  %call6 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add5) #4
  %vid = getelementptr inbounds %struct.nvbios_volt_entry, ptr %info, i32 0, i32 1
  %15 = ptrtoint ptr %vid to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %call6, ptr %vid, align 4
  br label %sw.epilog

sw.bb7:                                           ; preds = %10
  call void @__sanitizer_cov_trace_pc() #6
  %call9 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add4.i) #4
  %conv10 = zext i8 %call9 to i32
  %mul11 = mul nuw nsw i32 %conv10, 10000
  %16 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %mul11, ptr %info, align 4
  %add13 = add i32 %add4.i, 1
  %call14 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add13) #4
  %17 = lshr i8 %call14, 2
  %vid17 = getelementptr inbounds %struct.nvbios_volt_entry, ptr %info, i32 0, i32 1
  %18 = ptrtoint ptr %vid17 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %vid17, align 4
  br label %sw.epilog

sw.bb18:                                          ; preds = %10
  call void @__sanitizer_cov_trace_pc() #6
  %call19 = tail call i32 @nvbios_rd32(ptr noundef %bios, i32 noundef %add4.i) #4
  %and = and i32 %call19, 2097151
  %19 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %and, ptr %info, align 4
  %call21 = tail call i32 @nvbios_rd32(ptr noundef %bios, i32 noundef %add4.i) #4
  %shr22 = lshr i32 %call21, 23
  %conv24 = trunc i32 %shr22 to i8
  %vid25 = getelementptr inbounds %struct.nvbios_volt_entry, ptr %info, i32 0, i32 1
  %20 = ptrtoint ptr %vid25 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv24, ptr %vid25, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb18, %sw.bb7, %sw.bb, %.sw.epilog_crit_edge, %nvbios_volt_entry.exit.sw.epilog_crit_edge, %nvbios_volt_entry.exit.thread
  %retval.0.i50 = phi i32 [ %add4.i, %.sw.epilog_crit_edge ], [ %add4.i, %sw.bb18 ], [ %add4.i, %sw.bb7 ], [ %add4.i, %sw.bb ], [ 0, %nvbios_volt_entry.exit.thread ], [ 0, %nvbios_volt_entry.exit.sw.epilog_crit_edge ]
  ret i32 %retval.0.i50
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

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
