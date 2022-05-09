; ModuleID = '/llk/IR_all_yes/drivers/video/fbdev/via/via_utility.c_pt.bc'
source_filename = "../drivers/video/fbdev/via/via_utility.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.viafb_par = type { i8, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.chip_information = type { i32, i32, i32, %struct.tmds_chip_information, %struct.lvds_chip_information, %struct.lvds_chip_information }
%struct.tmds_chip_information = type { i32, i32, i32, i32 }
%struct.lvds_chip_information = type { i32, i32, i32, i32 }

@viaparinfo = external dso_local local_unnamed_addr global ptr, align 4
@viafb_lcd_panel_id = external dso_local local_unnamed_addr global i32, align 4
@viafb_DeviceStatus = external dso_local local_unnamed_addr global i32, align 4
@__sancov_gen_cov_switch_values = internal global [15 x i64] [i64 13, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12]
@__sancov_gen_cov_switch_values.1 = internal global [11 x i64] [i64 9, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 8, i64 9, i64 10]
@__sancov_gen_cov_switch_values.2 = internal global [11 x i64] [i64 9, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 8, i64 9, i64 10]
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @viafb_get_device_support_state(ptr nocapture noundef %support_state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %support_state to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %support_state, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viaparinfo to i32))
  %1 = load ptr, ptr @viaparinfo, align 4
  %chip_info = getelementptr inbounds %struct.viafb_par, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip_info, align 4
  %tmds_chip_info = getelementptr inbounds %struct.chip_information, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %tmds_chip_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tmds_chip_info, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp = icmp eq i32 %5, 1
  %spec.store.select = select i1 %cmp, i32 9, i32 1
  %6 = ptrtoint ptr %support_state to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %spec.store.select, ptr %support_state, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viaparinfo to i32))
  %7 = load ptr, ptr @viaparinfo, align 4
  %chip_info1 = getelementptr inbounds %struct.viafb_par, ptr %7, i32 0, i32 11
  %8 = ptrtoint ptr %chip_info1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %chip_info1, align 4
  %lvds_chip_info = getelementptr inbounds %struct.chip_information, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %lvds_chip_info to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %lvds_chip_info, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp2 = icmp eq i32 %11, 1
  br i1 %cmp2, label %if.then3, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.then3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %or4 = or i32 %spec.store.select, 2
  %12 = ptrtoint ptr %support_state to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %or4, ptr %support_state, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %entry.if.end5_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @viafb_get_device_connect_state(ptr nocapture noundef %connect_state) local_unnamed_addr #1 align 64 {
entry:
  %mobile = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %mobile) #6
  %0 = ptrtoint ptr %mobile to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %mobile, align 1
  %1 = ptrtoint ptr %connect_state to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %connect_state, align 4
  %call = tail call i32 @viafb_dvi_sense() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %connect_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %connect_state, align 4
  %or = or i32 %3, 8
  store i32 %or, ptr %connect_state, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call1 = call zeroext i1 @viafb_lcd_get_mobile_state(ptr noundef nonnull %mobile) #6
  %4 = ptrtoint ptr %mobile to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %mobile, align 1, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2.not = icmp eq i8 %5, 0
  br i1 %tobool2.not, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %connect_state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %connect_state, align 4
  %or4 = or i32 %7, 2
  store i32 %or4, ptr %connect_state, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %mobile) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @viafb_dvi_sense() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @viafb_lcd_get_mobile_state(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @viafb_lcd_get_support_expand_state(i32 noundef %xres, i32 noundef %yres) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafb_lcd_panel_id to i32))
  %0 = load i32, ptr @viafb_lcd_panel_id, align 4
  %1 = zext i32 %0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values)
  switch i32 %0, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb2
    i32 2, label %sw.bb8
    i32 3, label %sw.bb14
    i32 4, label %sw.bb20
    i32 5, label %sw.bb26
    i32 6, label %sw.bb32
    i32 7, label %sw.bb38
    i32 8, label %sw.bb44
    i32 9, label %sw.bb50
    i32 10, label %sw.bb56
    i32 11, label %sw.bb62
    i32 12, label %sw.bb68
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 640, i32 %xres)
  %cmp = icmp ult i32 %xres, 640
  call void @__sanitizer_cov_trace_const_cmp4(i32 480, i32 %yres)
  %cmp1 = icmp ult i32 %yres, 480
  %or.cond = and i1 %cmp, %cmp1
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 800, i32 %xres)
  %cmp3 = icmp ult i32 %xres, 800
  call void @__sanitizer_cov_trace_const_cmp4(i32 600, i32 %yres)
  %cmp5 = icmp ult i32 %yres, 600
  %or.cond98 = and i1 %cmp3, %cmp5
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %xres)
  %cmp9 = icmp ult i32 %xres, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %yres)
  %cmp11 = icmp ult i32 %yres, 768
  %or.cond99 = and i1 %cmp9, %cmp11
  br label %sw.epilog

sw.bb14:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1280, i32 %xres)
  %cmp15 = icmp ult i32 %xres, 1280
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %yres)
  %cmp17 = icmp ult i32 %yres, 768
  %or.cond100 = and i1 %cmp15, %cmp17
  br label %sw.epilog

sw.bb20:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1280, i32 %xres)
  %cmp21 = icmp ult i32 %xres, 1280
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %yres)
  %cmp23 = icmp ult i32 %yres, 1024
  %or.cond101 = and i1 %cmp21, %cmp23
  br label %sw.epilog

sw.bb26:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1400, i32 %xres)
  %cmp27 = icmp ult i32 %xres, 1400
  call void @__sanitizer_cov_trace_const_cmp4(i32 1050, i32 %yres)
  %cmp29 = icmp ult i32 %yres, 1050
  %or.cond102 = and i1 %cmp27, %cmp29
  br label %sw.epilog

sw.bb32:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1600, i32 %xres)
  %cmp33 = icmp ult i32 %xres, 1600
  call void @__sanitizer_cov_trace_const_cmp4(i32 1200, i32 %yres)
  %cmp35 = icmp ult i32 %yres, 1200
  %or.cond103 = and i1 %cmp33, %cmp35
  br label %sw.epilog

sw.bb38:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1366, i32 %xres)
  %cmp39 = icmp ult i32 %xres, 1366
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %yres)
  %cmp41 = icmp ult i32 %yres, 768
  %or.cond104 = and i1 %cmp39, %cmp41
  br label %sw.epilog

sw.bb44:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %xres)
  %cmp45 = icmp ult i32 %xres, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 600, i32 %yres)
  %cmp47 = icmp ult i32 %yres, 600
  %or.cond105 = and i1 %cmp45, %cmp47
  br label %sw.epilog

sw.bb50:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1280, i32 %xres)
  %cmp51 = icmp ult i32 %xres, 1280
  call void @__sanitizer_cov_trace_const_cmp4(i32 800, i32 %yres)
  %cmp53 = icmp ult i32 %yres, 800
  %or.cond106 = and i1 %cmp51, %cmp53
  br label %sw.epilog

sw.bb56:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 800, i32 %xres)
  %cmp57 = icmp ult i32 %xres, 800
  call void @__sanitizer_cov_trace_const_cmp4(i32 480, i32 %yres)
  %cmp59 = icmp ult i32 %yres, 480
  %or.cond107 = and i1 %cmp57, %cmp59
  br label %sw.epilog

sw.bb62:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1360, i32 %xres)
  %cmp63 = icmp ult i32 %xres, 1360
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %yres)
  %cmp65 = icmp ult i32 %yres, 768
  %or.cond108 = and i1 %cmp63, %cmp65
  br label %sw.epilog

sw.bb68:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 480, i32 %xres)
  %cmp69 = icmp ult i32 %xres, 480
  call void @__sanitizer_cov_trace_const_cmp4(i32 640, i32 %yres)
  %cmp71 = icmp ult i32 %yres, 640
  %or.cond109 = and i1 %cmp69, %cmp71
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb68, %sw.bb62, %sw.bb56, %sw.bb50, %sw.bb44, %sw.bb38, %sw.bb32, %sw.bb26, %sw.bb20, %sw.bb14, %sw.bb8, %sw.bb2, %sw.bb, %entry.sw.epilog_crit_edge
  %tobool = phi i1 [ false, %entry.sw.epilog_crit_edge ], [ %or.cond, %sw.bb ], [ %or.cond98, %sw.bb2 ], [ %or.cond99, %sw.bb8 ], [ %or.cond100, %sw.bb14 ], [ %or.cond101, %sw.bb20 ], [ %or.cond102, %sw.bb26 ], [ %or.cond103, %sw.bb32 ], [ %or.cond104, %sw.bb38 ], [ %or.cond105, %sw.bb44 ], [ %or.cond106, %sw.bb50 ], [ %or.cond107, %sw.bb56 ], [ %or.cond108, %sw.bb62 ], [ %or.cond109, %sw.bb68 ]
  ret i1 %tobool
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @viafb_set_gamma_table(i32 noundef %bpp, ptr nocapture noundef readonly %gamma_table) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafb_DeviceStatus to i32))
  %0 = load i32, ptr @viafb_DeviceStatus, align 4
  %and = and i32 %0, 1
  %shr119 = lshr i32 %0, 1
  %and.1 = and i32 %shr119, 1
  %spec.select.1 = add nuw nsw i32 %and.1, %and
  %shr.1120 = lshr i32 %0, 2
  %and.2 = and i32 %shr.1120, 1
  %spec.select.2 = add nuw nsw i32 %and.2, %spec.select.1
  %shr.2121 = lshr i32 %0, 3
  %and.3 = and i32 %shr.2121, 1
  %spec.select.3 = add nuw nsw i32 %and.3, %spec.select.2
  %shr.3122 = lshr i32 %0, 4
  %and.4 = and i32 %shr.3122, 1
  %spec.select.4 = add nuw nsw i32 %and.4, %spec.select.3
  %shr.4123 = lshr i32 %0, 5
  %and.5 = and i32 %shr.4123, 1
  %spec.select.5 = add nuw nsw i32 %and.5, %spec.select.4
  %shr.5124 = lshr i32 %0, 6
  %and.6 = and i32 %shr.5124, 1
  %spec.select.6 = add nuw nsw i32 %and.6, %spec.select.5
  %shr.6125 = lshr i32 %0, 7
  %and.7 = and i32 %shr.6125, 1
  %spec.select.7 = add nuw nsw i32 %and.7, %spec.select.6
  %shr.7126 = lshr i32 %0, 8
  %and.8 = and i32 %shr.7126, 1
  %spec.select.8 = add nuw nsw i32 %and.8, %spec.select.7
  %shr.8127 = lshr i32 %0, 9
  %and.9 = and i32 %shr.8127, 1
  %spec.select.9 = add nuw nsw i32 %and.9, %spec.select.8
  %shr.9128 = lshr i32 %0, 10
  %and.10 = and i32 %shr.9128, 1
  %spec.select.10 = add nuw nsw i32 %and.10, %spec.select.9
  %shr.10129 = lshr i32 %0, 11
  %and.11 = and i32 %shr.10129, 1
  %spec.select.11 = add nuw nsw i32 %and.11, %spec.select.10
  %shr.11130 = lshr i32 %0, 12
  %and.12 = and i32 %shr.11130, 1
  %spec.select.12 = add nuw nsw i32 %and.12, %spec.select.11
  %shr.12131 = lshr i32 %0, 13
  %and.13 = and i32 %shr.12131, 1
  %spec.select.13 = add nuw nsw i32 %and.13, %spec.select.12
  %shr.13132 = lshr i32 %0, 14
  %and.14 = and i32 %shr.13132, 1
  %spec.select.14 = add nuw nsw i32 %and.14, %spec.select.13
  %shr.14133 = lshr i32 %0, 15
  %and.15 = and i32 %shr.14133, 1
  %spec.select.15 = add nuw nsw i32 %and.15, %spec.select.14
  %shr.15134 = lshr i32 %0, 16
  %and.16 = and i32 %shr.15134, 1
  %spec.select.16 = add nuw nsw i32 %and.16, %spec.select.15
  %shr.16135 = lshr i32 %0, 17
  %and.17 = and i32 %shr.16135, 1
  %spec.select.17 = add nuw nsw i32 %and.17, %spec.select.16
  %shr.17136 = lshr i32 %0, 18
  %and.18 = and i32 %shr.17136, 1
  %spec.select.18 = add nuw nsw i32 %and.18, %spec.select.17
  %shr.18137 = lshr i32 %0, 19
  %and.19 = and i32 %shr.18137, 1
  %spec.select.19 = add nuw nsw i32 %and.19, %spec.select.18
  %shr.19138 = lshr i32 %0, 20
  %and.20 = and i32 %shr.19138, 1
  %spec.select.20 = add nuw nsw i32 %and.20, %spec.select.19
  %shr.20139 = lshr i32 %0, 21
  %and.21 = and i32 %shr.20139, 1
  %spec.select.21 = add nuw nsw i32 %and.21, %spec.select.20
  %shr.21140 = lshr i32 %0, 22
  %and.22 = and i32 %shr.21140, 1
  %spec.select.22 = add nuw nsw i32 %and.22, %spec.select.21
  %shr.22141 = lshr i32 %0, 23
  %and.23 = and i32 %shr.22141, 1
  %spec.select.23 = add nuw nsw i32 %and.23, %spec.select.22
  %shr.23142 = lshr i32 %0, 24
  %and.24 = and i32 %shr.23142, 1
  %spec.select.24 = add nuw nsw i32 %and.24, %spec.select.23
  %shr.24143 = lshr i32 %0, 25
  %and.25 = and i32 %shr.24143, 1
  %spec.select.25 = add nuw nsw i32 %and.25, %spec.select.24
  %shr.25144 = lshr i32 %0, 26
  %and.26 = and i32 %shr.25144, 1
  %spec.select.26 = add nuw nsw i32 %and.26, %spec.select.25
  %shr.26145 = lshr i32 %0, 27
  %and.27 = and i32 %shr.26145, 1
  %spec.select.27 = add nuw nsw i32 %and.27, %spec.select.26
  %shr.27118 = lshr i32 %0, 28
  %and.28 = and i32 %shr.27118, 1
  %spec.select.28 = add nuw nsw i32 %and.28, %spec.select.27
  %shr.28117 = lshr i32 %0, 29
  %and.29 = and i32 %shr.28117, 1
  %spec.select.29 = add nuw nsw i32 %and.29, %spec.select.28
  %shr.29116 = lshr i32 %0, 30
  %and.30 = and i32 %shr.29116, 1
  %spec.select.30 = add nuw nsw i32 %and.30, %spec.select.29
  %shr.30115 = lshr i32 %0, 31
  %spec.select.31 = add nuw nsw i32 %shr.30115, %spec.select.30
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %bpp)
  %cmp2 = icmp eq i32 %bpp, 8
  br i1 %cmp2, label %entry.cleanup_crit_edge, label %if.end4

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viaparinfo to i32))
  %1 = load ptr, ptr @viaparinfo, align 4
  %chip_info = getelementptr inbounds %struct.viafb_par, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip_info, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %5, label %if.end4.sw.epilog_crit_edge [
    i32 1, label %if.end4.sw.bb_crit_edge
    i32 2, label %if.end4.sw.bb_crit_edge146
    i32 3, label %if.end4.sw.bb5_crit_edge
    i32 4, label %if.end4.sw.bb5_crit_edge147
    i32 5, label %if.end4.sw.bb5_crit_edge148
    i32 6, label %if.end4.sw.bb5_crit_edge149
    i32 8, label %if.end4.sw.bb5_crit_edge150
    i32 9, label %if.end4.sw.bb5_crit_edge151
    i32 10, label %if.end4.sw.bb5_crit_edge152
  ]

if.end4.sw.bb5_crit_edge152:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb5

if.end4.sw.bb5_crit_edge151:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb5

if.end4.sw.bb5_crit_edge150:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb5

if.end4.sw.bb5_crit_edge149:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb5

if.end4.sw.bb5_crit_edge148:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb5

if.end4.sw.bb5_crit_edge147:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb5

if.end4.sw.bb5_crit_edge:                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb5

if.end4.sw.bb_crit_edge146:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.end4.sw.bb_crit_edge:                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.end4.sw.epilog_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end4.sw.bb_crit_edge, %if.end4.sw.bb_crit_edge146
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !10
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 22) #6, !srcloc !11
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr)) #6, !srcloc !12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !14
  tail call void @arm_heavy_mb() #6
  %or.i = or i8 %7, -128
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %or.i) #6, !srcloc !11
  br label %sw.epilog

sw.bb5:                                           ; preds = %if.end4.sw.bb5_crit_edge, %if.end4.sw.bb5_crit_edge147, %if.end4.sw.bb5_crit_edge148, %if.end4.sw.bb5_crit_edge149, %if.end4.sw.bb5_crit_edge150, %if.end4.sw.bb5_crit_edge151, %if.end4.sw.bb5_crit_edge152
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !10
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 51) #6, !srcloc !11
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #6, !srcloc !12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !14
  tail call void @arm_heavy_mb() #6
  %or.i103 = or i8 %8, -128
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %or.i103) #6, !srcloc !11
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb5, %sw.bb, %if.end4.sw.epilog_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !15
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 26) #6, !srcloc !11
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr)) #6, !srcloc !12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !10
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 26) #6, !srcloc !11
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr)) #6, !srcloc !12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !14
  tail call void @arm_heavy_mb() #6
  %and15.i104 = and i8 %10, -2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %and15.i104) #6, !srcloc !11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !17
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873400 to ptr), i8 0) #6, !srcloc !11
  br label %do.body11

do.body11:                                        ; preds = %do.body11.do.body11_crit_edge, %sw.epilog
  %i.1112 = phi i32 [ 0, %sw.epilog ], [ %inc33, %do.body11.do.body11_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !18
  tail call void @arm_heavy_mb() #6
  %arrayidx = getelementptr i32, ptr %gamma_table, i32 %i.1112
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 4
  %shr14 = lshr i32 %12, 16
  %conv15 = trunc i32 %shr14 to i8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873399 to ptr), i8 %conv15) #6, !srcloc !11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !19
  tail call void @arm_heavy_mb() #6
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx, align 4
  %shr21 = lshr i32 %14, 8
  %conv23 = trunc i32 %shr21 to i8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873399 to ptr), i8 %conv23) #6, !srcloc !11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !20
  tail call void @arm_heavy_mb() #6
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx, align 4
  %conv30 = trunc i32 %16 to i8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873399 to ptr), i8 %conv30) #6, !srcloc !11
  %inc33 = add nuw nsw i32 %i.1112, 1
  %exitcond.not = icmp eq i32 %inc33, 256
  br i1 %exitcond.not, label %for.end34, label %do.body11.do.body11_crit_edge

do.body11.do.body11_crit_edge:                    ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body11

for.end34:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %spec.select.31)
  %cmp35 = icmp sgt i32 %spec.select.31, 1
  br i1 %cmp35, label %land.lhs.true, label %for.end34.if.end79_crit_edge

for.end34.if.end79_crit_edge:                     ; preds = %for.end34
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end79

land.lhs.true:                                    ; preds = %for.end34
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viaparinfo to i32))
  %17 = load ptr, ptr @viaparinfo, align 4
  %chip_info37 = getelementptr inbounds %struct.viafb_par, ptr %17, i32 0, i32 11
  %18 = ptrtoint ptr %chip_info37 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %chip_info37, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %cmp39 = icmp eq i32 %21, 1
  br i1 %cmp39, label %land.lhs.true41, label %land.lhs.true.if.then45_crit_edge

land.lhs.true.if.then45_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then45

land.lhs.true41:                                  ; preds = %land.lhs.true
  %gfx_chip_revision = getelementptr inbounds %struct.chip_information, ptr %19, i32 0, i32 1
  %22 = ptrtoint ptr %gfx_chip_revision to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %gfx_chip_revision, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %23)
  %cmp43 = icmp slt i32 %23, 15
  br i1 %cmp43, label %land.lhs.true41.if.end79_crit_edge, label %land.lhs.true41.if.then45_crit_edge

land.lhs.true41.if.then45_crit_edge:              ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then45

land.lhs.true41.if.end79_crit_edge:               ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end79

if.then45:                                        ; preds = %land.lhs.true41.if.then45_crit_edge, %land.lhs.true.if.then45_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !10
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 26) #6, !srcloc !11
  %24 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr)) #6, !srcloc !12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !14
  tail call void @arm_heavy_mb() #6
  %or.i106 = or i8 %24, 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %or.i106) #6, !srcloc !11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !10
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 106) #6, !srcloc !11
  %25 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #6, !srcloc !12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !14
  tail call void @arm_heavy_mb() #6
  %or.i108 = or i8 %25, 2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %or.i108) #6, !srcloc !11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !21
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873400 to ptr), i8 0) #6, !srcloc !11
  br label %do.body54

do.body54:                                        ; preds = %do.body54.do.body54_crit_edge, %if.then45
  %i.2113 = phi i32 [ 0, %if.then45 ], [ %inc77, %do.body54.do.body54_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !22
  tail call void @arm_heavy_mb() #6
  %arrayidx57 = getelementptr i32, ptr %gamma_table, i32 %i.2113
  %26 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx57, align 4
  %shr58 = lshr i32 %27, 16
  %conv59 = trunc i32 %shr58 to i8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873399 to ptr), i8 %conv59) #6, !srcloc !11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !23
  tail call void @arm_heavy_mb() #6
  %28 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx57, align 4
  %shr65 = lshr i32 %29, 8
  %conv67 = trunc i32 %shr65 to i8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873399 to ptr), i8 %conv67) #6, !srcloc !11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !24
  tail call void @arm_heavy_mb() #6
  %30 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx57, align 4
  %conv74 = trunc i32 %31 to i8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873399 to ptr), i8 %conv74) #6, !srcloc !11
  %inc77 = add nuw nsw i32 %i.2113, 1
  %exitcond114.not = icmp eq i32 %inc77, 256
  br i1 %exitcond114.not, label %do.body54.if.end79_crit_edge, label %do.body54.do.body54_crit_edge

do.body54.do.body54_crit_edge:                    ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body54

do.body54.if.end79_crit_edge:                     ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end79

if.end79:                                         ; preds = %do.body54.if.end79_crit_edge, %land.lhs.true41.if.end79_crit_edge, %for.end34.if.end79_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !25
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 26) #6, !srcloc !11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !26
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %9) #6, !srcloc !11
  br label %cleanup

cleanup:                                          ; preds = %if.end79, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @viafb_get_gamma_table(ptr nocapture noundef writeonly %gamma_table) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %4, label %entry.sw.epilog_crit_edge [
    i32 1, label %entry.sw.bb_crit_edge
    i32 2, label %entry.sw.bb_crit_edge24
    i32 3, label %entry.sw.bb1_crit_edge
    i32 4, label %entry.sw.bb1_crit_edge25
    i32 5, label %entry.sw.bb1_crit_edge26
    i32 6, label %entry.sw.bb1_crit_edge27
    i32 8, label %entry.sw.bb1_crit_edge28
    i32 9, label %entry.sw.bb1_crit_edge29
    i32 10, label %entry.sw.bb1_crit_edge30
  ]

entry.sw.bb1_crit_edge30:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1

entry.sw.bb1_crit_edge29:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1

entry.sw.bb1_crit_edge28:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1

entry.sw.bb1_crit_edge27:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1

entry.sw.bb1_crit_edge26:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1

entry.sw.bb1_crit_edge25:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1

entry.sw.bb_crit_edge24:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !10
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 22) #6, !srcloc !11
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr)) #6, !srcloc !12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !14
  tail call void @arm_heavy_mb() #6
  %or.i = or i8 %6, -128
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %or.i) #6, !srcloc !11
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge25, %entry.sw.bb1_crit_edge26, %entry.sw.bb1_crit_edge27, %entry.sw.bb1_crit_edge28, %entry.sw.bb1_crit_edge29, %entry.sw.bb1_crit_edge30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !10
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 51) #6, !srcloc !11
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #6, !srcloc !12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !14
  tail call void @arm_heavy_mb() #6
  %or.i21 = or i8 %7, -128
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %or.i21) #6, !srcloc !11
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %sw.bb, %entry.sw.epilog_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !15
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 26) #6, !srcloc !11
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr)) #6, !srcloc !12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !10
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 26) #6, !srcloc !11
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr)) #6, !srcloc !12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !14
  tail call void @arm_heavy_mb() #6
  %and15.i22 = and i8 %9, -2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %and15.i22) #6, !srcloc !11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !27
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873401 to ptr), i8 0) #6, !srcloc !11
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %sw.epilog
  %i.023 = phi i32 [ 0, %sw.epilog ], [ %inc, %for.body.for.body_crit_edge ]
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873399 to ptr)) #6, !srcloc !12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !28
  %11 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873399 to ptr)) #6, !srcloc !12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !29
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873399 to ptr)) #6, !srcloc !12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !30
  %conv = zext i8 %10 to i32
  %shl = shl nuw nsw i32 %conv, 16
  %conv14 = zext i8 %11 to i32
  %shl15 = shl nuw nsw i32 %conv14, 8
  %or = or i32 %shl15, %shl
  %conv16 = zext i8 %12 to i32
  %or17 = or i32 %or, %conv16
  %arrayidx = getelementptr i32, ptr %gamma_table, i32 %i.023
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %or17, ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %i.023, 1
  %exitcond.not = icmp eq i32 %inc, 256
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !25
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 26) #6, !srcloc !11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !26
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %8) #6, !srcloc !11
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @viafb_get_gamma_support_state(i32 noundef %bpp, ptr nocapture noundef writeonly %support_state) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %bpp)
  %cmp = icmp eq i32 %bpp, 8
  %. = select i1 %cmp, i32 0, i32 11
  %0 = ptrtoint ptr %support_state to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %., ptr %support_state, align 4
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

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
!9 = !{i8 0, i8 2}
!10 = !{i64 2154426852}
!11 = !{i64 695027}
!12 = !{i64 695422}
!13 = !{i64 2154427242}
!14 = !{i64 2154427477}
!15 = !{i64 2154425270}
!16 = !{i64 2154425660}
!17 = !{i64 2156293851}
!18 = !{i64 2156294194}
!19 = !{i64 2156294543}
!20 = !{i64 2156294887}
!21 = !{i64 2156295349}
!22 = !{i64 2156295692}
!23 = !{i64 2156296041}
!24 = !{i64 2156296385}
!25 = !{i64 2154426036}
!26 = !{i64 2154426359}
!27 = !{i64 2156297022}
!28 = !{i64 2156297413}
!29 = !{i64 2156297690}
!30 = !{i64 2156297967}
