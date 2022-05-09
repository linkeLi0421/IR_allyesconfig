; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/arm/display/komeda/komeda_color_mgmt.c_pt.bc'
source_filename = "../drivers/gpu/drm/arm/display/komeda/komeda_color_mgmt.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.gamma_curve_sector = type { i32, i32, i32 }
%struct.drm_property_blob = type { %struct.drm_mode_object, ptr, %struct.list_head, %struct.list_head, i32, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.drm_color_lut = type { i16, i16, i16, i16 }

@yuv2rgb_bt709_narrow = internal constant { [12 x i32], [48 x i8] } { [12 x i32] [i32 1192, i32 0, i32 1836, i32 1192, i32 -218, i32 -546, i32 1192, i32 2163, i32 0, i32 64, i32 512, i32 512], [48 x i8] zeroinitializer }, align 32
@yuv2rgb_bt709_wide = internal constant { [12 x i32], [48 x i8] } { [12 x i32] [i32 1024, i32 0, i32 1613, i32 1024, i32 -192, i32 -479, i32 1024, i32 1900, i32 0, i32 0, i32 512, i32 512], [48 x i8] zeroinitializer }, align 32
@yuv2rgb_bt601_narrow = internal constant { [12 x i32], [48 x i8] } { [12 x i32] [i32 1192, i32 0, i32 1634, i32 1192, i32 -401, i32 -832, i32 1192, i32 2066, i32 0, i32 64, i32 512, i32 512], [48 x i8] zeroinitializer }, align 32
@yuv2rgb_bt601_wide = internal constant { [12 x i32], [48 x i8] } { [12 x i32] [i32 1024, i32 0, i32 1436, i32 1024, i32 -352, i32 -731, i32 1024, i32 1815, i32 0, i32 0, i32 512, i32 512], [48 x i8] zeroinitializer }, align 32
@yuv2rgb_bt2020 = internal constant { [12 x i32], [48 x i8] } { [12 x i32] [i32 1024, i32 0, i32 1476, i32 1024, i32 -165, i32 -572, i32 1024, i32 1884, i32 0, i32 0, i32 512, i32 512], [48 x i8] zeroinitializer }, align 32
@sector_tbl = internal constant { [8 x %struct.gamma_curve_sector], [32 x i8] } { [8 x %struct.gamma_curve_sector] [%struct.gamma_curve_sector { i32 0, i32 4, i32 4 }, %struct.gamma_curve_sector { i32 16, i32 4, i32 4 }, %struct.gamma_curve_sector { i32 32, i32 4, i32 8 }, %struct.gamma_curve_sector { i32 64, i32 4, i32 16 }, %struct.gamma_curve_sector { i32 128, i32 4, i32 32 }, %struct.gamma_curve_sector { i32 256, i32 4, i32 64 }, %struct.gamma_curve_sector { i32 512, i32 16, i32 32 }, %struct.gamma_curve_sector { i32 1024, i32 24, i32 128 }], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.1 = private unnamed_addr constant [21 x i8] c"yuv2rgb_bt709_narrow\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 25, i32 18 }
@___asan_gen_.4 = private unnamed_addr constant [19 x i8] c"yuv2rgb_bt709_wide\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 32, i32 18 }
@___asan_gen_.7 = private unnamed_addr constant [21 x i8] c"yuv2rgb_bt601_narrow\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 11, i32 18 }
@___asan_gen_.10 = private unnamed_addr constant [19 x i8] c"yuv2rgb_bt601_wide\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 18, i32 18 }
@___asan_gen_.13 = private unnamed_addr constant [15 x i8] c"yuv2rgb_bt2020\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 39, i32 18 }
@___asan_gen_.16 = private unnamed_addr constant [11 x i8] c"sector_tbl\00", align 1
@___asan_gen_.17 = private constant [58 x i8] c"../drivers/gpu/drm/arm/display/komeda/komeda_color_mgmt.c\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 80, i32 34 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @yuv2rgb_bt709_narrow, ptr @yuv2rgb_bt709_wide, ptr @yuv2rgb_bt601_narrow, ptr @yuv2rgb_bt601_wide, ptr @yuv2rgb_bt2020, ptr @sector_tbl], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yuv2rgb_bt709_narrow to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yuv2rgb_bt709_wide to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yuv2rgb_bt601_narrow to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yuv2rgb_bt601_wide to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yuv2rgb_bt2020 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sector_tbl to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @komeda_select_yuv2rgb_coeffs(i32 noundef %color_encoding, i32 noundef %color_range) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %color_range)
  %cmp = icmp eq i32 %color_range, 0
  %0 = zext i32 %color_encoding to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %color_encoding, label %sw.default [
    i32 1, label %sw.bb
    i32 0, label %sw.bb1
    i32 2, label %entry.sw.epilog_crit_edge
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %cond = select i1 %cmp, ptr @yuv2rgb_bt709_narrow, ptr @yuv2rgb_bt709_wide
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %cond3 = select i1 %cmp, ptr @yuv2rgb_bt601_narrow, ptr @yuv2rgb_bt601_wide
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb1, %sw.bb, %entry.sw.epilog_crit_edge
  %coeffs.0 = phi ptr [ null, %sw.default ], [ %cond3, %sw.bb1 ], [ %cond, %sw.bb ], [ @yuv2rgb_bt2020, %entry.sw.epilog_crit_edge ]
  ret ptr %coeffs.0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @drm_lut_to_fgamma_coeffs(ptr noundef readonly %lut_blob, ptr nocapture noundef writeonly %coeffs) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %lut_blob, null
  br i1 %tobool.not.i, label %entry.drm_lut_to_coeffs.exit_crit_edge, label %if.end.i

entry.drm_lut_to_coeffs.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %drm_lut_to_coeffs.exit

if.end.i:                                         ; preds = %entry
  %data.i = getelementptr inbounds %struct.drm_property_blob, ptr %lut_blob, i32 0, i32 5
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  br label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %for.inc9.i.for.cond1.preheader.i_crit_edge, %if.end.i
  %num.06.i = phi i32 [ 0, %if.end.i ], [ %num.1.lcssa.i, %for.inc9.i.for.cond1.preheader.i_crit_edge ]
  %i.04.i = phi i32 [ 0, %if.end.i ], [ %inc10.i, %for.inc9.i.for.cond1.preheader.i_crit_edge ]
  %num_of_segments.i = getelementptr %struct.gamma_curve_sector, ptr @sector_tbl, i32 %i.04.i, i32 1
  %2 = ptrtoint ptr %num_of_segments.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_of_segments.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp21.not.i = icmp eq i32 %3, 0
  br i1 %cmp21.not.i, label %for.cond1.preheader.i.for.inc9.i_crit_edge, label %for.body3.lr.ph.i

for.cond1.preheader.i.for.inc9.i_crit_edge:       ; preds = %for.cond1.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc9.i

for.body3.lr.ph.i:                                ; preds = %for.cond1.preheader.i
  %arrayidx.i = getelementptr %struct.gamma_curve_sector, ptr @sector_tbl, i32 %i.04.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  %segment_width.i = getelementptr %struct.gamma_curve_sector, ptr @sector_tbl, i32 %i.04.i, i32 2
  %6 = ptrtoint ptr %segment_width.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %segment_width.i, align 4
  br label %for.body3.i

for.body3.i:                                      ; preds = %for.body3.i.for.body3.i_crit_edge, %for.body3.lr.ph.i
  %num.13.i = phi i32 [ %num.06.i, %for.body3.lr.ph.i ], [ %inc.i, %for.body3.i.for.body3.i_crit_edge ]
  %j.02.i = phi i32 [ 0, %for.body3.lr.ph.i ], [ %inc8.i, %for.body3.i.for.body3.i_crit_edge ]
  %mul.i = mul i32 %j.02.i, %7
  %add.i = add i32 %mul.i, %5
  %arrayidx6.i = getelementptr %struct.drm_color_lut, ptr %1, i32 %add.i
  %8 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx6.i, align 2
  %conv.i = zext i16 %9 to i32
  %add.i.i = add nuw nsw i32 %conv.i, 8
  %shr4.i.i = lshr i32 %add.i.i, 4
  %10 = tail call i32 @llvm.umin.i32(i32 %shr4.i.i, i32 4095) #5
  %inc.i = add i32 %num.13.i, 1
  %arrayidx7.i = getelementptr i32, ptr %coeffs, i32 %num.13.i
  %11 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %arrayidx7.i, align 4
  %inc8.i = add nuw i32 %j.02.i, 1
  %exitcond.not.i = icmp eq i32 %inc8.i, %3
  br i1 %exitcond.not.i, label %for.body3.i.for.inc9.i_crit_edge, label %for.body3.i.for.body3.i_crit_edge

for.body3.i.for.body3.i_crit_edge:                ; preds = %for.body3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body3.i

for.body3.i.for.inc9.i_crit_edge:                 ; preds = %for.body3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc9.i

for.inc9.i:                                       ; preds = %for.body3.i.for.inc9.i_crit_edge, %for.cond1.preheader.i.for.inc9.i_crit_edge
  %num.1.lcssa.i = phi i32 [ %num.06.i, %for.cond1.preheader.i.for.inc9.i_crit_edge ], [ %inc.i, %for.body3.i.for.inc9.i_crit_edge ]
  %inc10.i = add nuw nsw i32 %i.04.i, 1
  %exitcond7.not.i = icmp eq i32 %inc10.i, 8
  br i1 %exitcond7.not.i, label %for.end11.i, label %for.inc9.i.for.cond1.preheader.i_crit_edge

for.inc9.i.for.cond1.preheader.i_crit_edge:       ; preds = %for.inc9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond1.preheader.i

for.end11.i:                                      ; preds = %for.inc9.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx12.i = getelementptr i32, ptr %coeffs, i32 %num.1.lcssa.i
  %12 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 4096, ptr %arrayidx12.i, align 4
  br label %drm_lut_to_coeffs.exit

drm_lut_to_coeffs.exit:                           ; preds = %for.end11.i, %entry.drm_lut_to_coeffs.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @drm_ctm_to_coeffs(ptr noundef readonly %ctm_blob, ptr nocapture noundef writeonly %coeffs) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ctm_blob, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %data = getelementptr inbounds %struct.drm_property_blob, ptr %ctm_blob, i32 0, i32 5
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %1, align 8
  %call = tail call i64 @drm_color_ctm_s31_32_to_qm_n(i64 noundef %3, i32 noundef 3, i32 noundef 12) #5
  %conv = trunc i64 %call to i32
  %4 = ptrtoint ptr %coeffs to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv, ptr %coeffs, align 4
  %arrayidx.1 = getelementptr [9 x i64], ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %arrayidx.1, align 8
  %call.1 = tail call i64 @drm_color_ctm_s31_32_to_qm_n(i64 noundef %6, i32 noundef 3, i32 noundef 12) #5
  %conv.1 = trunc i64 %call.1 to i32
  %arrayidx1.1 = getelementptr i32, ptr %coeffs, i32 1
  %7 = ptrtoint ptr %arrayidx1.1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv.1, ptr %arrayidx1.1, align 4
  %arrayidx.2 = getelementptr [9 x i64], ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %arrayidx.2, align 8
  %call.2 = tail call i64 @drm_color_ctm_s31_32_to_qm_n(i64 noundef %9, i32 noundef 3, i32 noundef 12) #5
  %conv.2 = trunc i64 %call.2 to i32
  %arrayidx1.2 = getelementptr i32, ptr %coeffs, i32 2
  %10 = ptrtoint ptr %arrayidx1.2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv.2, ptr %arrayidx1.2, align 4
  %arrayidx.3 = getelementptr [9 x i64], ptr %1, i32 0, i32 3
  %11 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %arrayidx.3, align 8
  %call.3 = tail call i64 @drm_color_ctm_s31_32_to_qm_n(i64 noundef %12, i32 noundef 3, i32 noundef 12) #5
  %conv.3 = trunc i64 %call.3 to i32
  %arrayidx1.3 = getelementptr i32, ptr %coeffs, i32 3
  %13 = ptrtoint ptr %arrayidx1.3 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv.3, ptr %arrayidx1.3, align 4
  %arrayidx.4 = getelementptr [9 x i64], ptr %1, i32 0, i32 4
  %14 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %arrayidx.4, align 8
  %call.4 = tail call i64 @drm_color_ctm_s31_32_to_qm_n(i64 noundef %15, i32 noundef 3, i32 noundef 12) #5
  %conv.4 = trunc i64 %call.4 to i32
  %arrayidx1.4 = getelementptr i32, ptr %coeffs, i32 4
  %16 = ptrtoint ptr %arrayidx1.4 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %conv.4, ptr %arrayidx1.4, align 4
  %arrayidx.5 = getelementptr [9 x i64], ptr %1, i32 0, i32 5
  %17 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %arrayidx.5, align 8
  %call.5 = tail call i64 @drm_color_ctm_s31_32_to_qm_n(i64 noundef %18, i32 noundef 3, i32 noundef 12) #5
  %conv.5 = trunc i64 %call.5 to i32
  %arrayidx1.5 = getelementptr i32, ptr %coeffs, i32 5
  %19 = ptrtoint ptr %arrayidx1.5 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv.5, ptr %arrayidx1.5, align 4
  %arrayidx.6 = getelementptr [9 x i64], ptr %1, i32 0, i32 6
  %20 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %arrayidx.6, align 8
  %call.6 = tail call i64 @drm_color_ctm_s31_32_to_qm_n(i64 noundef %21, i32 noundef 3, i32 noundef 12) #5
  %conv.6 = trunc i64 %call.6 to i32
  %arrayidx1.6 = getelementptr i32, ptr %coeffs, i32 6
  %22 = ptrtoint ptr %arrayidx1.6 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %conv.6, ptr %arrayidx1.6, align 4
  %arrayidx.7 = getelementptr [9 x i64], ptr %1, i32 0, i32 7
  %23 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %arrayidx.7, align 8
  %call.7 = tail call i64 @drm_color_ctm_s31_32_to_qm_n(i64 noundef %24, i32 noundef 3, i32 noundef 12) #5
  %conv.7 = trunc i64 %call.7 to i32
  %arrayidx1.7 = getelementptr i32, ptr %coeffs, i32 7
  %25 = ptrtoint ptr %arrayidx1.7 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %conv.7, ptr %arrayidx1.7, align 4
  %arrayidx.8 = getelementptr [9 x i64], ptr %1, i32 0, i32 8
  %26 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %arrayidx.8, align 8
  %call.8 = tail call i64 @drm_color_ctm_s31_32_to_qm_n(i64 noundef %27, i32 noundef 3, i32 noundef 12) #5
  %conv.8 = trunc i64 %call.8 to i32
  %arrayidx1.8 = getelementptr i32, ptr %coeffs, i32 8
  %28 = ptrtoint ptr %arrayidx1.8 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %conv.8, ptr %arrayidx1.8, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @drm_color_ctm_s31_32_to_qm_n(i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = !{ptr @yuv2rgb_bt709_narrow, !1, !"yuv2rgb_bt709_narrow", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_color_mgmt.c", i32 25, i32 18}
!2 = !{ptr @yuv2rgb_bt709_wide, !3, !"yuv2rgb_bt709_wide", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_color_mgmt.c", i32 32, i32 18}
!4 = !{ptr @yuv2rgb_bt601_narrow, !5, !"yuv2rgb_bt601_narrow", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_color_mgmt.c", i32 11, i32 18}
!6 = !{ptr @yuv2rgb_bt601_wide, !7, !"yuv2rgb_bt601_wide", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_color_mgmt.c", i32 18, i32 18}
!8 = !{ptr @yuv2rgb_bt2020, !9, !"yuv2rgb_bt2020", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_color_mgmt.c", i32 39, i32 18}
!10 = !{ptr @sector_tbl, !11, !"sector_tbl", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_color_mgmt.c", i32 80, i32 34}
!12 = !{i32 1, !"wchar_size", i32 2}
!13 = !{i32 1, !"min_enum_size", i32 4}
!14 = !{i32 8, !"branch-target-enforcement", i32 0}
!15 = !{i32 8, !"sign-return-address", i32 0}
!16 = !{i32 8, !"sign-return-address-all", i32 0}
!17 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!18 = !{i32 7, !"uwtable", i32 1}
!19 = !{i32 7, !"frame-pointer", i32 2}
!20 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
