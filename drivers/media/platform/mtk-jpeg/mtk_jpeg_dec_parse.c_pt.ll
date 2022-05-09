; ModuleID = '/llk/IR_all_yes/drivers/media/platform/mtk-jpeg/mtk_jpeg_dec_parse.c_pt.bc'
source_filename = "../drivers/media/platform/mtk-jpeg/mtk_jpeg_dec_parse.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mtk_jpeg_dec_param = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, [3 x i32], i32, i32, i32, i32, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, i32, i32, i8 }

@__sancov_gen_cov_switch_values = internal global [16 x i64] [i64 14, i64 8, i64 0, i64 1, i64 192, i64 208, i64 209, i64 210, i64 211, i64 212, i64 213, i64 214, i64 215, i64 216, i64 217, i64 255]
@__sancov_gen_cov_switch_values.1 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 3]
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @mtk_jpeg_parse(ptr noundef %param, ptr nocapture noundef readonly %src_addr_va, i32 noundef %src_size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %src_size)
  %cmp.not.i323.not.i = icmp eq i32 %src_size, 0
  br i1 %cmp.not.i323.not.i, label %entry.return_crit_edge, label %read_byte.exit.lr.ph.i

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

read_byte.exit.lr.ph.i:                           ; preds = %entry
  %pic_h.i = getelementptr inbounds %struct.mtk_jpeg_dec_param, ptr %param, i32 0, i32 1
  %comp_num282.i = getelementptr inbounds %struct.mtk_jpeg_dec_param, ptr %param, i32 0, i32 10
  br label %read_byte.exit.i

read_byte.exit.i:                                 ; preds = %cleanup.i.read_byte.exit.i_crit_edge, %read_byte.exit.lr.ph.i
  %stream.sroa.33.0324.i = phi i32 [ 0, %read_byte.exit.lr.ph.i ], [ %stream.sroa.33.19.i, %cleanup.i.read_byte.exit.i_crit_edge ]
  %inc.i.i = add nuw i32 %stream.sroa.33.0324.i, 1
  %arrayidx.i.i = getelementptr i8, ptr %src_addr_va, i32 %stream.sroa.33.0324.i
  %0 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %1)
  %cond.i = icmp eq i8 %1, -1
  br i1 %cond.i, label %read_byte.exit.i.do.body.i_crit_edge, label %read_byte.exit.i.cleanup.i_crit_edge

read_byte.exit.i.cleanup.i_crit_edge:             ; preds = %read_byte.exit.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup.i

read_byte.exit.i.do.body.i_crit_edge:             ; preds = %read_byte.exit.i
  br label %do.body.i

do.body.i:                                        ; preds = %read_byte.exit123.i.do.body.i_crit_edge, %read_byte.exit.i.do.body.i_crit_edge
  %stream.sroa.33.2.i = phi i32 [ %inc.i118.i, %read_byte.exit123.i.do.body.i_crit_edge ], [ %inc.i.i, %read_byte.exit.i.do.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %stream.sroa.33.2.i, i32 %src_size)
  %cmp.not.i117.i = icmp ult i32 %stream.sroa.33.2.i, %src_size
  br i1 %cmp.not.i117.i, label %read_byte.exit123.i, label %do.body.i.return_crit_edge

do.body.i.return_crit_edge:                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

read_byte.exit123.i:                              ; preds = %do.body.i
  %inc.i118.i = add nuw i32 %stream.sroa.33.2.i, 1
  %arrayidx.i119.i = getelementptr i8, ptr %src_addr_va, i32 %stream.sroa.33.2.i
  %2 = ptrtoint ptr %arrayidx.i119.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx.i119.i, align 1
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i8 %3, label %sw.default.i [
    i8 -1, label %read_byte.exit123.i.do.body.i_crit_edge
    i8 -41, label %read_byte.exit123.i.cleanup.i_crit_edge
    i8 0, label %read_byte.exit123.i.cleanup.i_crit_edge71
    i8 -64, label %sw.bb.i
    i8 -40, label %read_byte.exit123.i.cleanup.i_crit_edge72
    i8 -39, label %read_byte.exit123.i.cleanup.i_crit_edge73
    i8 1, label %read_byte.exit123.i.cleanup.i_crit_edge74
    i8 -48, label %read_byte.exit123.i.cleanup.i_crit_edge75
    i8 -47, label %read_byte.exit123.i.cleanup.i_crit_edge76
    i8 -46, label %read_byte.exit123.i.cleanup.i_crit_edge77
    i8 -45, label %read_byte.exit123.i.cleanup.i_crit_edge78
    i8 -44, label %read_byte.exit123.i.cleanup.i_crit_edge79
    i8 -43, label %read_byte.exit123.i.cleanup.i_crit_edge80
    i8 -42, label %read_byte.exit123.i.cleanup.i_crit_edge81
  ]

read_byte.exit123.i.cleanup.i_crit_edge81:        ; preds = %read_byte.exit123.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup.i

read_byte.exit123.i.cleanup.i_crit_edge80:        ; preds = %read_byte.exit123.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup.i

read_byte.exit123.i.cleanup.i_crit_edge79:        ; preds = %read_byte.exit123.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup.i

read_byte.exit123.i.cleanup.i_crit_edge78:        ; preds = %read_byte.exit123.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup.i

read_byte.exit123.i.cleanup.i_crit_edge77:        ; preds = %read_byte.exit123.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup.i

read_byte.exit123.i.cleanup.i_crit_edge76:        ; preds = %read_byte.exit123.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup.i

read_byte.exit123.i.cleanup.i_crit_edge75:        ; preds = %read_byte.exit123.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup.i

read_byte.exit123.i.cleanup.i_crit_edge74:        ; preds = %read_byte.exit123.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup.i

read_byte.exit123.i.cleanup.i_crit_edge73:        ; preds = %read_byte.exit123.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup.i

read_byte.exit123.i.cleanup.i_crit_edge72:        ; preds = %read_byte.exit123.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup.i

read_byte.exit123.i.cleanup.i_crit_edge71:        ; preds = %read_byte.exit123.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup.i

read_byte.exit123.i.cleanup.i_crit_edge:          ; preds = %read_byte.exit123.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup.i

read_byte.exit123.i.do.body.i_crit_edge:          ; preds = %read_byte.exit123.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.body.i

sw.bb.i:                                          ; preds = %read_byte.exit123.i
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i118.i, i32 %src_size)
  %cmp.not.i.i.i = icmp ult i32 %inc.i118.i, %src_size
  br i1 %cmp.not.i.i.i, label %read_byte.exit.i.i, label %sw.bb.i.cleanup.i_crit_edge

sw.bb.i.cleanup.i_crit_edge:                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup.i

read_byte.exit.i.i:                               ; preds = %sw.bb.i
  %inc.i.i.i = add nuw i32 %stream.sroa.33.2.i, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i.i, i32 %src_size)
  %cmp.not.i12.i.i = icmp ult i32 %inc.i.i.i, %src_size
  br i1 %cmp.not.i12.i.i, label %if.end15.i, label %read_byte.exit.i.i.cleanup.i_crit_edge

read_byte.exit.i.i.cleanup.i_crit_edge:           ; preds = %read_byte.exit.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup.i

if.end15.i:                                       ; preds = %read_byte.exit.i.i
  %inc.i13.i.i = add nuw i32 %stream.sroa.33.2.i, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i13.i.i, i32 %src_size)
  %cmp.not.i127.i = icmp ult i32 %inc.i13.i.i, %src_size
  br i1 %cmp.not.i127.i, label %read_byte.exit133.i, label %if.end15.i.cleanup.i_crit_edge

if.end15.i.cleanup.i_crit_edge:                   ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup.i

read_byte.exit133.i:                              ; preds = %if.end15.i
  %inc.i128.i = add nuw i32 %stream.sroa.33.2.i, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i128.i, i32 %src_size)
  %cmp.not.i.i136.i = icmp ult i32 %inc.i128.i, %src_size
  br i1 %cmp.not.i.i136.i, label %read_byte.exit.i139.i, label %read_byte.exit133.i.cleanup.i_crit_edge

read_byte.exit133.i.cleanup.i_crit_edge:          ; preds = %read_byte.exit133.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup.i

read_byte.exit.i139.i:                            ; preds = %read_byte.exit133.i
  %inc.i.i137.i = add nuw i32 %stream.sroa.33.2.i, 5
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i137.i, i32 %src_size)
  %cmp.not.i12.i138.i = icmp ult i32 %inc.i.i137.i, %src_size
  br i1 %cmp.not.i12.i138.i, label %if.end23.i, label %read_byte.exit.i139.i.cleanup.i_crit_edge

read_byte.exit.i139.i.cleanup.i_crit_edge:        ; preds = %read_byte.exit.i139.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup.i

if.end23.i:                                       ; preds = %read_byte.exit.i139.i
  %arrayidx.i.i140.i = getelementptr i8, ptr %src_addr_va, i32 %inc.i128.i
  %5 = ptrtoint ptr %arrayidx.i.i140.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx.i.i140.i, align 1
  %conv.i.i141.i = zext i8 %6 to i32
  %inc.i13.i142.i = add nuw i32 %stream.sroa.33.2.i, 6
  %arrayidx.i14.i143.i = getelementptr i8, ptr %src_addr_va, i32 %inc.i.i137.i
  %7 = ptrtoint ptr %arrayidx.i14.i143.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx.i14.i143.i, align 1
  %conv.i15.i144.i = zext i8 %8 to i32
  %shl.i145.i = shl nuw nsw i32 %conv.i.i141.i, 8
  %or.i146.i = or i32 %shl.i145.i, %conv.i15.i144.i
  %9 = ptrtoint ptr %pic_h.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %or.i146.i, ptr %pic_h.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i13.i142.i, i32 %src_size)
  %cmp.not.i.i152.i = icmp ult i32 %inc.i13.i142.i, %src_size
  br i1 %cmp.not.i.i152.i, label %read_byte.exit.i155.i, label %if.end23.i.cleanup.i_crit_edge

if.end23.i.cleanup.i_crit_edge:                   ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup.i

read_byte.exit.i155.i:                            ; preds = %if.end23.i
  %inc.i.i153.i = add nuw i32 %stream.sroa.33.2.i, 7
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i153.i, i32 %src_size)
  %cmp.not.i12.i154.i = icmp ult i32 %inc.i.i153.i, %src_size
  br i1 %cmp.not.i12.i154.i, label %if.end27.i, label %read_byte.exit.i155.i.cleanup.i_crit_edge

read_byte.exit.i155.i.cleanup.i_crit_edge:        ; preds = %read_byte.exit.i155.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup.i

if.end27.i:                                       ; preds = %read_byte.exit.i155.i
  %arrayidx.i.i156.i = getelementptr i8, ptr %src_addr_va, i32 %inc.i13.i142.i
  %10 = ptrtoint ptr %arrayidx.i.i156.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.i.i156.i, align 1
  %conv.i.i157.i = zext i8 %11 to i32
  %inc.i13.i158.i = add nuw i32 %stream.sroa.33.2.i, 8
  %arrayidx.i14.i159.i = getelementptr i8, ptr %src_addr_va, i32 %inc.i.i153.i
  %12 = ptrtoint ptr %arrayidx.i14.i159.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.i14.i159.i, align 1
  %conv.i15.i160.i = zext i8 %13 to i32
  %shl.i161.i = shl nuw nsw i32 %conv.i.i157.i, 8
  %or.i162.i = or i32 %shl.i161.i, %conv.i15.i160.i
  %14 = ptrtoint ptr %param to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %or.i162.i, ptr %param, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i13.i158.i, i32 %src_size)
  %cmp.not.i168.i = icmp ult i32 %inc.i13.i158.i, %src_size
  br i1 %cmp.not.i168.i, label %read_byte.exit174.i, label %read_byte.exit174.thread.i

read_byte.exit174.thread.i:                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #4
  %15 = ptrtoint ptr %comp_num282.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %comp_num282.i, align 4
  br label %cleanup.i

read_byte.exit174.i:                              ; preds = %if.end27.i
  %inc.i169.i = add nuw i32 %stream.sroa.33.2.i, 9
  %arrayidx.i170.i = getelementptr i8, ptr %src_addr_va, i32 %inc.i13.i158.i
  %16 = ptrtoint ptr %arrayidx.i170.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.i170.i, align 1
  %conv.i171.i = zext i8 %17 to i32
  %18 = ptrtoint ptr %comp_num282.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv.i171.i, ptr %comp_num282.i, align 4
  %19 = zext i8 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.1)
  switch i8 %17, label %read_byte.exit174.i.cleanup.i_crit_edge [
    i8 1, label %read_byte.exit174.i.for.body.i.preheader_crit_edge
    i8 3, label %read_byte.exit174.i.for.body.i.preheader_crit_edge82
  ]

read_byte.exit174.i.for.body.i.preheader_crit_edge82: ; preds = %read_byte.exit174.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.i.preheader

read_byte.exit174.i.for.body.i.preheader_crit_edge: ; preds = %read_byte.exit174.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.i.preheader

read_byte.exit174.i.cleanup.i_crit_edge:          ; preds = %read_byte.exit174.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup.i

for.body.i.preheader:                             ; preds = %read_byte.exit174.i.for.body.i.preheader_crit_edge, %read_byte.exit174.i.for.body.i.preheader_crit_edge82
  br label %for.body.i

for.body.i:                                       ; preds = %read_byte.exit201.i.for.body.i_crit_edge, %for.body.i.preheader
  %i.0319.i = phi i32 [ %inc.i, %read_byte.exit201.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %stream.sroa.33.9318.i = phi i32 [ %inc.i196.i, %read_byte.exit201.i.for.body.i_crit_edge ], [ %inc.i169.i, %for.body.i.preheader ]
  call void @__sanitizer_cov_trace_cmp4(i32 %stream.sroa.33.9318.i, i32 %src_size)
  %cmp.not.i177.i = icmp ult i32 %stream.sroa.33.9318.i, %src_size
  br i1 %cmp.not.i177.i, label %read_byte.exit183.i, label %read_byte.exit183.thread.i

read_byte.exit183.thread.i:                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #4
  %arrayidx286.i = getelementptr %struct.mtk_jpeg_dec_param, ptr %param, i32 0, i32 11, i32 %i.0319.i
  br label %for.end.sink.split.i

read_byte.exit183.i:                              ; preds = %for.body.i
  %inc.i178.i = add nuw i32 %stream.sroa.33.9318.i, 1
  %arrayidx.i179.i = getelementptr i8, ptr %src_addr_va, i32 %stream.sroa.33.9318.i
  %20 = ptrtoint ptr %arrayidx.i179.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.i179.i, align 1
  %conv.i180.i = zext i8 %21 to i32
  %arrayidx.i = getelementptr %struct.mtk_jpeg_dec_param, ptr %param, i32 0, i32 11, i32 %i.0319.i
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %conv.i180.i, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i178.i, i32 %src_size)
  %cmp.not.i186.i = icmp ult i32 %inc.i178.i, %src_size
  br i1 %cmp.not.i186.i, label %read_byte.exit192.i, label %read_byte.exit183.i.for.end.i_crit_edge

read_byte.exit183.i.for.end.i_crit_edge:          ; preds = %read_byte.exit183.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end.i

read_byte.exit192.i:                              ; preds = %read_byte.exit183.i
  %inc.i187.i = add nuw i32 %stream.sroa.33.9318.i, 2
  %arrayidx.i188.i = getelementptr i8, ptr %src_addr_va, i32 %inc.i178.i
  %23 = ptrtoint ptr %arrayidx.i188.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx.i188.i, align 1
  %conv.i189.i = zext i8 %24 to i32
  %25 = lshr i32 %conv.i189.i, 4
  %arrayidx47.i = getelementptr %struct.mtk_jpeg_dec_param, ptr %param, i32 0, i32 12, i32 %i.0319.i
  %26 = ptrtoint ptr %arrayidx47.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %arrayidx47.i, align 4
  %and48.i = and i32 %conv.i189.i, 15
  %arrayidx49.i = getelementptr %struct.mtk_jpeg_dec_param, ptr %param, i32 0, i32 13, i32 %i.0319.i
  %27 = ptrtoint ptr %arrayidx49.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %and48.i, ptr %arrayidx49.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i187.i, i32 %src_size)
  %cmp.not.i195.i = icmp ult i32 %inc.i187.i, %src_size
  br i1 %cmp.not.i195.i, label %read_byte.exit201.i, label %read_byte.exit201.thread.i

read_byte.exit201.thread.i:                       ; preds = %read_byte.exit192.i
  call void @__sanitizer_cov_trace_pc() #4
  %arrayidx51293.i = getelementptr %struct.mtk_jpeg_dec_param, ptr %param, i32 0, i32 14, i32 %i.0319.i
  br label %for.end.sink.split.i

read_byte.exit201.i:                              ; preds = %read_byte.exit192.i
  %inc.i196.i = add nuw i32 %stream.sroa.33.9318.i, 3
  %arrayidx.i197.i = getelementptr i8, ptr %src_addr_va, i32 %inc.i187.i
  %28 = ptrtoint ptr %arrayidx.i197.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx.i197.i, align 1
  %conv.i198.i = zext i8 %29 to i32
  %arrayidx51.i = getelementptr %struct.mtk_jpeg_dec_param, ptr %param, i32 0, i32 14, i32 %i.0319.i
  %30 = ptrtoint ptr %arrayidx51.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %conv.i198.i, ptr %arrayidx51.i, align 4
  %inc.i = add nuw i32 %i.0319.i, 1
  %31 = ptrtoint ptr %comp_num282.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %comp_num282.i, align 4
  %cmp36.i = icmp ult i32 %inc.i, %32
  br i1 %cmp36.i, label %read_byte.exit201.i.for.body.i_crit_edge, label %read_byte.exit201.i.for.end.i_crit_edge

read_byte.exit201.i.for.end.i_crit_edge:          ; preds = %read_byte.exit201.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end.i

read_byte.exit201.i.for.body.i_crit_edge:         ; preds = %read_byte.exit201.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.i

for.end.sink.split.i:                             ; preds = %read_byte.exit201.thread.i, %read_byte.exit183.thread.i
  %arrayidx51293.sink.i = phi ptr [ %arrayidx51293.i, %read_byte.exit201.thread.i ], [ %arrayidx286.i, %read_byte.exit183.thread.i ]
  %stream.sroa.33.13.ph.i = phi i32 [ %inc.i187.i, %read_byte.exit201.thread.i ], [ %stream.sroa.33.9318.i, %read_byte.exit183.thread.i ]
  %33 = ptrtoint ptr %arrayidx51293.sink.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 -1, ptr %arrayidx51293.sink.i, align 4
  br label %for.end.i

for.end.i:                                        ; preds = %for.end.sink.split.i, %read_byte.exit201.i.for.end.i_crit_edge, %read_byte.exit183.i.for.end.i_crit_edge
  %i.0312.i = phi i32 [ %i.0319.i, %for.end.sink.split.i ], [ %i.0319.i, %read_byte.exit183.i.for.end.i_crit_edge ], [ %inc.i, %read_byte.exit201.i.for.end.i_crit_edge ]
  %stream.sroa.33.13.i = phi i32 [ %stream.sroa.33.13.ph.i, %for.end.sink.split.i ], [ %inc.i178.i, %read_byte.exit183.i.for.end.i_crit_edge ], [ %inc.i196.i, %read_byte.exit201.i.for.end.i_crit_edge ]
  %34 = ptrtoint ptr %comp_num282.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %comp_num282.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0312.i, i32 %35)
  %cmp58.i = icmp ne i32 %i.0312.i, %35
  br label %cleanup.i

sw.default.i:                                     ; preds = %read_byte.exit123.i
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i118.i, i32 %src_size)
  %cmp.not.i.i204.i = icmp ult i32 %inc.i118.i, %src_size
  br i1 %cmp.not.i.i204.i, label %read_byte.exit.i207.i, label %sw.default.i.cleanup.i_crit_edge

sw.default.i.cleanup.i_crit_edge:                 ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup.i

read_byte.exit.i207.i:                            ; preds = %sw.default.i
  %inc.i.i205.i = add nuw i32 %stream.sroa.33.2.i, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i205.i, i32 %src_size)
  %cmp.not.i12.i206.i = icmp ult i32 %inc.i.i205.i, %src_size
  br i1 %cmp.not.i12.i206.i, label %if.end64.i, label %read_byte.exit.i207.i.cleanup.i_crit_edge

read_byte.exit.i207.i.cleanup.i_crit_edge:        ; preds = %read_byte.exit.i207.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup.i

if.end64.i:                                       ; preds = %read_byte.exit.i207.i
  %arrayidx.i.i208.i = getelementptr i8, ptr %src_addr_va, i32 %inc.i118.i
  %36 = ptrtoint ptr %arrayidx.i.i208.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx.i.i208.i, align 1
  %conv.i.i209.i = zext i8 %37 to i32
  %inc.i13.i210.i = add nuw i32 %stream.sroa.33.2.i, 3
  %arrayidx.i14.i211.i = getelementptr i8, ptr %src_addr_va, i32 %inc.i.i205.i
  %38 = ptrtoint ptr %arrayidx.i14.i211.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx.i14.i211.i, align 1
  %conv.i15.i212.i = zext i8 %39 to i32
  %shl.i213.i = shl nuw nsw i32 %conv.i.i209.i, 8
  %or.i214.i = or i32 %shl.i213.i, %conv.i15.i212.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %or.i214.i)
  %cmp.i.i = icmp ult i32 %or.i214.i, 3
  br i1 %cmp.i.i, label %if.end64.i.cleanup.i_crit_edge, label %while.body.i.preheader.i

if.end64.i.cleanup.i_crit_edge:                   ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup.i

while.body.i.preheader.i:                         ; preds = %if.end64.i
  %sub.i = add nsw i32 %or.i214.i, -2
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %while.body.i.preheader.i
  %stream.sroa.33.15.i = phi i32 [ %spec.select.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %inc.i13.i210.i, %while.body.i.preheader.i ]
  %len.addr.06.i.i = phi i32 [ %dec.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %sub.i, %while.body.i.preheader.i ]
  %inc.i35.i.i = phi i32 [ %spec.select302.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %inc.i13.i210.i, %while.body.i.preheader.i ]
  %dec.i.i = add nsw i32 %len.addr.06.i.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i35.i.i, i32 %src_size)
  %cmp.not.i.i220.i = icmp ult i32 %inc.i35.i.i, %src_size
  %inc.i.i221.i = add nuw i32 %inc.i35.i.i, 1
  %spec.select.i = select i1 %cmp.not.i.i220.i, i32 %inc.i.i221.i, i32 %stream.sroa.33.15.i
  %spec.select302.i = select i1 %cmp.not.i.i220.i, i32 %inc.i.i221.i, i32 %inc.i35.i.i
  %tobool.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool.not.i.i, label %while.body.i.i.cleanup.i_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body.i.i

while.body.i.i.cleanup.i_crit_edge:               ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup.i

cleanup.i:                                        ; preds = %while.body.i.i.cleanup.i_crit_edge, %if.end64.i.cleanup.i_crit_edge, %read_byte.exit.i207.i.cleanup.i_crit_edge, %sw.default.i.cleanup.i_crit_edge, %for.end.i, %read_byte.exit174.i.cleanup.i_crit_edge, %read_byte.exit174.thread.i, %read_byte.exit.i155.i.cleanup.i_crit_edge, %if.end23.i.cleanup.i_crit_edge, %read_byte.exit.i139.i.cleanup.i_crit_edge, %read_byte.exit133.i.cleanup.i_crit_edge, %if.end15.i.cleanup.i_crit_edge, %read_byte.exit.i.i.cleanup.i_crit_edge, %sw.bb.i.cleanup.i_crit_edge, %read_byte.exit123.i.cleanup.i_crit_edge, %read_byte.exit123.i.cleanup.i_crit_edge71, %read_byte.exit123.i.cleanup.i_crit_edge72, %read_byte.exit123.i.cleanup.i_crit_edge73, %read_byte.exit123.i.cleanup.i_crit_edge74, %read_byte.exit123.i.cleanup.i_crit_edge75, %read_byte.exit123.i.cleanup.i_crit_edge76, %read_byte.exit123.i.cleanup.i_crit_edge77, %read_byte.exit123.i.cleanup.i_crit_edge78, %read_byte.exit123.i.cleanup.i_crit_edge79, %read_byte.exit123.i.cleanup.i_crit_edge80, %read_byte.exit123.i.cleanup.i_crit_edge81, %read_byte.exit.i.cleanup.i_crit_edge
  %stream.sroa.33.19.i = phi i32 [ %inc.i.i, %read_byte.exit.i.cleanup.i_crit_edge ], [ %inc.i169.i, %read_byte.exit174.i.cleanup.i_crit_edge ], [ %stream.sroa.33.13.i, %for.end.i ], [ %inc.i13.i158.i, %read_byte.exit174.thread.i ], [ %inc.i13.i210.i, %if.end64.i.cleanup.i_crit_edge ], [ %inc.i118.i, %sw.bb.i.cleanup.i_crit_edge ], [ %inc.i.i.i, %read_byte.exit.i.i.cleanup.i_crit_edge ], [ %inc.i13.i.i, %if.end15.i.cleanup.i_crit_edge ], [ %inc.i128.i, %read_byte.exit133.i.cleanup.i_crit_edge ], [ %inc.i.i137.i, %read_byte.exit.i139.i.cleanup.i_crit_edge ], [ %inc.i13.i142.i, %if.end23.i.cleanup.i_crit_edge ], [ %inc.i.i153.i, %read_byte.exit.i155.i.cleanup.i_crit_edge ], [ %inc.i118.i, %sw.default.i.cleanup.i_crit_edge ], [ %inc.i.i205.i, %read_byte.exit.i207.i.cleanup.i_crit_edge ], [ %spec.select.i, %while.body.i.i.cleanup.i_crit_edge ], [ %inc.i118.i, %read_byte.exit123.i.cleanup.i_crit_edge ], [ %inc.i118.i, %read_byte.exit123.i.cleanup.i_crit_edge71 ], [ %inc.i118.i, %read_byte.exit123.i.cleanup.i_crit_edge72 ], [ %inc.i118.i, %read_byte.exit123.i.cleanup.i_crit_edge73 ], [ %inc.i118.i, %read_byte.exit123.i.cleanup.i_crit_edge74 ], [ %inc.i118.i, %read_byte.exit123.i.cleanup.i_crit_edge75 ], [ %inc.i118.i, %read_byte.exit123.i.cleanup.i_crit_edge76 ], [ %inc.i118.i, %read_byte.exit123.i.cleanup.i_crit_edge77 ], [ %inc.i118.i, %read_byte.exit123.i.cleanup.i_crit_edge78 ], [ %inc.i118.i, %read_byte.exit123.i.cleanup.i_crit_edge79 ], [ %inc.i118.i, %read_byte.exit123.i.cleanup.i_crit_edge80 ], [ %inc.i118.i, %read_byte.exit123.i.cleanup.i_crit_edge81 ]
  %notfound.2.off0.i = phi i1 [ true, %read_byte.exit.i.cleanup.i_crit_edge ], [ true, %read_byte.exit174.i.cleanup.i_crit_edge ], [ %cmp58.i, %for.end.i ], [ true, %read_byte.exit174.thread.i ], [ true, %if.end64.i.cleanup.i_crit_edge ], [ true, %sw.bb.i.cleanup.i_crit_edge ], [ true, %read_byte.exit.i.i.cleanup.i_crit_edge ], [ true, %if.end15.i.cleanup.i_crit_edge ], [ true, %read_byte.exit133.i.cleanup.i_crit_edge ], [ true, %read_byte.exit.i139.i.cleanup.i_crit_edge ], [ true, %if.end23.i.cleanup.i_crit_edge ], [ true, %read_byte.exit.i155.i.cleanup.i_crit_edge ], [ true, %sw.default.i.cleanup.i_crit_edge ], [ true, %read_byte.exit.i207.i.cleanup.i_crit_edge ], [ true, %while.body.i.i.cleanup.i_crit_edge ], [ true, %read_byte.exit123.i.cleanup.i_crit_edge ], [ true, %read_byte.exit123.i.cleanup.i_crit_edge71 ], [ true, %read_byte.exit123.i.cleanup.i_crit_edge72 ], [ true, %read_byte.exit123.i.cleanup.i_crit_edge73 ], [ true, %read_byte.exit123.i.cleanup.i_crit_edge74 ], [ true, %read_byte.exit123.i.cleanup.i_crit_edge75 ], [ true, %read_byte.exit123.i.cleanup.i_crit_edge76 ], [ true, %read_byte.exit123.i.cleanup.i_crit_edge77 ], [ true, %read_byte.exit123.i.cleanup.i_crit_edge78 ], [ true, %read_byte.exit123.i.cleanup.i_crit_edge79 ], [ true, %read_byte.exit123.i.cleanup.i_crit_edge80 ], [ true, %read_byte.exit123.i.cleanup.i_crit_edge81 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %stream.sroa.33.19.i, i32 %src_size)
  %cmp.not.i.i = icmp ult i32 %stream.sroa.33.19.i, %src_size
  %or.cond.i = select i1 %notfound.2.off0.i, i1 %cmp.not.i.i, i1 false
  br i1 %or.cond.i, label %cleanup.i.read_byte.exit.i_crit_edge, label %mtk_jpeg_do_parse.exit

cleanup.i.read_byte.exit.i_crit_edge:             ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %read_byte.exit.i

mtk_jpeg_do_parse.exit:                           ; preds = %cleanup.i
  br i1 %notfound.2.off0.i, label %mtk_jpeg_do_parse.exit.return_crit_edge, label %if.end

mtk_jpeg_do_parse.exit.return_crit_edge:          ; preds = %mtk_jpeg_do_parse.exit
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

if.end:                                           ; preds = %mtk_jpeg_do_parse.exit
  call void @__sanitizer_cov_trace_pc() #4
  %call1 = tail call i32 @mtk_jpeg_dec_fill_param(ptr noundef %param) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br label %return

return:                                           ; preds = %if.end, %mtk_jpeg_do_parse.exit.return_crit_edge, %do.body.i.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i1 [ false, %mtk_jpeg_do_parse.exit.return_crit_edge ], [ %tobool.not, %if.end ], [ false, %entry.return_crit_edge ], [ false, %do.body.i.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_jpeg_dec_fill_param(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

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
