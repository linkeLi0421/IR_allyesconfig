; ModuleID = '/llk/IR_all_yes/drivers/media/v4l2-core/v4l2-h264.c_pt.bc'
source_filename = "../drivers/media/v4l2-core/v4l2-h264.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+v4l2_h264_init_reflist_builder\22, \22a\22\09"
module asm "\09.weak\09__crc_v4l2_h264_init_reflist_builder\09\09\09\09"
module asm "\09.long\09__crc_v4l2_h264_init_reflist_builder\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_v4l2_h264_init_reflist_builder:\09\09\09\09\09"
module asm "\09.asciz \09\22v4l2_h264_init_reflist_builder\22\09\09\09\09\09"
module asm "__kstrtabns_v4l2_h264_init_reflist_builder:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+v4l2_h264_build_p_ref_list\22, \22a\22\09"
module asm "\09.weak\09__crc_v4l2_h264_build_p_ref_list\09\09\09\09"
module asm "\09.long\09__crc_v4l2_h264_build_p_ref_list\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_v4l2_h264_build_p_ref_list:\09\09\09\09\09"
module asm "\09.asciz \09\22v4l2_h264_build_p_ref_list\22\09\09\09\09\09"
module asm "__kstrtabns_v4l2_h264_build_p_ref_list:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+v4l2_h264_build_b_ref_lists\22, \22a\22\09"
module asm "\09.weak\09__crc_v4l2_h264_build_b_ref_lists\09\09\09\09"
module asm "\09.long\09__crc_v4l2_h264_build_b_ref_lists\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_v4l2_h264_build_b_ref_lists:\09\09\09\09\09"
module asm "\09.asciz \09\22v4l2_h264_build_b_ref_lists\22\09\09\09\09\09"
module asm "__kstrtabns_v4l2_h264_build_b_ref_lists:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.v4l2_ctrl_h264_sps = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [255 x i32], i32, i32, i16, i16, i32 }
%struct.v4l2_ctrl_h264_decode_params = type { [16 x %struct.v4l2_h264_dpb_entry], i16, i16, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_h264_dpb_entry = type { i64, i32, i16, i8, [5 x i8], i32, i32, i32 }
%struct.v4l2_h264_reflist_builder = type { [16 x %struct.anon], i32, [16 x i8], i8 }
%struct.anon = type { i32, i32, i32, i8 }

@__kstrtab_v4l2_h264_init_reflist_builder = external dso_local constant [0 x i8], align 1
@__kstrtabns_v4l2_h264_init_reflist_builder = external dso_local constant [0 x i8], align 1
@__ksymtab_v4l2_h264_init_reflist_builder = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @v4l2_h264_init_reflist_builder to i32), ptr @__kstrtab_v4l2_h264_init_reflist_builder, ptr @__kstrtabns_v4l2_h264_init_reflist_builder }, section "___ksymtab_gpl+v4l2_h264_init_reflist_builder", align 4
@__kstrtab_v4l2_h264_build_p_ref_list = external dso_local constant [0 x i8], align 1
@__kstrtabns_v4l2_h264_build_p_ref_list = external dso_local constant [0 x i8], align 1
@__ksymtab_v4l2_h264_build_p_ref_list = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @v4l2_h264_build_p_ref_list to i32), ptr @__kstrtab_v4l2_h264_build_p_ref_list, ptr @__kstrtabns_v4l2_h264_build_p_ref_list }, section "___ksymtab_gpl+v4l2_h264_build_p_ref_list", align 4
@__kstrtab_v4l2_h264_build_b_ref_lists = external dso_local constant [0 x i8], align 1
@__kstrtabns_v4l2_h264_build_b_ref_lists = external dso_local constant [0 x i8], align 1
@__ksymtab_v4l2_h264_build_b_ref_lists = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @v4l2_h264_build_b_ref_lists to i32), ptr @__kstrtab_v4l2_h264_build_b_ref_lists, ptr @__kstrtabns_v4l2_h264_build_b_ref_lists }, section "___ksymtab_gpl+v4l2_h264_build_b_ref_lists", align 4
@__UNIQUE_ID_file229 = internal constant [49 x i8] c"v4l2_h264.file=drivers/media/v4l2-core/v4l2-h264\00", section ".modinfo", align 1
@__UNIQUE_ID_license230 = internal constant [22 x i8] c"v4l2_h264.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description231 = internal constant [40 x i8] c"v4l2_h264.description=V4L2 H264 Helpers\00", section ".modinfo", align 1
@__UNIQUE_ID_author232 = internal constant [65 x i8] c"v4l2_h264.author=Boris Brezillon <boris.brezillon@collabora.com>\00", section ".modinfo", align 1
@.str = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/media/v4l2-core/v4l2-h264.c\00", [60 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.2 = private constant [39 x i8] c"../drivers/media/v4l2-core/v4l2-h264.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 94, i32 6 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_author232, ptr @__UNIQUE_ID_description231, ptr @__UNIQUE_ID_file229, ptr @__UNIQUE_ID_license230, ptr @__ksymtab_v4l2_h264_build_b_ref_lists, ptr @__ksymtab_v4l2_h264_build_p_ref_list, ptr @__ksymtab_v4l2_h264_init_reflist_builder, ptr @.str], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @v4l2_h264_init_reflist_builder(ptr nocapture noundef %b, ptr nocapture noundef readonly %dec_params, ptr nocapture noundef readonly %sps, ptr nocapture noundef readonly %dpb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %log2_max_frame_num_minus4 = getelementptr inbounds %struct.v4l2_ctrl_h264_sps, ptr %sps, i32 0, i32 7
  %0 = ptrtoint ptr %log2_max_frame_num_minus4 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %log2_max_frame_num_minus4, align 1
  %conv = zext i8 %1 to i32
  %shl.neg = shl i32 -16, %conv
  %frame_num = getelementptr inbounds %struct.v4l2_ctrl_h264_decode_params, ptr %dec_params, i32 0, i32 2
  %2 = ptrtoint ptr %frame_num to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %frame_num, align 2
  %4 = call ptr @memset(ptr %b, i32 0, i32 280)
  %flags = getelementptr inbounds %struct.v4l2_ctrl_h264_decode_params, ptr %dec_params, i32 0, i32 14
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags, align 4
  %and = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %bottom_field_order_cnt = getelementptr inbounds %struct.v4l2_ctrl_h264_decode_params, ptr %dec_params, i32 0, i32 4
  %7 = ptrtoint ptr %bottom_field_order_cnt to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bottom_field_order_cnt, align 8
  %top_field_order_cnt = getelementptr inbounds %struct.v4l2_ctrl_h264_decode_params, ptr %dec_params, i32 0, i32 3
  %9 = ptrtoint ptr %top_field_order_cnt to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %top_field_order_cnt, align 4
  %11 = tail call i32 @llvm.smin.i32(i32 %8, i32 %10)
  br label %if.end12

if.else:                                          ; preds = %entry
  %and4 = and i32 %6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.else9, label %if.then6

if.then6:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %bottom_field_order_cnt7 = getelementptr inbounds %struct.v4l2_ctrl_h264_decode_params, ptr %dec_params, i32 0, i32 4
  %12 = ptrtoint ptr %bottom_field_order_cnt7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bottom_field_order_cnt7, align 8
  br label %if.end12

if.else9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %top_field_order_cnt10 = getelementptr inbounds %struct.v4l2_ctrl_h264_decode_params, ptr %dec_params, i32 0, i32 3
  %14 = ptrtoint ptr %top_field_order_cnt10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %top_field_order_cnt10, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.else9, %if.then6, %if.then
  %.sink = phi i32 [ %13, %if.then6 ], [ %15, %if.else9 ], [ %11, %if.then ]
  %cur_pic_order_count8 = getelementptr inbounds %struct.v4l2_h264_reflist_builder, ptr %b, i32 0, i32 1
  %16 = ptrtoint ptr %cur_pic_order_count8 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %.sink, ptr %cur_pic_order_count8, align 4
  %num_valid = getelementptr inbounds %struct.v4l2_h264_reflist_builder, ptr %b, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %if.end12
  %i.0161 = phi i32 [ 0, %if.end12 ], [ %inc87, %cleanup.for.body_crit_edge ]
  %flags15 = getelementptr %struct.v4l2_h264_dpb_entry, ptr %dpb, i32 %i.0161, i32 7
  %17 = ptrtoint ptr %flags15 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags15, align 4
  %and16 = and i32 %18, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %for.body.cleanup_crit_edge, label %if.end19

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end19:                                         ; preds = %for.body
  %pic_num = getelementptr %struct.v4l2_h264_dpb_entry, ptr %dpb, i32 %i.0161, i32 1
  %19 = ptrtoint ptr %pic_num to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pic_num, align 8
  %arrayidx21 = getelementptr [16 x %struct.anon], ptr %b, i32 0, i32 %i.0161
  %pic_num22 = getelementptr [16 x %struct.anon], ptr %b, i32 0, i32 %i.0161, i32 2
  %21 = ptrtoint ptr %pic_num22 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %pic_num22, align 4
  %22 = ptrtoint ptr %flags15 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flags15, align 4
  %and25 = and i32 %23, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %if.end19.if.end30_crit_edge, label %if.then27

if.end19.if.end30_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30

if.then27:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  %longterm = getelementptr [16 x %struct.anon], ptr %b, i32 0, i32 %i.0161, i32 3
  %24 = ptrtoint ptr %longterm to i32
  call void @__asan_load1_noabort(i32 %24)
  %bf.load = load i8, ptr %longterm, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %longterm, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then27, %if.end19.if.end30_crit_edge
  %frame_num32 = getelementptr %struct.v4l2_h264_dpb_entry, ptr %dpb, i32 %i.0161, i32 2
  %25 = ptrtoint ptr %frame_num32 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %frame_num32, align 4
  %conv33 = zext i16 %26 to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %26, i16 %3)
  %cmp34 = icmp ugt i16 %26, %3
  %sub = select i1 %cmp34, i32 %shl.neg, i32 0
  %spec.select = add i32 %sub, %conv33
  %27 = getelementptr [16 x %struct.anon], ptr %b, i32 0, i32 %i.0161, i32 1
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %spec.select, ptr %27, align 4
  %fields = getelementptr %struct.v4l2_h264_dpb_entry, ptr %dpb, i32 %i.0161, i32 3
  %29 = ptrtoint ptr %fields to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %fields, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %30)
  %cmp53 = icmp eq i8 %30, 3
  br i1 %cmp53, label %if.then55, label %if.else67

if.then55:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  %top_field_order_cnt57 = getelementptr %struct.v4l2_h264_dpb_entry, ptr %dpb, i32 %i.0161, i32 5
  %31 = ptrtoint ptr %top_field_order_cnt57 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %top_field_order_cnt57, align 4
  %bottom_field_order_cnt59 = getelementptr %struct.v4l2_h264_dpb_entry, ptr %dpb, i32 %i.0161, i32 6
  %33 = ptrtoint ptr %bottom_field_order_cnt59 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %bottom_field_order_cnt59, align 8
  %35 = tail call i32 @llvm.smin.i32(i32 %32, i32 %34)
  br label %if.end80

if.else67:                                        ; preds = %if.end30
  %36 = and i8 %30, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool72.not = icmp eq i8 %36, 0
  br i1 %tobool72.not, label %if.else76, label %if.then73

if.then73:                                        ; preds = %if.else67
  call void @__sanitizer_cov_trace_pc() #7
  %bottom_field_order_cnt75 = getelementptr %struct.v4l2_h264_dpb_entry, ptr %dpb, i32 %i.0161, i32 6
  %37 = ptrtoint ptr %bottom_field_order_cnt75 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %bottom_field_order_cnt75, align 8
  br label %if.end80

if.else76:                                        ; preds = %if.else67
  call void @__sanitizer_cov_trace_pc() #7
  %top_field_order_cnt78 = getelementptr %struct.v4l2_h264_dpb_entry, ptr %dpb, i32 %i.0161, i32 5
  %39 = ptrtoint ptr %top_field_order_cnt78 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %top_field_order_cnt78, align 4
  br label %if.end80

if.end80:                                         ; preds = %if.else76, %if.then73, %if.then55
  %pic_order_count.0 = phi i32 [ %35, %if.then55 ], [ %38, %if.then73 ], [ %40, %if.else76 ]
  %41 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %pic_order_count.0, ptr %arrayidx21, align 4
  %conv84 = trunc i32 %i.0161 to i8
  %42 = ptrtoint ptr %num_valid to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %num_valid, align 4
  %idxprom = zext i8 %43 to i32
  %arrayidx85 = getelementptr %struct.v4l2_h264_reflist_builder, ptr %b, i32 0, i32 2, i32 %idxprom
  %44 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv84, ptr %arrayidx85, align 1
  %45 = load i8, ptr %num_valid, align 4
  %inc = add i8 %45, 1
  store i8 %inc, ptr %num_valid, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end80, %for.body.cleanup_crit_edge
  %inc87 = add nuw nsw i32 %i.0161, 1
  %exitcond.not = icmp eq i32 %inc87, 16
  br i1 %exitcond.not, label %for.end, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %cleanup
  %46 = ptrtoint ptr %num_valid to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %num_valid, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %47)
  %cmp91166 = icmp ult i8 %47, 16
  br i1 %cmp91166, label %for.body93.preheader, label %for.end.for.end99_crit_edge

for.end.for.end99_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end99

for.body93.preheader:                             ; preds = %for.end
  %conv89 = zext i8 %47 to i32
  br label %for.body93

for.body93:                                       ; preds = %for.body93.for.body93_crit_edge, %for.body93.preheader
  %i.1167 = phi i32 [ %inc98, %for.body93.for.body93_crit_edge ], [ %conv89, %for.body93.preheader ]
  %conv94 = trunc i32 %i.1167 to i8
  %arrayidx96 = getelementptr %struct.v4l2_h264_reflist_builder, ptr %b, i32 0, i32 2, i32 %i.1167
  %48 = ptrtoint ptr %arrayidx96 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %conv94, ptr %arrayidx96, align 1
  %inc98 = add nuw nsw i32 %i.1167, 1
  %exitcond168.not = icmp eq i32 %inc98, 16
  br i1 %exitcond168.not, label %for.body93.for.end99_crit_edge, label %for.body93.for.body93_crit_edge

for.body93.for.body93_crit_edge:                  ; preds = %for.body93
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body93

for.body93.for.end99_crit_edge:                   ; preds = %for.body93
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end99

for.end99:                                        ; preds = %for.body93.for.end99_crit_edge, %for.end.for.end99_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @v4l2_h264_build_p_ref_list(ptr noundef %builder, ptr noundef %reflist) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %unordered_reflist = getelementptr inbounds %struct.v4l2_h264_reflist_builder, ptr %builder, i32 0, i32 2
  %num_valid = getelementptr inbounds %struct.v4l2_h264_reflist_builder, ptr %builder, i32 0, i32 3
  %0 = ptrtoint ptr %num_valid to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %num_valid, align 4
  %conv = zext i8 %1 to i32
  %2 = call ptr @memcpy(ptr %reflist, ptr %unordered_reflist, i32 %conv)
  %3 = load i8, ptr %num_valid, align 4
  %conv2 = zext i8 %3 to i32
  tail call void @sort_r(ptr noundef %reflist, i32 noundef %conv2, i32 noundef 1, ptr noundef nonnull @v4l2_h264_p_ref_list_cmp, ptr noundef null, ptr noundef %builder) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sort_r(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @v4l2_h264_p_ref_list_cmp(ptr nocapture noundef readonly %ptra, ptr nocapture noundef readonly %ptrb, ptr nocapture noundef readonly %data) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ptra to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ptra, align 1
  %2 = ptrtoint ptr %ptrb to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ptrb, align 1
  %conv = zext i8 %1 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %1)
  %cmp = icmp ugt i8 %1, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %3)
  %cmp3 = icmp ugt i8 %3, 15
  %spec.select = select i1 %cmp, i1 true, i1 %cmp3
  br i1 %spec.select, label %do.end, label %if.end25, !prof !24

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 95, i32 noundef 9, ptr noundef null) #5
  br label %cleanup

if.end25:                                         ; preds = %entry
  %longterm = getelementptr [16 x %struct.anon], ptr %data, i32 0, i32 %conv, i32 3
  %4 = ptrtoint ptr %longterm to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %longterm, align 4
  %idxprom28 = zext i8 %3 to i32
  %longterm30 = getelementptr [16 x %struct.anon], ptr %data, i32 0, i32 %idxprom28, i32 3
  %5 = ptrtoint ptr %longterm30 to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load31 = load i8, ptr %longterm30, align 4
  %cmp35.not.unshifted = xor i8 %bf.load31, %bf.load
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %cmp35.not.unshifted)
  %cmp35.not = icmp sgt i8 %cmp35.not.unshifted, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool55.not = icmp sgt i8 %bf.load, -1
  br i1 %cmp35.not, label %if.end47, label %if.then37

if.then37:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  %. = select i1 %tobool55.not, i32 -1, i32 1
  br label %cleanup

if.end47:                                         ; preds = %if.end25
  br i1 %tobool55.not, label %if.then56, label %if.end66

if.then56:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #7
  %frame_num = getelementptr [16 x %struct.anon], ptr %data, i32 0, i32 %idxprom28, i32 1
  %6 = ptrtoint ptr %frame_num to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %frame_num, align 4
  %frame_num63 = getelementptr [16 x %struct.anon], ptr %data, i32 0, i32 %conv, i32 1
  %8 = ptrtoint ptr %frame_num63 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %frame_num63, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp64 = icmp slt i32 %7, %9
  %cond = select i1 %cmp64, i32 -1, i32 1
  br label %cleanup

if.end66:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #7
  %pic_num = getelementptr [16 x %struct.anon], ptr %data, i32 0, i32 %conv, i32 2
  %10 = ptrtoint ptr %pic_num to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pic_num, align 4
  %pic_num73 = getelementptr [16 x %struct.anon], ptr %data, i32 0, i32 %idxprom28, i32 2
  %12 = ptrtoint ptr %pic_num73 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pic_num73, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp74 = icmp ult i32 %11, %13
  %cond76 = select i1 %cmp74, i32 -1, i32 1
  br label %cleanup

cleanup:                                          ; preds = %if.end66, %if.then56, %if.then37, %do.end
  %retval.0 = phi i32 [ 1, %do.end ], [ %cond76, %if.end66 ], [ %cond, %if.then56 ], [ %., %if.then37 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @v4l2_h264_build_b_ref_lists(ptr noundef %builder, ptr noundef %b0_reflist, ptr noundef %b1_reflist) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %unordered_reflist = getelementptr inbounds %struct.v4l2_h264_reflist_builder, ptr %builder, i32 0, i32 2
  %num_valid = getelementptr inbounds %struct.v4l2_h264_reflist_builder, ptr %builder, i32 0, i32 3
  %0 = ptrtoint ptr %num_valid to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %num_valid, align 4
  %conv = zext i8 %1 to i32
  %2 = call ptr @memcpy(ptr %b0_reflist, ptr %unordered_reflist, i32 %conv)
  %3 = load i8, ptr %num_valid, align 4
  %conv2 = zext i8 %3 to i32
  tail call void @sort_r(ptr noundef %b0_reflist, i32 noundef %conv2, i32 noundef 1, ptr noundef nonnull @v4l2_h264_b0_ref_list_cmp, ptr noundef null, ptr noundef %builder) #5
  %4 = ptrtoint ptr %num_valid to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %num_valid, align 4
  %conv6 = zext i8 %5 to i32
  %6 = call ptr @memcpy(ptr %b1_reflist, ptr %unordered_reflist, i32 %conv6)
  %7 = load i8, ptr %num_valid, align 4
  %conv9 = zext i8 %7 to i32
  tail call void @sort_r(ptr noundef %b1_reflist, i32 noundef %conv9, i32 noundef 1, ptr noundef nonnull @v4l2_h264_b1_ref_list_cmp, ptr noundef null, ptr noundef %builder) #5
  %8 = ptrtoint ptr %num_valid to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %num_valid, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %9)
  %cmp = icmp ugt i8 %9, 1
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %conv11 = zext i8 %9 to i32
  %bcmp = tail call i32 @bcmp(ptr %b1_reflist, ptr %b0_reflist, i32 %conv11) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not = icmp eq i32 %bcmp, 0
  br i1 %tobool.not, label %do.body, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.body:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %b1_reflist to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %b1_reflist, align 1
  %arrayidx15 = getelementptr i8, ptr %b1_reflist, i32 1
  %12 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx15, align 1
  store i8 %13, ptr %b1_reflist, align 1
  store i8 %11, ptr %arrayidx15, align 1
  br label %if.end

if.end:                                           ; preds = %do.body, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @v4l2_h264_b0_ref_list_cmp(ptr nocapture noundef readonly %ptra, ptr nocapture noundef readonly %ptrb, ptr nocapture noundef readonly %data) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ptra to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ptra, align 1
  %2 = ptrtoint ptr %ptrb to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ptrb, align 1
  %conv = zext i8 %1 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %1)
  %cmp = icmp ugt i8 %1, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %3)
  %cmp3 = icmp ugt i8 %3, 15
  %spec.select = select i1 %cmp, i1 true, i1 %cmp3
  br i1 %spec.select, label %do.end, label %if.end25, !prof !24

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 130, i32 noundef 9, ptr noundef null) #5
  br label %cleanup

if.end25:                                         ; preds = %entry
  %arrayidx = getelementptr [16 x %struct.anon], ptr %data, i32 0, i32 %conv
  %longterm = getelementptr [16 x %struct.anon], ptr %data, i32 0, i32 %conv, i32 3
  %4 = ptrtoint ptr %longterm to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %longterm, align 4
  %idxprom28 = zext i8 %3 to i32
  %arrayidx29 = getelementptr [16 x %struct.anon], ptr %data, i32 0, i32 %idxprom28
  %longterm30 = getelementptr [16 x %struct.anon], ptr %data, i32 0, i32 %idxprom28, i32 3
  %5 = ptrtoint ptr %longterm30 to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load31 = load i8, ptr %longterm30, align 4
  %cmp35.not.unshifted = xor i8 %bf.load31, %bf.load
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %cmp35.not.unshifted)
  %cmp35.not = icmp sgt i8 %cmp35.not.unshifted, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool55.not = icmp sgt i8 %bf.load, -1
  br i1 %cmp35.not, label %if.end47, label %if.then37

if.then37:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  %. = select i1 %tobool55.not, i32 -1, i32 1
  br label %cleanup

if.end47:                                         ; preds = %if.end25
  br i1 %tobool55.not, label %if.end66, label %if.then56

if.then56:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #7
  %pic_num = getelementptr [16 x %struct.anon], ptr %data, i32 0, i32 %conv, i32 2
  %6 = ptrtoint ptr %pic_num to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pic_num, align 4
  %pic_num63 = getelementptr [16 x %struct.anon], ptr %data, i32 0, i32 %idxprom28, i32 2
  %8 = ptrtoint ptr %pic_num63 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pic_num63, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp64 = icmp ult i32 %7, %9
  %cond = select i1 %cmp64, i32 -1, i32 1
  br label %cleanup

if.end66:                                         ; preds = %if.end47
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %12 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx29, align 4
  %cur_pic_order_count = getelementptr inbounds %struct.v4l2_h264_reflist_builder, ptr %data, i32 0, i32 1
  %14 = ptrtoint ptr %cur_pic_order_count to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cur_pic_order_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %15)
  %cmp74 = icmp slt i32 %11, %15
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp77 = icmp sge i32 %13, %15
  %cmp79.not = xor i1 %cmp77, %cmp74
  br i1 %cmp79.not, label %if.else85, label %if.then81

if.then81:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp82 = icmp slt i32 %11, %13
  %cond84 = select i1 %cmp82, i32 -1, i32 1
  br label %cleanup

if.else85:                                        ; preds = %if.end66
  br i1 %cmp74, label %if.then89, label %if.end94

if.then89:                                        ; preds = %if.else85
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %11)
  %cmp90 = icmp slt i32 %13, %11
  %cond92 = select i1 %cmp90, i32 -1, i32 1
  br label %cleanup

if.end94:                                         ; preds = %if.else85
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp95 = icmp slt i32 %11, %13
  %cond97 = select i1 %cmp95, i32 -1, i32 1
  br label %cleanup

cleanup:                                          ; preds = %if.end94, %if.then89, %if.then81, %if.then56, %if.then37, %do.end
  %retval.0 = phi i32 [ 1, %do.end ], [ %cond, %if.then56 ], [ %cond84, %if.then81 ], [ %cond92, %if.then89 ], [ %cond97, %if.end94 ], [ %., %if.then37 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @v4l2_h264_b1_ref_list_cmp(ptr nocapture noundef readonly %ptra, ptr nocapture noundef readonly %ptrb, ptr nocapture noundef readonly %data) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ptra to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ptra, align 1
  %2 = ptrtoint ptr %ptrb to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ptrb, align 1
  %conv = zext i8 %1 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %1)
  %cmp = icmp ugt i8 %1, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %3)
  %cmp3 = icmp ugt i8 %3, 15
  %spec.select = select i1 %cmp, i1 true, i1 %cmp3
  br i1 %spec.select, label %do.end, label %if.end25, !prof !24

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 175, i32 noundef 9, ptr noundef null) #5
  br label %cleanup

if.end25:                                         ; preds = %entry
  %arrayidx = getelementptr [16 x %struct.anon], ptr %data, i32 0, i32 %conv
  %longterm = getelementptr [16 x %struct.anon], ptr %data, i32 0, i32 %conv, i32 3
  %4 = ptrtoint ptr %longterm to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %longterm, align 4
  %idxprom28 = zext i8 %3 to i32
  %arrayidx29 = getelementptr [16 x %struct.anon], ptr %data, i32 0, i32 %idxprom28
  %longterm30 = getelementptr [16 x %struct.anon], ptr %data, i32 0, i32 %idxprom28, i32 3
  %5 = ptrtoint ptr %longterm30 to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load31 = load i8, ptr %longterm30, align 4
  %cmp35.not.unshifted = xor i8 %bf.load31, %bf.load
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %cmp35.not.unshifted)
  %cmp35.not = icmp sgt i8 %cmp35.not.unshifted, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool55.not = icmp sgt i8 %bf.load, -1
  br i1 %cmp35.not, label %if.end47, label %if.then37

if.then37:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  %. = select i1 %tobool55.not, i32 -1, i32 1
  br label %cleanup

if.end47:                                         ; preds = %if.end25
  br i1 %tobool55.not, label %if.end66, label %if.then56

if.then56:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #7
  %pic_num = getelementptr [16 x %struct.anon], ptr %data, i32 0, i32 %conv, i32 2
  %6 = ptrtoint ptr %pic_num to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pic_num, align 4
  %pic_num63 = getelementptr [16 x %struct.anon], ptr %data, i32 0, i32 %idxprom28, i32 2
  %8 = ptrtoint ptr %pic_num63 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pic_num63, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp64 = icmp ult i32 %7, %9
  %cond = select i1 %cmp64, i32 -1, i32 1
  br label %cleanup

if.end66:                                         ; preds = %if.end47
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %12 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx29, align 4
  %cur_pic_order_count = getelementptr inbounds %struct.v4l2_h264_reflist_builder, ptr %data, i32 0, i32 1
  %14 = ptrtoint ptr %cur_pic_order_count to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cur_pic_order_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %15)
  %cmp74 = icmp slt i32 %11, %15
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp77 = icmp sge i32 %13, %15
  %cmp79.not = xor i1 %cmp77, %cmp74
  br i1 %cmp79.not, label %if.else85, label %if.then81

if.then81:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %11)
  %cmp82 = icmp slt i32 %13, %11
  %cond84 = select i1 %cmp82, i32 -1, i32 1
  br label %cleanup

if.else85:                                        ; preds = %if.end66
  br i1 %cmp74, label %if.then89, label %if.end94

if.then89:                                        ; preds = %if.else85
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %11)
  %cmp90 = icmp slt i32 %13, %11
  %cond92 = select i1 %cmp90, i32 -1, i32 1
  br label %cleanup

if.end94:                                         ; preds = %if.else85
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp95 = icmp slt i32 %11, %13
  %cond97 = select i1 %cmp95, i32 -1, i32 1
  br label %cleanup

cleanup:                                          ; preds = %if.end94, %if.then89, %if.then81, %if.then56, %if.then37, %do.end
  %retval.0 = phi i32 [ 1, %do.end ], [ %cond, %if.then56 ], [ %cond84, %if.then81 ], [ %cond92, %if.then89 ], [ %cond97, %if.end94 ], [ %., %if.then37 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind readonly willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13}
!llvm.module.flags = !{!15, !16, !17, !18, !19, !20, !21, !22}
!llvm.ident = !{!23}

!0 = !{ptr @__ksymtab_v4l2_h264_init_reflist_builder, !1, !"__ksymtab_v4l2_h264_init_reflist_builder", i1 false, i1 false}
!1 = !{!"../drivers/media/v4l2-core/v4l2-h264.c", i32 83, i32 1}
!2 = !{ptr @__ksymtab_v4l2_h264_build_p_ref_list, !3, !"__ksymtab_v4l2_h264_build_p_ref_list", i1 false, i1 false}
!3 = !{!"../drivers/media/v4l2-core/v4l2-h264.c", i32 230, i32 1}
!4 = !{ptr @__ksymtab_v4l2_h264_build_b_ref_lists, !5, !"__ksymtab_v4l2_h264_build_b_ref_lists", i1 false, i1 false}
!5 = !{!"../drivers/media/v4l2-core/v4l2-h264.c", i32 264, i32 1}
!6 = !{ptr @__UNIQUE_ID_file229, !7, !"__UNIQUE_ID_file229", i1 false, i1 false}
!7 = !{!"../drivers/media/v4l2-core/v4l2-h264.c", i32 266, i32 1}
!8 = !{ptr @__UNIQUE_ID_license230, !7, !"__UNIQUE_ID_license230", i1 false, i1 false}
!9 = !{ptr @__UNIQUE_ID_description231, !10, !"__UNIQUE_ID_description231", i1 false, i1 false}
!10 = !{!"../drivers/media/v4l2-core/v4l2-h264.c", i32 267, i32 1}
!11 = !{ptr @__UNIQUE_ID_author232, !12, !"__UNIQUE_ID_author232", i1 false, i1 false}
!12 = !{!"../drivers/media/v4l2-core/v4l2-h264.c", i32 268, i32 1}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/media/v4l2-core/v4l2-h264.c", i32 94, i32 6}
!15 = !{i32 1, !"wchar_size", i32 2}
!16 = !{i32 1, !"min_enum_size", i32 4}
!17 = !{i32 8, !"branch-target-enforcement", i32 0}
!18 = !{i32 8, !"sign-return-address", i32 0}
!19 = !{i32 8, !"sign-return-address-all", i32 0}
!20 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!21 = !{i32 7, !"uwtable", i32 1}
!22 = !{i32 7, !"frame-pointer", i32 2}
!23 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!24 = !{!"branch_weights", i32 1, i32 2000}
