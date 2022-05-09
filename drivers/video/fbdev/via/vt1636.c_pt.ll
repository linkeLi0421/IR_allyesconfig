; ModuleID = '/llk/IR_all_yes/drivers/video/fbdev/via/vt1636.c_pt.bc'
source_filename = "../drivers/video/fbdev/via/vt1636.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.IODATA = type { i8, i8, i8 }
%struct.GFX_DPA_SETTING = type { i32, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.lvds_chip_information = type { i32, i32, i32, i32 }
%struct.lvds_setting_information = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.viafb_par = type { i8, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.chip_information = type { i32, i32, i32, %struct.tmds_chip_information, %struct.lvds_chip_information, %struct.lvds_chip_information }
%struct.tmds_chip_information = type { i32, i32, i32, i32 }

@common_init_data = internal constant { [8 x %struct.IODATA], [40 x i8] } { [8 x %struct.IODATA] [%struct.IODATA { i8 16, i8 -64, i8 0 }, %struct.IODATA { i8 11, i8 -1, i8 64 }, %struct.IODATA { i8 12, i8 -1, i8 49 }, %struct.IODATA { i8 13, i8 -1, i8 49 }, %struct.IODATA { i8 14, i8 -1, i8 104 }, %struct.IODATA { i8 15, i8 -1, i8 104 }, %struct.IODATA { i8 9, i8 -96, i8 -96 }, %struct.IODATA { i8 16, i8 51, i8 19 }], [40 x i8] zeroinitializer }, align 32
@viaparinfo = external dso_local local_unnamed_addr global ptr, align 4
@GFX_DPA_SETTING_TBL_VT3324 = external dso_local global [6 x %struct.GFX_DPA_SETTING], align 4
@GFX_DPA_SETTING_TBL_VT3327 = external dso_local global [0 x %struct.GFX_DPA_SETTING], align 4
@GFX_DPA_SETTING_TBL_VT3364 = external dso_local global [6 x %struct.GFX_DPA_SETTING], align 4
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"common_init_data\00", align 1
@___asan_gen_.2 = private constant [36 x i8] c"../drivers/video/fbdev/via/vt1636.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 12, i32 28 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @common_init_data], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @common_init_data to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @viafb_gpio_i2c_read_lvds(ptr nocapture readnone %plvds_setting_info, ptr nocapture noundef readonly %plvds_chip_info, i8 noundef zeroext %index) local_unnamed_addr #0 align 64 {
entry:
  %data = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data) #3
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %data, align 1, !annotation !23
  %i2c_port = getelementptr inbounds %struct.lvds_chip_information, ptr %plvds_chip_info, i32 0, i32 3
  %1 = ptrtoint ptr %i2c_port to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %i2c_port, align 4
  %conv = trunc i32 %2 to i8
  %lvds_chip_slave_addr = getelementptr inbounds %struct.lvds_chip_information, ptr %plvds_chip_info, i32 0, i32 1
  %3 = ptrtoint ptr %lvds_chip_slave_addr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %lvds_chip_slave_addr, align 4
  %conv1 = trunc i32 %4 to i8
  %call = call i32 @viafb_i2c_readbyte(i8 noundef zeroext %conv, i8 noundef zeroext %conv1, i8 noundef zeroext %index, ptr noundef nonnull %data) #3
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %data, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data) #3
  ret i8 %6
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @viafb_i2c_readbyte(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @viafb_gpio_i2c_write_mask_lvds(ptr nocapture readnone %plvds_setting_info, ptr nocapture noundef readonly %plvds_chip_info, [1 x i32] %io_data.coerce) local_unnamed_addr #0 align 64 {
entry:
  %data.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %io_data.coerce.fca.0.extract = extractvalue [1 x i32] %io_data.coerce, 0
  %tmp.coerce.sroa.0.0.extract.shift = lshr i32 %io_data.coerce.fca.0.extract, 8
  %io_data.sroa.0.0.extract.shift14 = lshr i32 %io_data.coerce.fca.0.extract, 24
  %io_data.sroa.0.0.extract.trunc = trunc i32 %io_data.sroa.0.0.extract.shift14 to i8
  %io_data.sroa.2.0.extract.shift15 = lshr i32 %io_data.coerce.fca.0.extract, 16
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i) #3
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %data.i, align 1, !annotation !23
  %i2c_port.i = getelementptr inbounds %struct.lvds_chip_information, ptr %plvds_chip_info, i32 0, i32 3
  %1 = ptrtoint ptr %i2c_port.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %i2c_port.i, align 4
  %conv.i = trunc i32 %2 to i8
  %lvds_chip_slave_addr.i = getelementptr inbounds %struct.lvds_chip_information, ptr %plvds_chip_info, i32 0, i32 1
  %3 = ptrtoint ptr %lvds_chip_slave_addr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %lvds_chip_slave_addr.i, align 4
  %conv1.i = trunc i32 %4 to i8
  %call.i = call i32 @viafb_i2c_readbyte(i8 noundef zeroext %conv.i, i8 noundef zeroext %conv1.i, i8 noundef zeroext %io_data.sroa.0.0.extract.trunc, ptr noundef nonnull %data.i) #3
  %5 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %data.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i) #3
  %conv2 = zext i8 %6 to i32
  %neg = xor i32 %io_data.sroa.2.0.extract.shift15, -1
  %and = and i32 %conv2, %neg
  %or = or i32 %and, %tmp.coerce.sroa.0.0.extract.shift
  %7 = ptrtoint ptr %i2c_port.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %i2c_port.i, align 4
  %conv5 = trunc i32 %8 to i8
  %9 = ptrtoint ptr %lvds_chip_slave_addr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %lvds_chip_slave_addr.i, align 4
  %conv6 = trunc i32 %10 to i8
  %conv8 = trunc i32 %or to i8
  %call9 = call i32 @viafb_i2c_writebyte(i8 noundef zeroext %conv5, i8 noundef zeroext %conv6, i8 noundef zeroext %io_data.sroa.0.0.extract.trunc, i8 noundef zeroext %conv8) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @viafb_i2c_writebyte(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @viafb_init_lvds_vt1636(ptr nocapture noundef readonly %plvds_setting_info, ptr nocapture noundef readonly %plvds_chip_info) local_unnamed_addr #0 align 64 {
entry:
  %data.i.i60 = alloca i8, align 1
  %data.i.i47 = alloca i8, align 1
  %data.i.i34 = alloca i8, align 1
  %data.i.i21 = alloca i8, align 1
  %data.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %i2c_port.i.i = getelementptr inbounds %struct.lvds_chip_information, ptr %plvds_chip_info, i32 0, i32 3
  %lvds_chip_slave_addr.i.i = getelementptr inbounds %struct.lvds_chip_information, ptr %plvds_chip_info, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.073 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [8 x %struct.IODATA], ptr @common_init_data, i32 0, i32 %i.073
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %0, i32 3)
  %arrayidx.coerce.sroa.0.0.copyload = load i24, ptr %arrayidx, align 1
  %arrayidx.coerce.sroa.0.0.insert.ext = zext i24 %arrayidx.coerce.sroa.0.0.copyload to i32
  %io_data.sroa.0.0.extract.shift14.i = lshr i32 %arrayidx.coerce.sroa.0.0.insert.ext, 16
  %io_data.sroa.0.0.extract.trunc.i = trunc i32 %io_data.sroa.0.0.extract.shift14.i to i8
  %io_data.sroa.2.0.extract.shift15.i = lshr i32 %arrayidx.coerce.sroa.0.0.insert.ext, 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i.i) #3
  %1 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %data.i.i, align 1, !annotation !23
  %2 = ptrtoint ptr %i2c_port.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i2c_port.i.i, align 4
  %conv.i.i = trunc i32 %3 to i8
  %4 = ptrtoint ptr %lvds_chip_slave_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %lvds_chip_slave_addr.i.i, align 4
  %conv1.i.i = trunc i32 %5 to i8
  %call.i.i = call i32 @viafb_i2c_readbyte(i8 noundef zeroext %conv.i.i, i8 noundef zeroext %conv1.i.i, i8 noundef zeroext %io_data.sroa.0.0.extract.trunc.i, ptr noundef nonnull %data.i.i) #3
  %6 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %data.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i.i) #3
  %conv2.i = zext i8 %7 to i32
  %neg.i = xor i32 %io_data.sroa.2.0.extract.shift15.i, -1
  %and.i = and i32 %conv2.i, %neg.i
  %or.i = or i32 %and.i, %arrayidx.coerce.sroa.0.0.insert.ext
  %8 = ptrtoint ptr %i2c_port.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %i2c_port.i.i, align 4
  %conv5.i = trunc i32 %9 to i8
  %10 = ptrtoint ptr %lvds_chip_slave_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %lvds_chip_slave_addr.i.i, align 4
  %conv6.i = trunc i32 %11 to i8
  %conv8.i = trunc i32 %or.i to i8
  %call9.i = call i32 @viafb_i2c_writebyte(i8 noundef zeroext %conv5.i, i8 noundef zeroext %conv6.i, i8 noundef zeroext %io_data.sroa.0.0.extract.trunc.i, i8 noundef zeroext %conv8.i) #3
  %inc = add nuw nsw i32 %i.073, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.end:                                          ; preds = %for.body
  %device_lcd_dualedge = getelementptr inbounds %struct.lvds_setting_information, ptr %plvds_setting_info, i32 0, i32 4
  %12 = ptrtoint ptr %device_lcd_dualedge to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %device_lcd_dualedge, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not = icmp eq i32 %13, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i.i21) #3
  %14 = ptrtoint ptr %data.i.i21 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -1, ptr %data.i.i21, align 1, !annotation !23
  %15 = ptrtoint ptr %i2c_port.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %i2c_port.i.i, align 4
  %conv.i.i23 = trunc i32 %16 to i8
  %17 = ptrtoint ptr %lvds_chip_slave_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %lvds_chip_slave_addr.i.i, align 4
  %conv1.i.i25 = trunc i32 %18 to i8
  %call.i.i26 = call i32 @viafb_i2c_readbyte(i8 noundef zeroext %conv.i.i23, i8 noundef zeroext %conv1.i.i25, i8 noundef zeroext 8, ptr noundef nonnull %data.i.i21) #3
  %19 = ptrtoint ptr %data.i.i21 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %data.i.i21, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i.i21) #3
  %21 = and i8 %20, 15
  %or.i29 = or i8 %21, -32
  br label %if.end

if.else:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i.i34) #3
  %22 = ptrtoint ptr %data.i.i34 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 -1, ptr %data.i.i34, align 1, !annotation !23
  %23 = ptrtoint ptr %i2c_port.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %i2c_port.i.i, align 4
  %conv.i.i36 = trunc i32 %24 to i8
  %25 = ptrtoint ptr %lvds_chip_slave_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %lvds_chip_slave_addr.i.i, align 4
  %conv1.i.i38 = trunc i32 %26 to i8
  %call.i.i39 = call i32 @viafb_i2c_readbyte(i8 noundef zeroext %conv.i.i36, i8 noundef zeroext %conv1.i.i38, i8 noundef zeroext 8, ptr noundef nonnull %data.i.i34) #3
  %27 = ptrtoint ptr %data.i.i34 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %data.i.i34, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i.i34) #3
  %29 = and i8 %28, 15
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %.sink = phi i8 [ %29, %if.else ], [ %or.i29, %if.then ]
  %30 = ptrtoint ptr %i2c_port.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %i2c_port.i.i, align 4
  %conv5.i43 = trunc i32 %31 to i8
  %32 = ptrtoint ptr %lvds_chip_slave_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %lvds_chip_slave_addr.i.i, align 4
  %conv6.i44 = trunc i32 %33 to i8
  %call9.i46 = call i32 @viafb_i2c_writebyte(i8 noundef zeroext %conv5.i43, i8 noundef zeroext %conv6.i44, i8 noundef zeroext 8, i8 noundef zeroext %.sink) #3
  %LCDDithering = getelementptr inbounds %struct.lvds_setting_information, ptr %plvds_setting_info, i32 0, i32 5
  %34 = ptrtoint ptr %LCDDithering to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %LCDDithering, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool1.not = icmp eq i32 %35, 0
  br i1 %tobool1.not, label %if.else3, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i.i47) #3
  %36 = ptrtoint ptr %data.i.i47 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 -1, ptr %data.i.i47, align 1, !annotation !23
  %37 = ptrtoint ptr %i2c_port.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %i2c_port.i.i, align 4
  %conv.i.i49 = trunc i32 %38 to i8
  %39 = ptrtoint ptr %lvds_chip_slave_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %lvds_chip_slave_addr.i.i, align 4
  %conv1.i.i51 = trunc i32 %40 to i8
  %call.i.i52 = call i32 @viafb_i2c_readbyte(i8 noundef zeroext %conv.i.i49, i8 noundef zeroext %conv1.i.i51, i8 noundef zeroext 10, ptr noundef nonnull %data.i.i47) #3
  %41 = ptrtoint ptr %data.i.i47 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %data.i.i47, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i.i47) #3
  %43 = and i8 %42, -113
  %or.i55 = or i8 %43, 80
  br label %if.end4

if.else3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i.i60) #3
  %44 = ptrtoint ptr %data.i.i60 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 -1, ptr %data.i.i60, align 1, !annotation !23
  %45 = ptrtoint ptr %i2c_port.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %i2c_port.i.i, align 4
  %conv.i.i62 = trunc i32 %46 to i8
  %47 = ptrtoint ptr %lvds_chip_slave_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %lvds_chip_slave_addr.i.i, align 4
  %conv1.i.i64 = trunc i32 %48 to i8
  %call.i.i65 = call i32 @viafb_i2c_readbyte(i8 noundef zeroext %conv.i.i62, i8 noundef zeroext %conv1.i.i64, i8 noundef zeroext 10, ptr noundef nonnull %data.i.i60) #3
  %49 = ptrtoint ptr %data.i.i60 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %data.i.i60, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i.i60) #3
  %51 = and i8 %50, -113
  br label %if.end4

if.end4:                                          ; preds = %if.else3, %if.then2
  %.sink77 = phi i8 [ %51, %if.else3 ], [ %or.i55, %if.then2 ]
  %52 = ptrtoint ptr %i2c_port.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %i2c_port.i.i, align 4
  %conv5.i69 = trunc i32 %53 to i8
  %54 = ptrtoint ptr %lvds_chip_slave_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %lvds_chip_slave_addr.i.i, align 4
  %conv6.i70 = trunc i32 %55 to i8
  %call9.i72 = call i32 @viafb_i2c_writebyte(i8 noundef zeroext %conv5.i69, i8 noundef zeroext %conv6.i70, i8 noundef zeroext 10, i8 noundef zeroext %.sink77) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @viafb_enable_lvds_vt1636(ptr nocapture noundef readnone %plvds_setting_info, ptr nocapture noundef readonly %plvds_chip_info) local_unnamed_addr #0 align 64 {
entry:
  %data.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i.i) #3
  %0 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %data.i.i, align 1, !annotation !23
  %i2c_port.i.i = getelementptr inbounds %struct.lvds_chip_information, ptr %plvds_chip_info, i32 0, i32 3
  %1 = ptrtoint ptr %i2c_port.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %i2c_port.i.i, align 4
  %conv.i.i = trunc i32 %2 to i8
  %lvds_chip_slave_addr.i.i = getelementptr inbounds %struct.lvds_chip_information, ptr %plvds_chip_info, i32 0, i32 1
  %3 = ptrtoint ptr %lvds_chip_slave_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %lvds_chip_slave_addr.i.i, align 4
  %conv1.i.i = trunc i32 %4 to i8
  %call.i.i = call i32 @viafb_i2c_readbyte(i8 noundef zeroext %conv.i.i, i8 noundef zeroext %conv1.i.i, i8 noundef zeroext 16, ptr noundef nonnull %data.i.i) #3
  %5 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %data.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i.i) #3
  %or.i = or i8 %6, 32
  %7 = ptrtoint ptr %i2c_port.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %i2c_port.i.i, align 4
  %conv5.i = trunc i32 %8 to i8
  %9 = ptrtoint ptr %lvds_chip_slave_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %lvds_chip_slave_addr.i.i, align 4
  %conv6.i = trunc i32 %10 to i8
  %call9.i = call i32 @viafb_i2c_writebyte(i8 noundef zeroext %conv5.i, i8 noundef zeroext %conv6.i, i8 noundef zeroext 16, i8 noundef zeroext %or.i) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @viafb_disable_lvds_vt1636(ptr nocapture noundef readnone %plvds_setting_info, ptr nocapture noundef readonly %plvds_chip_info) local_unnamed_addr #0 align 64 {
entry:
  %data.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i.i) #3
  %0 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %data.i.i, align 1, !annotation !23
  %i2c_port.i.i = getelementptr inbounds %struct.lvds_chip_information, ptr %plvds_chip_info, i32 0, i32 3
  %1 = ptrtoint ptr %i2c_port.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %i2c_port.i.i, align 4
  %conv.i.i = trunc i32 %2 to i8
  %lvds_chip_slave_addr.i.i = getelementptr inbounds %struct.lvds_chip_information, ptr %plvds_chip_info, i32 0, i32 1
  %3 = ptrtoint ptr %lvds_chip_slave_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %lvds_chip_slave_addr.i.i, align 4
  %conv1.i.i = trunc i32 %4 to i8
  %call.i.i = call i32 @viafb_i2c_readbyte(i8 noundef zeroext %conv.i.i, i8 noundef zeroext %conv1.i.i, i8 noundef zeroext 16, ptr noundef nonnull %data.i.i) #3
  %5 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %data.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i.i) #3
  %7 = and i8 %6, -33
  %8 = ptrtoint ptr %i2c_port.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %i2c_port.i.i, align 4
  %conv5.i = trunc i32 %9 to i8
  %10 = ptrtoint ptr %lvds_chip_slave_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %lvds_chip_slave_addr.i.i, align 4
  %conv6.i = trunc i32 %11 to i8
  %call9.i = call i32 @viafb_i2c_writebyte(i8 noundef zeroext %conv5.i, i8 noundef zeroext %conv6.i, i8 noundef zeroext 16, i8 noundef zeroext %7) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @viafb_lvds_identify_vt1636(i8 noundef zeroext %i2c_adapter) local_unnamed_addr #0 align 64 {
entry:
  %Buffer = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %Buffer) #3
  %0 = ptrtoint ptr %Buffer to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %Buffer, align 1, !annotation !23
  %1 = getelementptr inbounds [2 x i8], ptr %Buffer, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %1, align 1, !annotation !23
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viaparinfo to i32))
  %3 = load ptr, ptr @viaparinfo, align 4
  %chip_info = getelementptr inbounds %struct.viafb_par, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chip_info, align 4
  %lvds_chip_slave_addr = getelementptr inbounds %struct.chip_information, ptr %5, i32 0, i32 4, i32 1
  %6 = ptrtoint ptr %lvds_chip_slave_addr to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 128, ptr %lvds_chip_slave_addr, align 4
  %call = call i32 @viafb_i2c_readbyte(i8 noundef zeroext %i2c_adapter, i8 noundef zeroext -128, i8 noundef zeroext 0, ptr noundef nonnull %Buffer) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call i32 @viafb_i2c_readbyte(i8 noundef zeroext %i2c_adapter, i8 noundef zeroext -128, i8 noundef zeroext 1, ptr noundef %1) #3
  %7 = ptrtoint ptr %Buffer to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %Buffer, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %8)
  %cmp = icmp eq i8 %8, 6
  br i1 %cmp, label %land.lhs.true, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %10)
  %cmp7 = icmp eq i8 %10, 17
  br i1 %cmp7, label %if.end10, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end10:                                         ; preds = %land.lhs.true
  %call12 = call i32 @viafb_i2c_readbyte(i8 noundef zeroext %i2c_adapter, i8 noundef zeroext -128, i8 noundef zeroext 2, ptr noundef nonnull %Buffer) #3
  %call14 = call i32 @viafb_i2c_readbyte(i8 noundef zeroext %i2c_adapter, i8 noundef zeroext -128, i8 noundef zeroext 3, ptr noundef %1) #3
  %11 = ptrtoint ptr %Buffer to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %Buffer, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 69, i8 %12)
  %cmp17 = icmp eq i8 %12, 69
  br i1 %cmp17, label %land.lhs.true19, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

land.lhs.true19:                                  ; preds = %if.end10
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 51, i8 %14)
  %cmp22 = icmp eq i8 %14, 51
  br i1 %cmp22, label %if.then24, label %land.lhs.true19.cleanup_crit_edge

land.lhs.true19.cleanup_crit_edge:                ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then24:                                        ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viaparinfo to i32))
  %15 = load ptr, ptr @viaparinfo, align 4
  %chip_info25 = getelementptr inbounds %struct.viafb_par, ptr %15, i32 0, i32 11
  %16 = ptrtoint ptr %chip_info25 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %chip_info25, align 4
  %lvds_chip_info26 = getelementptr inbounds %struct.chip_information, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %lvds_chip_info26 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 14, ptr %lvds_chip_info26, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then24, %land.lhs.true19.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %if.then24 ], [ false, %entry.cleanup_crit_edge ], [ false, %land.lhs.true.cleanup_crit_edge ], [ false, %if.end.cleanup_crit_edge ], [ false, %land.lhs.true19.cleanup_crit_edge ], [ false, %if.end10.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %Buffer) #3
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @viafb_vt1636_patch_skew_on_vt3324(ptr nocapture noundef readonly %plvds_setting_info, ptr nocapture noundef readonly %plvds_chip_info) local_unnamed_addr #0 align 64 {
entry:
  %data.i.i20.i = alloca i8, align 1
  %data.i.i.i = alloca i8, align 1
  %dpa.sroa.4 = alloca i8, align 1
  %dpa_16x12.sroa.4 = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %dpa.sroa.4)
  %0 = ptrtoint ptr %dpa.sroa.4 to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %dpa.sroa.4, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %dpa_16x12.sroa.4)
  %1 = ptrtoint ptr %dpa_16x12.sroa.4 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 3, ptr %dpa_16x12.sroa.4, align 1
  %vclk = getelementptr inbounds %struct.lvds_setting_information, ptr %plvds_setting_info, i32 0, i32 7
  %2 = ptrtoint ptr %vclk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vclk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 30000000, i32 %3)
  %cmp.i = icmp ult i32 %3, 30000000
  br i1 %cmp.i, label %entry.get_clk_range_index.exit_crit_edge, label %if.else.i

entry.get_clk_range_index.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %get_clk_range_index.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 50000000, i32 %3)
  %cmp1.i = icmp ult i32 %3, 50000000
  br i1 %cmp1.i, label %if.else.i.get_clk_range_index.exit_crit_edge, label %if.else3.i

if.else.i.get_clk_range_index.exit_crit_edge:     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %get_clk_range_index.exit

if.else3.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 70000000, i32 %3)
  %cmp4.i = icmp ult i32 %3, 70000000
  br i1 %cmp4.i, label %if.else3.i.get_clk_range_index.exit_crit_edge, label %if.else6.i

if.else3.i.get_clk_range_index.exit_crit_edge:    ; preds = %if.else3.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %get_clk_range_index.exit

if.else6.i:                                       ; preds = %if.else3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 100000000, i32 %3)
  %cmp7.i = icmp ult i32 %3, 100000000
  br i1 %cmp7.i, label %if.else6.i.get_clk_range_index.exit_crit_edge, label %if.else9.i

if.else6.i.get_clk_range_index.exit_crit_edge:    ; preds = %if.else6.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %get_clk_range_index.exit

if.else9.i:                                       ; preds = %if.else6.i
  call void @__sanitizer_cov_trace_pc() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 150000000, i32 %3)
  %cmp10.i = icmp ult i32 %3, 150000000
  %..i = select i1 %cmp10.i, i32 4, i32 5
  br label %get_clk_range_index.exit

get_clk_range_index.exit:                         ; preds = %if.else9.i, %if.else6.i.get_clk_range_index.exit_crit_edge, %if.else3.i.get_clk_range_index.exit_crit_edge, %if.else.i.get_clk_range_index.exit_crit_edge, %entry.get_clk_range_index.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %entry.get_clk_range_index.exit_crit_edge ], [ 1, %if.else.i.get_clk_range_index.exit_crit_edge ], [ 2, %if.else3.i.get_clk_range_index.exit_crit_edge ], [ 3, %if.else6.i.get_clk_range_index.exit_crit_edge ], [ %..i, %if.else9.i ]
  %output_interface = getelementptr inbounds %struct.lvds_chip_information, ptr %plvds_chip_info, i32 0, i32 2
  %4 = ptrtoint ptr %output_interface to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %output_interface, align 4
  %arrayidx = getelementptr [6 x %struct.GFX_DPA_SETTING], ptr @GFX_DPA_SETTING_TBL_VT3324, i32 0, i32 %retval.0.i
  tail call void @viafb_set_dpa_gfx(i32 noundef %5, ptr noundef %arrayidx) #3
  %lcd_panel_hres = getelementptr inbounds %struct.lvds_setting_information, ptr %plvds_setting_info, i32 0, i32 1
  %6 = ptrtoint ptr %lcd_panel_hres to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %lcd_panel_hres, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1600, i32 %7)
  %cmp = icmp eq i32 %7, 1600
  br i1 %cmp, label %land.lhs.true, label %get_clk_range_index.exit.if.else_crit_edge

get_clk_range_index.exit.if.else_crit_edge:       ; preds = %get_clk_range_index.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else

land.lhs.true:                                    ; preds = %get_clk_range_index.exit
  %lcd_panel_vres = getelementptr inbounds %struct.lvds_setting_information, ptr %plvds_setting_info, i32 0, i32 2
  %8 = ptrtoint ptr %lcd_panel_vres to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %lcd_panel_vres, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1200, i32 %9)
  %cmp1 = icmp eq i32 %9, 1200
  br i1 %cmp1, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %get_clk_range_index.exit.if.else_crit_edge
  br label %if.end

if.end:                                           ; preds = %if.else, %land.lhs.true.if.end_crit_edge
  %pdpa.0.sroa.speculated = phi i8 [ 0, %if.else ], [ 11, %land.lhs.true.if.end_crit_edge ]
  %pdpa.0.sroa.phi = phi ptr [ %dpa.sroa.4, %if.else ], [ %dpa_16x12.sroa.4, %land.lhs.true.if.end_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i.i.i) #3
  %10 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -1, ptr %data.i.i.i, align 1, !annotation !23
  %i2c_port.i.i.i = getelementptr inbounds %struct.lvds_chip_information, ptr %plvds_chip_info, i32 0, i32 3
  %11 = ptrtoint ptr %i2c_port.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %i2c_port.i.i.i, align 4
  %conv.i.i.i = trunc i32 %12 to i8
  %lvds_chip_slave_addr.i.i.i = getelementptr inbounds %struct.lvds_chip_information, ptr %plvds_chip_info, i32 0, i32 1
  %13 = ptrtoint ptr %lvds_chip_slave_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %lvds_chip_slave_addr.i.i.i, align 4
  %conv1.i.i.i = trunc i32 %14 to i8
  %call.i.i.i = call i32 @viafb_i2c_readbyte(i8 noundef zeroext %conv.i.i.i, i8 noundef zeroext %conv1.i.i.i, i8 noundef zeroext 9, ptr noundef nonnull %data.i.i.i) #3
  %15 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %data.i.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i.i.i) #3
  %17 = and i8 %16, -32
  %or.i38.i = or i8 %17, %pdpa.0.sroa.speculated
  %18 = ptrtoint ptr %i2c_port.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %i2c_port.i.i.i, align 4
  %conv5.i.i = trunc i32 %19 to i8
  %20 = ptrtoint ptr %lvds_chip_slave_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %lvds_chip_slave_addr.i.i.i, align 4
  %conv6.i.i = trunc i32 %21 to i8
  %call9.i.i = call i32 @viafb_i2c_writebyte(i8 noundef zeroext %conv5.i.i, i8 noundef zeroext %conv6.i.i, i8 noundef zeroext 9, i8 noundef zeroext %or.i38.i) #3
  %22 = ptrtoint ptr %pdpa.0.sroa.phi to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %pdpa.0.sroa.phi, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i.i20.i) #3
  %24 = ptrtoint ptr %data.i.i20.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 -1, ptr %data.i.i20.i, align 1, !annotation !23
  %25 = ptrtoint ptr %i2c_port.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %i2c_port.i.i.i, align 4
  %conv.i.i26.i = trunc i32 %26 to i8
  %27 = ptrtoint ptr %lvds_chip_slave_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %lvds_chip_slave_addr.i.i.i, align 4
  %conv1.i.i28.i = trunc i32 %28 to i8
  %call.i.i29.i = call i32 @viafb_i2c_readbyte(i8 noundef zeroext %conv.i.i26.i, i8 noundef zeroext %conv1.i.i28.i, i8 noundef zeroext 8, ptr noundef nonnull %data.i.i20.i) #3
  %29 = ptrtoint ptr %data.i.i20.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %data.i.i20.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i.i20.i) #3
  %31 = and i8 %30, -16
  %or.i3339.i = or i8 %31, %23
  %32 = ptrtoint ptr %i2c_port.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %i2c_port.i.i.i, align 4
  %conv5.i34.i = trunc i32 %33 to i8
  %34 = ptrtoint ptr %lvds_chip_slave_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %lvds_chip_slave_addr.i.i.i, align 4
  %conv6.i35.i = trunc i32 %35 to i8
  %call9.i37.i = call i32 @viafb_i2c_writebyte(i8 noundef zeroext %conv5.i34.i, i8 noundef zeroext %conv6.i35.i, i8 noundef zeroext 8, i8 noundef zeroext %or.i3339.i) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dpa_16x12.sroa.4)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dpa.sroa.4)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @viafb_set_dpa_gfx(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @viafb_vt1636_patch_skew_on_vt3327(ptr nocapture noundef readonly %plvds_setting_info, ptr nocapture noundef readonly %plvds_chip_info) local_unnamed_addr #0 align 64 {
entry:
  %data.i.i20.i = alloca i8, align 1
  %data.i.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %vclk = getelementptr inbounds %struct.lvds_setting_information, ptr %plvds_setting_info, i32 0, i32 7
  %0 = ptrtoint ptr %vclk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vclk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 30000000, i32 %1)
  %cmp.i = icmp ult i32 %1, 30000000
  br i1 %cmp.i, label %entry.get_clk_range_index.exit_crit_edge, label %if.else.i

entry.get_clk_range_index.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %get_clk_range_index.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 50000000, i32 %1)
  %cmp1.i = icmp ult i32 %1, 50000000
  br i1 %cmp1.i, label %if.else.i.get_clk_range_index.exit_crit_edge, label %if.else3.i

if.else.i.get_clk_range_index.exit_crit_edge:     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %get_clk_range_index.exit

if.else3.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 70000000, i32 %1)
  %cmp4.i = icmp ult i32 %1, 70000000
  br i1 %cmp4.i, label %if.else3.i.get_clk_range_index.exit_crit_edge, label %if.else6.i

if.else3.i.get_clk_range_index.exit_crit_edge:    ; preds = %if.else3.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %get_clk_range_index.exit

if.else6.i:                                       ; preds = %if.else3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 100000000, i32 %1)
  %cmp7.i = icmp ult i32 %1, 100000000
  br i1 %cmp7.i, label %if.else6.i.get_clk_range_index.exit_crit_edge, label %if.else9.i

if.else6.i.get_clk_range_index.exit_crit_edge:    ; preds = %if.else6.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %get_clk_range_index.exit

if.else9.i:                                       ; preds = %if.else6.i
  call void @__sanitizer_cov_trace_pc() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 150000000, i32 %1)
  %cmp10.i = icmp ult i32 %1, 150000000
  %..i = select i1 %cmp10.i, i32 4, i32 5
  br label %get_clk_range_index.exit

get_clk_range_index.exit:                         ; preds = %if.else9.i, %if.else6.i.get_clk_range_index.exit_crit_edge, %if.else3.i.get_clk_range_index.exit_crit_edge, %if.else.i.get_clk_range_index.exit_crit_edge, %entry.get_clk_range_index.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %entry.get_clk_range_index.exit_crit_edge ], [ 1, %if.else.i.get_clk_range_index.exit_crit_edge ], [ 2, %if.else3.i.get_clk_range_index.exit_crit_edge ], [ 3, %if.else6.i.get_clk_range_index.exit_crit_edge ], [ %..i, %if.else9.i ]
  %output_interface = getelementptr inbounds %struct.lvds_chip_information, ptr %plvds_chip_info, i32 0, i32 2
  %2 = ptrtoint ptr %output_interface to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %output_interface, align 4
  %arrayidx = getelementptr [0 x %struct.GFX_DPA_SETTING], ptr @GFX_DPA_SETTING_TBL_VT3327, i32 0, i32 %retval.0.i
  tail call void @viafb_set_dpa_gfx(i32 noundef %3, ptr noundef %arrayidx) #3
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i.i.i) #3
  %4 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %data.i.i.i, align 1, !annotation !23
  %i2c_port.i.i.i = getelementptr inbounds %struct.lvds_chip_information, ptr %plvds_chip_info, i32 0, i32 3
  %5 = ptrtoint ptr %i2c_port.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %i2c_port.i.i.i, align 4
  %conv.i.i.i = trunc i32 %6 to i8
  %lvds_chip_slave_addr.i.i.i = getelementptr inbounds %struct.lvds_chip_information, ptr %plvds_chip_info, i32 0, i32 1
  %7 = ptrtoint ptr %lvds_chip_slave_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %lvds_chip_slave_addr.i.i.i, align 4
  %conv1.i.i.i = trunc i32 %8 to i8
  %call.i.i.i = call i32 @viafb_i2c_readbyte(i8 noundef zeroext %conv.i.i.i, i8 noundef zeroext %conv1.i.i.i, i8 noundef zeroext 9, ptr noundef nonnull %data.i.i.i) #3
  %9 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %data.i.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i.i.i) #3
  %11 = and i8 %10, -32
  %12 = ptrtoint ptr %i2c_port.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %i2c_port.i.i.i, align 4
  %conv5.i.i = trunc i32 %13 to i8
  %14 = ptrtoint ptr %lvds_chip_slave_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %lvds_chip_slave_addr.i.i.i, align 4
  %conv6.i.i = trunc i32 %15 to i8
  %call9.i.i = call i32 @viafb_i2c_writebyte(i8 noundef zeroext %conv5.i.i, i8 noundef zeroext %conv6.i.i, i8 noundef zeroext 9, i8 noundef zeroext %11) #3
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i.i20.i) #3
  %16 = ptrtoint ptr %data.i.i20.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 -1, ptr %data.i.i20.i, align 1, !annotation !23
  %17 = ptrtoint ptr %i2c_port.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %i2c_port.i.i.i, align 4
  %conv.i.i26.i = trunc i32 %18 to i8
  %19 = ptrtoint ptr %lvds_chip_slave_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %lvds_chip_slave_addr.i.i.i, align 4
  %conv1.i.i28.i = trunc i32 %20 to i8
  %call.i.i29.i = call i32 @viafb_i2c_readbyte(i8 noundef zeroext %conv.i.i26.i, i8 noundef zeroext %conv1.i.i28.i, i8 noundef zeroext 8, ptr noundef nonnull %data.i.i20.i) #3
  %21 = ptrtoint ptr %data.i.i20.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %data.i.i20.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i.i20.i) #3
  %23 = and i8 %22, -16
  %24 = ptrtoint ptr %i2c_port.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %i2c_port.i.i.i, align 4
  %conv5.i34.i = trunc i32 %25 to i8
  %26 = ptrtoint ptr %lvds_chip_slave_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %lvds_chip_slave_addr.i.i.i, align 4
  %conv6.i35.i = trunc i32 %27 to i8
  %call9.i37.i = call i32 @viafb_i2c_writebyte(i8 noundef zeroext %conv5.i34.i, i8 noundef zeroext %conv6.i35.i, i8 noundef zeroext 8, i8 noundef zeroext %23) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @viafb_vt1636_patch_skew_on_vt3364(ptr nocapture noundef readonly %plvds_setting_info, ptr nocapture noundef readonly %plvds_chip_info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %vclk = getelementptr inbounds %struct.lvds_setting_information, ptr %plvds_setting_info, i32 0, i32 7
  %0 = ptrtoint ptr %vclk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vclk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 30000000, i32 %1)
  %cmp.i = icmp ult i32 %1, 30000000
  br i1 %cmp.i, label %entry.get_clk_range_index.exit_crit_edge, label %if.else.i

entry.get_clk_range_index.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %get_clk_range_index.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 50000000, i32 %1)
  %cmp1.i = icmp ult i32 %1, 50000000
  br i1 %cmp1.i, label %if.else.i.get_clk_range_index.exit_crit_edge, label %if.else3.i

if.else.i.get_clk_range_index.exit_crit_edge:     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %get_clk_range_index.exit

if.else3.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 70000000, i32 %1)
  %cmp4.i = icmp ult i32 %1, 70000000
  br i1 %cmp4.i, label %if.else3.i.get_clk_range_index.exit_crit_edge, label %if.else6.i

if.else3.i.get_clk_range_index.exit_crit_edge:    ; preds = %if.else3.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %get_clk_range_index.exit

if.else6.i:                                       ; preds = %if.else3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 100000000, i32 %1)
  %cmp7.i = icmp ult i32 %1, 100000000
  br i1 %cmp7.i, label %if.else6.i.get_clk_range_index.exit_crit_edge, label %if.else9.i

if.else6.i.get_clk_range_index.exit_crit_edge:    ; preds = %if.else6.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %get_clk_range_index.exit

if.else9.i:                                       ; preds = %if.else6.i
  call void @__sanitizer_cov_trace_pc() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 150000000, i32 %1)
  %cmp10.i = icmp ult i32 %1, 150000000
  %..i = select i1 %cmp10.i, i32 4, i32 5
  br label %get_clk_range_index.exit

get_clk_range_index.exit:                         ; preds = %if.else9.i, %if.else6.i.get_clk_range_index.exit_crit_edge, %if.else3.i.get_clk_range_index.exit_crit_edge, %if.else.i.get_clk_range_index.exit_crit_edge, %entry.get_clk_range_index.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %entry.get_clk_range_index.exit_crit_edge ], [ 1, %if.else.i.get_clk_range_index.exit_crit_edge ], [ 2, %if.else3.i.get_clk_range_index.exit_crit_edge ], [ 3, %if.else6.i.get_clk_range_index.exit_crit_edge ], [ %..i, %if.else9.i ]
  %output_interface = getelementptr inbounds %struct.lvds_chip_information, ptr %plvds_chip_info, i32 0, i32 2
  %2 = ptrtoint ptr %output_interface to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %output_interface, align 4
  %arrayidx = getelementptr [6 x %struct.GFX_DPA_SETTING], ptr @GFX_DPA_SETTING_TBL_VT3364, i32 0, i32 %retval.0.i
  tail call void @viafb_set_dpa_gfx(i32 noundef %3, ptr noundef %arrayidx) #3
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12}
!llvm.module.flags = !{!14, !15, !16, !17, !18, !19, !20, !21}
!llvm.ident = !{!22}

!0 = !{ptr @common_init_data, !1, !"common_init_data", i1 false, i1 false}
!1 = !{!"../drivers/video/fbdev/via/vt1636.c", i32 12, i32 28}
!2 = distinct !{null, !3, !"dual_channel_enable_data", i1 false, i1 false}
!3 = !{!"../drivers/video/fbdev/via/vt1636.c", i32 33, i32 28}
!4 = distinct !{null, !5, !"single_channel_enable_data", i1 false, i1 false}
!5 = !{!"../drivers/video/fbdev/via/vt1636.c", i32 34, i32 28}
!6 = distinct !{null, !7, !"dithering_enable_data", i1 false, i1 false}
!7 = !{!"../drivers/video/fbdev/via/vt1636.c", i32 35, i32 28}
!8 = distinct !{null, !9, !"dithering_disable_data", i1 false, i1 false}
!9 = !{!"../drivers/video/fbdev/via/vt1636.c", i32 36, i32 28}
!10 = distinct !{null, !11, !"vdd_on_data", i1 false, i1 false}
!11 = !{!"../drivers/video/fbdev/via/vt1636.c", i32 37, i32 28}
!12 = distinct !{null, !13, !"vdd_off_data", i1 false, i1 false}
!13 = !{!"../drivers/video/fbdev/via/vt1636.c", i32 38, i32 28}
!14 = !{i32 1, !"wchar_size", i32 2}
!15 = !{i32 1, !"min_enum_size", i32 4}
!16 = !{i32 8, !"branch-target-enforcement", i32 0}
!17 = !{i32 8, !"sign-return-address", i32 0}
!18 = !{i32 8, !"sign-return-address-all", i32 0}
!19 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!20 = !{i32 7, !"uwtable", i32 1}
!21 = !{i32 7, !"frame-pointer", i32 2}
!22 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!23 = !{!"auto-init"}
