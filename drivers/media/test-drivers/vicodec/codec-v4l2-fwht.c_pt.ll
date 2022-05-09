; ModuleID = '/llk/IR_all_yes/drivers/media/test-drivers/vicodec/codec-v4l2-fwht.c_pt.bc'
source_filename = "../drivers/media/test-drivers/vicodec/codec-v4l2-fwht.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.v4l2_fwht_pixfmt_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.fwht_cframe = type { i16, i16, ptr, [64 x i16], [64 x i16], [64 x i16], i32 }
%struct.fwht_raw_frame = type { i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_fwht_state = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, %struct.fwht_raw_frame, %struct.fwht_cframe_hdr, ptr, i64 }
%struct.fwht_cframe_hdr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@v4l2_fwht_pixfmts = internal constant { [28 x %struct.v4l2_fwht_pixfmt_info], [304 x i8] } { [28 x %struct.v4l2_fwht_pixfmt_info] [%struct.v4l2_fwht_pixfmt_info { i32 842093913, i32 1, i32 3, i32 2, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 524288 }, %struct.v4l2_fwht_pixfmt_info { i32 842094169, i32 1, i32 3, i32 2, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 524288 }, %struct.v4l2_fwht_pixfmt_info { i32 1345466932, i32 1, i32 2, i32 1, i32 1, i32 1, i32 2, i32 1, i32 3, i32 3, i32 524288 }, %struct.v4l2_fwht_pixfmt_info { i32 842094158, i32 1, i32 3, i32 2, i32 1, i32 2, i32 2, i32 2, i32 3, i32 2, i32 524288 }, %struct.v4l2_fwht_pixfmt_info { i32 825382478, i32 1, i32 3, i32 2, i32 1, i32 2, i32 2, i32 2, i32 3, i32 2, i32 524288 }, %struct.v4l2_fwht_pixfmt_info { i32 909203022, i32 1, i32 2, i32 1, i32 1, i32 2, i32 2, i32 1, i32 3, i32 2, i32 524288 }, %struct.v4l2_fwht_pixfmt_info { i32 825644622, i32 1, i32 2, i32 1, i32 1, i32 2, i32 2, i32 1, i32 3, i32 2, i32 524288 }, %struct.v4l2_fwht_pixfmt_info { i32 875714126, i32 1, i32 3, i32 1, i32 1, i32 2, i32 1, i32 1, i32 3, i32 2, i32 524288 }, %struct.v4l2_fwht_pixfmt_info { i32 842290766, i32 1, i32 3, i32 1, i32 1, i32 2, i32 1, i32 1, i32 3, i32 2, i32 524288 }, %struct.v4l2_fwht_pixfmt_info { i32 1448695129, i32 2, i32 2, i32 1, i32 2, i32 4, i32 2, i32 1, i32 3, i32 1, i32 524288 }, %struct.v4l2_fwht_pixfmt_info { i32 1431918169, i32 2, i32 2, i32 1, i32 2, i32 4, i32 2, i32 1, i32 3, i32 1, i32 524288 }, %struct.v4l2_fwht_pixfmt_info { i32 1498831189, i32 2, i32 2, i32 1, i32 2, i32 4, i32 2, i32 1, i32 3, i32 1, i32 524288 }, %struct.v4l2_fwht_pixfmt_info { i32 1498765654, i32 2, i32 2, i32 1, i32 2, i32 4, i32 2, i32 1, i32 3, i32 1, i32 524288 }, %struct.v4l2_fwht_pixfmt_info { i32 861030210, i32 3, i32 3, i32 1, i32 3, i32 3, i32 1, i32 1, i32 3, i32 1, i32 1048576 }, %struct.v4l2_fwht_pixfmt_info { i32 859981650, i32 3, i32 3, i32 1, i32 3, i32 3, i32 1, i32 1, i32 3, i32 1, i32 1048576 }, %struct.v4l2_fwht_pixfmt_info { i32 861295432, i32 3, i32 3, i32 1, i32 3, i32 3, i32 1, i32 1, i32 3, i32 1, i32 1572864 }, %struct.v4l2_fwht_pixfmt_info { i32 877807426, i32 4, i32 4, i32 1, i32 4, i32 4, i32 1, i32 1, i32 4, i32 1, i32 1048576 }, %struct.v4l2_fwht_pixfmt_info { i32 875713112, i32 4, i32 4, i32 1, i32 4, i32 4, i32 1, i32 1, i32 4, i32 1, i32 1048576 }, %struct.v4l2_fwht_pixfmt_info { i32 875713089, i32 4, i32 4, i32 1, i32 4, i32 4, i32 1, i32 1, i32 4, i32 1, i32 1048576 }, %struct.v4l2_fwht_pixfmt_info { i32 876758866, i32 4, i32 4, i32 1, i32 4, i32 4, i32 1, i32 1, i32 4, i32 1, i32 1048576 }, %struct.v4l2_fwht_pixfmt_info { i32 875714626, i32 4, i32 4, i32 1, i32 4, i32 4, i32 1, i32 1, i32 4, i32 1, i32 1048576 }, %struct.v4l2_fwht_pixfmt_info { i32 875708738, i32 4, i32 4, i32 1, i32 4, i32 4, i32 1, i32 1, i32 4, i32 1, i32 1048576 }, %struct.v4l2_fwht_pixfmt_info { i32 875714642, i32 4, i32 4, i32 1, i32 4, i32 4, i32 1, i32 1, i32 4, i32 1, i32 1048576 }, %struct.v4l2_fwht_pixfmt_info { i32 875708754, i32 4, i32 4, i32 1, i32 4, i32 4, i32 1, i32 1, i32 4, i32 1, i32 1048576 }, %struct.v4l2_fwht_pixfmt_info { i32 875709016, i32 4, i32 4, i32 1, i32 4, i32 4, i32 1, i32 1, i32 4, i32 1, i32 1048576 }, %struct.v4l2_fwht_pixfmt_info { i32 875708993, i32 4, i32 4, i32 1, i32 4, i32 4, i32 1, i32 1, i32 4, i32 1, i32 1048576 }, %struct.v4l2_fwht_pixfmt_info { i32 878072648, i32 4, i32 4, i32 1, i32 4, i32 4, i32 1, i32 1, i32 4, i32 1, i32 1572864 }, %struct.v4l2_fwht_pixfmt_info { i32 1497715271, i32 1, i32 1, i32 1, i32 1, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1048576 }], [304 x i8] zeroinitializer }, align 32
@v4l2_fwht_decode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 304, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013version %d is not supported, current version is %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"v4l2_fwht_decode\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"drivers/media/test-drivers/vicodec/codec-v4l2-fwht.c\00", [43 x i8] zeroinitializer }, align 32
@v4l2_fwht_decode._entry_ptr = internal global ptr @v4l2_fwht_decode._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [30 x i64] [i64 28, i64 32, i64 825382478, i64 825644622, i64 842093913, i64 842094158, i64 842094169, i64 842290766, i64 859981650, i64 861030210, i64 861295432, i64 875708738, i64 875708754, i64 875708993, i64 875709016, i64 875713089, i64 875713112, i64 875714126, i64 875714626, i64 875714642, i64 876758866, i64 877807426, i64 878072648, i64 909203022, i64 1345466932, i64 1431918169, i64 1448695129, i64 1497715271, i64 1498765654, i64 1498831189]
@__sancov_gen_cov_switch_values.3 = internal global [4 x i64] [i64 2, i64 32, i64 842290766, i64 875714126]
@__sancov_gen_cov_switch_values.4 = internal global [30 x i64] [i64 28, i64 32, i64 825382478, i64 825644622, i64 842093913, i64 842094158, i64 842094169, i64 842290766, i64 859981650, i64 861030210, i64 861295432, i64 875708738, i64 875708754, i64 875708993, i64 875709016, i64 875713089, i64 875713112, i64 875714126, i64 875714626, i64 875714642, i64 876758866, i64 877807426, i64 878072648, i64 909203022, i64 1345466932, i64 1431918169, i64 1448695129, i64 1497715271, i64 1498765654, i64 1498831189]
@__sancov_gen_cov_switch_values.5 = internal global [4 x i64] [i64 2, i64 32, i64 842290766, i64 875714126]
@___asan_gen_.6 = private unnamed_addr constant [18 x i8] c"v4l2_fwht_pixfmts\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 13, i32 43 }
@___asan_gen_.9 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.18 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.19 = private constant [56 x i8] c"../drivers/media/test-drivers/vicodec/codec-v4l2-fwht.c\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 303, i32 3 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @v4l2_fwht_decode._entry, ptr @v4l2_fwht_decode._entry_ptr, ptr @v4l2_fwht_pixfmts, ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v4l2_fwht_pixfmts to i32), i32 1232, i32 1536, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v4l2_fwht_decode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @v4l2_fwht_validate_fmt(ptr nocapture noundef readonly %info, i32 noundef %width_div, i32 noundef %height_div, i32 noundef %components_num, i32 noundef %pixenc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %width_div1 = getelementptr inbounds %struct.v4l2_fwht_pixfmt_info, ptr %info, i32 0, i32 6
  %0 = ptrtoint ptr %width_div1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %width_div1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %width_div)
  %cmp = icmp eq i32 %1, %width_div
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %height_div2 = getelementptr inbounds %struct.v4l2_fwht_pixfmt_info, ptr %info, i32 0, i32 7
  %2 = ptrtoint ptr %height_div2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %height_div2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %height_div)
  %cmp3 = icmp eq i32 %3, %height_div
  br i1 %cmp3, label %land.lhs.true4, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true4:                                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pixenc)
  %tobool.not = icmp eq i32 %pixenc, 0
  br i1 %tobool.not, label %land.lhs.true4.land.lhs.true7_crit_edge, label %lor.lhs.false

land.lhs.true4.land.lhs.true7_crit_edge:          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true7

lor.lhs.false:                                    ; preds = %land.lhs.true4
  %pixenc5 = getelementptr inbounds %struct.v4l2_fwht_pixfmt_info, ptr %info, i32 0, i32 10
  %4 = ptrtoint ptr %pixenc5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pixenc5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %pixenc)
  %cmp6 = icmp eq i32 %5, %pixenc
  br i1 %cmp6, label %lor.lhs.false.land.lhs.true7_crit_edge, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

lor.lhs.false.land.lhs.true7_crit_edge:           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true7

land.lhs.true7:                                   ; preds = %lor.lhs.false.land.lhs.true7_crit_edge, %land.lhs.true4.land.lhs.true7_crit_edge
  %components_num8 = getelementptr inbounds %struct.v4l2_fwht_pixfmt_info, ptr %info, i32 0, i32 8
  %6 = ptrtoint ptr %components_num8 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %components_num8, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %components_num)
  %cmp9 = icmp eq i32 %7, %components_num
  br i1 %cmp9, label %land.lhs.true7.return_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true7.return_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %lor.lhs.false.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  br label %return

return:                                           ; preds = %if.end, %land.lhs.true7.return_crit_edge
  %retval.0 = phi i1 [ false, %if.end ], [ true, %land.lhs.true7.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync)
define dso_local ptr @v4l2_fwht_find_nth_fmt(i32 noundef %width_div, i32 noundef %height_div, i32 noundef %components_num, i32 noundef %pixenc, i32 noundef %start_idx) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pixenc)
  %tobool.not.i = icmp eq i32 %pixenc, 0
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.018 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %start_idx.addr.016 = phi i32 [ %start_idx, %entry ], [ %start_idx.addr.2.ph, %for.inc.for.body_crit_edge ]
  %width_div1.i = getelementptr [28 x %struct.v4l2_fwht_pixfmt_info], ptr @v4l2_fwht_pixfmts, i32 0, i32 %i.018, i32 6
  %0 = ptrtoint ptr %width_div1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %width_div1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %width_div)
  %cmp.i = icmp eq i32 %1, %width_div
  br i1 %cmp.i, label %land.lhs.true.i, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true.i:                                  ; preds = %for.body
  %height_div2.i = getelementptr [28 x %struct.v4l2_fwht_pixfmt_info], ptr @v4l2_fwht_pixfmts, i32 0, i32 %i.018, i32 7
  %2 = ptrtoint ptr %height_div2.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %height_div2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %height_div)
  %cmp3.i = icmp eq i32 %3, %height_div
  br i1 %cmp3.i, label %land.lhs.true4.i, label %land.lhs.true.i.for.inc_crit_edge

land.lhs.true.i.for.inc_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  br i1 %tobool.not.i, label %land.lhs.true4.i.land.lhs.true7.i_crit_edge, label %lor.lhs.false.i

land.lhs.true4.i.land.lhs.true7.i_crit_edge:      ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true7.i

lor.lhs.false.i:                                  ; preds = %land.lhs.true4.i
  %pixenc5.i = getelementptr [28 x %struct.v4l2_fwht_pixfmt_info], ptr @v4l2_fwht_pixfmts, i32 0, i32 %i.018, i32 10
  %4 = ptrtoint ptr %pixenc5.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pixenc5.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %pixenc)
  %cmp6.i = icmp eq i32 %5, %pixenc
  br i1 %cmp6.i, label %lor.lhs.false.i.land.lhs.true7.i_crit_edge, label %lor.lhs.false.i.for.inc_crit_edge

lor.lhs.false.i.for.inc_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

lor.lhs.false.i.land.lhs.true7.i_crit_edge:       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true7.i

land.lhs.true7.i:                                 ; preds = %lor.lhs.false.i.land.lhs.true7.i_crit_edge, %land.lhs.true4.i.land.lhs.true7.i_crit_edge
  %components_num8.i = getelementptr [28 x %struct.v4l2_fwht_pixfmt_info], ptr @v4l2_fwht_pixfmts, i32 0, i32 %i.018, i32 8
  %6 = ptrtoint ptr %components_num8.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %components_num8.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %components_num)
  %cmp9.i = icmp eq i32 %7, %components_num
  br i1 %cmp9.i, label %if.then, label %land.lhs.true7.i.for.inc_crit_edge

land.lhs.true7.i.for.inc_crit_edge:               ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then:                                          ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %start_idx.addr.016)
  %cmp1 = icmp eq i32 %start_idx.addr.016, 0
  br i1 %cmp1, label %cleanup, label %if.end

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %dec = add i32 %start_idx.addr.016, -1
  br label %for.inc

cleanup:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr = getelementptr %struct.v4l2_fwht_pixfmt_info, ptr @v4l2_fwht_pixfmts, i32 %i.018
  br label %cleanup4

for.inc:                                          ; preds = %if.end, %land.lhs.true7.i.for.inc_crit_edge, %lor.lhs.false.i.for.inc_crit_edge, %land.lhs.true.i.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %start_idx.addr.2.ph = phi i32 [ %start_idx.addr.016, %land.lhs.true7.i.for.inc_crit_edge ], [ %start_idx.addr.016, %lor.lhs.false.i.for.inc_crit_edge ], [ %start_idx.addr.016, %land.lhs.true.i.for.inc_crit_edge ], [ %start_idx.addr.016, %for.body.for.inc_crit_edge ], [ %dec, %if.end ]
  %inc = add nuw nsw i32 %i.018, 1
  %exitcond.not = icmp eq i32 %inc, 28
  br i1 %exitcond.not, label %for.inc.cleanup4_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.cleanup4_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup4

cleanup4:                                         ; preds = %for.inc.cleanup4_crit_edge, %cleanup
  %retval.2 = phi ptr [ %add.ptr, %cleanup ], [ null, %for.inc.cleanup4_crit_edge ]
  ret ptr %retval.2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync)
define dso_local ptr @v4l2_fwht_find_pixfmt(i32 noundef %pixelformat) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %pixelformat to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %pixelformat, label %entry.cleanup_crit_edge [
    i32 842093913, label %entry.if.then_crit_edge
    i32 842094169, label %if.then.fold.split
    i32 1345466932, label %if.then.fold.split8
    i32 842094158, label %if.then.fold.split9
    i32 825382478, label %if.then.fold.split10
    i32 909203022, label %if.then.fold.split11
    i32 825644622, label %if.then.fold.split12
    i32 875714126, label %if.then.fold.split13
    i32 842290766, label %if.then.fold.split14
    i32 1448695129, label %if.then.fold.split15
    i32 1431918169, label %if.then.fold.split16
    i32 1498831189, label %if.then.fold.split17
    i32 1498765654, label %if.then.fold.split18
    i32 861030210, label %if.then.fold.split19
    i32 859981650, label %if.then.fold.split20
    i32 861295432, label %if.then.fold.split21
    i32 877807426, label %if.then.fold.split22
    i32 875713112, label %if.then.fold.split23
    i32 875713089, label %if.then.fold.split24
    i32 876758866, label %if.then.fold.split25
    i32 875714626, label %if.then.fold.split26
    i32 875708738, label %if.then.fold.split27
    i32 875714642, label %if.then.fold.split28
    i32 875708754, label %if.then.fold.split29
    i32 875709016, label %if.then.fold.split30
    i32 875708993, label %if.then.fold.split31
    i32 878072648, label %if.then.fold.split32
    i32 1497715271, label %if.then.fold.split33
  ]

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.fold.split:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then.fold.split8:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then.fold.split9:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then.fold.split10:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then.fold.split11:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then.fold.split12:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then.fold.split13:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then.fold.split14:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then.fold.split15:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then.fold.split16:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then.fold.split17:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then.fold.split18:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then.fold.split19:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then.fold.split20:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then.fold.split21:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then.fold.split22:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then.fold.split23:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then.fold.split24:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then.fold.split25:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then.fold.split26:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then.fold.split27:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then.fold.split28:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then.fold.split29:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then.fold.split30:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then.fold.split31:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then.fold.split32:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then.fold.split33:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %if.then.fold.split33, %if.then.fold.split32, %if.then.fold.split31, %if.then.fold.split30, %if.then.fold.split29, %if.then.fold.split28, %if.then.fold.split27, %if.then.fold.split26, %if.then.fold.split25, %if.then.fold.split24, %if.then.fold.split23, %if.then.fold.split22, %if.then.fold.split21, %if.then.fold.split20, %if.then.fold.split19, %if.then.fold.split18, %if.then.fold.split17, %if.then.fold.split16, %if.then.fold.split15, %if.then.fold.split14, %if.then.fold.split13, %if.then.fold.split12, %if.then.fold.split11, %if.then.fold.split10, %if.then.fold.split9, %if.then.fold.split8, %if.then.fold.split, %entry.if.then_crit_edge
  %i.06.lcssa = phi i32 [ 0, %entry.if.then_crit_edge ], [ 1, %if.then.fold.split ], [ 2, %if.then.fold.split8 ], [ 3, %if.then.fold.split9 ], [ 4, %if.then.fold.split10 ], [ 5, %if.then.fold.split11 ], [ 6, %if.then.fold.split12 ], [ 7, %if.then.fold.split13 ], [ 8, %if.then.fold.split14 ], [ 9, %if.then.fold.split15 ], [ 10, %if.then.fold.split16 ], [ 11, %if.then.fold.split17 ], [ 12, %if.then.fold.split18 ], [ 13, %if.then.fold.split19 ], [ 14, %if.then.fold.split20 ], [ 15, %if.then.fold.split21 ], [ 16, %if.then.fold.split22 ], [ 17, %if.then.fold.split23 ], [ 18, %if.then.fold.split24 ], [ 19, %if.then.fold.split25 ], [ 20, %if.then.fold.split26 ], [ 21, %if.then.fold.split27 ], [ 22, %if.then.fold.split28 ], [ 23, %if.then.fold.split29 ], [ 24, %if.then.fold.split30 ], [ 25, %if.then.fold.split31 ], [ 26, %if.then.fold.split32 ], [ 27, %if.then.fold.split33 ]
  %add.ptr = getelementptr %struct.v4l2_fwht_pixfmt_info, ptr @v4l2_fwht_pixfmts, i32 %i.06.lcssa
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %add.ptr, %if.then ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @v4l2_fwht_get_pixfmt(i32 noundef %idx) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 27, i32 %idx)
  %cmp = icmp ugt i32 %idx, 27
  %add.ptr = getelementptr %struct.v4l2_fwht_pixfmt_info, ptr @v4l2_fwht_pixfmts, i32 %idx
  %retval.0 = select i1 %cmp, ptr null, ptr %add.ptr
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @v4l2_fwht_encode(ptr noundef %state, ptr noundef %p_in, ptr noundef %p_out) local_unnamed_addr #4 align 64 {
entry:
  %cf = alloca %struct.fwht_cframe, align 4
  %rf = alloca %struct.fwht_raw_frame, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %stride = getelementptr inbounds %struct.v4l2_fwht_state, ptr %state, i32 0, i32 5
  %0 = ptrtoint ptr %stride to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %stride, align 4
  %coded_height = getelementptr inbounds %struct.v4l2_fwht_state, ptr %state, i32 0, i32 4
  %2 = ptrtoint ptr %coded_height to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %coded_height, align 8
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %state, align 8
  call void @llvm.lifetime.start.p0(i64 396, ptr nonnull %cf) #8
  %6 = getelementptr inbounds i8, ptr %cf, i32 8
  %7 = call ptr @memset(ptr %6, i32 255, i32 388)
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %rf) #8
  %8 = call ptr @memset(ptr %rf, i32 255, i32 40)
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %mul = mul i32 %3, %1
  %call = call fastcc i32 @prepare_raw_frame(ptr noundef nonnull %rf, ptr noundef nonnull %5, ptr noundef %p_in, i32 noundef %mul)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %planes_num = getelementptr inbounds %struct.v4l2_fwht_pixfmt_info, ptr %5, i32 0, i32 9
  %9 = ptrtoint ptr %planes_num to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %planes_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %10)
  %cmp = icmp eq i32 %10, 3
  %div139 = zext i1 %cmp to i32
  %spec.select = lshr i32 %1, %div139
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %5, align 4
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.3)
  switch i32 %12, label %if.end5.if.end13_crit_edge [
    i32 875714126, label %if.end5.if.then11_crit_edge
    i32 842290766, label %if.end5.if.then11_crit_edge140
  ]

if.end5.if.then11_crit_edge140:                   ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11

if.end5.if.then11_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11

if.end5.if.end13_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.then11:                                        ; preds = %if.end5.if.then11_crit_edge, %if.end5.if.then11_crit_edge140
  %mul12 = shl i32 %spec.select, 1
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end5.if.end13_crit_edge
  %chroma_stride.1 = phi i32 [ %mul12, %if.then11 ], [ %spec.select, %if.end5.if.end13_crit_edge ]
  %i_frame_qp = getelementptr inbounds %struct.v4l2_fwht_state, ptr %state, i32 0, i32 9
  %14 = ptrtoint ptr %i_frame_qp to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %i_frame_qp, align 4
  %16 = ptrtoint ptr %cf to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %cf, align 4
  %p_frame_qp = getelementptr inbounds %struct.v4l2_fwht_state, ptr %state, i32 0, i32 10
  %17 = ptrtoint ptr %p_frame_qp to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %p_frame_qp, align 2
  %p_frame_qp15 = getelementptr inbounds %struct.fwht_cframe, ptr %cf, i32 0, i32 1
  %19 = ptrtoint ptr %p_frame_qp15 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %p_frame_qp15, align 2
  %add.ptr = getelementptr i8, ptr %p_out, i32 44
  %rlc_data = getelementptr inbounds %struct.fwht_cframe, ptr %cf, i32 0, i32 2
  %20 = ptrtoint ptr %rlc_data to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %add.ptr, ptr %rlc_data, align 4
  %ref_frame = getelementptr inbounds %struct.v4l2_fwht_state, ptr %state, i32 0, i32 15
  %gop_cnt = getelementptr inbounds %struct.v4l2_fwht_state, ptr %state, i32 0, i32 8
  %21 = ptrtoint ptr %gop_cnt to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %gop_cnt, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool16.not = icmp eq i32 %22, 0
  %gop_size = getelementptr inbounds %struct.v4l2_fwht_state, ptr %state, i32 0, i32 7
  %23 = ptrtoint ptr %gop_size to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %gop_size, align 4
  %sub = add i32 %24, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %sub)
  %cmp18 = icmp eq i32 %22, %sub
  %visible_width = getelementptr inbounds %struct.v4l2_fwht_state, ptr %state, i32 0, i32 1
  %25 = ptrtoint ptr %visible_width to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %visible_width, align 4
  %visible_height = getelementptr inbounds %struct.v4l2_fwht_state, ptr %state, i32 0, i32 2
  %27 = ptrtoint ptr %visible_height to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %visible_height, align 8
  %29 = ptrtoint ptr %stride to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %stride, align 4
  %call20 = call i32 @fwht_encode_frame(ptr noundef nonnull %rf, ptr noundef %ref_frame, ptr noundef nonnull %cf, i1 noundef zeroext %tobool16.not, i1 noundef zeroext %cmp18, i32 noundef %26, i32 noundef %28, i32 noundef %30, i32 noundef %chroma_stride.1) #8
  %and = and i32 %call20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool21.not = icmp eq i32 %and, 0
  br i1 %tobool21.not, label %if.then22, label %if.end13.if.end24_crit_edge

if.end13.if.end24_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

if.then22:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %31 = ptrtoint ptr %gop_cnt to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %gop_cnt, align 8
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %if.end13.if.end24_crit_edge
  %32 = ptrtoint ptr %gop_cnt to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %gop_cnt, align 8
  %inc = add i32 %33, 1
  %34 = ptrtoint ptr %gop_size to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %gop_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %35)
  %cmp27.not = icmp ult i32 %inc, %35
  %spec.store.select = select i1 %cmp27.not, i32 %inc, i32 0
  %36 = ptrtoint ptr %gop_cnt to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %spec.store.select, ptr %gop_cnt, align 8
  %37 = ptrtoint ptr %p_out to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 1330597711, ptr %p_out, align 4
  %magic2 = getelementptr inbounds %struct.fwht_cframe_hdr, ptr %p_out, i32 0, i32 1
  %38 = ptrtoint ptr %magic2 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 -1, ptr %magic2, align 4
  %version = getelementptr inbounds %struct.fwht_cframe_hdr, ptr %p_out, i32 0, i32 2
  %39 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 3, ptr %version, align 4
  %40 = ptrtoint ptr %visible_width to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %visible_width, align 4
  %width = getelementptr inbounds %struct.fwht_cframe_hdr, ptr %p_out, i32 0, i32 3
  %42 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %width, align 4
  %43 = ptrtoint ptr %visible_height to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %visible_height, align 8
  %height = getelementptr inbounds %struct.fwht_cframe_hdr, ptr %p_out, i32 0, i32 4
  %45 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %height, align 4
  %components_num = getelementptr inbounds %struct.v4l2_fwht_pixfmt_info, ptr %5, i32 0, i32 8
  %46 = ptrtoint ptr %components_num to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %components_num, align 4
  %sub33 = shl i32 %47, 16
  %shl = add i32 %sub33, -65536
  %pixenc = getelementptr inbounds %struct.v4l2_fwht_pixfmt_info, ptr %5, i32 0, i32 10
  %48 = ptrtoint ptr %pixenc to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %pixenc, align 4
  %and35 = shl i32 %call20, 2
  %and50 = shl i32 %call20, 4
  %50 = and i32 %and50, 512
  %51 = and i32 %and35, 112
  %52 = or i32 %51, %50
  %53 = or i32 %52, %49
  %54 = or i32 %53, %shl
  %or58 = or i32 %54, 1024
  %flags.4 = select i1 %tobool21.not, i32 %or58, i32 %54
  %height_div = getelementptr inbounds %struct.fwht_raw_frame, ptr %rf, i32 0, i32 1
  %55 = ptrtoint ptr %height_div to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %height_div, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %56)
  %cmp60 = icmp eq i32 %56, 1
  %or62 = or i32 %flags.4, 128
  %flags.5 = select i1 %cmp60, i32 %or62, i32 %flags.4
  %57 = ptrtoint ptr %rf to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %rf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %58)
  %cmp64 = icmp eq i32 %58, 1
  %or66 = or i32 %flags.5, 256
  %flags.6 = select i1 %cmp64, i32 %or66, i32 %flags.5
  %flags68 = getelementptr inbounds %struct.fwht_cframe_hdr, ptr %p_out, i32 0, i32 5
  %59 = ptrtoint ptr %flags68 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %flags.6, ptr %flags68, align 4
  %colorspace = getelementptr inbounds %struct.v4l2_fwht_state, ptr %state, i32 0, i32 11
  %60 = ptrtoint ptr %colorspace to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %colorspace, align 8
  %colorspace69 = getelementptr inbounds %struct.fwht_cframe_hdr, ptr %p_out, i32 0, i32 6
  %62 = ptrtoint ptr %colorspace69 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %colorspace69, align 4
  %xfer_func = getelementptr inbounds %struct.v4l2_fwht_state, ptr %state, i32 0, i32 13
  %63 = ptrtoint ptr %xfer_func to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %xfer_func, align 8
  %xfer_func70 = getelementptr inbounds %struct.fwht_cframe_hdr, ptr %p_out, i32 0, i32 7
  %65 = ptrtoint ptr %xfer_func70 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %xfer_func70, align 4
  %ycbcr_enc = getelementptr inbounds %struct.v4l2_fwht_state, ptr %state, i32 0, i32 12
  %66 = ptrtoint ptr %ycbcr_enc to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %ycbcr_enc, align 4
  %ycbcr_enc71 = getelementptr inbounds %struct.fwht_cframe_hdr, ptr %p_out, i32 0, i32 8
  %68 = ptrtoint ptr %ycbcr_enc71 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %ycbcr_enc71, align 4
  %quantization = getelementptr inbounds %struct.v4l2_fwht_state, ptr %state, i32 0, i32 14
  %69 = ptrtoint ptr %quantization to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %quantization, align 4
  %quantization72 = getelementptr inbounds %struct.fwht_cframe_hdr, ptr %p_out, i32 0, i32 9
  %71 = ptrtoint ptr %quantization72 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %quantization72, align 4
  %size73 = getelementptr inbounds %struct.fwht_cframe, ptr %cf, i32 0, i32 6
  %72 = ptrtoint ptr %size73 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %size73, align 4
  %size74 = getelementptr inbounds %struct.fwht_cframe_hdr, ptr %p_out, i32 0, i32 10
  %74 = ptrtoint ptr %size74 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %size74, align 4
  %add = add i32 %73, 44
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %add, %if.end24 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %rf) #8
  call void @llvm.lifetime.end.p0(i64 396, ptr nonnull %cf) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @prepare_raw_frame(ptr noundef %rf, ptr nocapture noundef readonly %info, ptr noundef %buf, i32 noundef %size) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %luma = getelementptr inbounds %struct.fwht_raw_frame, ptr %rf, i32 0, i32 6
  %0 = ptrtoint ptr %luma to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %buf, ptr %luma, align 4
  %width_div = getelementptr inbounds %struct.v4l2_fwht_pixfmt_info, ptr %info, i32 0, i32 6
  %1 = ptrtoint ptr %width_div to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %width_div, align 4
  %3 = ptrtoint ptr %rf to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %rf, align 4
  %height_div = getelementptr inbounds %struct.v4l2_fwht_pixfmt_info, ptr %info, i32 0, i32 7
  %4 = ptrtoint ptr %height_div to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %height_div, align 4
  %height_div2 = getelementptr inbounds %struct.fwht_raw_frame, ptr %rf, i32 0, i32 1
  %6 = ptrtoint ptr %height_div2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %height_div2, align 4
  %luma_alpha_step = getelementptr inbounds %struct.v4l2_fwht_pixfmt_info, ptr %info, i32 0, i32 4
  %7 = ptrtoint ptr %luma_alpha_step to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %luma_alpha_step, align 4
  %luma_alpha_step3 = getelementptr inbounds %struct.fwht_raw_frame, ptr %rf, i32 0, i32 2
  %9 = ptrtoint ptr %luma_alpha_step3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %luma_alpha_step3, align 4
  %chroma_step = getelementptr inbounds %struct.v4l2_fwht_pixfmt_info, ptr %info, i32 0, i32 5
  %10 = ptrtoint ptr %chroma_step to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %chroma_step, align 4
  %chroma_step4 = getelementptr inbounds %struct.fwht_raw_frame, ptr %rf, i32 0, i32 3
  %12 = ptrtoint ptr %chroma_step4 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %chroma_step4, align 4
  %alpha = getelementptr inbounds %struct.fwht_raw_frame, ptr %rf, i32 0, i32 9
  %13 = ptrtoint ptr %alpha to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %alpha, align 4
  %components_num = getelementptr inbounds %struct.v4l2_fwht_pixfmt_info, ptr %info, i32 0, i32 8
  %14 = ptrtoint ptr %components_num to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %components_num, align 4
  %components_num5 = getelementptr inbounds %struct.fwht_raw_frame, ptr %rf, i32 0, i32 4
  %16 = ptrtoint ptr %components_num5 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %components_num5, align 4
  %tobool.not = icmp eq ptr %buf, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %17 = call ptr @memset(ptr %luma, i32 0, i32 16)
  br label %return

if.end:                                           ; preds = %entry
  %18 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %info, align 4
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.4)
  switch i32 %19, label %if.end.return_crit_edge [
    i32 1497715271, label %sw.bb
    i32 842093913, label %sw.bb10
    i32 842094169, label %sw.bb16
    i32 1345466932, label %sw.bb24
    i32 842094158, label %if.end.sw.bb32_crit_edge
    i32 909203022, label %if.end.sw.bb32_crit_edge239
    i32 875714126, label %if.end.sw.bb32_crit_edge240
    i32 825382478, label %if.end.sw.bb39_crit_edge
    i32 825644622, label %if.end.sw.bb39_crit_edge241
    i32 842290766, label %if.end.sw.bb39_crit_edge242
    i32 1448695129, label %sw.bb46
    i32 1431918169, label %sw.bb53
    i32 1498831189, label %sw.bb60
    i32 1498765654, label %sw.bb67
    i32 859981650, label %if.end.sw.bb75_crit_edge
    i32 861295432, label %if.end.sw.bb75_crit_edge243
    i32 861030210, label %sw.bb83
    i32 876758866, label %if.end.sw.bb91_crit_edge
    i32 875714626, label %if.end.sw.bb91_crit_edge244
    i32 878072648, label %if.end.sw.bb91_crit_edge245
    i32 875708738, label %if.end.sw.bb91_crit_edge246
    i32 877807426, label %if.end.sw.bb102_crit_edge
    i32 875713112, label %if.end.sw.bb102_crit_edge247
    i32 875713089, label %if.end.sw.bb102_crit_edge248
    i32 875714642, label %if.end.sw.bb113_crit_edge
    i32 875708754, label %if.end.sw.bb113_crit_edge249
    i32 875709016, label %if.end.sw.bb124_crit_edge
    i32 875708993, label %if.end.sw.bb124_crit_edge250
  ]

if.end.sw.bb124_crit_edge250:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb124

if.end.sw.bb124_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb124

if.end.sw.bb113_crit_edge249:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb113

if.end.sw.bb113_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb113

if.end.sw.bb102_crit_edge248:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb102

if.end.sw.bb102_crit_edge247:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb102

if.end.sw.bb102_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb102

if.end.sw.bb91_crit_edge246:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb91

if.end.sw.bb91_crit_edge245:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb91

if.end.sw.bb91_crit_edge244:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb91

if.end.sw.bb91_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb91

if.end.sw.bb75_crit_edge243:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb75

if.end.sw.bb75_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb75

if.end.sw.bb39_crit_edge242:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb39

if.end.sw.bb39_crit_edge241:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb39

if.end.sw.bb39_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb39

if.end.sw.bb32_crit_edge240:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb32

if.end.sw.bb32_crit_edge239:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb32

if.end.sw.bb32_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb32

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %cb8 = getelementptr inbounds %struct.fwht_raw_frame, ptr %rf, i32 0, i32 7
  %21 = ptrtoint ptr %cb8 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %cb8, align 4
  %cr9 = getelementptr inbounds %struct.fwht_raw_frame, ptr %rf, i32 0, i32 8
  %22 = ptrtoint ptr %cr9 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %cr9, align 4
  br label %return

sw.bb10:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr = getelementptr i8, ptr %buf, i32 %size
  %cb12 = getelementptr inbounds %struct.fwht_raw_frame, ptr %rf, i32 0, i32 7
  %23 = ptrtoint ptr %cb12 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %add.ptr, ptr %cb12, align 4
  %div238 = lshr i32 %size, 2
  %add.ptr14 = getelementptr i8, ptr %add.ptr, i32 %div238
  %cr15 = getelementptr inbounds %struct.fwht_raw_frame, ptr %rf, i32 0, i32 8
  %24 = ptrtoint ptr %cr15 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %add.ptr14, ptr %cr15, align 4
  br label %return

sw.bb16:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr18 = getelementptr i8, ptr %buf, i32 %size
  %cr19 = getelementptr inbounds %struct.fwht_raw_frame, ptr %rf, i32 0, i32 8
  %25 = ptrtoint ptr %cr19 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %add.ptr18, ptr %cr19, align 4
  %div21237 = lshr i32 %size, 2
  %add.ptr22 = getelementptr i8, ptr %add.ptr18, i32 %div21237
  %cb23 = getelementptr inbounds %struct.fwht_raw_frame, ptr %rf, i32 0, i32 7
  %26 = ptrtoint ptr %cb23 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %add.ptr22, ptr %cb23, align 4
  br label %return

sw.bb24:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr26 = getelementptr i8, ptr %buf, i32 %size
  %cb27 = getelementptr inbounds %struct.fwht_raw_frame, ptr %rf, i32 0, i32 7
  %27 = ptrtoint ptr %cb27 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %add.ptr26, ptr %cb27, align 4
  %div29236 = lshr i32 %size, 1
  %add.ptr30 = getelementptr i8, ptr %add.ptr26, i32 %div29236
  %cr31 = getelementptr inbounds %struct.fwht_raw_frame, ptr %rf, i32 0, i32 8
  %28 = ptrtoint ptr %cr31 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %add.ptr30, ptr %cr31, align 4
  br label %return

sw.bb32:                                          ; preds = %if.end.sw.bb32_crit_edge, %if.end.sw.bb32_crit_edge239, %if.end.sw.bb32_crit_edge240
  %add.ptr34 = getelementptr i8, ptr %buf, i32 %size
  %cb35 = getelementptr inbounds %struct.fwht_raw_frame, ptr %rf, i32 0, i32 7
  %29 = ptrtoint ptr %cb35 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %add.ptr34, ptr %cb35, align 4
  %add.ptr37 = getelementptr i8, ptr %add.ptr34, i32 1
  %cr38 = getelementptr inbounds %struct.fwht_raw_frame, ptr %rf, i32 0, i32 8
  %30 = ptrtoint ptr %cr38 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %add.ptr37, ptr %cr38, align 4
  br label %return

sw.bb39:                                          ; preds = %if.end.sw.bb39_crit_edge, %if.end.sw.bb39_crit_edge241, %if.end.sw.bb39_crit_edge242
  %add.ptr41 = getelementptr i8, ptr %buf, i32 %size
  %cr42 = getelementptr inbounds %struct.fwht_raw_frame, ptr %rf, i32 0, i32 8
  %31 = ptrtoint ptr %cr42 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %add.ptr41, ptr %cr42, align 4
  %add.ptr44 = getelementptr i8, ptr %add.ptr41, i32 1
  %cb45 = getelementptr inbounds %struct.fwht_raw_frame, ptr %rf, i32 0, i32 7
  %32 = ptrtoint ptr %cb45 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %add.ptr44, ptr %cb45, align 4
  br label %return

sw.bb46:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr48 = getelementptr i8, ptr %buf, i32 1
  %cb49 = getelementptr inbounds %struct.fwht_raw_frame, ptr %rf, i32 0, i32 7
  %33 = ptrtoint ptr %cb49 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %add.ptr48, ptr %cb49, align 4
  %add.ptr51 = getelementptr i8, ptr %buf, i32 3
  %cr52 = getelementptr inbounds %struct.fwht_raw_frame, ptr %rf, i32 0, i32 8
  %34 = ptrtoint ptr %cr52 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %add.ptr51, ptr %cr52, align 4
  br label %return

sw.bb53:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr55 = getelementptr i8, ptr %buf, i32 1
  %cr56 = getelementptr inbounds %struct.fwht_raw_frame, ptr %rf, i32 0, i32 8
  %35 = ptrtoint ptr %cr56 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %add.ptr55, ptr %cr56, align 4
  %add.ptr58 = getelementptr i8, ptr %buf, i32 3
  %cb59 = getelementptr inbounds %struct.fwht_raw_frame, ptr %rf, i32 0, i32 7
  %36 = ptrtoint ptr %cb59 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %add.ptr58, ptr %cb59, align 4
  br label %return

sw.bb60:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %cb62 = getelementptr inbounds %struct.fwht_raw_frame, ptr %rf, i32 0, i32 7
  %37 = ptrtoint ptr %cb62 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %buf, ptr %cb62, align 4
  %add.ptr64 = getelementptr i8, ptr %buf, i32 2
  %cr65 = getelementptr inbounds %struct.fwht_raw_frame, ptr %rf, i32 0, i32 8
  %38 = ptrtoint ptr %cr65 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %add.ptr64, ptr %cr65, align 4
  %incdec.ptr = getelementptr i8, ptr %buf, i32 1
  %39 = ptrtoint ptr %luma to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %incdec.ptr, ptr %luma, align 4
  br label %return

sw.bb67:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %cr69 = getelementptr inbounds %struct.fwht_raw_frame, ptr %rf, i32 0, i32 8
  %40 = ptrtoint ptr %cr69 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %buf, ptr %cr69, align 4
  %add.ptr71 = getelementptr i8, ptr %buf, i32 2
  %cb72 = getelementptr inbounds %struct.fwht_raw_frame, ptr %rf, i32 0, i32 7
  %41 = ptrtoint ptr %cb72 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %add.ptr71, ptr %cb72, align 4
  %incdec.ptr74 = getelementptr i8, ptr %buf, i32 1
  %42 = ptrtoint ptr %luma to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %incdec.ptr74, ptr %luma, align 4
  br label %return

sw.bb75:                                          ; preds = %if.end.sw.bb75_crit_edge, %if.end.sw.bb75_crit_edge243
  %cr77 = getelementptr inbounds %struct.fwht_raw_frame, ptr %rf, i32 0, i32 8
  %43 = ptrtoint ptr %cr77 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %buf, ptr %cr77, align 4
  %add.ptr79 = getelementptr i8, ptr %buf, i32 2
  %cb80 = getelementptr inbounds %struct.fwht_raw_frame, ptr %rf, i32 0, i32 7
  %44 = ptrtoint ptr %cb80 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %add.ptr79, ptr %cb80, align 4
  %incdec.ptr82 = getelementptr i8, ptr %buf, i32 1
  %45 = ptrtoint ptr %luma to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %incdec.ptr82, ptr %luma, align 4
  br label %return

sw.bb83:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %cb85 = getelementptr inbounds %struct.fwht_raw_frame, ptr %rf, i32 0, i32 7
  %46 = ptrtoint ptr %cb85 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %buf, ptr %cb85, align 4
  %add.ptr87 = getelementptr i8, ptr %buf, i32 2
  %cr88 = getelementptr inbounds %struct.fwht_raw_frame, ptr %rf, i32 0, i32 8
  %47 = ptrtoint ptr %cr88 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %add.ptr87, ptr %cr88, align 4
  %incdec.ptr90 = getelementptr i8, ptr %buf, i32 1
  %48 = ptrtoint ptr %luma to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %incdec.ptr90, ptr %luma, align 4
  br label %return

sw.bb91:                                          ; preds = %if.end.sw.bb91_crit_edge, %if.end.sw.bb91_crit_edge244, %if.end.sw.bb91_crit_edge245, %if.end.sw.bb91_crit_edge246
  %49 = ptrtoint ptr %alpha to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %buf, ptr %alpha, align 4
  %add.ptr95 = getelementptr i8, ptr %buf, i32 1
  %cr96 = getelementptr inbounds %struct.fwht_raw_frame, ptr %rf, i32 0, i32 8
  %50 = ptrtoint ptr %cr96 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %add.ptr95, ptr %cr96, align 4
  %add.ptr98 = getelementptr i8, ptr %buf, i32 3
  %cb99 = getelementptr inbounds %struct.fwht_raw_frame, ptr %rf, i32 0, i32 7
  %51 = ptrtoint ptr %cb99 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %add.ptr98, ptr %cb99, align 4
  %add.ptr101 = getelementptr i8, ptr %buf, i32 2
  %52 = ptrtoint ptr %luma to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %add.ptr101, ptr %luma, align 4
  br label %return

sw.bb102:                                         ; preds = %if.end.sw.bb102_crit_edge, %if.end.sw.bb102_crit_edge247, %if.end.sw.bb102_crit_edge248
  %cb104 = getelementptr inbounds %struct.fwht_raw_frame, ptr %rf, i32 0, i32 7
  %53 = ptrtoint ptr %cb104 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %buf, ptr %cb104, align 4
  %add.ptr106 = getelementptr i8, ptr %buf, i32 2
  %cr107 = getelementptr inbounds %struct.fwht_raw_frame, ptr %rf, i32 0, i32 8
  %54 = ptrtoint ptr %cr107 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %add.ptr106, ptr %cr107, align 4
  %incdec.ptr109 = getelementptr i8, ptr %buf, i32 1
  %55 = ptrtoint ptr %luma to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %incdec.ptr109, ptr %luma, align 4
  %add.ptr111 = getelementptr i8, ptr %buf, i32 3
  %56 = ptrtoint ptr %alpha to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %add.ptr111, ptr %alpha, align 4
  br label %return

sw.bb113:                                         ; preds = %if.end.sw.bb113_crit_edge, %if.end.sw.bb113_crit_edge249
  %57 = ptrtoint ptr %alpha to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %buf, ptr %alpha, align 4
  %add.ptr117 = getelementptr i8, ptr %buf, i32 1
  %cb118 = getelementptr inbounds %struct.fwht_raw_frame, ptr %rf, i32 0, i32 7
  %58 = ptrtoint ptr %cb118 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %add.ptr117, ptr %cb118, align 4
  %add.ptr120 = getelementptr i8, ptr %buf, i32 3
  %cr121 = getelementptr inbounds %struct.fwht_raw_frame, ptr %rf, i32 0, i32 8
  %59 = ptrtoint ptr %cr121 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %add.ptr120, ptr %cr121, align 4
  %add.ptr123 = getelementptr i8, ptr %buf, i32 2
  %60 = ptrtoint ptr %luma to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %add.ptr123, ptr %luma, align 4
  br label %return

sw.bb124:                                         ; preds = %if.end.sw.bb124_crit_edge, %if.end.sw.bb124_crit_edge250
  %add.ptr126 = getelementptr i8, ptr %buf, i32 3
  %61 = ptrtoint ptr %alpha to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %add.ptr126, ptr %alpha, align 4
  %cr129 = getelementptr inbounds %struct.fwht_raw_frame, ptr %rf, i32 0, i32 8
  %62 = ptrtoint ptr %cr129 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %buf, ptr %cr129, align 4
  %add.ptr131 = getelementptr i8, ptr %buf, i32 2
  %cb132 = getelementptr inbounds %struct.fwht_raw_frame, ptr %rf, i32 0, i32 7
  %63 = ptrtoint ptr %cb132 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %add.ptr131, ptr %cb132, align 4
  %incdec.ptr134 = getelementptr i8, ptr %buf, i32 1
  %64 = ptrtoint ptr %luma to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %incdec.ptr134, ptr %luma, align 4
  br label %return

return:                                           ; preds = %sw.bb124, %sw.bb113, %sw.bb102, %sw.bb91, %sw.bb83, %sw.bb75, %sw.bb67, %sw.bb60, %sw.bb53, %sw.bb46, %sw.bb39, %sw.bb32, %sw.bb24, %sw.bb16, %sw.bb10, %sw.bb, %if.end.return_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ -22, %if.end.return_crit_edge ], [ 0, %sw.bb124 ], [ 0, %sw.bb113 ], [ 0, %sw.bb102 ], [ 0, %sw.bb91 ], [ 0, %sw.bb83 ], [ 0, %sw.bb75 ], [ 0, %sw.bb67 ], [ 0, %sw.bb60 ], [ 0, %sw.bb53 ], [ 0, %sw.bb46 ], [ 0, %sw.bb39 ], [ 0, %sw.bb32 ], [ 0, %sw.bb24 ], [ 0, %sw.bb16 ], [ 0, %sw.bb10 ], [ 0, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fwht_encode_frame(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @v4l2_fwht_decode(ptr noundef %state, ptr noundef %p_in, ptr noundef %p_out) local_unnamed_addr #4 align 64 {
entry:
  %cf = alloca %struct.fwht_cframe, align 4
  %dst_rf = alloca %struct.fwht_raw_frame, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 396, ptr nonnull %cf) #8
  %0 = call ptr @memset(ptr %cf, i32 255, i32 392)
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %dst_rf) #8
  %1 = call ptr @memset(ptr %dst_rf, i32 255, i32 40)
  %stride = getelementptr inbounds %struct.v4l2_fwht_state, ptr %state, i32 0, i32 5
  %2 = ptrtoint ptr %stride to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %stride, align 4
  %ref_stride = getelementptr inbounds %struct.v4l2_fwht_state, ptr %state, i32 0, i32 6
  %4 = ptrtoint ptr %ref_stride to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ref_stride, align 8
  %coded_height = getelementptr inbounds %struct.v4l2_fwht_state, ptr %state, i32 0, i32 4
  %6 = ptrtoint ptr %coded_height to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %coded_height, align 8
  %mul = mul i32 %7, %3
  %8 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %state, align 8
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %version4 = getelementptr inbounds %struct.v4l2_fwht_state, ptr %state, i32 0, i32 16, i32 2
  %10 = ptrtoint ptr %version4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %version4, align 8
  %12 = add i32 %11, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3, i32 %12)
  %13 = icmp ult i32 %12, -3
  br i1 %13, label %do.end, label %if.end7

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %11, i32 noundef 3) #11
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %header = getelementptr inbounds %struct.v4l2_fwht_state, ptr %state, i32 0, i32 16
  %14 = ptrtoint ptr %header to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %header, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1330597711, i32 %15)
  %cmp9.not = icmp eq i32 %15, 1330597711
  br i1 %cmp9.not, label %lor.lhs.false10, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false10:                                  ; preds = %if.end7
  %magic2 = getelementptr inbounds %struct.v4l2_fwht_state, ptr %state, i32 0, i32 16, i32 1
  %16 = ptrtoint ptr %magic2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %magic2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %17)
  %cmp12.not = icmp eq i32 %17, -1
  br i1 %cmp12.not, label %if.end14, label %lor.lhs.false10.cleanup_crit_edge

lor.lhs.false10.cleanup_crit_edge:                ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end14:                                         ; preds = %lor.lhs.false10
  %width = getelementptr inbounds %struct.v4l2_fwht_state, ptr %state, i32 0, i32 16, i32 3
  %18 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %width, align 4
  %visible_width = getelementptr inbounds %struct.v4l2_fwht_state, ptr %state, i32 0, i32 1
  %20 = ptrtoint ptr %visible_width to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %visible_width, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %21)
  %cmp16.not = icmp eq i32 %19, %21
  br i1 %cmp16.not, label %lor.lhs.false17, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false17:                                  ; preds = %if.end14
  %height = getelementptr inbounds %struct.v4l2_fwht_state, ptr %state, i32 0, i32 16, i32 4
  %22 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %height, align 8
  %visible_height = getelementptr inbounds %struct.v4l2_fwht_state, ptr %state, i32 0, i32 2
  %24 = ptrtoint ptr %visible_height to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %visible_height, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %25)
  %cmp19.not = icmp eq i32 %23, %25
  br i1 %cmp19.not, label %if.end21, label %lor.lhs.false17.cleanup_crit_edge

lor.lhs.false17.cleanup_crit_edge:                ; preds = %lor.lhs.false17
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end21:                                         ; preds = %lor.lhs.false17
  %flags23 = getelementptr inbounds %struct.v4l2_fwht_state, ptr %state, i32 0, i32 16, i32 5
  %26 = ptrtoint ptr %flags23 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %flags23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp24 = icmp ugt i32 %11, 1
  br i1 %cmp24, label %if.then25, label %if.end21.if.end30_crit_edge

if.end21.if.end30_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

if.then25:                                        ; preds = %if.end21
  %and = and i32 %27, 1572864
  %pixenc = getelementptr inbounds %struct.v4l2_fwht_pixfmt_info, ptr %9, i32 0, i32 10
  %28 = ptrtoint ptr %pixenc to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %pixenc, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %29)
  %cmp26.not = icmp eq i32 %and, %29
  br i1 %cmp26.not, label %if.end28, label %if.then25.cleanup_crit_edge

if.then25.cleanup_crit_edge:                      ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end28:                                         ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #10
  %and29 = lshr i32 %27, 16
  %shr = and i32 %and29, 7
  %add = add nuw nsw i32 %shr, 1
  br label %if.end30

if.end30:                                         ; preds = %if.end28, %if.end21.if.end30_crit_edge
  %components_num.0 = phi i32 [ %add, %if.end28 ], [ 3, %if.end21.if.end30_crit_edge ]
  %components_num31 = getelementptr inbounds %struct.v4l2_fwht_pixfmt_info, ptr %9, i32 0, i32 8
  %30 = ptrtoint ptr %components_num31 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %components_num31, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %components_num.0, i32 %31)
  %cmp32.not = icmp eq i32 %components_num.0, %31
  br i1 %cmp32.not, label %if.end34, label %if.end30.cleanup_crit_edge

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end34:                                         ; preds = %if.end30
  %colorspace = getelementptr inbounds %struct.v4l2_fwht_state, ptr %state, i32 0, i32 16, i32 6
  %32 = ptrtoint ptr %colorspace to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %colorspace, align 8
  %colorspace36 = getelementptr inbounds %struct.v4l2_fwht_state, ptr %state, i32 0, i32 11
  %34 = ptrtoint ptr %colorspace36 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %colorspace36, align 8
  %xfer_func = getelementptr inbounds %struct.v4l2_fwht_state, ptr %state, i32 0, i32 16, i32 7
  %35 = ptrtoint ptr %xfer_func to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %xfer_func, align 4
  %xfer_func38 = getelementptr inbounds %struct.v4l2_fwht_state, ptr %state, i32 0, i32 13
  %37 = ptrtoint ptr %xfer_func38 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %xfer_func38, align 8
  %ycbcr_enc = getelementptr inbounds %struct.v4l2_fwht_state, ptr %state, i32 0, i32 16, i32 8
  %38 = ptrtoint ptr %ycbcr_enc to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %ycbcr_enc, align 8
  %ycbcr_enc40 = getelementptr inbounds %struct.v4l2_fwht_state, ptr %state, i32 0, i32 12
  %40 = ptrtoint ptr %ycbcr_enc40 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %ycbcr_enc40, align 4
  %quantization = getelementptr inbounds %struct.v4l2_fwht_state, ptr %state, i32 0, i32 16, i32 9
  %41 = ptrtoint ptr %quantization to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %quantization, align 4
  %quantization42 = getelementptr inbounds %struct.v4l2_fwht_state, ptr %state, i32 0, i32 14
  %43 = ptrtoint ptr %quantization42 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %quantization42, align 4
  %rlc_data = getelementptr inbounds %struct.fwht_cframe, ptr %cf, i32 0, i32 2
  %44 = ptrtoint ptr %rlc_data to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %p_in, ptr %rlc_data, align 4
  %size = getelementptr inbounds %struct.v4l2_fwht_state, ptr %state, i32 0, i32 16, i32 10
  %45 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %size, align 8
  %size44 = getelementptr inbounds %struct.fwht_cframe, ptr %cf, i32 0, i32 6
  %47 = ptrtoint ptr %size44 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %size44, align 4
  %and45 = and i32 %27, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  %cond = select i1 %tobool46.not, i32 2, i32 1
  %width_div = getelementptr inbounds %struct.v4l2_fwht_pixfmt_info, ptr %9, i32 0, i32 6
  %48 = ptrtoint ptr %width_div to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %width_div, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %cond, i32 %49)
  %cmp50.not = icmp eq i32 %cond, %49
  br i1 %cmp50.not, label %lor.lhs.false51, label %if.end34.cleanup_crit_edge

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false51:                                  ; preds = %if.end34
  %and47 = and i32 %27, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp eq i32 %and47, 0
  %cond49 = select i1 %tobool48.not, i32 2, i32 1
  %height_div = getelementptr inbounds %struct.v4l2_fwht_pixfmt_info, ptr %9, i32 0, i32 7
  %50 = ptrtoint ptr %height_div to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %height_div, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %cond49, i32 %51)
  %cmp52.not = icmp eq i32 %cond49, %51
  br i1 %cmp52.not, label %if.end54, label %lor.lhs.false51.cleanup_crit_edge

lor.lhs.false51.cleanup_crit_edge:                ; preds = %lor.lhs.false51
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end54:                                         ; preds = %lor.lhs.false51
  %call55 = call fastcc i32 @prepare_raw_frame(ptr noundef nonnull %dst_rf, ptr noundef nonnull %9, ptr noundef %p_out, i32 noundef %mul)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.end58, label %if.end54.cleanup_crit_edge

if.end54.cleanup_crit_edge:                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end58:                                         ; preds = %if.end54
  %planes_num = getelementptr inbounds %struct.v4l2_fwht_pixfmt_info, ptr %9, i32 0, i32 9
  %52 = ptrtoint ptr %planes_num to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %planes_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %53)
  %cmp59 = icmp eq i32 %53, 3
  %div151 = zext i1 %cmp59 to i32
  %dst_chroma_stride.0 = lshr i32 %3, %div151
  %ref_chroma_stride.0 = lshr i32 %5, %div151
  %54 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %9, align 4
  %56 = zext i32 %55 to i64
  call void @__sanitizer_cov_trace_switch(i64 %56, ptr @__sancov_gen_cov_switch_values.5)
  switch i32 %55, label %if.end58.if.end70_crit_edge [
    i32 875714126, label %if.end58.if.then67_crit_edge
    i32 842290766, label %if.end58.if.then67_crit_edge153
  ]

if.end58.if.then67_crit_edge153:                  ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then67

if.end58.if.then67_crit_edge:                     ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then67

if.end58.if.end70_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end70

if.then67:                                        ; preds = %if.end58.if.then67_crit_edge, %if.end58.if.then67_crit_edge153
  %mul68 = shl i32 %dst_chroma_stride.0, 1
  %mul69 = shl i32 %ref_chroma_stride.0, 1
  br label %if.end70

if.end70:                                         ; preds = %if.then67, %if.end58.if.end70_crit_edge
  %dst_chroma_stride.1 = phi i32 [ %mul68, %if.then67 ], [ %dst_chroma_stride.0, %if.end58.if.end70_crit_edge ]
  %ref_chroma_stride.1 = phi i32 [ %mul69, %if.then67 ], [ %ref_chroma_stride.0, %if.end58.if.end70_crit_edge ]
  %57 = ptrtoint ptr %ref_stride to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %ref_stride, align 8
  %59 = ptrtoint ptr %coded_height to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %coded_height, align 8
  %mul73 = mul i32 %60, %58
  %ref_frame = getelementptr inbounds %struct.v4l2_fwht_state, ptr %state, i32 0, i32 15
  %buf = getelementptr inbounds %struct.v4l2_fwht_state, ptr %state, i32 0, i32 15, i32 5
  %61 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %buf, align 4
  %call75 = call fastcc i32 @prepare_raw_frame(ptr noundef %ref_frame, ptr noundef nonnull %9, ptr noundef %62, i32 noundef %mul73)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %if.end78, label %if.end70.cleanup_crit_edge

if.end70.cleanup_crit_edge:                       ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end78:                                         ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #10
  %63 = ptrtoint ptr %visible_width to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %visible_width, align 4
  %65 = ptrtoint ptr %visible_height to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %visible_height, align 8
  %67 = ptrtoint ptr %ref_stride to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %ref_stride, align 8
  %69 = ptrtoint ptr %stride to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %stride, align 4
  %call84 = call zeroext i1 @fwht_decode_frame(ptr noundef nonnull %cf, i32 noundef %27, i32 noundef %components_num.0, i32 noundef %64, i32 noundef %66, ptr noundef %ref_frame, i32 noundef %68, i32 noundef %ref_chroma_stride.1, ptr noundef nonnull %dst_rf, i32 noundef %70, i32 noundef %dst_chroma_stride.1) #8
  %. = select i1 %call84, i32 0, i32 -22
  br label %cleanup

cleanup:                                          ; preds = %if.end78, %if.end70.cleanup_crit_edge, %if.end54.cleanup_crit_edge, %lor.lhs.false51.cleanup_crit_edge, %if.end34.cleanup_crit_edge, %if.end30.cleanup_crit_edge, %if.then25.cleanup_crit_edge, %lor.lhs.false17.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %lor.lhs.false10.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false10.cleanup_crit_edge ], [ -22, %if.end7.cleanup_crit_edge ], [ -22, %lor.lhs.false17.cleanup_crit_edge ], [ -22, %if.end14.cleanup_crit_edge ], [ -22, %if.then25.cleanup_crit_edge ], [ -22, %if.end30.cleanup_crit_edge ], [ -22, %lor.lhs.false51.cleanup_crit_edge ], [ -22, %if.end34.cleanup_crit_edge ], [ -22, %if.end54.cleanup_crit_edge ], [ -22, %if.end70.cleanup_crit_edge ], [ %., %if.end78 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %dst_rf) #8
  call void @llvm.lifetime.end.p0(i64 396, ptr nonnull %cf) #8
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @fwht_decode_frame(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/test-drivers/vicodec/codec-v4l2-fwht.c", i32 303, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @v4l2_fwht_decode._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @v4l2_fwht_decode._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @v4l2_fwht_pixfmts, !7, !"v4l2_fwht_pixfmts", i1 false, i1 false}
!7 = !{!"../drivers/media/test-drivers/vicodec/codec-v4l2-fwht.c", i32 13, i32 43}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 8, !"branch-target-enforcement", i32 0}
!11 = !{i32 8, !"sign-return-address", i32 0}
!12 = !{i32 8, !"sign-return-address-all", i32 0}
!13 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
