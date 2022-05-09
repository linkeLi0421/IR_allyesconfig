; ModuleID = '/llk/IR_all_yes/drivers/media/platform/mtk-jpeg/mtk_jpeg_dec_hw.c_pt.bc'
source_filename = "../drivers/media/platform/mtk-jpeg/mtk_jpeg_dec_hw.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mtk_jpeg_dec_param = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, [3 x i32], i32, i32, i32, i32, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, i32, i32, i8 }
%struct.mtk_jpeg_bs = type { i32, i32, i32 }

@mtk_jpeg_verify_align._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 29, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013mtk-jpeg: write reg %x without %d align\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mtk_jpeg_verify_align\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"drivers/media/platform/mtk-jpeg/mtk_jpeg_dec_hw.c\00", [46 x i8] zeroinitializer }, align 32
@mtk_jpeg_verify_align._entry_ptr = internal global ptr @mtk_jpeg_verify_align._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 32, i64 1114112, i64 1118481, i64 1184017, i64 2167057, i64 2232593, i64 2236705, i64 4268321]
@__sancov_gen_cov_switch_values.3 = internal global [5 x i64] [i64 3, i64 32, i64 1118481, i64 1184017, i64 4268321]
@___asan_gen_.4 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.13 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.14 = private constant [53 x i8] c"../drivers/media/platform/mtk-jpeg/mtk_jpeg_dec_hw.c\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 29, i32 3 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @mtk_jpeg_verify_align._entry, ptr @mtk_jpeg_verify_align._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_jpeg_verify_align._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mtk_jpeg_dec_fill_param(ptr noundef %param) local_unnamed_addr #0 align 64 {
entry:
  %ds_row_h.i = alloca [3 x i32], align 4
  %brz_w.i = alloca [3 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sampling_w.i = getelementptr inbounds %struct.mtk_jpeg_dec_param, ptr %param, i32 0, i32 12
  %0 = ptrtoint ptr %sampling_w.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sampling_w.i, align 4
  %shl.i = shl i32 %1, 20
  %sampling_h.i = getelementptr inbounds %struct.mtk_jpeg_dec_param, ptr %param, i32 0, i32 13
  %2 = ptrtoint ptr %sampling_h.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sampling_h.i, align 4
  %shl2.i = shl i32 %3, 16
  %or.i = or i32 %shl2.i, %shl.i
  %arrayidx4.i = getelementptr %struct.mtk_jpeg_dec_param, ptr %param, i32 0, i32 12, i32 1
  %4 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx4.i, align 4
  %shl5.i = shl i32 %5, 12
  %or6.i = or i32 %or.i, %shl5.i
  %arrayidx8.i = getelementptr %struct.mtk_jpeg_dec_param, ptr %param, i32 0, i32 13, i32 1
  %6 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx8.i, align 4
  %shl9.i = shl i32 %7, 8
  %or10.i = or i32 %or6.i, %shl9.i
  %arrayidx12.i = getelementptr %struct.mtk_jpeg_dec_param, ptr %param, i32 0, i32 12, i32 2
  %8 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx12.i, align 4
  %shl13.i = shl i32 %9, 4
  %or14.i = or i32 %or10.i, %shl13.i
  %arrayidx16.i = getelementptr %struct.mtk_jpeg_dec_param, ptr %param, i32 0, i32 13, i32 2
  %10 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx16.i, align 4
  %or17.i = or i32 %or14.i, %11
  %src_color.i = getelementptr inbounds %struct.mtk_jpeg_dec_param, ptr %param, i32 0, i32 4
  %12 = ptrtoint ptr %src_color.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %or17.i, ptr %src_color.i, align 4
  %uv_brz_w.i = getelementptr inbounds %struct.mtk_jpeg_dec_param, ptr %param, i32 0, i32 28
  %13 = ptrtoint ptr %uv_brz_w.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %uv_brz_w.i, align 4
  %14 = zext i32 %or17.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i32 %or17.i, label %mtk_jpeg_decide_format.exit [
    i32 1118481, label %sw.bb.i
    i32 4268321, label %entry.if.end_crit_edge
    i32 2167057, label %entry.if.end_crit_edge40
    i32 1184017, label %entry.sw.bb22.i_crit_edge
    i32 2236705, label %entry.sw.bb22.i_crit_edge41
    i32 2232593, label %sw.bb25.i
    i32 1114112, label %sw.bb27.i
  ]

entry.sw.bb22.i_crit_edge41:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb22.i

entry.sw.bb22.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb22.i

entry.if.end_crit_edge40:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %uv_brz_w.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %uv_brz_w.i, align 4
  br label %if.end

sw.bb22.i:                                        ; preds = %entry.sw.bb22.i_crit_edge, %entry.sw.bb22.i_crit_edge41
  %16 = ptrtoint ptr %uv_brz_w.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %uv_brz_w.i, align 4
  br label %if.end

sw.bb25.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

sw.bb27.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

mtk_jpeg_decide_format.exit:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dst_fourcc.i = getelementptr inbounds %struct.mtk_jpeg_dec_param, ptr %param, i32 0, i32 5
  %17 = ptrtoint ptr %dst_fourcc.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %dst_fourcc.i, align 4
  br label %return

if.end:                                           ; preds = %sw.bb27.i, %sw.bb25.i, %sw.bb22.i, %sw.bb.i, %entry.if.end_crit_edge, %entry.if.end_crit_edge40
  %cmp13.i = phi i1 [ true, %sw.bb.i ], [ false, %sw.bb22.i ], [ false, %sw.bb25.i ], [ false, %sw.bb27.i ], [ true, %entry.if.end_crit_edge ], [ true, %entry.if.end_crit_edge40 ]
  %cmp6.i = phi i1 [ false, %sw.bb.i ], [ true, %sw.bb22.i ], [ true, %sw.bb25.i ], [ false, %sw.bb27.i ], [ false, %entry.if.end_crit_edge ], [ false, %entry.if.end_crit_edge40 ]
  %.sink.i.ph = phi i32 [ 909200729, %sw.bb.i ], [ 842091865, %sw.bb22.i ], [ 842091865, %sw.bb25.i ], [ 1497715271, %sw.bb27.i ], [ 909200729, %entry.if.end_crit_edge ], [ 909200729, %entry.if.end_crit_edge40 ]
  %dst_fourcc.i35 = getelementptr inbounds %struct.mtk_jpeg_dec_param, ptr %param, i32 0, i32 5
  %18 = ptrtoint ptr %dst_fourcc.i35 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %.sink.i.ph, ptr %dst_fourcc.i35, align 4
  %add.i = add i32 %1, 2
  %add2.i = add i32 %3, 2
  %19 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %param, align 4
  %notmask.i = shl nsw i32 -1, %add.i
  %add3.i = xor i32 %notmask.i, -1
  %sub.i = add i32 %20, %add3.i
  %shr.i = lshr i32 %sub.i, %add.i
  %mcu_w.i = getelementptr inbounds %struct.mtk_jpeg_dec_param, ptr %param, i32 0, i32 6
  %21 = ptrtoint ptr %mcu_w.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %shr.i, ptr %mcu_w.i, align 4
  %pic_h.i = getelementptr inbounds %struct.mtk_jpeg_dec_param, ptr %param, i32 0, i32 1
  %22 = ptrtoint ptr %pic_h.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pic_h.i, align 4
  %notmask108.i = shl nsw i32 -1, %add2.i
  %add5.i = xor i32 %notmask108.i, -1
  %sub6.i = add i32 %23, %add5.i
  %shr7.i = lshr i32 %sub6.i, %add2.i
  %mcu_h.i = getelementptr inbounds %struct.mtk_jpeg_dec_param, ptr %param, i32 0, i32 7
  %24 = ptrtoint ptr %mcu_h.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %shr7.i, ptr %mcu_h.i, align 4
  %mul.i = mul i32 %shr7.i, %shr.i
  %total_mcu.i = getelementptr inbounds %struct.mtk_jpeg_dec_param, ptr %param, i32 0, i32 8
  %25 = ptrtoint ptr %total_mcu.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %mul.i, ptr %total_mcu.i, align 4
  %add11.i = add i32 %20, 7
  %shr12.i = lshr i32 %add11.i, 3
  %add14.i = add i32 %23, 7
  %shr15.i = lshr i32 %add14.i, 3
  %mul16.i = mul i32 %shr15.i, %shr12.i
  %unit_num.i = getelementptr inbounds %struct.mtk_jpeg_dec_param, ptr %param, i32 0, i32 9
  %26 = ptrtoint ptr %unit_num.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %mul16.i, ptr %unit_num.i, align 4
  %blk_num.i = getelementptr inbounds %struct.mtk_jpeg_dec_param, ptr %param, i32 0, i32 15
  %27 = ptrtoint ptr %blk_num.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %blk_num.i, align 4
  %comp_num.i = getelementptr inbounds %struct.mtk_jpeg_dec_param, ptr %param, i32 0, i32 10
  %arrayidx17.i = getelementptr %struct.mtk_jpeg_dec_param, ptr %param, i32 0, i32 16, i32 0
  %28 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %arrayidx17.i, align 4
  %29 = ptrtoint ptr %comp_num.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %comp_num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp18.not.not.i = icmp eq i32 %30, 0
  br i1 %cmp18.not.not.i, label %for.inc.thread.i, label %for.inc.i

for.inc.thread.i:                                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx17.1109.i = getelementptr %struct.mtk_jpeg_dec_param, ptr %param, i32 0, i32 16, i32 1
  %31 = ptrtoint ptr %arrayidx17.1109.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %arrayidx17.1109.i, align 4
  br label %for.inc.1.thread.i

for.inc.i:                                        ; preds = %if.end
  %mul23.i = mul i32 %3, %1
  %32 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %mul23.i, ptr %arrayidx17.i, align 4
  %33 = ptrtoint ptr %blk_num.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %mul23.i, ptr %blk_num.i, align 4
  %arrayidx17.1.i = getelementptr %struct.mtk_jpeg_dec_param, ptr %param, i32 0, i32 16, i32 1
  %34 = ptrtoint ptr %arrayidx17.1.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %arrayidx17.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %30)
  %cmp18.not.1.i.not = icmp eq i32 %30, 1
  br i1 %cmp18.not.1.i.not, label %for.inc.i.for.inc.1.thread.i_crit_edge, label %for.inc.1.i

for.inc.i.for.inc.1.thread.i_crit_edge:           ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1.thread.i

for.inc.1.thread.i:                               ; preds = %for.inc.i.for.inc.1.thread.i_crit_edge, %for.inc.thread.i
  %arrayidx17.2112.i = getelementptr %struct.mtk_jpeg_dec_param, ptr %param, i32 0, i32 16, i32 2
  %35 = ptrtoint ptr %arrayidx17.2112.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %arrayidx17.2112.i, align 4
  br label %for.inc.2.i

for.inc.1.i:                                      ; preds = %for.inc.i
  %mul23.1.i = mul i32 %7, %5
  %36 = ptrtoint ptr %arrayidx17.1.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %mul23.1.i, ptr %arrayidx17.1.i, align 4
  %add29.1.i = add i32 %mul23.1.i, %mul23.i
  %37 = ptrtoint ptr %blk_num.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %add29.1.i, ptr %blk_num.i, align 4
  %arrayidx17.2.i = getelementptr %struct.mtk_jpeg_dec_param, ptr %param, i32 0, i32 16, i32 2
  %38 = ptrtoint ptr %arrayidx17.2.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %arrayidx17.2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %30)
  %cmp18.not.2.i = icmp ugt i32 %30, 2
  br i1 %cmp18.not.2.i, label %if.end.2.i, label %for.inc.1.i.for.inc.2.i_crit_edge

for.inc.1.i.for.inc.2.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2.i

if.end.2.i:                                       ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #9
  %mul23.2.i = mul i32 %11, %9
  %39 = ptrtoint ptr %arrayidx17.2.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %mul23.2.i, ptr %arrayidx17.2.i, align 4
  %add29.2.i = add i32 %mul23.2.i, %add29.1.i
  %40 = ptrtoint ptr %blk_num.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %add29.2.i, ptr %blk_num.i, align 4
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %if.end.2.i, %for.inc.1.i.for.inc.2.i_crit_edge, %for.inc.1.thread.i
  %membership.i = getelementptr inbounds %struct.mtk_jpeg_dec_param, ptr %param, i32 0, i32 17
  %41 = ptrtoint ptr %membership.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %membership.i, align 4
  %42 = ptrtoint ptr %blk_num.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %blk_num.i, align 4
  br label %for.body32.i

for.body32.i:                                     ; preds = %for.inc54.i.for.body32.i_crit_edge, %for.inc.2.i
  %i.1105.i = phi i32 [ 0, %for.inc.2.i ], [ %inc55.i, %for.inc54.i.for.body32.i_crit_edge ]
  %blk.0104.i = phi i32 [ 0, %for.inc.2.i ], [ %blk.2.i, %for.inc54.i.for.body32.i_crit_edge ]
  %comp.0102.i = phi i32 [ 0, %for.inc.2.i ], [ %comp.2.i, %for.inc54.i.for.body32.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1105.i, i32 %43)
  %cmp34.i = icmp ult i32 %i.1105.i, %43
  call void @__sanitizer_cov_trace_cmp4(i32 %comp.0102.i, i32 %30)
  %cmp36.i = icmp ult i32 %comp.0102.i, %30
  %or.cond = select i1 %cmp34.i, i1 %cmp36.i, i1 false
  br i1 %or.cond, label %if.then37.i, label %if.else.i

if.then37.i:                                      ; preds = %for.body32.i
  call void @__sanitizer_cov_trace_pc() #9
  %and.i = and i32 %comp.0102.i, 3
  %add38.i = or i32 %and.i, 4
  %mul39.i = mul nuw nsw i32 %i.1105.i, 3
  %shl40.i = shl i32 %add38.i, %mul39.i
  %44 = ptrtoint ptr %membership.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %membership.i, align 4
  %or.i10 = or i32 %45, %shl40.i
  store i32 %or.i10, ptr %membership.i, align 4
  %inc42.i = add i32 %blk.0104.i, 1
  %arrayidx44.i = getelementptr %struct.mtk_jpeg_dec_param, ptr %param, i32 0, i32 16, i32 %comp.0102.i
  %46 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx44.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc42.i, i32 %47)
  %cmp45.i = icmp eq i32 %inc42.i, %47
  %inc47.i = zext i1 %cmp45.i to i32
  %spec.select.i = add nuw i32 %comp.0102.i, %inc47.i
  %spec.select99.i = select i1 %cmp45.i, i32 0, i32 %inc42.i
  br label %for.inc54.i

if.else.i:                                        ; preds = %for.body32.i
  call void @__sanitizer_cov_trace_pc() #9
  %mul49.i = mul nuw nsw i32 %i.1105.i, 3
  %shl50.i = shl nuw nsw i32 7, %mul49.i
  %48 = ptrtoint ptr %membership.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %membership.i, align 4
  %or52.i = or i32 %49, %shl50.i
  store i32 %or52.i, ptr %membership.i, align 4
  br label %for.inc54.i

for.inc54.i:                                      ; preds = %if.else.i, %if.then37.i
  %comp.2.i = phi i32 [ %spec.select.i, %if.then37.i ], [ %comp.0102.i, %if.else.i ]
  %blk.2.i = phi i32 [ %spec.select99.i, %if.then37.i ], [ %blk.0104.i, %if.else.i ]
  %inc55.i = add nuw nsw i32 %i.1105.i, 1
  %exitcond.not.i = icmp eq i32 %inc55.i, 10
  br i1 %exitcond.not.i, label %mtk_jpeg_calc_mcu.exit, label %for.inc54.i.for.body32.i_crit_edge

for.inc54.i.for.body32.i_crit_edge:               ; preds = %for.inc54.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body32.i

mtk_jpeg_calc_mcu.exit:                           ; preds = %for.inc54.i
  %50 = zext i32 %or17.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values.3)
  switch i32 %or17.i, label %mtk_jpeg_calc_mcu.exit.if.else15.i_crit_edge [
    i32 1118481, label %land.lhs.true.i13
    i32 1184017, label %land.lhs.true4.i
    i32 4268321, label %land.lhs.true11.i
  ]

mtk_jpeg_calc_mcu.exit.if.else15.i_crit_edge:     ; preds = %mtk_jpeg_calc_mcu.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else15.i

land.lhs.true.i13:                                ; preds = %mtk_jpeg_calc_mcu.exit
  br i1 %cmp13.i, label %land.lhs.true.i13.if.end23.i_crit_edge, label %land.lhs.true.i13.if.else15.i_crit_edge

land.lhs.true.i13.if.else15.i_crit_edge:          ; preds = %land.lhs.true.i13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else15.i

land.lhs.true.i13.if.end23.i_crit_edge:           ; preds = %land.lhs.true.i13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23.i

land.lhs.true4.i:                                 ; preds = %mtk_jpeg_calc_mcu.exit
  br i1 %cmp6.i, label %land.lhs.true4.i.if.end23.i_crit_edge, label %land.lhs.true4.i.if.else15.i_crit_edge

land.lhs.true4.i.if.else15.i_crit_edge:           ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else15.i

land.lhs.true4.i.if.end23.i_crit_edge:            ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23.i

land.lhs.true11.i:                                ; preds = %mtk_jpeg_calc_mcu.exit
  br i1 %cmp13.i, label %land.lhs.true11.i.if.end23.i_crit_edge, label %land.lhs.true11.i.if.else15.i_crit_edge

land.lhs.true11.i.if.else15.i_crit_edge:          ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else15.i

land.lhs.true11.i.if.end23.i_crit_edge:           ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23.i

if.else15.i:                                      ; preds = %land.lhs.true11.i.if.else15.i_crit_edge, %land.lhs.true4.i.if.else15.i_crit_edge, %land.lhs.true.i13.if.else15.i_crit_edge, %mtk_jpeg_calc_mcu.exit.if.else15.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1114112, i32 %or17.i)
  %cmp17.i = icmp eq i32 %or17.i, 1114112
  %and.i14 = and i32 %or17.i, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i14)
  %cmp19.i = icmp eq i32 %and.i14, 0
  %or.cond.i = or i1 %cmp17.i, %cmp19.i
  %spec.select.i15 = select i1 %or.cond.i, i32 4, i32 3
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.else15.i, %land.lhs.true11.i.if.end23.i_crit_edge, %land.lhs.true4.i.if.end23.i_crit_edge, %land.lhs.true.i13.if.end23.i_crit_edge
  %factor_mcu.0.i = phi i32 [ 4, %land.lhs.true.i13.if.end23.i_crit_edge ], [ 4, %land.lhs.true4.i.if.end23.i_crit_edge ], [ 2, %land.lhs.true11.i.if.end23.i_crit_edge ], [ %spec.select.i15, %if.else15.i ]
  %shl.i16 = shl nuw nsw i32 1, %factor_mcu.0.i
  %dma_mcu.i = getelementptr inbounds %struct.mtk_jpeg_dec_param, ptr %param, i32 0, i32 18
  %51 = ptrtoint ptr %dma_mcu.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %shl.i16, ptr %dma_mcu.i, align 4
  %div52.i = lshr i32 %shr.i, %factor_mcu.0.i
  %dma_group.i = getelementptr inbounds %struct.mtk_jpeg_dec_param, ptr %param, i32 0, i32 19
  %52 = ptrtoint ptr %dma_group.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %div52.i, ptr %dma_group.i, align 4
  %53 = add nsw i32 %shl.i16, -1
  %rem.i = and i32 %53, %shr.i
  %dma_last_mcu.i = getelementptr inbounds %struct.mtk_jpeg_dec_param, ptr %param, i32 0, i32 20
  %54 = ptrtoint ptr %dma_last_mcu.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %rem.i, ptr %dma_last_mcu.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool.not.i = icmp eq i32 %rem.i, 0
  br i1 %tobool.not.i, label %if.else30.i, label %if.then28.i

if.then28.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #9
  %inc.i = add nuw nsw i32 %div52.i, 1
  %55 = ptrtoint ptr %dma_group.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %inc.i, ptr %dma_group.i, align 4
  br label %mtk_jpeg_calc_dma_group.exit

if.else30.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #9
  %56 = ptrtoint ptr %dma_last_mcu.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %shl.i16, ptr %dma_last_mcu.i, align 4
  br label %mtk_jpeg_calc_dma_group.exit

mtk_jpeg_calc_dma_group.exit:                     ; preds = %if.else30.i, %if.then28.i
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %ds_row_h.i) #7
  %57 = ptrtoint ptr %ds_row_h.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 -1, ptr %ds_row_h.i, align 4, !annotation !15
  %58 = getelementptr inbounds [3 x i32], ptr %ds_row_h.i, i32 0, i32 1
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 -1, ptr %58, align 4, !annotation !15
  %60 = getelementptr inbounds [3 x i32], ptr %ds_row_h.i, i32 0, i32 2
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 -1, ptr %60, align 4, !annotation !15
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %brz_w.i) #7
  %62 = getelementptr inbounds [3 x i32], ptr %brz_w.i, i32 0, i32 1
  %63 = getelementptr inbounds [3 x i32], ptr %brz_w.i, i32 0, i32 2
  %64 = ptrtoint ptr %brz_w.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 0, ptr %brz_w.i, align 4
  %65 = ptrtoint ptr %uv_brz_w.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %uv_brz_w.i, align 4
  %conv.i = zext i8 %66 to i32
  %67 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %conv.i, ptr %62, align 4
  %68 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %conv.i, ptr %63, align 4
  br i1 %cmp18.not.not.i, label %mtk_jpeg_calc_dma_group.exit..loopexit_crit_edge, label %mtk_jpeg_calc_dma_group.exit.for.body.i_crit_edge

mtk_jpeg_calc_dma_group.exit.for.body.i_crit_edge: ; preds = %mtk_jpeg_calc_dma_group.exit
  br label %for.body.i

mtk_jpeg_calc_dma_group.exit..loopexit_crit_edge: ; preds = %mtk_jpeg_calc_dma_group.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %.loopexit

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %mtk_jpeg_calc_dma_group.exit.for.body.i_crit_edge
  %i.0108.i = phi i32 [ %inc.i29, %if.end.i.for.body.i_crit_edge ], [ 0, %mtk_jpeg_calc_dma_group.exit.for.body.i_crit_edge ]
  %arrayidx5.i = getelementptr [3 x i32], ptr %brz_w.i, i32 0, i32 %i.0108.i
  %69 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx5.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %70)
  %cmp6.i21 = icmp ugt i32 %70, 3
  br i1 %cmp6.i21, label %mtk_jpeg_calc_dst_size.exit, label %if.end.i

if.end.i:                                         ; preds = %for.body.i
  %71 = ptrtoint ptr %mcu_w.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %mcu_w.i, align 4
  %mul.i22 = shl i32 %72, 3
  %arrayidx8.i23 = getelementptr %struct.mtk_jpeg_dec_param, ptr %param, i32 0, i32 12, i32 %i.0108.i
  %73 = ptrtoint ptr %arrayidx8.i23 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx8.i23, align 4
  %mul9.i = mul i32 %mul.i22, %74
  %shr.i24 = lshr i32 %mul9.i, %70
  %arrayidx11.i = getelementptr %struct.mtk_jpeg_dec_param, ptr %param, i32 0, i32 23, i32 %i.0108.i
  %sub.i25 = add i32 %shr.i24, -1
  %or.i26 = or i32 %sub.i25, 7
  %add.i27 = add i32 %or.i26, 1
  %75 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %add.i27, ptr %arrayidx11.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0108.i)
  %tobool.not.i28 = icmp eq i32 %i.0108.i, 0
  %cond.in.v.i = select i1 %tobool.not.i28, i32 31, i32 15
  %cond.in.i = or i32 %sub.i25, %cond.in.v.i
  %cond.i = add i32 %cond.in.i, 1
  %arrayidx26.i = getelementptr %struct.mtk_jpeg_dec_param, ptr %param, i32 0, i32 21, i32 %i.0108.i
  %76 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %cond.i, ptr %arrayidx26.i, align 4
  %arrayidx27.i = getelementptr %struct.mtk_jpeg_dec_param, ptr %param, i32 0, i32 13, i32 %i.0108.i
  %77 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arrayidx27.i, align 4
  %mul28.i = shl i32 %78, 3
  %arrayidx29.i = getelementptr [3 x i32], ptr %ds_row_h.i, i32 0, i32 %i.0108.i
  %79 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %mul28.i, ptr %arrayidx29.i, align 4
  %inc.i29 = add nuw i32 %i.0108.i, 1
  %80 = ptrtoint ptr %comp_num.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %comp_num.i, align 4
  %cmp.i = icmp ult i32 %inc.i29, %81
  br i1 %cmp.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i..loopexit_crit_edge

if.end.i..loopexit_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %.loopexit

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

mtk_jpeg_calc_dst_size.exit:                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %brz_w.i) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %ds_row_h.i) #7
  br label %return

.loopexit:                                        ; preds = %if.end.i..loopexit_crit_edge, %mtk_jpeg_calc_dma_group.exit..loopexit_crit_edge
  %img_stride30.i = getelementptr %struct.mtk_jpeg_dec_param, ptr %param, i32 0, i32 21
  %82 = ptrtoint ptr %img_stride30.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %img_stride30.i, align 4
  %dec_w.i = getelementptr inbounds %struct.mtk_jpeg_dec_param, ptr %param, i32 0, i32 2
  %84 = ptrtoint ptr %dec_w.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %83, ptr %dec_w.i, align 4
  %85 = ptrtoint ptr %ds_row_h.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %ds_row_h.i, align 4
  %87 = ptrtoint ptr %mcu_h.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %mcu_h.i, align 4
  %mul33.i = mul i32 %88, %86
  %dec_h.i = getelementptr inbounds %struct.mtk_jpeg_dec_param, ptr %param, i32 0, i32 3
  %89 = ptrtoint ptr %dec_h.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %mul33.i, ptr %dec_h.i, align 4
  %arrayidx40.i = getelementptr %struct.mtk_jpeg_dec_param, ptr %param, i32 0, i32 22, i32 0
  %90 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %83, ptr %arrayidx40.i, align 4
  %mul46.i = mul i32 %mul33.i, %83
  %arrayidx47.i = getelementptr %struct.mtk_jpeg_dec_param, ptr %param, i32 0, i32 24, i32 0
  %91 = ptrtoint ptr %arrayidx47.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %mul46.i, ptr %arrayidx47.i, align 4
  %arrayidx39.1.i = getelementptr %struct.mtk_jpeg_dec_param, ptr %param, i32 0, i32 21, i32 1
  %92 = ptrtoint ptr %arrayidx39.1.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %arrayidx39.1.i, align 4
  %arrayidx40.1.i = getelementptr %struct.mtk_jpeg_dec_param, ptr %param, i32 0, i32 22, i32 1
  %94 = ptrtoint ptr %arrayidx40.1.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %93, ptr %arrayidx40.1.i, align 4
  %95 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %58, align 4
  %mul44.1.i = mul i32 %93, %88
  %mul46.1.i = mul i32 %mul44.1.i, %96
  %arrayidx47.1.i = getelementptr %struct.mtk_jpeg_dec_param, ptr %param, i32 0, i32 24, i32 1
  %97 = ptrtoint ptr %arrayidx47.1.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %mul46.1.i, ptr %arrayidx47.1.i, align 4
  %arrayidx39.2.i = getelementptr %struct.mtk_jpeg_dec_param, ptr %param, i32 0, i32 21, i32 2
  %98 = ptrtoint ptr %arrayidx39.2.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %arrayidx39.2.i, align 4
  %arrayidx40.2.i = getelementptr %struct.mtk_jpeg_dec_param, ptr %param, i32 0, i32 22, i32 2
  %100 = ptrtoint ptr %arrayidx40.2.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %99, ptr %arrayidx40.2.i, align 4
  %101 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %60, align 4
  %mul44.2.i = mul i32 %99, %88
  %mul46.2.i = mul i32 %mul44.2.i, %102
  %arrayidx47.2.i = getelementptr %struct.mtk_jpeg_dec_param, ptr %param, i32 0, i32 24, i32 2
  %103 = ptrtoint ptr %arrayidx47.2.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %mul46.2.i, ptr %arrayidx47.2.i, align 4
  %y_size.i = getelementptr inbounds %struct.mtk_jpeg_dec_param, ptr %param, i32 0, i32 25
  %104 = ptrtoint ptr %y_size.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %mul46.i, ptr %y_size.i, align 4
  %uv_size.i = getelementptr inbounds %struct.mtk_jpeg_dec_param, ptr %param, i32 0, i32 26
  %105 = ptrtoint ptr %uv_size.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %mul46.1.i, ptr %uv_size.i, align 4
  %shl.i31 = shl i32 %mul46.1.i, 1
  %add57.i = add i32 %shl.i31, %mul46.i
  %dec_size.i = getelementptr inbounds %struct.mtk_jpeg_dec_param, ptr %param, i32 0, i32 27
  %106 = ptrtoint ptr %dec_size.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %add57.i, ptr %dec_size.i, align 4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %brz_w.i) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %ds_row_h.i) #7
  br label %return

return:                                           ; preds = %.loopexit, %mtk_jpeg_calc_dst_size.exit, %mtk_jpeg_decide_format.exit
  %retval.0 = phi i32 [ -1, %mtk_jpeg_decide_format.exit ], [ 0, %.loopexit ], [ -2, %mtk_jpeg_calc_dst_size.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mtk_jpeg_dec_get_int_status(ptr noundef %base) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %base, i32 628
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !16
  %1 = lshr i32 %0, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !17
  %and = and i32 %1, 55
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !18
  tail call void @arm_heavy_mb() #7
  %2 = shl nuw nsw i32 %and, 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #7, !srcloc !19
  br label %if.end

if.end:                                           ; preds = %do.body, %entry.if.end_crit_edge
  ret i32 %and
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @mtk_jpeg_dec_enum_result(i32 noundef %irq_result) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %irq_result, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  %and1 = and i32 %irq_result, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end4:                                          ; preds = %if.end
  %and5 = and i32 %irq_result, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.return_crit_edge

if.end4.return_crit_edge:                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end8:                                          ; preds = %if.end4
  %and9 = and i32 %irq_result, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end8.return_crit_edge

if.end8.return_crit_edge:                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end12:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %and13 = and i32 %irq_result, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  %. = select i1 %tobool14.not, i32 6, i32 4
  br label %return

return:                                           ; preds = %if.end12, %if.end8.return_crit_edge, %if.end4.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %entry.return_crit_edge ], [ 1, %if.end.return_crit_edge ], [ 2, %if.end4.return_crit_edge ], [ 3, %if.end8.return_crit_edge ], [ %., %if.end12 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mtk_jpeg_dec_start(ptr noundef %base) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !20
  tail call void @arm_heavy_mb() #7
  %add.ptr = getelementptr i8, ptr %base, i32 576
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #7, !srcloc !19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mtk_jpeg_dec_reset(ptr noundef %base) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !21
  tail call void @arm_heavy_mb() #7
  %add.ptr.i = getelementptr i8, ptr %base, i32 628
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -65536) #7, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !22
  tail call void @arm_heavy_mb() #7
  %add.ptr3.i = getelementptr i8, ptr %base, i32 144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 0) #7, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !23
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 16777216) #7, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !24
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 0) #7, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !25
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 268435456) #7, !srcloc !19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mtk_jpeg_dec_set_config(ptr noundef %base, ptr noundef readonly %config, ptr nocapture noundef readonly %bs, ptr nocapture noundef readonly %fb) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %uv_brz_w = getelementptr inbounds %struct.mtk_jpeg_dec_param, ptr %config, i32 0, i32 28
  %0 = ptrtoint ptr %uv_brz_w to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %uv_brz_w, align 4
  %conv1.i = zext i8 %1 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !26
  tail call void @arm_heavy_mb() #7
  %2 = shl nuw nsw i32 %conv1.i, 16
  %add.ptr.i = getelementptr i8, ptr %base, i32 248
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %2) #7, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !27
  tail call void @arm_heavy_mb() #7
  %add.ptr.i77 = getelementptr i8, ptr %base, i32 380
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i77, i32 0) #7, !srcloc !19
  %unit_num = getelementptr inbounds %struct.mtk_jpeg_dec_param, ptr %config, i32 0, i32 9
  %3 = ptrtoint ptr %unit_num to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %unit_num, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !28
  tail call void @arm_heavy_mb() #7
  %sub.i = add i32 %4, -1
  %5 = tail call i32 @llvm.bswap.i32(i32 %sub.i) #7
  %add.ptr.i78 = getelementptr i8, ptr %base, i32 548
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i78, i32 %5) #7, !srcloc !19
  %total_mcu = getelementptr inbounds %struct.mtk_jpeg_dec_param, ptr %config, i32 0, i32 8
  %6 = ptrtoint ptr %total_mcu to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %total_mcu, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !29
  tail call void @arm_heavy_mb() #7
  %sub.i79 = add i32 %7, -1
  %8 = tail call i32 @llvm.bswap.i32(i32 %sub.i79) #7
  %add.ptr.i80 = getelementptr i8, ptr %base, i32 528
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i80, i32 %8) #7, !srcloc !19
  %9 = ptrtoint ptr %bs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bs, align 4
  %size = getelementptr inbounds %struct.mtk_jpeg_bs, ptr %bs, i32 0, i32 2
  %11 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %size, align 4
  %and.i.i = and i32 %10, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %entry.mtk_jpeg_verify_align.exit.i_crit_edge, label %do.end.i.i

entry.mtk_jpeg_verify_align.exit.i_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %mtk_jpeg_verify_align.exit.i

do.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 512, i32 noundef 16) #10
  br label %mtk_jpeg_verify_align.exit.i

mtk_jpeg_verify_align.exit.i:                     ; preds = %do.end.i.i, %entry.mtk_jpeg_verify_align.exit.i_crit_edge
  %and.i8.i = and i32 %12, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i8.i)
  %tobool.not.i9.i = icmp eq i32 %and.i8.i, 0
  br i1 %tobool.not.i9.i, label %mtk_jpeg_verify_align.exit.i.mtk_jpeg_dec_set_bs_info.exit_crit_edge, label %do.end.i11.i

mtk_jpeg_verify_align.exit.i.mtk_jpeg_dec_set_bs_info.exit_crit_edge: ; preds = %mtk_jpeg_verify_align.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mtk_jpeg_dec_set_bs_info.exit

do.end.i11.i:                                     ; preds = %mtk_jpeg_verify_align.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i10.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 588, i32 noundef 128) #10
  br label %mtk_jpeg_dec_set_bs_info.exit

mtk_jpeg_dec_set_bs_info.exit:                    ; preds = %do.end.i11.i, %mtk_jpeg_verify_align.exit.i.mtk_jpeg_dec_set_bs_info.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !30
  tail call void @arm_heavy_mb() #7
  %13 = tail call i32 @llvm.bswap.i32(i32 %10) #7
  %add.ptr.i81 = getelementptr i8, ptr %base, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i81, i32 %13) #7, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !31
  tail call void @arm_heavy_mb() #7
  %14 = tail call i32 @llvm.bswap.i32(i32 %12) #7
  %add.ptr4.i = getelementptr i8, ptr %base, i32 588
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %14) #7, !srcloc !19
  %end_addr = getelementptr inbounds %struct.mtk_jpeg_bs, ptr %bs, i32 0, i32 1
  %15 = ptrtoint ptr %end_addr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %end_addr, align 4
  %and.i.i82 = and i32 %16, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i82)
  %tobool.not.i.i83 = icmp eq i32 %and.i.i82, 0
  br i1 %tobool.not.i.i83, label %mtk_jpeg_dec_set_bs_info.exit.mtk_jpeg_dec_set_bs_write_ptr.exit_crit_edge, label %do.end.i.i85

mtk_jpeg_dec_set_bs_info.exit.mtk_jpeg_dec_set_bs_write_ptr.exit_crit_edge: ; preds = %mtk_jpeg_dec_set_bs_info.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %mtk_jpeg_dec_set_bs_write_ptr.exit

do.end.i.i85:                                     ; preds = %mtk_jpeg_dec_set_bs_info.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i84 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 584, i32 noundef 16) #10
  br label %mtk_jpeg_dec_set_bs_write_ptr.exit

mtk_jpeg_dec_set_bs_write_ptr.exit:               ; preds = %do.end.i.i85, %mtk_jpeg_dec_set_bs_info.exit.mtk_jpeg_dec_set_bs_write_ptr.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !32
  tail call void @arm_heavy_mb() #7
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #7
  %add.ptr.i86 = getelementptr i8, ptr %base, i32 584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i86, i32 %17) #7, !srcloc !19
  %membership = getelementptr inbounds %struct.mtk_jpeg_dec_param, ptr %config, i32 0, i32 17
  %18 = ptrtoint ptr %membership to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %membership, align 4
  %comp_num = getelementptr inbounds %struct.mtk_jpeg_dec_param, ptr %config, i32 0, i32 10
  %20 = ptrtoint ptr %comp_num to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %comp_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %cmp = icmp eq i32 %21, 1
  %22 = or i32 %19, 1073741824
  %or2.i = select i1 %cmp, i32 -4, i32 %22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !33
  tail call void @arm_heavy_mb() #7
  %23 = tail call i32 @llvm.bswap.i32(i32 %or2.i) #7
  %add.ptr.i88 = getelementptr i8, ptr %base, i32 572
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i88, i32 %23) #7, !srcloc !19
  %comp_id = getelementptr inbounds %struct.mtk_jpeg_dec_param, ptr %config, i32 0, i32 11
  %24 = ptrtoint ptr %comp_id to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %comp_id, align 4
  %arrayidx2 = getelementptr %struct.mtk_jpeg_dec_param, ptr %config, i32 0, i32 11, i32 1
  %26 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx2, align 4
  %arrayidx4 = getelementptr %struct.mtk_jpeg_dec_param, ptr %config, i32 0, i32 11, i32 2
  %28 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx4, align 4
  %shl.i89 = shl i32 %25, 24
  %and1.i = shl i32 %27, 16
  %shl2.i = and i32 %and1.i, 16711680
  %or.i90 = or i32 %shl2.i, %shl.i89
  %and3.i = shl i32 %29, 8
  %shl4.i = and i32 %and3.i, 65280
  %or5.i = or i32 %or.i90, %shl4.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !34
  tail call void @arm_heavy_mb() #7
  %30 = tail call i32 @llvm.bswap.i32(i32 %or5.i) #7
  %add.ptr.i91 = getelementptr i8, ptr %base, i32 524
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i91, i32 %30) #7, !srcloc !19
  %qtbl_num = getelementptr inbounds %struct.mtk_jpeg_dec_param, ptr %config, i32 0, i32 14
  %31 = ptrtoint ptr %qtbl_num to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %qtbl_num, align 4
  %arrayidx7 = getelementptr %struct.mtk_jpeg_dec_param, ptr %config, i32 0, i32 14, i32 1
  %33 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx7, align 4
  %arrayidx9 = getelementptr %struct.mtk_jpeg_dec_param, ptr %config, i32 0, i32 14, i32 2
  %35 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx9, align 4
  %and.i = shl i32 %32, 8
  %shl.i92 = and i32 %and.i, 3840
  %and1.i93 = shl i32 %34, 4
  %shl2.i94 = and i32 %and1.i93, 240
  %or.i95 = or i32 %shl2.i94, %shl.i92
  %and3.i96 = and i32 %36, 15
  %or5.i97 = or i32 %or.i95, %and3.i96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !35
  tail call void @arm_heavy_mb() #7
  %37 = tail call i32 @llvm.bswap.i32(i32 %or5.i97) #7
  %add.ptr.i98 = getelementptr i8, ptr %base, i32 624
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i98, i32 %37) #7, !srcloc !19
  %38 = ptrtoint ptr %comp_num to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %comp_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %39)
  %cmp.i = icmp eq i32 %39, 1
  br i1 %cmp.i, label %mtk_jpeg_dec_set_bs_write_ptr.exit.mtk_jpeg_dec_set_sampling_factor.exit_crit_edge, label %if.else.i

mtk_jpeg_dec_set_bs_write_ptr.exit.mtk_jpeg_dec_set_sampling_factor.exit_crit_edge: ; preds = %mtk_jpeg_dec_set_bs_write_ptr.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %mtk_jpeg_dec_set_sampling_factor.exit

if.else.i:                                        ; preds = %mtk_jpeg_dec_set_bs_write_ptr.exit
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx20 = getelementptr %struct.mtk_jpeg_dec_param, ptr %config, i32 0, i32 13, i32 2
  %40 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx20, align 4
  %arrayidx18 = getelementptr %struct.mtk_jpeg_dec_param, ptr %config, i32 0, i32 12, i32 2
  %42 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx18, align 4
  %arrayidx16 = getelementptr %struct.mtk_jpeg_dec_param, ptr %config, i32 0, i32 13, i32 1
  %44 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx16, align 4
  %arrayidx14 = getelementptr %struct.mtk_jpeg_dec_param, ptr %config, i32 0, i32 12, i32 1
  %46 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx14, align 4
  %sampling_h = getelementptr inbounds %struct.mtk_jpeg_dec_param, ptr %config, i32 0, i32 13
  %48 = ptrtoint ptr %sampling_h to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %sampling_h, align 4
  %sampling_w = getelementptr inbounds %struct.mtk_jpeg_dec_param, ptr %config, i32 0, i32 12
  %50 = ptrtoint ptr %sampling_w to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %sampling_w, align 4
  %sub9.i = shl i32 %43, 2
  %and10.i = add i32 %sub9.i, 12
  %shl11.i = and i32 %and10.i, 12
  %sub12.i = add i32 %41, 3
  %and13.i = and i32 %sub12.i, 3
  %or14.i = or i32 %and13.i, %shl11.i
  %sub3.i = shl i32 %47, 2
  %and4.i = add i32 %sub3.i, 12
  %shl5.i = and i32 %and4.i, 12
  %sub6.i = add i32 %45, 3
  %and7.i = and i32 %sub6.i, 3
  %or8.i = or i32 %shl5.i, %and7.i
  %sub.i99 = shl i32 %51, 2
  %and.i100 = add i32 %sub.i99, 12
  %shl.i101 = and i32 %and.i100, 12
  %sub1.i = add i32 %49, 3
  %and2.i = and i32 %sub1.i, 3
  %or.i102 = or i32 %shl.i101, %and2.i
  %shl15.i = shl nuw nsw i32 %or.i102, 8
  %shl16.i = shl nuw nsw i32 %or8.i, 4
  %or17.i = or i32 %shl15.i, %shl16.i
  %or18.i = or i32 %or17.i, %or14.i
  br label %mtk_jpeg_dec_set_sampling_factor.exit

mtk_jpeg_dec_set_sampling_factor.exit:            ; preds = %if.else.i, %mtk_jpeg_dec_set_bs_write_ptr.exit.mtk_jpeg_dec_set_sampling_factor.exit_crit_edge
  %val.0.i = phi i32 [ %or18.i, %if.else.i ], [ 0, %mtk_jpeg_dec_set_bs_write_ptr.exit.mtk_jpeg_dec_set_sampling_factor.exit_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !36
  tail call void @arm_heavy_mb() #7
  %52 = tail call i32 @llvm.bswap.i32(i32 %val.0.i) #7
  %add.ptr.i103 = getelementptr i8, ptr %base, i32 252
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i103, i32 %52) #7, !srcloc !19
  %mem_stride = getelementptr inbounds %struct.mtk_jpeg_dec_param, ptr %config, i32 0, i32 22
  %53 = ptrtoint ptr %mem_stride to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %mem_stride, align 4
  %arrayidx23 = getelementptr %struct.mtk_jpeg_dec_param, ptr %config, i32 0, i32 22, i32 1
  %55 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx23, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !37
  tail call void @arm_heavy_mb() #7
  %and.i104 = and i32 %54, 65535
  %57 = tail call i32 @llvm.bswap.i32(i32 %and.i104) #7
  %add.ptr.i105 = getelementptr i8, ptr %base, i32 344
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i105, i32 %57) #7, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !38
  tail call void @arm_heavy_mb() #7
  %and3.i106 = and i32 %56, 65535
  %58 = tail call i32 @llvm.bswap.i32(i32 %and3.i106) #7
  %add.ptr4.i107 = getelementptr i8, ptr %base, i32 348
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i107, i32 %58) #7, !srcloc !19
  %img_stride = getelementptr inbounds %struct.mtk_jpeg_dec_param, ptr %config, i32 0, i32 21
  %59 = ptrtoint ptr %img_stride to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %img_stride, align 4
  %arrayidx26 = getelementptr %struct.mtk_jpeg_dec_param, ptr %config, i32 0, i32 21, i32 1
  %61 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx26, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !39
  tail call void @arm_heavy_mb() #7
  %and.i108 = and i32 %60, 65535
  %63 = tail call i32 @llvm.bswap.i32(i32 %and.i108) #7
  %add.ptr.i109 = getelementptr i8, ptr %base, i32 352
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i109, i32 %63) #7, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !40
  tail call void @arm_heavy_mb() #7
  %and3.i110 = and i32 %62, 65535
  %64 = tail call i32 @llvm.bswap.i32(i32 %and3.i110) #7
  %add.ptr4.i111 = getelementptr i8, ptr %base, i32 356
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i111, i32 %64) #7, !srcloc !19
  %65 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %fb, align 4
  %arrayidx29 = getelementptr [3 x i32], ptr %fb, i32 0, i32 1
  %67 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx29, align 4
  %arrayidx31 = getelementptr [3 x i32], ptr %fb, i32 0, i32 2
  %69 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx31, align 4
  %and.i.i112 = and i32 %66, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i112)
  %tobool.not.i.i113 = icmp eq i32 %and.i.i112, 0
  br i1 %tobool.not.i.i113, label %mtk_jpeg_dec_set_sampling_factor.exit.mtk_jpeg_verify_align.exit.i117_crit_edge, label %do.end.i.i115

mtk_jpeg_dec_set_sampling_factor.exit.mtk_jpeg_verify_align.exit.i117_crit_edge: ; preds = %mtk_jpeg_dec_set_sampling_factor.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %mtk_jpeg_verify_align.exit.i117

do.end.i.i115:                                    ; preds = %mtk_jpeg_dec_set_sampling_factor.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i114 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 320, i32 noundef 16) #10
  br label %mtk_jpeg_verify_align.exit.i117

mtk_jpeg_verify_align.exit.i117:                  ; preds = %do.end.i.i115, %mtk_jpeg_dec_set_sampling_factor.exit.mtk_jpeg_verify_align.exit.i117_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !41
  tail call void @arm_heavy_mb() #7
  %71 = tail call i32 @llvm.bswap.i32(i32 %66) #7
  %add.ptr.i116 = getelementptr i8, ptr %base, i32 320
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i116, i32 %71) #7, !srcloc !19
  %and.i14.i = and i32 %68, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i14.i)
  %tobool.not.i15.i = icmp eq i32 %and.i14.i, 0
  br i1 %tobool.not.i15.i, label %mtk_jpeg_verify_align.exit.i117.mtk_jpeg_verify_align.exit18.i_crit_edge, label %do.end.i17.i

mtk_jpeg_verify_align.exit.i117.mtk_jpeg_verify_align.exit18.i_crit_edge: ; preds = %mtk_jpeg_verify_align.exit.i117
  call void @__sanitizer_cov_trace_pc() #9
  br label %mtk_jpeg_verify_align.exit18.i

do.end.i17.i:                                     ; preds = %mtk_jpeg_verify_align.exit.i117
  call void @__sanitizer_cov_trace_pc() #9
  %call.i16.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 324, i32 noundef 16) #10
  br label %mtk_jpeg_verify_align.exit18.i

mtk_jpeg_verify_align.exit18.i:                   ; preds = %do.end.i17.i, %mtk_jpeg_verify_align.exit.i117.mtk_jpeg_verify_align.exit18.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !42
  tail call void @arm_heavy_mb() #7
  %72 = tail call i32 @llvm.bswap.i32(i32 %68) #7
  %add.ptr4.i118 = getelementptr i8, ptr %base, i32 324
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i118, i32 %72) #7, !srcloc !19
  %and.i19.i = and i32 %70, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i19.i)
  %tobool.not.i20.i = icmp eq i32 %and.i19.i, 0
  br i1 %tobool.not.i20.i, label %mtk_jpeg_verify_align.exit18.i.mtk_jpeg_dec_set_dst_bank0.exit_crit_edge, label %do.end.i22.i

mtk_jpeg_verify_align.exit18.i.mtk_jpeg_dec_set_dst_bank0.exit_crit_edge: ; preds = %mtk_jpeg_verify_align.exit18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mtk_jpeg_dec_set_dst_bank0.exit

do.end.i22.i:                                     ; preds = %mtk_jpeg_verify_align.exit18.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i21.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 328, i32 noundef 16) #10
  br label %mtk_jpeg_dec_set_dst_bank0.exit

mtk_jpeg_dec_set_dst_bank0.exit:                  ; preds = %do.end.i22.i, %mtk_jpeg_verify_align.exit18.i.mtk_jpeg_dec_set_dst_bank0.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !43
  tail call void @arm_heavy_mb() #7
  %73 = tail call i32 @llvm.bswap.i32(i32 %70) #7
  %add.ptr8.i = getelementptr i8, ptr %base, i32 328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 %73) #7, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !44
  tail call void @arm_heavy_mb() #7
  %add.ptr.i119 = getelementptr i8, ptr %base, i32 332
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i119, i32 0) #7, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !45
  tail call void @arm_heavy_mb() #7
  %add.ptr3.i = getelementptr i8, ptr %base, i32 336
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 0) #7, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !46
  tail call void @arm_heavy_mb() #7
  %add.ptr6.i = getelementptr i8, ptr %base, i32 340
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 0) #7, !srcloc !19
  %dma_mcu = getelementptr inbounds %struct.mtk_jpeg_dec_param, ptr %config, i32 0, i32 18
  %74 = ptrtoint ptr %dma_mcu to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %dma_mcu, align 4
  %dma_group = getelementptr inbounds %struct.mtk_jpeg_dec_param, ptr %config, i32 0, i32 19
  %76 = ptrtoint ptr %dma_group to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %dma_group, align 4
  %dma_last_mcu = getelementptr inbounds %struct.mtk_jpeg_dec_param, ptr %config, i32 0, i32 20
  %78 = ptrtoint ptr %dma_last_mcu to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %dma_last_mcu, align 4
  %sub.i120 = shl i32 %75, 16
  %and.i121 = add i32 %sub.i120, 16711680
  %shl.i122 = and i32 %and.i121, 16711680
  %sub1.i123 = shl i32 %77, 8
  %and2.i124 = add i32 %sub1.i123, 32512
  %shl3.i = and i32 %and2.i124, 32512
  %or.i125 = or i32 %shl3.i, %shl.i122
  %sub4.i = add i32 %79, 255
  %and5.i = and i32 %sub4.i, 255
  %or6.i = or i32 %or.i125, %and5.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !47
  tail call void @arm_heavy_mb() #7
  %80 = tail call i32 @llvm.bswap.i32(i32 %or6.i) #7
  %add.ptr.i126 = getelementptr i8, ptr %base, i32 364
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i126, i32 %80) #7, !srcloc !19
  %81 = ptrtoint ptr %total_mcu to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %total_mcu, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !48
  tail call void @arm_heavy_mb() #7
  %and.i127 = and i32 %82, 67108863
  %83 = tail call i32 @llvm.bswap.i32(i32 %and.i127) #7
  %add.ptr.i128 = getelementptr i8, ptr %base, i32 368
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i128, i32 %83) #7, !srcloc !19
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/mtk-jpeg/mtk_jpeg_dec_hw.c", i32 29, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @mtk_jpeg_verify_align._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @mtk_jpeg_verify_align._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!15 = !{!"auto-init"}
!16 = !{i64 695140}
!17 = !{i64 2156349691}
!18 = !{i64 2156349913}
!19 = !{i64 694722}
!20 = !{i64 2156350324}
!21 = !{i64 2156350713}
!22 = !{i64 2156351123}
!23 = !{i64 2156351515}
!24 = !{i64 2156351907}
!25 = !{i64 2156352299}
!26 = !{i64 2156352690}
!27 = !{i64 2156357771}
!28 = !{i64 2156360172}
!29 = !{i64 2156359768}
!30 = !{i64 2156358593}
!31 = !{i64 2156358985}
!32 = !{i64 2156358190}
!33 = !{i64 2156360575}
!34 = !{i64 2156359376}
!35 = !{i64 2156360972}
!36 = !{i64 2156361892}
!37 = !{i64 2156355515}
!38 = !{i64 2156355968}
!39 = !{i64 2156356423}
!40 = !{i64 2156356876}
!41 = !{i64 2156353088}
!42 = !{i64 2156353495}
!43 = !{i64 2156353902}
!44 = !{i64 2156354302}
!45 = !{i64 2156354702}
!46 = !{i64 2156355102}
!47 = !{i64 2156361360}
!48 = !{i64 2156357330}
