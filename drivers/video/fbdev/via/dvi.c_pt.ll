; ModuleID = '/llk/IR_all_yes/drivers/video/fbdev/via/dvi.c_pt.bc'
source_filename = "../drivers/video/fbdev/via/dvi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.viafb_par = type { i8, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.chip_information = type { i32, i32, i32, %struct.tmds_chip_information, %struct.lvds_chip_information, %struct.lvds_chip_information }
%struct.tmds_chip_information = type { i32, i32, i32, i32 }
%struct.lvds_chip_information = type { i32, i32, i32, i32 }
%struct.tmds_setting_information = type { i32, i32, i32, i32 }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.fb_bitfield = type { i32, i32, i32 }
%struct.viafb_shared = type { i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.tmds_setting_information, %struct.lvds_setting_information, %struct.lvds_setting_information, %struct.chip_information, i32, i32, ptr }
%struct.lvds_setting_information = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@viaparinfo = external dso_local local_unnamed_addr global ptr, align 4
@viafb_display_hardware_layout = external dso_local local_unnamed_addr global i32, align 4
@viafb_platform_epia_dvi = external dso_local local_unnamed_addr global i32, align 4
@viafb_bus_width = external dso_local local_unnamed_addr global i32, align 4
@viafb_device_lcd_dualedge = external dso_local local_unnamed_addr global i32, align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 54, i64 72, i64 90, i64 108]
@__sancov_gen_cov_switch_values.1 = internal global [5 x i64] [i64 3, i64 32, i64 8, i64 9, i64 10]
@__sancov_gen_cov_switch_values.2 = internal global [6 x i64] [i64 4, i64 32, i64 6, i64 8, i64 9, i64 10]
@__sancov_gen_cov_switch_values.3 = internal global [7 x i64] [i64 5, i64 32, i64 2, i64 3, i64 4, i64 5, i64 10]
@__sancov_gen_cov_switch_values.4 = internal global [4 x i64] [i64 2, i64 32, i64 9, i64 10]
@__sancov_gen_cov_switch_values.5 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 8, i64 9, i64 10]
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @viafb_init_dvi_size(ptr nocapture noundef %tmds_chip, ptr nocapture noundef writeonly %tmds_setting) local_unnamed_addr #0 align 64 {
entry:
  %EDID_DATA.i = alloca [18 x i8], align 1
  %data.i16.i = alloca i8, align 1
  %data.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @viafb_dvi_sense()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viaparinfo to i32))
  %0 = load ptr, ptr @viaparinfo, align 4
  %chip_info.i = getelementptr inbounds %struct.viafb_par, ptr %0, i32 0, i32 11
  %1 = ptrtoint ptr %chip_info.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %chip_info.i, align 4
  %tmds_chip_slave_addr.i = getelementptr inbounds %struct.chip_information, ptr %2, i32 0, i32 3, i32 1
  %3 = ptrtoint ptr %tmds_chip_slave_addr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tmds_chip_slave_addr.i, align 4
  store i32 160, ptr %tmds_chip_slave_addr.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i.i) #3
  %5 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %data.i.i, align 1, !annotation !9
  %6 = ptrtoint ptr %chip_info.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chip_info.i, align 4
  %i2c_port.i.i = getelementptr inbounds %struct.chip_information, ptr %7, i32 0, i32 3, i32 3
  %8 = ptrtoint ptr %i2c_port.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %i2c_port.i.i, align 4
  %conv.i.i = trunc i32 %9 to i8
  %tmds_chip_slave_addr.i.i = getelementptr inbounds %struct.chip_information, ptr %7, i32 0, i32 3, i32 1
  %10 = ptrtoint ptr %tmds_chip_slave_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tmds_chip_slave_addr.i.i, align 4
  %conv3.i.i = trunc i32 %11 to i8
  %call.i.i = call i32 @viafb_i2c_readbyte(i8 noundef zeroext %conv.i.i, i8 noundef zeroext %conv3.i.i, i8 noundef zeroext 0, ptr noundef nonnull %data.i.i) #3
  %12 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %data.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i.i) #3
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i16.i) #3
  %14 = ptrtoint ptr %data.i16.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -1, ptr %data.i16.i, align 1, !annotation !9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viaparinfo to i32))
  %15 = load ptr, ptr @viaparinfo, align 4
  %chip_info.i17.i = getelementptr inbounds %struct.viafb_par, ptr %15, i32 0, i32 11
  %16 = ptrtoint ptr %chip_info.i17.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %chip_info.i17.i, align 4
  %i2c_port.i18.i = getelementptr inbounds %struct.chip_information, ptr %17, i32 0, i32 3, i32 3
  %18 = ptrtoint ptr %i2c_port.i18.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %i2c_port.i18.i, align 4
  %conv.i19.i = trunc i32 %19 to i8
  %tmds_chip_slave_addr.i20.i = getelementptr inbounds %struct.chip_information, ptr %17, i32 0, i32 3, i32 1
  %20 = ptrtoint ptr %tmds_chip_slave_addr.i20.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tmds_chip_slave_addr.i20.i, align 4
  %conv3.i21.i = trunc i32 %21 to i8
  %call.i22.i = call i32 @viafb_i2c_readbyte(i8 noundef zeroext %conv.i19.i, i8 noundef zeroext %conv3.i21.i, i8 noundef zeroext 1, ptr noundef nonnull %data.i16.i) #3
  %22 = ptrtoint ptr %data.i16.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %data.i16.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i16.i) #3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp.i = icmp eq i8 %13, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %23)
  %cmp9.i = icmp eq i8 %23, -1
  %or.cond.i = select i1 %cmp.i, i1 %cmp9.i, i1 false
  br i1 %or.cond.i, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viaparinfo to i32))
  %24 = load ptr, ptr @viaparinfo, align 4
  %chip_info11.i = getelementptr inbounds %struct.viafb_par, ptr %24, i32 0, i32 11
  %25 = ptrtoint ptr %chip_info11.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %chip_info11.i, align 4
  %tmds_chip_slave_addr13.i = getelementptr inbounds %struct.chip_information, ptr %26, i32 0, i32 3, i32 1
  %27 = ptrtoint ptr %tmds_chip_slave_addr13.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %4, ptr %tmds_chip_slave_addr13.i, align 4
  call void @llvm.lifetime.start.p0(i64 18, ptr nonnull %EDID_DATA.i) #3
  %28 = getelementptr inbounds [18 x i8], ptr %EDID_DATA.i, i32 0, i32 1
  %29 = getelementptr inbounds [18 x i8], ptr %EDID_DATA.i, i32 0, i32 3
  %30 = getelementptr inbounds [18 x i8], ptr %EDID_DATA.i, i32 0, i32 9
  %tmds_chip_slave_addr.i2 = getelementptr inbounds %struct.tmds_chip_information, ptr %tmds_chip, i32 0, i32 1
  %31 = call ptr @memset(ptr %EDID_DATA.i, i32 255, i32 18)
  %32 = ptrtoint ptr %tmds_chip_slave_addr.i2 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %tmds_chip_slave_addr.i2, align 4
  store i32 160, ptr %tmds_chip_slave_addr.i2, align 4
  %max_pixel_clock.i = getelementptr inbounds %struct.tmds_setting_information, ptr %tmds_setting, i32 0, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then
  %i.020.i = phi i32 [ 37, %if.then ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %34 = zext i32 %i.020.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values)
  switch i32 %i.020.i, label %for.body.i.for.inc.i_crit_edge [
    i32 54, label %for.body.i.sw.bb.i_crit_edge
    i32 72, label %for.body.i.sw.bb.i_crit_edge11
    i32 90, label %for.body.i.sw.bb.i_crit_edge12
    i32 108, label %for.body.i.sw.bb.i_crit_edge13
  ]

for.body.i.sw.bb.i_crit_edge13:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb.i

for.body.i.sw.bb.i_crit_edge12:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb.i

for.body.i.sw.bb.i_crit_edge11:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb.i

for.body.i.sw.bb.i_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.i

sw.bb.i:                                          ; preds = %for.body.i.sw.bb.i_crit_edge, %for.body.i.sw.bb.i_crit_edge11, %for.body.i.sw.bb.i_crit_edge12, %for.body.i.sw.bb.i_crit_edge13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viaparinfo to i32))
  %35 = load ptr, ptr @viaparinfo, align 4
  %chip_info.i.i = getelementptr inbounds %struct.viafb_par, ptr %35, i32 0, i32 11
  %36 = ptrtoint ptr %chip_info.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %chip_info.i.i, align 4
  %i2c_port.i.i3 = getelementptr inbounds %struct.chip_information, ptr %37, i32 0, i32 3, i32 3
  %38 = ptrtoint ptr %i2c_port.i.i3 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %i2c_port.i.i3, align 4
  %conv.i.i4 = trunc i32 %39 to i8
  %tmds_chip_slave_addr.i.i5 = getelementptr inbounds %struct.chip_information, ptr %37, i32 0, i32 3, i32 1
  %40 = ptrtoint ptr %tmds_chip_slave_addr.i.i5 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %tmds_chip_slave_addr.i.i5, align 4
  %conv3.i.i6 = trunc i32 %41 to i8
  %conv4.i.i = trunc i32 %i.020.i to i8
  %call.i.i7 = call i32 @viafb_i2c_readbytes(i8 noundef zeroext %conv.i.i4, i8 noundef zeroext %conv3.i.i6, i8 noundef zeroext %conv4.i.i, ptr noundef nonnull %EDID_DATA.i, i32 noundef 10) #3
  %42 = ptrtoint ptr %EDID_DATA.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %EDID_DATA.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool.not.i = icmp eq i8 %43, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %sw.bb.i.for.inc.i_crit_edge

sw.bb.i.for.inc.i_crit_edge:                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.i

lor.lhs.false.i:                                  ; preds = %sw.bb.i
  %44 = ptrtoint ptr %28 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %28, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool4.not.i = icmp eq i8 %45, 0
  br i1 %tobool4.not.i, label %if.then.i8, label %lor.lhs.false.i.for.inc.i_crit_edge

lor.lhs.false.i.for.inc.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.i

if.then.i8:                                       ; preds = %lor.lhs.false.i
  %46 = ptrtoint ptr %29 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %29, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -3, i8 %47)
  %cmp7.i = icmp eq i8 %47, -3
  br i1 %cmp7.i, label %if.then9.i, label %if.then.i8.for.inc.i_crit_edge

if.then.i8.for.inc.i_crit_edge:                   ; preds = %if.then.i8
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.i

if.then9.i:                                       ; preds = %if.then.i8
  call void @__sanitizer_cov_trace_pc() #5
  %48 = ptrtoint ptr %30 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %30, align 1
  %conv11.i = zext i8 %49 to i32
  %mul.i = mul nuw nsw i32 %conv11.i, 10
  %50 = ptrtoint ptr %max_pixel_clock.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %mul.i, ptr %max_pixel_clock.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then9.i, %if.then.i8.for.inc.i_crit_edge, %lor.lhs.false.i.for.inc.i_crit_edge, %sw.bb.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.020.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 109
  br i1 %exitcond.not.i, label %dvi_get_panel_size_from_DDCv1.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i

dvi_get_panel_size_from_DDCv1.exit:               ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #5
  %51 = ptrtoint ptr %tmds_chip_slave_addr.i2 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %33, ptr %tmds_chip_slave_addr.i2, align 4
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %EDID_DATA.i) #3
  br label %if.end

if.end:                                           ; preds = %dvi_get_panel_size_from_DDCv1.exit, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @viafb_dvi_sense() local_unnamed_addr #0 align 64 {
entry:
  %data.i16.i = alloca i8, align 1
  %data.i.i = alloca i8, align 1
  %data.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viaparinfo to i32))
  %0 = load ptr, ptr @viaparinfo, align 4
  %chip_info = getelementptr inbounds %struct.viafb_par, ptr %0, i32 0, i32 11
  %1 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %chip_info, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp = icmp eq i32 %4, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 30) #3
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr)) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %6 = or i8 %5, 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !10
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 30) #3, !srcloc !11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !12
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %6) #3, !srcloc !11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !13
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 107) #3, !srcloc !11
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #3, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !15
  %8 = or i8 %7, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !10
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 107) #3, !srcloc !11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !12
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %8) #3, !srcloc !11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !13
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 -111) #3, !srcloc !11
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #3, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !10
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 -111) #3, !srcloc !11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !12
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 29) #3, !srcloc !11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !13
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 -109) #3, !srcloc !11
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #3, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !10
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 -109) #3, !srcloc !11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !12
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 1) #3, !srcloc !11
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %11 = or i8 %5, -16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !10
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 30) #3, !srcloc !11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !12
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %11) #3, !srcloc !11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !13
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 62) #3, !srcloc !11
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr)) #3, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !15
  %13 = and i8 %12, -33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !10
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 62) #3, !srcloc !11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !12
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %13) #3, !srcloc !11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !13
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 -111) #3, !srcloc !11
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #3, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !10
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 -111) #3, !srcloc !11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !12
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 29) #3, !srcloc !11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !13
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 -101) #3, !srcloc !11
  %15 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #3, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !10
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 -101) #3, !srcloc !11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !12
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 1) #3, !srcloc !11
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %RegSR3E.0 = phi i8 [ 0, %if.then ], [ %12, %if.else ]
  %RegCR6B.0 = phi i8 [ %7, %if.then ], [ 0, %if.else ]
  %RegCR91.0 = phi i8 [ %9, %if.then ], [ %14, %if.else ]
  %RegCR93.0 = phi i8 [ %10, %if.then ], [ 0, %if.else ]
  %RegCR9B.0 = phi i8 [ 0, %if.then ], [ %15, %if.else ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i) #3
  %16 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 -1, ptr %data.i, align 1, !annotation !9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viaparinfo to i32))
  %17 = load ptr, ptr @viaparinfo, align 4
  %chip_info.i = getelementptr inbounds %struct.viafb_par, ptr %17, i32 0, i32 11
  %18 = ptrtoint ptr %chip_info.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %chip_info.i, align 4
  %i2c_port.i = getelementptr inbounds %struct.chip_information, ptr %19, i32 0, i32 3, i32 3
  %20 = ptrtoint ptr %i2c_port.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %i2c_port.i, align 4
  %conv.i = trunc i32 %21 to i8
  %tmds_chip_slave_addr.i = getelementptr inbounds %struct.chip_information, ptr %19, i32 0, i32 3, i32 1
  %22 = ptrtoint ptr %tmds_chip_slave_addr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tmds_chip_slave_addr.i, align 4
  %conv3.i = trunc i32 %23 to i8
  %call.i = call i32 @viafb_i2c_readbyte(i8 noundef zeroext %conv.i, i8 noundef zeroext %conv3.i, i8 noundef zeroext 9, ptr noundef nonnull %data.i) #3
  %24 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %data.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i) #3
  %26 = and i8 %25, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.not = icmp eq i8 %26, 0
  br i1 %tobool.not, label %if.then25, label %if.end.if.end30_crit_edge

if.end.if.end30_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end30

if.then25:                                        ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viaparinfo to i32))
  %27 = load ptr, ptr @viaparinfo, align 4
  %chip_info.i43 = getelementptr inbounds %struct.viafb_par, ptr %27, i32 0, i32 11
  %28 = ptrtoint ptr %chip_info.i43 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %chip_info.i43, align 4
  %tmds_chip_slave_addr.i44 = getelementptr inbounds %struct.chip_information, ptr %29, i32 0, i32 3, i32 1
  %30 = ptrtoint ptr %tmds_chip_slave_addr.i44 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %tmds_chip_slave_addr.i44, align 4
  store i32 160, ptr %tmds_chip_slave_addr.i44, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i.i) #3
  %32 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 -1, ptr %data.i.i, align 1, !annotation !9
  %33 = ptrtoint ptr %chip_info.i43 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %chip_info.i43, align 4
  %i2c_port.i.i = getelementptr inbounds %struct.chip_information, ptr %34, i32 0, i32 3, i32 3
  %35 = ptrtoint ptr %i2c_port.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %i2c_port.i.i, align 4
  %conv.i.i = trunc i32 %36 to i8
  %tmds_chip_slave_addr.i.i = getelementptr inbounds %struct.chip_information, ptr %34, i32 0, i32 3, i32 1
  %37 = ptrtoint ptr %tmds_chip_slave_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %tmds_chip_slave_addr.i.i, align 4
  %conv3.i.i = trunc i32 %38 to i8
  %call.i.i = call i32 @viafb_i2c_readbyte(i8 noundef zeroext %conv.i.i, i8 noundef zeroext %conv3.i.i, i8 noundef zeroext 0, ptr noundef nonnull %data.i.i) #3
  %39 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %data.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i.i) #3
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i16.i) #3
  %41 = ptrtoint ptr %data.i16.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 -1, ptr %data.i16.i, align 1, !annotation !9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viaparinfo to i32))
  %42 = load ptr, ptr @viaparinfo, align 4
  %chip_info.i17.i = getelementptr inbounds %struct.viafb_par, ptr %42, i32 0, i32 11
  %43 = ptrtoint ptr %chip_info.i17.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %chip_info.i17.i, align 4
  %i2c_port.i18.i = getelementptr inbounds %struct.chip_information, ptr %44, i32 0, i32 3, i32 3
  %45 = ptrtoint ptr %i2c_port.i18.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %i2c_port.i18.i, align 4
  %conv.i19.i = trunc i32 %46 to i8
  %tmds_chip_slave_addr.i20.i = getelementptr inbounds %struct.chip_information, ptr %44, i32 0, i32 3, i32 1
  %47 = ptrtoint ptr %tmds_chip_slave_addr.i20.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %tmds_chip_slave_addr.i20.i, align 4
  %conv3.i21.i = trunc i32 %48 to i8
  %call.i22.i = call i32 @viafb_i2c_readbyte(i8 noundef zeroext %conv.i19.i, i8 noundef zeroext %conv3.i21.i, i8 noundef zeroext 1, ptr noundef nonnull %data.i16.i) #3
  %49 = ptrtoint ptr %data.i16.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %data.i16.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i16.i) #3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %cmp.i = icmp eq i8 %40, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %50)
  %cmp9.i = icmp eq i8 %50, -1
  %or.cond.i = select i1 %cmp.i, i1 %cmp9.i, i1 false
  br i1 %or.cond.i, label %viafb_dvi_query_EDID.exit, label %if.then25.if.end30_crit_edge

if.then25.if.end30_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end30

viafb_dvi_query_EDID.exit:                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viaparinfo to i32))
  %51 = load ptr, ptr @viaparinfo, align 4
  %chip_info11.i = getelementptr inbounds %struct.viafb_par, ptr %51, i32 0, i32 11
  %52 = ptrtoint ptr %chip_info11.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %chip_info11.i, align 4
  %tmds_chip_slave_addr13.i = getelementptr inbounds %struct.chip_information, ptr %53, i32 0, i32 3, i32 1
  %54 = ptrtoint ptr %tmds_chip_slave_addr13.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %31, ptr %tmds_chip_slave_addr13.i, align 4
  br label %if.end30

if.end30:                                         ; preds = %viafb_dvi_query_EDID.exit, %if.then25.if.end30_crit_edge, %if.end.if.end30_crit_edge
  %ret.1 = phi i32 [ 1, %if.end.if.end30_crit_edge ], [ 1, %viafb_dvi_query_EDID.exit ], [ 0, %if.then25.if.end30_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !10
  call void @arm_heavy_mb() #3
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 30) #3, !srcloc !11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !12
  call void @arm_heavy_mb() #3
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %5) #3, !srcloc !11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !10
  call void @arm_heavy_mb() #3
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 -111) #3, !srcloc !11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !12
  call void @arm_heavy_mb() #3
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %RegCR91.0) #3, !srcloc !11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viaparinfo to i32))
  %55 = load ptr, ptr @viaparinfo, align 4
  %chip_info31 = getelementptr inbounds %struct.viafb_par, ptr %55, i32 0, i32 11
  %56 = ptrtoint ptr %chip_info31 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %chip_info31, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %57, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %59)
  %cmp33 = icmp eq i32 %59, 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3
  call void @arm_heavy_mb() #3
  br i1 %cmp33, label %if.then35, label %if.else36

if.then35:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #5
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 107) #3, !srcloc !11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !12
  call void @arm_heavy_mb() #3
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %RegCR6B.0) #3, !srcloc !11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !10
  call void @arm_heavy_mb() #3
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 -109) #3, !srcloc !11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !12
  call void @arm_heavy_mb() #3
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %RegCR93.0) #3, !srcloc !11
  br label %if.end37

if.else36:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #5
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 62) #3, !srcloc !11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !12
  call void @arm_heavy_mb() #3
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %RegSR3E.0) #3, !srcloc !11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !10
  call void @arm_heavy_mb() #3
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 -101) #3, !srcloc !11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !12
  call void @arm_heavy_mb() #3
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %RegCR9B.0) #3, !srcloc !11
  br label %if.end37

if.end37:                                         ; preds = %if.else36, %if.then35
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @viafb_tmds_trasmitter_identify() local_unnamed_addr #0 align 64 {
entry:
  %data.i.i56 = alloca i8, align 1
  %data.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viaparinfo to i32))
  %0 = load ptr, ptr @viaparinfo, align 4
  %chip_info = getelementptr inbounds %struct.viafb_par, ptr %0, i32 0, i32 11
  %1 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %chip_info, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %4, label %sw.default [
    i32 8, label %sw.bb
    i32 10, label %entry.sw.bb1_crit_edge
    i32 9, label %entry.sw.bb1_crit_edge70
  ]

entry.sw.bb1_crit_edge70:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb1

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !13
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 42) #3, !srcloc !11
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr)) #3, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 42) #3, !srcloc !11
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr)) #3, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !18
  tail call void @arm_heavy_mb() #3
  %or.i = or i8 %7, 3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %or.i) #3, !srcloc !11
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !13
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 42) #3, !srcloc !11
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr)) #3, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 42) #3, !srcloc !11
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr)) #3, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !18
  tail call void @arm_heavy_mb() #3
  %or.i50 = or i8 %9, 3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %or.i50) #3, !srcloc !11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !13
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 30) #3, !srcloc !11
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr)) #3, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 30) #3, !srcloc !11
  %11 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr)) #3, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !18
  tail call void @arm_heavy_mb() #3
  %or.i52 = or i8 %11, -64
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %or.i52) #3, !srcloc !11
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !13
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 30) #3, !srcloc !11
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr)) #3, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 30) #3, !srcloc !11
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr)) #3, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !18
  tail call void @arm_heavy_mb() #3
  %or.i54 = or i8 %13, -16
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %or.i54) #3, !srcloc !11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !13
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 62) #3, !srcloc !11
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr)) #3, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 62) #3, !srcloc !11
  %15 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr)) #3, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !18
  tail call void @arm_heavy_mb() #3
  %and15.i55 = and i8 %15, -33
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %and15.i55) #3, !srcloc !11
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb1, %sw.bb
  %sr3e.0 = phi i8 [ %14, %sw.default ], [ 0, %sw.bb1 ], [ 0, %sw.bb ]
  %sr1e.0 = phi i8 [ %12, %sw.default ], [ %10, %sw.bb1 ], [ 0, %sw.bb ]
  %sr2a.0 = phi i8 [ 0, %sw.default ], [ %8, %sw.bb1 ], [ %6, %sw.bb ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viaparinfo to i32))
  %16 = load ptr, ptr @viaparinfo, align 4
  %chip_info6 = getelementptr inbounds %struct.viafb_par, ptr %16, i32 0, i32 11
  %17 = ptrtoint ptr %chip_info6 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %chip_info6, align 4
  %tmds_chip_info = getelementptr inbounds %struct.chip_information, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %tmds_chip_info to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %tmds_chip_info, align 4
  %20 = load ptr, ptr %chip_info6, align 4
  %tmds_chip_slave_addr = getelementptr inbounds %struct.chip_information, ptr %20, i32 0, i32 3, i32 1
  %21 = ptrtoint ptr %tmds_chip_slave_addr to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 16, ptr %tmds_chip_slave_addr, align 4
  %22 = load ptr, ptr %chip_info6, align 4
  %i2c_port = getelementptr inbounds %struct.chip_information, ptr %22, i32 0, i32 3, i32 3
  %23 = ptrtoint ptr %i2c_port to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %i2c_port, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i.i) #3
  %24 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 -1, ptr %data.i.i, align 1, !annotation !9
  %25 = ptrtoint ptr %chip_info6 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %chip_info6, align 4
  %i2c_port.i.i = getelementptr inbounds %struct.chip_information, ptr %26, i32 0, i32 3, i32 3
  %27 = ptrtoint ptr %i2c_port.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %i2c_port.i.i, align 4
  %conv.i.i = trunc i32 %28 to i8
  %tmds_chip_slave_addr.i.i = getelementptr inbounds %struct.chip_information, ptr %26, i32 0, i32 3, i32 1
  %29 = ptrtoint ptr %tmds_chip_slave_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %tmds_chip_slave_addr.i.i, align 4
  %conv3.i.i = trunc i32 %30 to i8
  %call.i.i = call i32 @viafb_i2c_readbyte(i8 noundef zeroext %conv.i.i, i8 noundef zeroext %conv3.i.i, i8 noundef zeroext 2, ptr noundef nonnull %data.i.i) #3
  %31 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %data.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i.i) #3
  call void @__sanitizer_cov_trace_const_cmp1(i8 -110, i8 %32)
  %cmp.i = icmp eq i8 %32, -110
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viaparinfo to i32))
  %33 = load ptr, ptr @viaparinfo, align 4
  %chip_info.i = getelementptr inbounds %struct.viafb_par, ptr %33, i32 0, i32 11
  %34 = ptrtoint ptr %chip_info.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %chip_info.i, align 4
  %i2c_port.i = getelementptr inbounds %struct.chip_information, ptr %35, i32 0, i32 3, i32 3
  br i1 %cmp.i, label %if.then, label %if.else

if.then:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #5
  %36 = ptrtoint ptr %i2c_port.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %i2c_port.i, align 4
  %conv.i = trunc i32 %37 to i8
  %tmds_chip_slave_addr.i = getelementptr inbounds %struct.chip_information, ptr %35, i32 0, i32 3, i32 1
  %38 = ptrtoint ptr %tmds_chip_slave_addr.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %tmds_chip_slave_addr.i, align 4
  %conv3.i = trunc i32 %39 to i8
  %call.i = call i32 @viafb_i2c_writebyte(i8 noundef zeroext %conv.i, i8 noundef zeroext %conv3.i, i8 noundef zeroext 8, i8 noundef zeroext 59) #3
  br label %cleanup

if.else:                                          ; preds = %sw.epilog
  %40 = ptrtoint ptr %i2c_port.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 3, ptr %i2c_port.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i.i56) #3
  %41 = ptrtoint ptr %data.i.i56 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 -1, ptr %data.i.i56, align 1, !annotation !9
  %42 = ptrtoint ptr %chip_info.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %chip_info.i, align 4
  %i2c_port.i.i58 = getelementptr inbounds %struct.chip_information, ptr %43, i32 0, i32 3, i32 3
  %44 = ptrtoint ptr %i2c_port.i.i58 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %i2c_port.i.i58, align 4
  %conv.i.i59 = trunc i32 %45 to i8
  %tmds_chip_slave_addr.i.i60 = getelementptr inbounds %struct.chip_information, ptr %43, i32 0, i32 3, i32 1
  %46 = ptrtoint ptr %tmds_chip_slave_addr.i.i60 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %tmds_chip_slave_addr.i.i60, align 4
  %conv3.i.i61 = trunc i32 %47 to i8
  %call.i.i62 = call i32 @viafb_i2c_readbyte(i8 noundef zeroext %conv.i.i59, i8 noundef zeroext %conv3.i.i61, i8 noundef zeroext 2, ptr noundef nonnull %data.i.i56) #3
  %48 = ptrtoint ptr %data.i.i56 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %data.i.i56, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i.i56) #3
  call void @__sanitizer_cov_trace_const_cmp1(i8 -110, i8 %49)
  %cmp.i63 = icmp eq i8 %49, -110
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viaparinfo to i32))
  %50 = load ptr, ptr @viaparinfo, align 4
  %chip_info.i64 = getelementptr inbounds %struct.viafb_par, ptr %50, i32 0, i32 11
  %51 = ptrtoint ptr %chip_info.i64 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %chip_info.i64, align 4
  br i1 %cmp.i63, label %if.then18, label %if.end22

if.then18:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  %i2c_port.i65 = getelementptr inbounds %struct.chip_information, ptr %52, i32 0, i32 3, i32 3
  %53 = ptrtoint ptr %i2c_port.i65 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %i2c_port.i65, align 4
  %conv.i66 = trunc i32 %54 to i8
  %tmds_chip_slave_addr.i67 = getelementptr inbounds %struct.chip_information, ptr %52, i32 0, i32 3, i32 1
  %55 = ptrtoint ptr %tmds_chip_slave_addr.i67 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %tmds_chip_slave_addr.i67, align 4
  %conv3.i68 = trunc i32 %56 to i8
  %call.i69 = call i32 @viafb_i2c_writebyte(i8 noundef zeroext %conv.i66, i8 noundef zeroext %conv3.i68, i8 noundef zeroext 8, i8 noundef zeroext 59) #3
  br label %cleanup

if.end22:                                         ; preds = %if.else
  %tmds_chip_info24 = getelementptr inbounds %struct.chip_information, ptr %52, i32 0, i32 3
  %57 = ptrtoint ptr %tmds_chip_info24 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 66, ptr %tmds_chip_info24, align 4
  %58 = ptrtoint ptr %chip_info.i64 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %chip_info.i64, align 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %59, align 4
  %62 = zext i32 %61 to i64
  call void @__sanitizer_cov_trace_switch(i64 %62, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %61, label %if.end22.sw.default37_crit_edge [
    i32 6, label %land.lhs.true
    i32 8, label %sw.bb35
    i32 10, label %if.end22.sw.bb36_crit_edge
    i32 9, label %if.end22.sw.bb36_crit_edge71
  ]

if.end22.sw.bb36_crit_edge71:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb36

if.end22.sw.bb36_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb36

if.end22.sw.default37_crit_edge:                  ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.default37

land.lhs.true:                                    ; preds = %if.end22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafb_display_hardware_layout to i32))
  %63 = load i32, ptr @viafb_display_hardware_layout, align 4
  %64 = and i32 %63, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %64)
  %switch = icmp eq i32 %64, 2
  br i1 %switch, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.sw.default37_crit_edge

land.lhs.true.sw.default37_crit_edge:             ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.default37

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

sw.bb35:                                          ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #5
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !10
  call void @arm_heavy_mb() #3
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 42) #3, !srcloc !11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !12
  call void @arm_heavy_mb() #3
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %sr2a.0) #3, !srcloc !11
  br label %sw.epilog38

sw.bb36:                                          ; preds = %if.end22.sw.bb36_crit_edge, %if.end22.sw.bb36_crit_edge71
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !10
  call void @arm_heavy_mb() #3
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 42) #3, !srcloc !11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !12
  call void @arm_heavy_mb() #3
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %sr2a.0) #3, !srcloc !11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !10
  call void @arm_heavy_mb() #3
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 30) #3, !srcloc !11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !12
  call void @arm_heavy_mb() #3
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %sr1e.0) #3, !srcloc !11
  br label %sw.epilog38

sw.default37:                                     ; preds = %land.lhs.true.sw.default37_crit_edge, %if.end22.sw.default37_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !10
  call void @arm_heavy_mb() #3
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 30) #3, !srcloc !11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !12
  call void @arm_heavy_mb() #3
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %sr1e.0) #3, !srcloc !11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !10
  call void @arm_heavy_mb() #3
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 62) #3, !srcloc !11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !12
  call void @arm_heavy_mb() #3
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %sr3e.0) #3, !srcloc !11
  br label %sw.epilog38

sw.epilog38:                                      ; preds = %sw.default37, %sw.bb36, %sw.bb35
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viaparinfo to i32))
  %65 = load ptr, ptr @viaparinfo, align 4
  %chip_info39 = getelementptr inbounds %struct.viafb_par, ptr %65, i32 0, i32 11
  %66 = ptrtoint ptr %chip_info39 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %chip_info39, align 4
  %tmds_chip_info40 = getelementptr inbounds %struct.chip_information, ptr %67, i32 0, i32 3
  %68 = ptrtoint ptr %tmds_chip_info40 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 0, ptr %tmds_chip_info40, align 4
  %69 = load ptr, ptr %chip_info39, align 4
  %tmds_chip_slave_addr44 = getelementptr inbounds %struct.chip_information, ptr %69, i32 0, i32 3, i32 1
  %70 = ptrtoint ptr %tmds_chip_slave_addr44 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 16, ptr %tmds_chip_slave_addr44, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog38, %land.lhs.true.cleanup_crit_edge, %if.then18, %if.then
  %retval.0 = phi i1 [ true, %if.then ], [ true, %if.then18 ], [ false, %sw.epilog38 ], [ true, %land.lhs.true.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @viafb_dvi_set_mode(ptr nocapture noundef readonly %var, i16 noundef zeroext %cxres, i16 noundef zeroext %cyres, i32 noundef %iga) local_unnamed_addr #0 align 64 {
entry:
  %dvi_var = alloca %struct.fb_var_screeninfo, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %dvi_var) #3
  %0 = call ptr @memcpy(ptr %dvi_var, ptr %var, i32 160)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viaparinfo to i32))
  %1 = load ptr, ptr @viaparinfo, align 4
  %shared = getelementptr inbounds %struct.viafb_par, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %shared to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %shared, align 4
  %max_pixel_clock = getelementptr inbounds %struct.viafb_shared, ptr %3, i32 0, i32 9, i32 3
  %4 = ptrtoint ptr %max_pixel_clock to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_pixel_clock, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %land.lhs.true

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end4

land.lhs.true:                                    ; preds = %entry
  %pixclock = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 17
  %6 = ptrtoint ptr %pixclock to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pixclock, align 4
  %div = udiv i32 1000000000, %7
  %div1 = udiv i32 %div, 1000
  call void @__sanitizer_cov_trace_cmp4(i32 %div1, i32 %5)
  %cmp = icmp ugt i32 %div1, %5
  br i1 %cmp, label %if.then, label %land.lhs.true.if.end4_crit_edge

land.lhs.true.if.end4_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end4

if.then:                                          ; preds = %land.lhs.true
  %8 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %var, align 4
  %yres = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 1
  %10 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %yres, align 4
  %call = tail call ptr @viafb_get_best_rb_mode(i32 noundef %9, i32 noundef %11, i32 noundef 60) #3
  %tobool2.not = icmp eq ptr %call, null
  br i1 %tobool2.not, label %if.then.if.end4_crit_edge, label %if.then3

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end4

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  call void @viafb_fill_var_timing_info(ptr noundef nonnull %dvi_var, ptr noundef nonnull %call) #3
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.then.if.end4_crit_edge, %land.lhs.true.if.end4_crit_edge, %entry.if.end4_crit_edge
  call void @viafb_fill_crtc_timing(ptr noundef nonnull %dvi_var, i16 noundef zeroext %cxres, i16 noundef zeroext %cyres, i32 noundef %iga) #3
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %dvi_var) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @viafb_get_best_rb_mode(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @viafb_fill_var_timing_info(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @viafb_fill_crtc_timing(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @viafb_dvi_disable() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viaparinfo to i32))
  %0 = load ptr, ptr @viaparinfo, align 4
  %chip_info = getelementptr inbounds %struct.viafb_par, ptr %0, i32 0, i32 11
  %1 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %chip_info, align 4
  %output_interface = getelementptr inbounds %struct.chip_information, ptr %2, i32 0, i32 3, i32 2
  %3 = ptrtoint ptr %output_interface to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %output_interface, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %4)
  %cmp = icmp eq i32 %4, 10
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !13
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 -46) #3, !srcloc !11
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #3, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !15
  %6 = or i8 %5, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !10
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 -46) #3, !srcloc !11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !12
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %6) #3, !srcloc !11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @viafb_dvi_enable() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viaparinfo to i32))
  %0 = load ptr, ptr @viaparinfo, align 4
  %chip_info = getelementptr inbounds %struct.viafb_par, ptr %0, i32 0, i32 11
  %1 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %chip_info, align 4
  %output_interface = getelementptr inbounds %struct.chip_information, ptr %2, i32 0, i32 3, i32 2
  %3 = ptrtoint ptr %output_interface to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %output_interface, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.3)
  switch i32 %4, label %entry.sw.epilog_crit_edge [
    i32 2, label %sw.bb
    i32 3, label %sw.bb2
    i32 4, label %sw.bb29
    i32 5, label %sw.bb36
    i32 10, label %sw.bb43
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 107) #3, !srcloc !11
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #3, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !18
  tail call void @arm_heavy_mb() #3
  %or.i = or i8 %6, 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %or.i) #3, !srcloc !11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 108) #3, !srcloc !11
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #3, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !18
  tail call void @arm_heavy_mb() #3
  %or.i49 = or i8 %7, 33
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %or.i49) #3, !srcloc !11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 27) #3, !srcloc !11
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr)) #3, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !18
  tail call void @arm_heavy_mb() #3
  %and15.i.i = and i8 %8, -3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %and15.i.i) #3, !srcloc !11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 42) #3, !srcloc !11
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr)) #3, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !18
  tail call void @arm_heavy_mb() #3
  %and15.i4.i = and i8 %9, -17
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %and15.i4.i) #3, !srcloc !11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viaparinfo to i32))
  %10 = load ptr, ptr @viaparinfo, align 4
  %chip_info.i = getelementptr inbounds %struct.viafb_par, ptr %10, i32 0, i32 11
  %11 = ptrtoint ptr %chip_info.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %chip_info.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.4)
  switch i32 %14, label %sw.bb.dvi_patch_skew_dvp0.exit_crit_edge [
    i32 9, label %sw.bb.i
    i32 10, label %sw.bb3.i
  ]

sw.bb.dvi_patch_skew_dvp0.exit_crit_edge:         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #5
  br label %dvi_patch_skew_dvp0.exit

sw.bb.i:                                          ; preds = %sw.bb
  %tmds_setting_info.i = getelementptr inbounds %struct.viafb_par, ptr %10, i32 0, i32 8
  %16 = ptrtoint ptr %tmds_setting_info.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tmds_setting_info.i, align 4
  %h_active.i = getelementptr inbounds %struct.tmds_setting_information, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %h_active.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %h_active.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1600, i32 %19)
  %cmp.i = icmp eq i32 %19, 1600
  br i1 %cmp.i, label %land.lhs.true.i, label %sw.bb.i.if.else.i_crit_edge

sw.bb.i.if.else.i_crit_edge:                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %sw.bb.i
  %v_active.i = getelementptr inbounds %struct.tmds_setting_information, ptr %17, i32 0, i32 2
  %20 = ptrtoint ptr %v_active.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %v_active.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1200, i32 %21)
  %cmp2.i = icmp eq i32 %21, 1200
  br i1 %cmp2.i, label %if.then.i, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 -106) #3, !srcloc !11
  %22 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #3, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !18
  tail call void @arm_heavy_mb() #3
  %and15.i5.i = and i8 %22, -8
  %or.i.i = or i8 %and15.i5.i, 3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %or.i.i) #3, !srcloc !11
  br label %dvi_patch_skew_dvp0.exit

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %sw.bb.i.if.else.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 -106) #3, !srcloc !11
  %23 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #3, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !18
  tail call void @arm_heavy_mb() #3
  %or.i7.i = or i8 %23, 7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %or.i7.i) #3, !srcloc !11
  br label %dvi_patch_skew_dvp0.exit

sw.bb3.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 -106) #3, !srcloc !11
  %24 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #3, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !18
  tail call void @arm_heavy_mb() #3
  %and15.i8.i = and i8 %24, -16
  %or.i9.i = or i8 %and15.i8.i, 7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %or.i9.i) #3, !srcloc !11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 27) #3, !srcloc !11
  %25 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr)) #3, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !18
  tail call void @arm_heavy_mb() #3
  %or.i11.i = or i8 %25, 2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %or.i11.i) #3, !srcloc !11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 42) #3, !srcloc !11
  %26 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr)) #3, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !18
  tail call void @arm_heavy_mb() #3
  %or.i13.i = or i8 %26, 16
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %or.i13.i) #3, !srcloc !11
  br label %dvi_patch_skew_dvp0.exit

dvi_patch_skew_dvp0.exit:                         ; preds = %sw.bb3.i, %if.else.i, %if.then.i, %sw.bb.dvi_patch_skew_dvp0.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viaparinfo to i32))
  %27 = load ptr, ptr @viaparinfo, align 4
  %chip_info1 = getelementptr inbounds %struct.viafb_par, ptr %27, i32 0, i32 11
  %28 = ptrtoint ptr %chip_info1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %chip_info1, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %29, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %31)
  %cmp = icmp eq i32 %31, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %dvi_patch_skew_dvp0.exit
  call void @__sanitizer_cov_trace_pc() #5
  %i2c_port.i = getelementptr inbounds %struct.chip_information, ptr %29, i32 0, i32 3, i32 3
  %32 = ptrtoint ptr %i2c_port.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %i2c_port.i, align 4
  %conv.i = trunc i32 %33 to i8
  %tmds_chip_slave_addr.i = getelementptr inbounds %struct.chip_information, ptr %29, i32 0, i32 3, i32 1
  %34 = ptrtoint ptr %tmds_chip_slave_addr.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %tmds_chip_slave_addr.i, align 4
  %conv3.i = trunc i32 %35 to i8
  %call.i = tail call i32 @viafb_i2c_writebyte(i8 noundef zeroext %conv.i, i8 noundef zeroext %conv3.i, i8 noundef zeroext -120, i8 noundef zeroext 59) #3
  br label %sw.epilog

if.else:                                          ; preds = %dvi_patch_skew_dvp0.exit
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 -111) #3, !srcloc !11
  %36 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #3, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !18
  tail call void @arm_heavy_mb() #3
  %and15.i51 = and i8 %36, -33
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %and15.i51) #3, !srcloc !11
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %37 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %38)
  %cmp5 = icmp eq i32 %38, 1
  br i1 %cmp5, label %if.then6, label %sw.bb2.if.end7_crit_edge

sw.bb2.if.end7_crit_edge:                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end7

if.then6:                                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 -109) #3, !srcloc !11
  %39 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #3, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !18
  tail call void @arm_heavy_mb() #3
  %or.i53 = or i8 %39, 33
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %or.i53) #3, !srcloc !11
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %sw.bb2.if.end7_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viaparinfo to i32))
  %40 = load ptr, ptr @viaparinfo, align 4
  %chip_info8 = getelementptr inbounds %struct.viafb_par, ptr %40, i32 0, i32 11
  %41 = ptrtoint ptr %chip_info8 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %chip_info8, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %42, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %44)
  %cmp10 = icmp eq i32 %44, 1
  br i1 %cmp10, label %if.then11, label %if.else12

if.then11:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #5
  %i2c_port.i55 = getelementptr inbounds %struct.chip_information, ptr %42, i32 0, i32 3, i32 3
  %45 = ptrtoint ptr %i2c_port.i55 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %i2c_port.i55, align 4
  %conv.i56 = trunc i32 %46 to i8
  %tmds_chip_slave_addr.i57 = getelementptr inbounds %struct.chip_information, ptr %42, i32 0, i32 3, i32 1
  %47 = ptrtoint ptr %tmds_chip_slave_addr.i57 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %tmds_chip_slave_addr.i57, align 4
  %conv3.i58 = trunc i32 %48 to i8
  %call.i59 = tail call i32 @viafb_i2c_writebyte(i8 noundef zeroext %conv.i56, i8 noundef zeroext %conv3.i58, i8 noundef zeroext -120, i8 noundef zeroext 59) #3
  br label %if.end13

if.else12:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 -111) #3, !srcloc !11
  %49 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #3, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !18
  tail call void @arm_heavy_mb() #3
  %and15.i60 = and i8 %49, -33
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %and15.i60) #3, !srcloc !11
  br label %if.end13

if.end13:                                         ; preds = %if.else12, %if.then11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafb_platform_epia_dvi to i32))
  %50 = load i32, ptr @viafb_platform_epia_dvi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %50)
  %cmp14 = icmp eq i32 %50, 1
  br i1 %cmp14, label %if.then15, label %if.end13.sw.epilog_crit_edge

if.end13.sw.epilog_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

if.then15:                                        ; preds = %if.end13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 -111) #3, !srcloc !11
  %51 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #3, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !18
  tail call void @arm_heavy_mb() #3
  %or.i62 = or i8 %51, 31
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %or.i62) #3, !srcloc !11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 -120) #3, !srcloc !11
  %52 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #3, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !18
  tail call void @arm_heavy_mb() #3
  %and15.i63 = and i8 %52, -66
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %and15.i63) #3, !srcloc !11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafb_bus_width to i32))
  %53 = load i32, ptr @viafb_bus_width, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %53)
  %cmp16 = icmp eq i32 %53, 24
  br i1 %cmp16, label %if.then17, label %if.then15.sw.epilog_crit_edge

if.then15.sw.epilog_crit_edge:                    ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

if.then17:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafb_device_lcd_dualedge to i32))
  %54 = load i32, ptr @viafb_device_lcd_dualedge, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %54)
  %cmp18 = icmp eq i32 %54, 1
  %. = select i1 %cmp18, i8 63, i8 55
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viaparinfo to i32))
  %55 = load ptr, ptr @viaparinfo, align 4
  %chip_info22 = getelementptr inbounds %struct.viafb_par, ptr %55, i32 0, i32 11
  %56 = ptrtoint ptr %chip_info22 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %chip_info22, align 4
  %i2c_port = getelementptr inbounds %struct.chip_information, ptr %57, i32 0, i32 3, i32 3
  %58 = ptrtoint ptr %i2c_port to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %i2c_port, align 4
  %conv = trunc i32 %59 to i8
  %tmds_chip_slave_addr = getelementptr inbounds %struct.chip_information, ptr %57, i32 0, i32 3, i32 1
  %60 = ptrtoint ptr %tmds_chip_slave_addr to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %tmds_chip_slave_addr, align 4
  %conv26 = trunc i32 %61 to i8
  %call = tail call i32 @viafb_i2c_writebyte(i8 noundef zeroext %conv, i8 noundef zeroext %conv26, i8 noundef zeroext 8, i8 noundef zeroext %.) #3
  br label %sw.epilog

sw.bb29:                                          ; preds = %entry
  %62 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %63)
  %cmp32.not = icmp eq i32 %63, 1
  br i1 %cmp32.not, label %sw.bb29.if.end35_crit_edge, label %if.then34

sw.bb29.if.end35_crit_edge:                       ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end35

if.then34:                                        ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 -105) #3, !srcloc !11
  %64 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #3, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !18
  tail call void @arm_heavy_mb() #3
  %or.i65 = or i8 %64, 3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %or.i65) #3, !srcloc !11
  br label %if.end35

if.end35:                                         ; preds = %if.then34, %sw.bb29.if.end35_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 -111) #3, !srcloc !11
  %65 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #3, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !18
  tail call void @arm_heavy_mb() #3
  %and15.i66 = and i8 %65, -33
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %and15.i66) #3, !srcloc !11
  br label %sw.epilog

sw.bb36:                                          ; preds = %entry
  %66 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %2, align 4
  %68 = zext i32 %67 to i64
  call void @__sanitizer_cov_trace_switch(i64 %68, ptr @__sancov_gen_cov_switch_values.5)
  switch i32 %67, label %sw.bb36.dvi_patch_skew_dvp_low.exit_crit_edge [
    i32 1, label %sw.bb36.sw.epilog_crit_edge
    i32 8, label %sw.bb.i69
    i32 10, label %sw.bb1.i
    i32 9, label %sw.bb2.i
  ]

sw.bb36.sw.epilog_crit_edge:                      ; preds = %sw.bb36
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

sw.bb36.dvi_patch_skew_dvp_low.exit_crit_edge:    ; preds = %sw.bb36
  call void @__sanitizer_cov_trace_pc() #5
  br label %dvi_patch_skew_dvp_low.exit

sw.bb.i69:                                        ; preds = %sw.bb36
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 -103) #3, !srcloc !11
  %69 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #3, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !18
  tail call void @arm_heavy_mb() #3
  %or.i.i68 = or i8 %69, 3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %or.i.i68) #3, !srcloc !11
  br label %dvi_patch_skew_dvp_low.exit

sw.bb1.i:                                         ; preds = %sw.bb36
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 -103) #3, !srcloc !11
  %70 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #3, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !18
  tail call void @arm_heavy_mb() #3
  %and15.i3.i = and i8 %70, -16
  %or.i4.i = or i8 %and15.i3.i, 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %or.i4.i) #3, !srcloc !11
  br label %dvi_patch_skew_dvp_low.exit

sw.bb2.i:                                         ; preds = %sw.bb36
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 -103) #3, !srcloc !11
  %71 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #3, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !18
  tail call void @arm_heavy_mb() #3
  %or.i6.i = or i8 %71, 15
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %or.i6.i) #3, !srcloc !11
  br label %dvi_patch_skew_dvp_low.exit

dvi_patch_skew_dvp_low.exit:                      ; preds = %sw.bb2.i, %sw.bb1.i, %sw.bb.i69, %sw.bb36.dvi_patch_skew_dvp_low.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 -111) #3, !srcloc !11
  %72 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #3, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !18
  tail call void @arm_heavy_mb() #3
  %and15.i70 = and i8 %72, -33
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %and15.i70) #3, !srcloc !11
  br label %sw.epilog

sw.bb43:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 -111) #3, !srcloc !11
  %73 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #3, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !18
  tail call void @arm_heavy_mb() #3
  %and15.i71 = and i8 %73, 127
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %and15.i71) #3, !srcloc !11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 -46) #3, !srcloc !11
  %74 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #3, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !18
  tail call void @arm_heavy_mb() #3
  %and15.i72 = and i8 %74, -9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %and15.i72) #3, !srcloc !11
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb43, %dvi_patch_skew_dvp_low.exit, %sw.bb36.sw.epilog_crit_edge, %if.end35, %if.then17, %if.then15.sw.epilog_crit_edge, %if.end13.sw.epilog_crit_edge, %if.else, %if.then, %entry.sw.epilog_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viaparinfo to i32))
  %75 = load ptr, ptr @viaparinfo, align 4
  %tmds_setting_info = getelementptr inbounds %struct.viafb_par, ptr %75, i32 0, i32 8
  %76 = ptrtoint ptr %tmds_setting_info to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %tmds_setting_info, align 4
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %77, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %79)
  %cmp44 = icmp eq i32 %79, 2
  br i1 %cmp44, label %if.then46, label %sw.epilog.if.end47_crit_edge

sw.epilog.if.end47_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end47

if.then46:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 121) #3, !srcloc !11
  %80 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #3, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !18
  tail call void @arm_heavy_mb() #3
  %and15.i73 = and i8 %80, -2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %and15.i73) #3, !srcloc !11
  br label %if.end47

if.end47:                                         ; preds = %if.then46, %sw.epilog.if.end47_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @viafb_i2c_writebyte(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @viafb_i2c_readbyte(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @viafb_i2c_readbytes(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

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
!10 = !{i64 2154433301}
!11 = !{i64 702292}
!12 = !{i64 2154433624}
!13 = !{i64 2154432535}
!14 = !{i64 702687}
!15 = !{i64 2154432925}
!16 = !{i64 2154434117}
!17 = !{i64 2154434507}
!18 = !{i64 2154434742}
