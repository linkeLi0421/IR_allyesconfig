; ModuleID = '/llk/IR_all_yes/drivers/media/test-drivers/vivid/vivid-vbi-gen.c_pt.bc'
source_filename = "../drivers/media/test-drivers/vivid/vivid-vbi-gen.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.timezone = type { i32, i32 }
%struct.v4l2_vbi_format = type { i32, i32, i32, i32, [2 x i32], [2 x i32], i32, [2 x i32] }
%struct.v4l2_sliced_vbi_data = type { i32, i32, i32, i32, [48 x i8] }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.vivid_vbi_gen_data = type { [25 x %struct.v4l2_sliced_vbi_data], [16 x i8] }

@vivid_cc_sequence2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\14 Closed captions test\14/\00\00\00\00\00\00", [34 x i8] zeroinitializer }, align 32
@__const.vivid_vbi_gen_cc_raw.cc = private unnamed_addr constant <{ [20 x i8], [32 x i8] }> <{ [20 x i8] c"\00\01\00\01\00\01\00\01\00\01\00\01\00\01\00\00\00\00\01\01", [32 x i8] zeroinitializer }>, align 1
@hamming = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\15\02I^ds8/\D0\C7\8C\9B\A1\B6\FD\EA", [16 x i8] zeroinitializer }, align 32
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Page: 100 Row: 10\00", [46 x i8] zeroinitializer }, align 32
@vivid_cc_sequence1 = internal constant { <{ [16 x i8], [14 x i8] }>, [34 x i8] } { <{ [16 x i8], [14 x i8] }> <{ [16 x i8] c"\14 Hello world!\14/", [14 x i8] zeroinitializer }>, [34 x i8] zeroinitializer }, align 32
@sys_tz = external dso_local local_unnamed_addr global %struct.timezone, align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 4096, i64 16384]
@__sancov_gen_cov_switch_values.2 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@___asan_gen_.3 = private unnamed_addr constant [19 x i8] c"vivid_cc_sequence2\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 151, i32 17 }
@___asan_gen_.6 = private unnamed_addr constant [8 x i8] c"hamming\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 211, i32 17 }
@___asan_gen_.9 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 237, i32 17 }
@___asan_gen_.12 = private unnamed_addr constant [19 x i8] c"vivid_cc_sequence1\00", align 1
@___asan_gen_.13 = private constant [52 x i8] c"../drivers/media/test-drivers/vivid/vivid-vbi-gen.c\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 140, i32 17 }
@llvm.compiler.used = appending global [4 x ptr] [ptr @vivid_cc_sequence2, ptr @hamming, ptr @.str, ptr @vivid_cc_sequence1], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_cc_sequence2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hamming to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_cc_sequence1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vivid_vbi_gen_raw(ptr nocapture noundef readonly %vbi, ptr nocapture noundef readonly %vbi_fmt, ptr nocapture noundef writeonly %buf) local_unnamed_addr #0 align 64 {
entry:
  %teletext.i = alloca [45 x i8], align 1
  %wss.i = alloca [137 x i8], align 1
  %cc.i = alloca [52 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.v4l2_vbi_format, ptr %vbi_fmt, i32 0, i32 6
  %samples_per_line = getelementptr inbounds %struct.v4l2_vbi_format, ptr %vbi_fmt, i32 0, i32 2
  %count = getelementptr inbounds %struct.v4l2_vbi_format, ptr %vbi_fmt, i32 0, i32 5
  %0 = getelementptr inbounds <{ i8, i8, i8, [42 x i8] }>, ptr %teletext.i, i32 0, i32 1
  %1 = getelementptr inbounds <{ i8, i8, i8, [42 x i8] }>, ptr %teletext.i, i32 0, i32 2
  %add.ptr.i74 = getelementptr inbounds i8, ptr %teletext.i, i32 3
  %add.ptr2.i = getelementptr inbounds i8, ptr %wss.i, i32 29
  %incdec.ptr.i49.i = getelementptr inbounds i8, ptr %wss.i, i32 30
  %incdec.ptr.i49.1.i = getelementptr inbounds i8, ptr %wss.i, i32 31
  %incdec.ptr.i49.2.i = getelementptr inbounds i8, ptr %wss.i, i32 32
  %incdec.ptr.i49.6.i = getelementptr inbounds i8, ptr %wss.i, i32 36
  %incdec.ptr.i49.7.i = getelementptr inbounds i8, ptr %wss.i, i32 37
  %incdec.ptr.i49.8.i = getelementptr inbounds i8, ptr %wss.i, i32 38
  %incdec.ptr.i49.9.i = getelementptr inbounds i8, ptr %wss.i, i32 39
  %incdec.ptr.i49.13.i = getelementptr inbounds i8, ptr %wss.i, i32 43
  %incdec.ptr.i49.18.i = getelementptr inbounds i8, ptr %wss.i, i32 48
  %add.ptr.i = getelementptr inbounds i8, ptr %cc.i, i32 20
  %arrayidx.i.i = getelementptr inbounds i8, ptr %cc.i, i32 21
  %arrayidx.1.i.i = getelementptr inbounds i8, ptr %cc.i, i32 23
  %arrayidx3.1.i.i = getelementptr inbounds i8, ptr %cc.i, i32 22
  %arrayidx.2.i.i = getelementptr inbounds i8, ptr %cc.i, i32 25
  %arrayidx3.2.i.i = getelementptr inbounds i8, ptr %cc.i, i32 24
  %arrayidx.3.i.i = getelementptr inbounds i8, ptr %cc.i, i32 27
  %arrayidx3.3.i.i = getelementptr inbounds i8, ptr %cc.i, i32 26
  %arrayidx.4.i.i = getelementptr inbounds i8, ptr %cc.i, i32 29
  %arrayidx3.4.i.i = getelementptr inbounds i8, ptr %cc.i, i32 28
  %arrayidx.5.i.i = getelementptr inbounds i8, ptr %cc.i, i32 31
  %arrayidx3.5.i.i = getelementptr inbounds i8, ptr %cc.i, i32 30
  %arrayidx.6.i.i = getelementptr inbounds i8, ptr %cc.i, i32 33
  %arrayidx3.6.i.i = getelementptr inbounds i8, ptr %cc.i, i32 32
  %arrayidx11.i.i = getelementptr inbounds i8, ptr %cc.i, i32 35
  %arrayidx12.i.i = getelementptr inbounds i8, ptr %cc.i, i32 34
  %add.ptr4.i = getelementptr inbounds i8, ptr %cc.i, i32 36
  %arrayidx.i19.i = getelementptr inbounds i8, ptr %cc.i, i32 37
  %arrayidx.1.i22.i = getelementptr inbounds i8, ptr %cc.i, i32 39
  %arrayidx3.1.i23.i = getelementptr inbounds i8, ptr %cc.i, i32 38
  %arrayidx.2.i28.i = getelementptr inbounds i8, ptr %cc.i, i32 41
  %arrayidx3.2.i29.i = getelementptr inbounds i8, ptr %cc.i, i32 40
  %arrayidx.3.i34.i = getelementptr inbounds i8, ptr %cc.i, i32 43
  %arrayidx3.3.i35.i = getelementptr inbounds i8, ptr %cc.i, i32 42
  %arrayidx.4.i40.i = getelementptr inbounds i8, ptr %cc.i, i32 45
  %arrayidx3.4.i41.i = getelementptr inbounds i8, ptr %cc.i, i32 44
  %arrayidx.5.i46.i = getelementptr inbounds i8, ptr %cc.i, i32 47
  %arrayidx3.5.i47.i = getelementptr inbounds i8, ptr %cc.i, i32 46
  %arrayidx.6.i52.i = getelementptr inbounds i8, ptr %cc.i, i32 49
  %arrayidx3.6.i53.i = getelementptr inbounds i8, ptr %cc.i, i32 48
  %arrayidx11.i56.i = getelementptr inbounds i8, ptr %cc.i, i32 51
  %arrayidx12.i57.i = getelementptr inbounds i8, ptr %cc.i, i32 50
  br label %for.body

for.body:                                         ; preds = %if.end35.for.body_crit_edge, %entry
  %idx.091 = phi i32 [ 0, %entry ], [ %inc, %if.end35.for.body_crit_edge ]
  %add.ptr = getelementptr %struct.v4l2_sliced_vbi_data, ptr %vbi, i32 %idx.091
  %line2 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %vbi, i32 %idx.091, i32 2
  %2 = ptrtoint ptr %line2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %line2, align 4
  %field = getelementptr %struct.v4l2_sliced_vbi_data, ptr %vbi, i32 %idx.091, i32 1
  %4 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %field, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool3.not = icmp eq i32 %5, 0
  br i1 %tobool3.not, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr, align 4
  %and = and i32 %7, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, i32 313, i32 263
  %add = add i32 %cond, %3
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %line.0 = phi i32 [ %add, %if.then ], [ %3, %for.body.if.end_crit_edge ]
  %arrayidx = getelementptr %struct.v4l2_vbi_format, ptr %vbi_fmt, i32 0, i32 4, i32 %5
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %sub = sub i32 %line.0, %9
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags, align 4
  %and5 = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %mul = shl i32 %sub, 1
  %add9 = add i32 %mul, %5
  %12 = ptrtoint ptr %samples_per_line to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %samples_per_line, align 4
  br label %if.end19

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %count, align 4
  %mul14 = mul i32 %15, %5
  %add15 = add i32 %mul14, %sub
  %16 = ptrtoint ptr %samples_per_line to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %samples_per_line, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.then7
  %.sink = phi i32 [ %17, %if.else ], [ %add9, %if.then7 ]
  %add15.sink = phi i32 [ %add15, %if.else ], [ %13, %if.then7 ]
  %mul17 = mul i32 %add15.sink, %.sink
  %linebuf.0 = getelementptr i8, ptr %buf, i32 %mul17
  %18 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %add.ptr, align 4
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values)
  switch i32 %19, label %if.end19.if.end35_crit_edge [
    i32 4096, label %if.then22
    i32 16384, label %if.then26
    i32 1, label %if.then31
  ]

if.end19.if.end35_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end35

if.then22:                                        ; preds = %if.end19
  %21 = ptrtoint ptr %vbi_fmt to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %vbi_fmt, align 4
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %cc.i) #5
  %23 = call ptr @memcpy(ptr %cc.i, ptr @__const.vivid_vbi_gen_cc_raw.cc, i32 20)
  %data1.i = getelementptr %struct.v4l2_sliced_vbi_data, ptr %vbi, i32 %idx.091, i32 4
  %24 = ptrtoint ptr %data1.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %data1.i, align 4
  %conv.i.i = zext i8 %25 to i32
  %and.i.i = and i32 %conv.i.i, 1
  %26 = trunc i32 %and.i.i to i8
  %27 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %arrayidx.i.i, align 1
  %28 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %26, ptr %add.ptr.i, align 1
  %and.1.i.i = lshr i32 %conv.i.i, 1
  %29 = trunc i32 %and.1.i.i to i8
  %30 = and i8 %29, 1
  %31 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %arrayidx.1.i.i, align 1
  %32 = ptrtoint ptr %arrayidx3.1.i.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %30, ptr %arrayidx3.1.i.i, align 1
  %and.2.i.i = lshr i32 %conv.i.i, 2
  %33 = trunc i32 %and.2.i.i to i8
  %34 = and i8 %33, 1
  %35 = ptrtoint ptr %arrayidx.2.i.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %arrayidx.2.i.i, align 1
  %36 = ptrtoint ptr %arrayidx3.2.i.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %34, ptr %arrayidx3.2.i.i, align 1
  %and.3.i.i = lshr i32 %conv.i.i, 3
  %37 = trunc i32 %and.3.i.i to i8
  %38 = and i8 %37, 1
  %39 = ptrtoint ptr %arrayidx.3.i.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %38, ptr %arrayidx.3.i.i, align 1
  %40 = ptrtoint ptr %arrayidx3.3.i.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %38, ptr %arrayidx3.3.i.i, align 1
  %and.4.i.i = lshr i32 %conv.i.i, 4
  %41 = trunc i32 %and.4.i.i to i8
  %42 = and i8 %41, 1
  %43 = ptrtoint ptr %arrayidx.4.i.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %42, ptr %arrayidx.4.i.i, align 1
  %44 = ptrtoint ptr %arrayidx3.4.i.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %42, ptr %arrayidx3.4.i.i, align 1
  %and.5.i.i = lshr i32 %conv.i.i, 5
  %45 = trunc i32 %and.5.i.i to i8
  %46 = and i8 %45, 1
  %47 = ptrtoint ptr %arrayidx.5.i.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %46, ptr %arrayidx.5.i.i, align 1
  %48 = ptrtoint ptr %arrayidx3.5.i.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %46, ptr %arrayidx3.5.i.i, align 1
  %and.6.i.i = lshr i32 %conv.i.i, 6
  %49 = trunc i32 %and.6.i.i to i8
  %50 = and i8 %49, 1
  %51 = ptrtoint ptr %arrayidx.6.i.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %50, ptr %arrayidx.6.i.i, align 1
  %52 = ptrtoint ptr %arrayidx3.6.i.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %50, ptr %arrayidx3.6.i.i, align 1
  %add7.1.i.i = add nuw nsw i32 %and.4.i.i, %and.i.i
  %add7.2.i.i = add nuw nsw i32 %add7.1.i.i, %and.5.i.i
  %add7.3.i.i = add nuw nsw i32 %add7.2.i.i, %and.6.i.i
  %add7.4.i.i = add nuw nsw i32 %add7.3.i.i, %and.1.i.i
  %add7.5.i.i = add nuw nsw i32 %add7.4.i.i, %and.2.i.i
  %add7.6.i.i = add nuw nsw i32 %add7.5.i.i, %and.3.i.i
  %53 = trunc i32 %add7.6.i.i to i8
  %54 = and i8 %53, 1
  %55 = xor i8 %54, 1
  %56 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %55, ptr %arrayidx11.i.i, align 1
  %57 = ptrtoint ptr %arrayidx12.i.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %55, ptr %arrayidx12.i.i, align 1
  %arrayidx6.i = getelementptr %struct.v4l2_sliced_vbi_data, ptr %vbi, i32 %idx.091, i32 4, i32 1
  %58 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx6.i, align 1
  %conv.i17.i = zext i8 %59 to i32
  %and.i18.i = and i32 %conv.i17.i, 1
  %60 = trunc i32 %and.i18.i to i8
  %61 = ptrtoint ptr %arrayidx.i19.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %60, ptr %arrayidx.i19.i, align 1
  %62 = ptrtoint ptr %add.ptr4.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %60, ptr %add.ptr4.i, align 1
  %and.1.i20.i = lshr i32 %conv.i17.i, 1
  %63 = trunc i32 %and.1.i20.i to i8
  %64 = and i8 %63, 1
  %65 = ptrtoint ptr %arrayidx.1.i22.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %64, ptr %arrayidx.1.i22.i, align 1
  %66 = ptrtoint ptr %arrayidx3.1.i23.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %64, ptr %arrayidx3.1.i23.i, align 1
  %and.2.i26.i = lshr i32 %conv.i17.i, 2
  %67 = trunc i32 %and.2.i26.i to i8
  %68 = and i8 %67, 1
  %69 = ptrtoint ptr %arrayidx.2.i28.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %68, ptr %arrayidx.2.i28.i, align 1
  %70 = ptrtoint ptr %arrayidx3.2.i29.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %68, ptr %arrayidx3.2.i29.i, align 1
  %and.3.i32.i = lshr i32 %conv.i17.i, 3
  %71 = trunc i32 %and.3.i32.i to i8
  %72 = and i8 %71, 1
  %73 = ptrtoint ptr %arrayidx.3.i34.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %72, ptr %arrayidx.3.i34.i, align 1
  %74 = ptrtoint ptr %arrayidx3.3.i35.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %72, ptr %arrayidx3.3.i35.i, align 1
  %and.4.i38.i = lshr i32 %conv.i17.i, 4
  %75 = trunc i32 %and.4.i38.i to i8
  %76 = and i8 %75, 1
  %77 = ptrtoint ptr %arrayidx.4.i40.i to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %76, ptr %arrayidx.4.i40.i, align 1
  %78 = ptrtoint ptr %arrayidx3.4.i41.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %76, ptr %arrayidx3.4.i41.i, align 1
  %and.5.i44.i = lshr i32 %conv.i17.i, 5
  %79 = trunc i32 %and.5.i44.i to i8
  %80 = and i8 %79, 1
  %81 = ptrtoint ptr %arrayidx.5.i46.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %80, ptr %arrayidx.5.i46.i, align 1
  %82 = ptrtoint ptr %arrayidx3.5.i47.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %80, ptr %arrayidx3.5.i47.i, align 1
  %and.6.i50.i = lshr i32 %conv.i17.i, 6
  %83 = trunc i32 %and.6.i50.i to i8
  %84 = and i8 %83, 1
  %85 = ptrtoint ptr %arrayidx.6.i52.i to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %84, ptr %arrayidx.6.i52.i, align 1
  %86 = ptrtoint ptr %arrayidx3.6.i53.i to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %84, ptr %arrayidx3.6.i53.i, align 1
  %add7.1.i25.i = add nuw nsw i32 %and.4.i38.i, %and.i18.i
  %add7.2.i31.i = add nuw nsw i32 %add7.1.i25.i, %and.5.i44.i
  %add7.3.i37.i = add nuw nsw i32 %add7.2.i31.i, %and.6.i50.i
  %add7.4.i43.i = add nuw nsw i32 %add7.3.i37.i, %and.1.i20.i
  %add7.5.i49.i = add nuw nsw i32 %add7.4.i43.i, %and.2.i26.i
  %add7.6.i55.i = add nuw nsw i32 %add7.5.i49.i, %and.3.i32.i
  %87 = trunc i32 %add7.6.i55.i to i8
  %88 = and i8 %87, 1
  %89 = xor i8 %88, 1
  %90 = ptrtoint ptr %arrayidx11.i56.i to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %89, ptr %arrayidx11.i56.i, align 1
  %91 = ptrtoint ptr %arrayidx12.i57.i to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %89, ptr %arrayidx12.i57.i, align 1
  br label %for.body.i

for.cond.loopexit.i:                              ; preds = %while.body.lr.ph.i, %for.body.i.for.cond.loopexit.i_crit_edge
  %i.1.lcssa.i = phi i32 [ %i.061.i, %for.body.i.for.cond.loopexit.i_crit_edge ], [ %95, %while.body.lr.ph.i ]
  %indvars.iv.next.i = add i32 %indvars.iv.i, %22
  %exitcond.not.i = icmp eq i32 %add.i, 52
  br i1 %exitcond.not.i, label %vivid_vbi_gen_cc_raw.exit, label %for.cond.loopexit.i.for.body.i_crit_edge

for.cond.loopexit.i.for.body.i_crit_edge:         ; preds = %for.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.loopexit.i.for.body.i_crit_edge, %if.then22
  %indvars.iv.i = phi i32 [ %22, %if.then22 ], [ %indvars.iv.next.i, %for.cond.loopexit.i.for.body.i_crit_edge ]
  %i.061.i = phi i32 [ 0, %if.then22 ], [ %i.1.lcssa.i, %for.cond.loopexit.i.for.body.i_crit_edge ]
  %bit.060.i = phi i32 [ 0, %if.then22 ], [ %add.i, %for.cond.loopexit.i.for.body.i_crit_edge ]
  %add.i = add nuw nsw i32 %bit.060.i, 1
  %mul.i = mul i32 %add.i, %22
  %div.i = udiv i32 %mul.i, 1000000
  call void @__sanitizer_cov_trace_cmp4(i32 %i.061.i, i32 %div.i)
  %cmp758.i = icmp ult i32 %i.061.i, %div.i
  br i1 %cmp758.i, label %while.body.lr.ph.i, label %for.body.i.for.cond.loopexit.i_crit_edge

for.body.i.for.cond.loopexit.i_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.loopexit.i

while.body.lr.ph.i:                               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %92 = mul i32 %bit.060.i, %22
  %93 = add i32 %92, %22
  %94 = udiv i32 %93, 1000000
  %95 = udiv i32 %indvars.iv.i, 1000000
  %arrayidx8.i = getelementptr [52 x i8], ptr %cc.i, i32 0, i32 %bit.060.i
  %96 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %arrayidx8.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %97)
  %tobool.not.i = icmp eq i8 %97, 0
  %conv9.i = select i1 %tobool.not.i, i8 16, i8 -64
  %uglygep.i = getelementptr i8, ptr %linebuf.0, i32 %i.061.i
  %98 = sub i32 %94, %i.061.i
  %99 = zext i8 %conv9.i to i32
  %100 = call ptr @memset(ptr %uglygep.i, i32 %99, i32 %98)
  br label %for.cond.loopexit.i

vivid_vbi_gen_cc_raw.exit:                        ; preds = %for.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %cc.i) #5
  br label %if.end35

if.then26:                                        ; preds = %if.end19
  %101 = ptrtoint ptr %vbi_fmt to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %vbi_fmt, align 4
  call void @llvm.lifetime.start.p0(i64 137, ptr nonnull %wss.i) #5
  %103 = call ptr @memset(ptr %wss.i, i32 0, i32 137)
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %if.then26
  %size.addr.05.i.i = phi i32 [ %dec.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ 29, %if.then26 ]
  %wss.addr.04.i.i = phi ptr [ %incdec.ptr.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %wss.i, %if.then26 ]
  %dec.i.i = add nsw i32 %size.addr.05.i.i, -1
  %shl.i.i = shl nuw i32 1, %dec.i.i
  %and.i.i63 = and i32 %shl.i.i, 521957831
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i63)
  %tobool1.not.i.i = icmp eq i32 %and.i.i63, 0
  %conv.i.i64 = select i1 %tobool1.not.i.i, i8 16, i8 -64
  %incdec.ptr.i.i = getelementptr i8, ptr %wss.addr.04.i.i, i32 1
  %104 = ptrtoint ptr %wss.addr.04.i.i to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 %conv.i.i64, ptr %wss.addr.04.i.i, align 1
  %tobool.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool.not.i.i, label %wss_insert.exit.i, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i.i

wss_insert.exit.i:                                ; preds = %while.body.i.i
  %105 = ptrtoint ptr %add.ptr2.i to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 16, ptr %add.ptr2.i, align 1
  %106 = ptrtoint ptr %incdec.ptr.i49.i to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 16, ptr %incdec.ptr.i49.i, align 1
  %107 = ptrtoint ptr %incdec.ptr.i49.1.i to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 16, ptr %incdec.ptr.i49.1.i, align 1
  %108 = ptrtoint ptr %incdec.ptr.i49.2.i to i32
  call void @__asan_storeN_noabort(i32 %108, i32 4)
  store i32 -1061109568, ptr %incdec.ptr.i49.2.i, align 1
  %109 = ptrtoint ptr %incdec.ptr.i49.6.i to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 16, ptr %incdec.ptr.i49.6.i, align 1
  %110 = ptrtoint ptr %incdec.ptr.i49.7.i to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 16, ptr %incdec.ptr.i49.7.i, align 1
  %111 = ptrtoint ptr %incdec.ptr.i49.8.i to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 16, ptr %incdec.ptr.i49.8.i, align 1
  %112 = ptrtoint ptr %incdec.ptr.i49.9.i to i32
  call void @__asan_storeN_noabort(i32 %112, i32 4)
  store i32 -1061109568, ptr %incdec.ptr.i49.9.i, align 1
  %113 = call ptr @memset(ptr %incdec.ptr.i49.13.i, i32 16, i32 5)
  %data4.i = getelementptr %struct.v4l2_sliced_vbi_data, ptr %vbi, i32 %idx.091, i32 4
  %arrayidx.i = getelementptr %struct.v4l2_sliced_vbi_data, ptr %vbi, i32 %idx.091, i32 4, i32 1
  %114 = call ptr @memset(ptr %incdec.ptr.i49.18.i, i32 192, i32 5)
  %115 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %116 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 8
  %117 = ptrtoint ptr %data4.i to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %data4.i, align 4
  %conv7.i = zext i8 %118 to i32
  %or.i = or i32 %shl.i, %conv7.i
  br label %for.body.i67

for.body.i67:                                     ; preds = %for.body.i67.for.body.i67_crit_edge, %wss_insert.exit.i
  %i.065.i = phi i32 [ 0, %wss_insert.exit.i ], [ %inc.i, %for.body.i67.for.body.i67_crit_edge ]
  %bit.064.i = phi i32 [ 53, %wss_insert.exit.i ], [ %add14.i, %for.body.i67.for.body.i67_crit_edge ]
  %add.ptr11.i = getelementptr i8, ptr %wss.i, i32 %bit.064.i
  %shl13.i = shl nuw nsw i32 1, %i.065.i
  %and.i = and i32 %shl13.i, %or.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i65 = icmp eq i32 %and.i, 0
  %cond.i = select i1 %tobool.not.i65, i32 7, i32 56
  %and.i57.i = and i32 %cond.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i57.i)
  %tobool1.not.i58.i = icmp eq i32 %and.i57.i, 0
  %conv.i59.i = select i1 %tobool1.not.i58.i, i8 16, i8 -64
  %incdec.ptr.i60.i = getelementptr i8, ptr %add.ptr11.i, i32 1
  %119 = ptrtoint ptr %add.ptr11.i to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 %conv.i59.i, ptr %add.ptr11.i, align 1
  %and.i57.1.i = and i32 %cond.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i57.1.i)
  %tobool1.not.i58.1.i = icmp eq i32 %and.i57.1.i, 0
  %conv.i59.1.i = select i1 %tobool1.not.i58.1.i, i8 16, i8 -64
  %incdec.ptr.i60.1.i = getelementptr i8, ptr %incdec.ptr.i60.i, i32 1
  %120 = ptrtoint ptr %incdec.ptr.i60.i to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 %conv.i59.1.i, ptr %incdec.ptr.i60.i, align 1
  %and.i57.2.i = and i32 %cond.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i57.2.i)
  %tobool1.not.i58.2.i = icmp eq i32 %and.i57.2.i, 0
  %conv.i59.2.i = select i1 %tobool1.not.i58.2.i, i8 16, i8 -64
  %incdec.ptr.i60.2.i = getelementptr i8, ptr %incdec.ptr.i60.1.i, i32 1
  %121 = ptrtoint ptr %incdec.ptr.i60.1.i to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 %conv.i59.2.i, ptr %incdec.ptr.i60.1.i, align 1
  %and.i57.3.i = and i32 %cond.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i57.3.i)
  %tobool1.not.i58.3.i = icmp eq i32 %and.i57.3.i, 0
  %conv.i59.3.i = select i1 %tobool1.not.i58.3.i, i8 16, i8 -64
  %incdec.ptr.i60.3.i = getelementptr i8, ptr %incdec.ptr.i60.2.i, i32 1
  %122 = ptrtoint ptr %incdec.ptr.i60.2.i to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 %conv.i59.3.i, ptr %incdec.ptr.i60.2.i, align 1
  %and.i57.4.i = and i32 %cond.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i57.4.i)
  %tobool1.not.i58.4.i = icmp eq i32 %and.i57.4.i, 0
  %conv.i59.4.i = select i1 %tobool1.not.i58.4.i, i8 16, i8 -64
  %incdec.ptr.i60.4.i = getelementptr i8, ptr %incdec.ptr.i60.3.i, i32 1
  %123 = ptrtoint ptr %incdec.ptr.i60.3.i to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 %conv.i59.4.i, ptr %incdec.ptr.i60.3.i, align 1
  %and.i57.5.i = and i32 %cond.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i57.5.i)
  %tobool1.not.i58.5.i = icmp eq i32 %and.i57.5.i, 0
  %conv.i59.5.i = select i1 %tobool1.not.i58.5.i, i8 16, i8 -64
  %124 = ptrtoint ptr %incdec.ptr.i60.4.i to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 %conv.i59.5.i, ptr %incdec.ptr.i60.4.i, align 1
  %inc.i = add nuw nsw i32 %i.065.i, 1
  %add14.i = add nuw nsw i32 %bit.064.i, 6
  %exitcond.not.i66 = icmp eq i32 %inc.i, 14
  br i1 %exitcond.not.i66, label %for.body.i67.for.body18.i_crit_edge, label %for.body.i67.for.body.i67_crit_edge

for.body.i67.for.body.i67_crit_edge:              ; preds = %for.body.i67
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i67

for.body.i67.for.body18.i_crit_edge:              ; preds = %for.body.i67
  br label %for.body18.i

for.cond15.loopexit.i:                            ; preds = %while.body.lr.ph.i73, %for.body18.i.for.cond15.loopexit.i_crit_edge
  %i.2.lcssa.i = phi i32 [ %i.169.i, %for.body18.i.for.cond15.loopexit.i_crit_edge ], [ %128, %while.body.lr.ph.i73 ]
  %indvars.iv.next.i68 = add i32 %indvars.iv.i69, %102
  %exitcond70.not.i = icmp eq i32 %add19.i, 137
  br i1 %exitcond70.not.i, label %vivid_vbi_gen_wss_raw.exit, label %for.cond15.loopexit.i.for.body18.i_crit_edge

for.cond15.loopexit.i.for.body18.i_crit_edge:     ; preds = %for.cond15.loopexit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body18.i

for.body18.i:                                     ; preds = %for.cond15.loopexit.i.for.body18.i_crit_edge, %for.body.i67.for.body18.i_crit_edge
  %indvars.iv.i69 = phi i32 [ %indvars.iv.next.i68, %for.cond15.loopexit.i.for.body18.i_crit_edge ], [ %102, %for.body.i67.for.body18.i_crit_edge ]
  %i.169.i = phi i32 [ %i.2.lcssa.i, %for.cond15.loopexit.i.for.body18.i_crit_edge ], [ 0, %for.body.i67.for.body18.i_crit_edge ]
  %bit.168.i = phi i32 [ %add19.i, %for.cond15.loopexit.i.for.body18.i_crit_edge ], [ 0, %for.body.i67.for.body18.i_crit_edge ]
  %add19.i = add nuw nsw i32 %bit.168.i, 1
  %mul.i70 = mul i32 %add19.i, %102
  %div.i71 = udiv i32 %mul.i70, 5000000
  call void @__sanitizer_cov_trace_cmp4(i32 %i.169.i, i32 %div.i71)
  %cmp2066.i = icmp ult i32 %i.169.i, %div.i71
  br i1 %cmp2066.i, label %while.body.lr.ph.i73, label %for.body18.i.for.cond15.loopexit.i_crit_edge

for.body18.i.for.cond15.loopexit.i_crit_edge:     ; preds = %for.body18.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond15.loopexit.i

while.body.lr.ph.i73:                             ; preds = %for.body18.i
  call void @__sanitizer_cov_trace_pc() #7
  %125 = mul i32 %bit.168.i, %102
  %126 = add i32 %125, %102
  %127 = udiv i32 %126, 5000000
  %128 = udiv i32 %indvars.iv.i69, 5000000
  %arrayidx22.i = getelementptr [137 x i8], ptr %wss.i, i32 0, i32 %bit.168.i
  %129 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %arrayidx22.i, align 1
  %uglygep.i72 = getelementptr i8, ptr %linebuf.0, i32 %i.169.i
  %131 = sub i32 %127, %i.169.i
  %132 = zext i8 %130 to i32
  %133 = call ptr @memset(ptr %uglygep.i72, i32 %132, i32 %131)
  br label %for.cond15.loopexit.i

vivid_vbi_gen_wss_raw.exit:                       ; preds = %for.cond15.loopexit.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 137, ptr nonnull %wss.i) #5
  br label %if.end35

if.then31:                                        ; preds = %if.end19
  %134 = ptrtoint ptr %vbi_fmt to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %vbi_fmt, align 4
  call void @llvm.lifetime.start.p0(i64 45, ptr nonnull %teletext.i) #5
  %136 = ptrtoint ptr %teletext.i to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 85, ptr %teletext.i, align 1
  %137 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 85, ptr %0, align 1
  %138 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 39, ptr %1, align 1
  %data1.i75 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %vbi, i32 %idx.091, i32 4
  %139 = call ptr @memcpy(ptr %add.ptr.i74, ptr %data1.i75, i32 42)
  %div.i76 = udiv i32 %135, 10
  br label %for.body.i84

for.cond.loopexit.i80:                            ; preds = %while.body.preheader.i, %for.body.i84.for.cond.loopexit.i80_crit_edge
  %i.1.lcssa.i77 = phi i32 [ %i.021.i, %for.body.i84.for.cond.loopexit.i80_crit_edge ], [ %145, %while.body.preheader.i ]
  %indvars.iv.next.i78 = add i32 %indvars.iv.i81, %div.i76
  %exitcond.not.i79 = icmp eq i32 %add.i82, 360
  br i1 %exitcond.not.i79, label %vivid_vbi_gen_teletext_raw.exit, label %for.cond.loopexit.i80.for.body.i84_crit_edge

for.cond.loopexit.i80.for.body.i84_crit_edge:     ; preds = %for.cond.loopexit.i80
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i84

for.body.i84:                                     ; preds = %for.cond.loopexit.i80.for.body.i84_crit_edge, %if.then31
  %indvars.iv.i81 = phi i32 [ %div.i76, %if.then31 ], [ %indvars.iv.next.i78, %for.cond.loopexit.i80.for.body.i84_crit_edge ]
  %i.021.i = phi i32 [ 0, %if.then31 ], [ %i.1.lcssa.i77, %for.cond.loopexit.i80.for.body.i84_crit_edge ]
  %bit.020.i = phi i32 [ 0, %if.then31 ], [ %add.i82, %for.cond.loopexit.i80.for.body.i84_crit_edge ]
  %add.i82 = add nuw nsw i32 %bit.020.i, 1
  %mul.i83 = mul i32 %add.i82, %div.i76
  %div3.i = udiv i32 %mul.i83, 693750
  call void @__sanitizer_cov_trace_cmp4(i32 %i.021.i, i32 %div3.i)
  %cmp718.i = icmp ult i32 %i.021.i, %div3.i
  br i1 %cmp718.i, label %while.body.preheader.i, label %for.body.i84.for.cond.loopexit.i80_crit_edge

for.body.i84.for.cond.loopexit.i80_crit_edge:     ; preds = %for.body.i84
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.loopexit.i80

while.body.preheader.i:                           ; preds = %for.body.i84
  call void @__sanitizer_cov_trace_pc() #7
  %and.i85 = and i32 %bit.020.i, 7
  %shl.i86 = shl nuw nsw i32 1, %and.i85
  %div417.i = lshr i32 %bit.020.i, 3
  %arrayidx.i87 = getelementptr [45 x i8], ptr %teletext.i, i32 0, i32 %div417.i
  %140 = ptrtoint ptr %arrayidx.i87 to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %arrayidx.i87, align 1
  %conv.i88 = zext i8 %141 to i32
  %and5.i = and i32 %shl.i86, %conv.i88
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool.not.i89 = icmp eq i32 %and5.i, 0
  %conv6.i = select i1 %tobool.not.i89, i8 16, i8 -64
  %142 = mul i32 %bit.020.i, %div.i76
  %143 = add i32 %142, %div.i76
  %144 = udiv i32 %143, 693750
  %145 = udiv i32 %indvars.iv.i81, 693750
  %uglygep.i90 = getelementptr i8, ptr %linebuf.0, i32 %i.021.i
  %146 = sub i32 %144, %i.021.i
  %147 = zext i8 %conv6.i to i32
  %148 = call ptr @memset(ptr %uglygep.i90, i32 %147, i32 %146)
  br label %for.cond.loopexit.i80

vivid_vbi_gen_teletext_raw.exit:                  ; preds = %for.cond.loopexit.i80
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 45, ptr nonnull %teletext.i) #5
  br label %if.end35

if.end35:                                         ; preds = %vivid_vbi_gen_teletext_raw.exit, %vivid_vbi_gen_wss_raw.exit, %vivid_vbi_gen_cc_raw.exit, %if.end19.if.end35_crit_edge
  %inc = add nuw nsw i32 %idx.091, 1
  %exitcond.not = icmp eq i32 %inc, 25
  br i1 %exitcond.not, label %for.end, label %if.end35.for.body_crit_edge

if.end35.for.body_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vivid_vbi_gen_sliced(ptr nocapture noundef %vbi, i1 noundef zeroext %is_60hz, i32 noundef %seqnr) local_unnamed_addr #2 align 64 {
entry:
  %tm.i = alloca %struct.tm, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %rem = urem i32 %seqnr, 60
  %0 = call ptr @memset(ptr %vbi, i32 0, i32 1600)
  br i1 %is_60hz, label %if.end, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %1 = ptrtoint ptr %vbi to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %vbi, align 4
  %line = getelementptr inbounds %struct.v4l2_sliced_vbi_data, ptr %vbi, i32 0, i32 2
  %2 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 7, ptr %line, align 4
  %data6 = getelementptr inbounds %struct.v4l2_sliced_vbi_data, ptr %vbi, i32 0, i32 4
  tail call fastcc void @vivid_vbi_gen_teletext(ptr noundef %data6, i32 noundef 0, i32 noundef %rem)
  %incdec.ptr = getelementptr %struct.v4l2_sliced_vbi_data, ptr %vbi, i32 1
  %3 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %incdec.ptr, align 4
  %line.1 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %vbi, i32 1, i32 2
  %4 = ptrtoint ptr %line.1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 8, ptr %line.1, align 4
  %data6.1 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %vbi, i32 1, i32 4
  tail call fastcc void @vivid_vbi_gen_teletext(ptr noundef %data6.1, i32 noundef 1, i32 noundef %rem)
  %incdec.ptr.1 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %vbi, i32 2
  %5 = ptrtoint ptr %incdec.ptr.1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %incdec.ptr.1, align 4
  %line.2 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %vbi, i32 2, i32 2
  %6 = ptrtoint ptr %line.2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 9, ptr %line.2, align 4
  %data6.2 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %vbi, i32 2, i32 4
  tail call fastcc void @vivid_vbi_gen_teletext(ptr noundef %data6.2, i32 noundef 2, i32 noundef %rem)
  %incdec.ptr.2 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %vbi, i32 3
  %7 = ptrtoint ptr %incdec.ptr.2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %incdec.ptr.2, align 4
  %line.3 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %vbi, i32 3, i32 2
  %8 = ptrtoint ptr %line.3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 10, ptr %line.3, align 4
  %data6.3 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %vbi, i32 3, i32 4
  tail call fastcc void @vivid_vbi_gen_teletext(ptr noundef %data6.3, i32 noundef 3, i32 noundef %rem)
  %incdec.ptr.3 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %vbi, i32 4
  %9 = ptrtoint ptr %incdec.ptr.3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %incdec.ptr.3, align 4
  %line.4 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %vbi, i32 4, i32 2
  %10 = ptrtoint ptr %line.4 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 11, ptr %line.4, align 4
  %data6.4 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %vbi, i32 4, i32 4
  tail call fastcc void @vivid_vbi_gen_teletext(ptr noundef %data6.4, i32 noundef 4, i32 noundef %rem)
  %incdec.ptr.4 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %vbi, i32 5
  %11 = ptrtoint ptr %incdec.ptr.4 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %incdec.ptr.4, align 4
  %line.5 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %vbi, i32 5, i32 2
  %12 = ptrtoint ptr %line.5 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 12, ptr %line.5, align 4
  %data6.5 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %vbi, i32 5, i32 4
  tail call fastcc void @vivid_vbi_gen_teletext(ptr noundef %data6.5, i32 noundef 5, i32 noundef %rem)
  %incdec.ptr.5 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %vbi, i32 6
  %13 = ptrtoint ptr %incdec.ptr.5 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %incdec.ptr.5, align 4
  %line.6 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %vbi, i32 6, i32 2
  %14 = ptrtoint ptr %line.6 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 13, ptr %line.6, align 4
  %data6.6 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %vbi, i32 6, i32 4
  tail call fastcc void @vivid_vbi_gen_teletext(ptr noundef %data6.6, i32 noundef 6, i32 noundef %rem)
  %incdec.ptr.6 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %vbi, i32 7
  %15 = ptrtoint ptr %incdec.ptr.6 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %incdec.ptr.6, align 4
  %line.7 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %vbi, i32 7, i32 2
  %16 = ptrtoint ptr %line.7 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 14, ptr %line.7, align 4
  %data6.7 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %vbi, i32 7, i32 4
  tail call fastcc void @vivid_vbi_gen_teletext(ptr noundef %data6.7, i32 noundef 7, i32 noundef %rem)
  %incdec.ptr.7 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %vbi, i32 8
  %17 = ptrtoint ptr %incdec.ptr.7 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %incdec.ptr.7, align 4
  %line.8 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %vbi, i32 8, i32 2
  %18 = ptrtoint ptr %line.8 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 15, ptr %line.8, align 4
  %data6.8 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %vbi, i32 8, i32 4
  tail call fastcc void @vivid_vbi_gen_teletext(ptr noundef %data6.8, i32 noundef 8, i32 noundef %rem)
  %incdec.ptr.8 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %vbi, i32 9
  %19 = ptrtoint ptr %incdec.ptr.8 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %incdec.ptr.8, align 4
  %line.9 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %vbi, i32 9, i32 2
  %20 = ptrtoint ptr %line.9 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 16, ptr %line.9, align 4
  %data6.9 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %vbi, i32 9, i32 4
  tail call fastcc void @vivid_vbi_gen_teletext(ptr noundef %data6.9, i32 noundef 9, i32 noundef %rem)
  %incdec.ptr.9 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %vbi, i32 10
  %21 = ptrtoint ptr %incdec.ptr.9 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %incdec.ptr.9, align 4
  %line.10 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %vbi, i32 10, i32 2
  %22 = ptrtoint ptr %line.10 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 17, ptr %line.10, align 4
  %data6.10 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %vbi, i32 10, i32 4
  tail call fastcc void @vivid_vbi_gen_teletext(ptr noundef %data6.10, i32 noundef 10, i32 noundef %rem)
  %incdec.ptr.10 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %vbi, i32 11
  %23 = ptrtoint ptr %incdec.ptr.10 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %incdec.ptr.10, align 4
  %line.11 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %vbi, i32 11, i32 2
  %24 = ptrtoint ptr %line.11 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 18, ptr %line.11, align 4
  %data6.11 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %vbi, i32 11, i32 4
  tail call fastcc void @vivid_vbi_gen_teletext(ptr noundef %data6.11, i32 noundef 11, i32 noundef %rem)
  %incdec.ptr.11 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %vbi, i32 12
  %25 = ptrtoint ptr %incdec.ptr.11 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 16384, ptr %incdec.ptr.11, align 4
  %line9 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %vbi, i32 12, i32 2
  %26 = ptrtoint ptr %line9 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 23, ptr %line9, align 4
  %data10 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %vbi, i32 12, i32 4
  %27 = ptrtoint ptr %data10 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 8, ptr %data10, align 4
  %data0.1 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %vbi, i32 13
  %28 = ptrtoint ptr %data0.1 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %data0.1, align 4
  %field = getelementptr %struct.v4l2_sliced_vbi_data, ptr %vbi, i32 13, i32 1
  %29 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1, ptr %field, align 4
  %line17 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %vbi, i32 13, i32 2
  %30 = ptrtoint ptr %line17 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 7, ptr %line17, align 4
  %data18 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %vbi, i32 13, i32 4
  tail call fastcc void @vivid_vbi_gen_teletext(ptr noundef %data18, i32 noundef 12, i32 noundef %rem)
  %data0.1.1 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %vbi, i32 14
  %31 = ptrtoint ptr %data0.1.1 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1, ptr %data0.1.1, align 4
  %field.1 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %vbi, i32 14, i32 1
  %32 = ptrtoint ptr %field.1 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1, ptr %field.1, align 4
  %line17.1 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %vbi, i32 14, i32 2
  %33 = ptrtoint ptr %line17.1 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 8, ptr %line17.1, align 4
  %data18.1 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %vbi, i32 14, i32 4
  tail call fastcc void @vivid_vbi_gen_teletext(ptr noundef %data18.1, i32 noundef 13, i32 noundef %rem)
  %data0.1.2 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %vbi, i32 15
  %34 = ptrtoint ptr %data0.1.2 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 1, ptr %data0.1.2, align 4
  %field.2 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %vbi, i32 15, i32 1
  %35 = ptrtoint ptr %field.2 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1, ptr %field.2, align 4
  %line17.2 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %vbi, i32 15, i32 2
  %36 = ptrtoint ptr %line17.2 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 9, ptr %line17.2, align 4
  %data18.2 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %vbi, i32 15, i32 4
  tail call fastcc void @vivid_vbi_gen_teletext(ptr noundef %data18.2, i32 noundef 14, i32 noundef %rem)
  %data0.1.3 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %vbi, i32 16
  %37 = ptrtoint ptr %data0.1.3 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 1, ptr %data0.1.3, align 4
  %field.3 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %vbi, i32 16, i32 1
  %38 = ptrtoint ptr %field.3 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 1, ptr %field.3, align 4
  %line17.3 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %vbi, i32 16, i32 2
  %39 = ptrtoint ptr %line17.3 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 10, ptr %line17.3, align 4
  %data18.3 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %vbi, i32 16, i32 4
  tail call fastcc void @vivid_vbi_gen_teletext(ptr noundef %data18.3, i32 noundef 15, i32 noundef %rem)
  %data0.1.4 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %vbi, i32 17
  %40 = ptrtoint ptr %data0.1.4 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 1, ptr %data0.1.4, align 4
  %field.4 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %vbi, i32 17, i32 1
  %41 = ptrtoint ptr %field.4 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 1, ptr %field.4, align 4
  %line17.4 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %vbi, i32 17, i32 2
  %42 = ptrtoint ptr %line17.4 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 11, ptr %line17.4, align 4
  %data18.4 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %vbi, i32 17, i32 4
  tail call fastcc void @vivid_vbi_gen_teletext(ptr noundef %data18.4, i32 noundef 16, i32 noundef %rem)
  %data0.1.5 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %vbi, i32 18
  %43 = ptrtoint ptr %data0.1.5 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 1, ptr %data0.1.5, align 4
  %field.5 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %vbi, i32 18, i32 1
  %44 = ptrtoint ptr %field.5 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 1, ptr %field.5, align 4
  %line17.5 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %vbi, i32 18, i32 2
  %45 = ptrtoint ptr %line17.5 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 12, ptr %line17.5, align 4
  %data18.5 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %vbi, i32 18, i32 4
  tail call fastcc void @vivid_vbi_gen_teletext(ptr noundef %data18.5, i32 noundef 17, i32 noundef %rem)
  %data0.1.6 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %vbi, i32 19
  %46 = ptrtoint ptr %data0.1.6 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 1, ptr %data0.1.6, align 4
  %field.6 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %vbi, i32 19, i32 1
  %47 = ptrtoint ptr %field.6 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 1, ptr %field.6, align 4
  %line17.6 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %vbi, i32 19, i32 2
  %48 = ptrtoint ptr %line17.6 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 13, ptr %line17.6, align 4
  %data18.6 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %vbi, i32 19, i32 4
  tail call fastcc void @vivid_vbi_gen_teletext(ptr noundef %data18.6, i32 noundef 18, i32 noundef %rem)
  %data0.1.7 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %vbi, i32 20
  %49 = ptrtoint ptr %data0.1.7 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 1, ptr %data0.1.7, align 4
  %field.7 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %vbi, i32 20, i32 1
  %50 = ptrtoint ptr %field.7 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 1, ptr %field.7, align 4
  %line17.7 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %vbi, i32 20, i32 2
  %51 = ptrtoint ptr %line17.7 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 14, ptr %line17.7, align 4
  %data18.7 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %vbi, i32 20, i32 4
  tail call fastcc void @vivid_vbi_gen_teletext(ptr noundef %data18.7, i32 noundef 19, i32 noundef %rem)
  %data0.1.8 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %vbi, i32 21
  %52 = ptrtoint ptr %data0.1.8 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 1, ptr %data0.1.8, align 4
  %field.8 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %vbi, i32 21, i32 1
  %53 = ptrtoint ptr %field.8 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 1, ptr %field.8, align 4
  %line17.8 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %vbi, i32 21, i32 2
  %54 = ptrtoint ptr %line17.8 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 15, ptr %line17.8, align 4
  %data18.8 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %vbi, i32 21, i32 4
  tail call fastcc void @vivid_vbi_gen_teletext(ptr noundef %data18.8, i32 noundef 20, i32 noundef %rem)
  %data0.1.9 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %vbi, i32 22
  %55 = ptrtoint ptr %data0.1.9 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 1, ptr %data0.1.9, align 4
  %field.9 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %vbi, i32 22, i32 1
  %56 = ptrtoint ptr %field.9 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 1, ptr %field.9, align 4
  %line17.9 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %vbi, i32 22, i32 2
  %57 = ptrtoint ptr %line17.9 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 16, ptr %line17.9, align 4
  %data18.9 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %vbi, i32 22, i32 4
  tail call fastcc void @vivid_vbi_gen_teletext(ptr noundef %data18.9, i32 noundef 21, i32 noundef %rem)
  %data0.1.10 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %vbi, i32 23
  %58 = ptrtoint ptr %data0.1.10 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 1, ptr %data0.1.10, align 4
  %field.10 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %vbi, i32 23, i32 1
  %59 = ptrtoint ptr %field.10 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 1, ptr %field.10, align 4
  %line17.10 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %vbi, i32 23, i32 2
  %60 = ptrtoint ptr %line17.10 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 17, ptr %line17.10, align 4
  %data18.10 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %vbi, i32 23, i32 4
  tail call fastcc void @vivid_vbi_gen_teletext(ptr noundef %data18.10, i32 noundef 22, i32 noundef %rem)
  %data0.1.11 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %vbi, i32 24
  %61 = ptrtoint ptr %data0.1.11 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 1, ptr %data0.1.11, align 4
  %field.11 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %vbi, i32 24, i32 1
  %62 = ptrtoint ptr %field.11 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 1, ptr %field.11, align 4
  %line17.11 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %vbi, i32 24, i32 2
  %63 = ptrtoint ptr %line17.11 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 18, ptr %line17.11, align 4
  %data18.11 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %vbi, i32 24, i32 4
  tail call fastcc void @vivid_vbi_gen_teletext(ptr noundef %data18.11, i32 noundef 23, i32 noundef %rem)
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr %struct.v4l2_sliced_vbi_data, ptr %vbi, i32 1
  %64 = ptrtoint ptr %vbi to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 4096, ptr %vbi, align 4
  %line26 = getelementptr inbounds %struct.v4l2_sliced_vbi_data, ptr %vbi, i32 0, i32 2
  %65 = ptrtoint ptr %line26 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 21, ptr %line26, align 4
  %66 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 4096, ptr %add.ptr, align 4
  %field28 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %vbi, i32 1, i32 1
  %67 = ptrtoint ptr %field28 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 1, ptr %field28, align 4
  %line29 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %vbi, i32 1, i32 2
  %68 = ptrtoint ptr %line29 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 21, ptr %line29, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %rem)
  %cmp30 = icmp ult i32 %rem, 15
  br i1 %cmp30, label %if.then31, label %if.else

if.then31:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %mul = shl nuw nsw i32 %rem, 1
  %arrayidx32 = getelementptr [30 x i8], ptr @vivid_cc_sequence1, i32 0, i32 %mul
  %69 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx32, align 1
  %71 = and i8 %70, 1
  %72 = lshr i8 %70, 1
  %73 = lshr i8 %70, 2
  %74 = lshr i8 %70, 3
  %75 = lshr i8 %70, 4
  %76 = lshr i8 %70, 5
  %77 = lshr i8 %70, 6
  %add.1.i = add nuw nsw i8 %75, %71
  %add.2.i = add nuw nsw i8 %add.1.i, %76
  %add.3.i = add nuw nsw i8 %add.2.i, %77
  %add.4.i = add nuw i8 %add.3.i, %72
  %add.5.i = add nuw i8 %add.4.i, %73
  %add.6.i = add nuw i8 %add.5.i, %74
  %78 = xor i8 %add.6.i, -1
  %79 = shl i8 %78, 7
  %conv5.i = or i8 %79, %70
  %data33 = getelementptr inbounds %struct.v4l2_sliced_vbi_data, ptr %vbi, i32 0, i32 4
  %80 = ptrtoint ptr %data33 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %conv5.i, ptr %data33, align 4
  %add36 = or i32 %mul, 1
  %arrayidx37 = getelementptr [30 x i8], ptr @vivid_cc_sequence1, i32 0, i32 %add36
  %81 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %arrayidx37, align 1
  %83 = and i8 %82, 1
  %84 = lshr i8 %82, 1
  %85 = lshr i8 %82, 2
  %86 = lshr i8 %82, 3
  %87 = lshr i8 %82, 4
  %88 = lshr i8 %82, 5
  %89 = lshr i8 %82, 6
  %add.1.i137 = add nuw nsw i8 %87, %83
  %add.2.i138 = add nuw nsw i8 %add.1.i137, %88
  %add.3.i139 = add nuw nsw i8 %add.2.i138, %89
  %add.4.i140 = add nuw i8 %add.3.i139, %84
  %add.5.i141 = add nuw i8 %add.4.i140, %85
  %add.6.i142 = add nuw i8 %add.5.i141, %86
  %90 = xor i8 %add.6.i142, -1
  %91 = shl i8 %90, 7
  %conv5.i143 = or i8 %91, %82
  br label %if.end63

if.else:                                          ; preds = %if.end
  %92 = add nsw i32 %rem, -30
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %92)
  %93 = icmp ult i32 %92, 15
  br i1 %93, label %if.then43, label %if.else55

if.then43:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %sub = shl nuw nsw i32 %rem, 1
  %mul44 = add nsw i32 %sub, -60
  %arrayidx45 = getelementptr [30 x i8], ptr @vivid_cc_sequence2, i32 0, i32 %mul44
  %94 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %arrayidx45, align 1
  %96 = and i8 %95, 1
  %97 = lshr i8 %95, 1
  %98 = lshr i8 %95, 2
  %99 = lshr i8 %95, 3
  %100 = lshr i8 %95, 4
  %101 = lshr i8 %95, 5
  %102 = lshr i8 %95, 6
  %add.1.i144 = add nuw nsw i8 %100, %96
  %add.2.i145 = add nuw nsw i8 %add.1.i144, %101
  %add.3.i146 = add nuw nsw i8 %add.2.i145, %102
  %add.4.i147 = add nuw i8 %add.3.i146, %97
  %add.5.i148 = add nuw i8 %add.4.i147, %98
  %add.6.i149 = add nuw i8 %add.5.i148, %99
  %103 = xor i8 %add.6.i149, -1
  %104 = shl i8 %103, 7
  %conv5.i150 = or i8 %104, %95
  %data47 = getelementptr inbounds %struct.v4l2_sliced_vbi_data, ptr %vbi, i32 0, i32 4
  %105 = ptrtoint ptr %data47 to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 %conv5.i150, ptr %data47, align 4
  %add50 = add nsw i32 %sub, -59
  %arrayidx51 = getelementptr [30 x i8], ptr @vivid_cc_sequence2, i32 0, i32 %add50
  %106 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %arrayidx51, align 1
  %108 = and i8 %107, 1
  %109 = lshr i8 %107, 1
  %110 = lshr i8 %107, 2
  %111 = lshr i8 %107, 3
  %112 = lshr i8 %107, 4
  %113 = lshr i8 %107, 5
  %114 = lshr i8 %107, 6
  %add.1.i151 = add nuw nsw i8 %112, %108
  %add.2.i152 = add nuw nsw i8 %add.1.i151, %113
  %add.3.i153 = add nuw nsw i8 %add.2.i152, %114
  %add.4.i154 = add nuw i8 %add.3.i153, %109
  %add.5.i155 = add nuw i8 %add.4.i154, %110
  %add.6.i156 = add nuw i8 %add.5.i155, %111
  %115 = xor i8 %add.6.i156, -1
  %116 = shl i8 %115, 7
  %conv5.i157 = or i8 %116, %107
  br label %if.end63

if.else55:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %data57 = getelementptr inbounds %struct.v4l2_sliced_vbi_data, ptr %vbi, i32 0, i32 4
  %117 = ptrtoint ptr %data57 to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 -128, ptr %data57, align 4
  br label %if.end63

if.end63:                                         ; preds = %if.else55, %if.then43, %if.then31
  %conv5.i157.sink = phi i8 [ %conv5.i157, %if.then43 ], [ -128, %if.else55 ], [ %conv5.i143, %if.then31 ]
  %arrayidx54 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %vbi, i32 0, i32 4, i32 1
  %118 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 %conv5.i157.sink, ptr %arrayidx54, align 1
  %rem64 = urem i32 %seqnr, 1800
  %119 = zext i32 %rem64 to i64
  call void @__sanitizer_cov_trace_switch(i64 %119, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %rem64, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %if.end63.sw.bb66_crit_edge
    i32 2, label %if.end63.sw.bb66_crit_edge190
    i32 3, label %if.end63.sw.bb66_crit_edge191
    i32 4, label %if.end63.sw.bb66_crit_edge192
    i32 5, label %if.end63.sw.bb66_crit_edge193
    i32 6, label %if.end63.sw.bb66_crit_edge194
    i32 7, label %if.end63.sw.bb66_crit_edge195
  ]

if.end63.sw.bb66_crit_edge195:                    ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb66

if.end63.sw.bb66_crit_edge194:                    ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb66

if.end63.sw.bb66_crit_edge193:                    ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb66

if.end63.sw.bb66_crit_edge192:                    ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb66

if.end63.sw.bb66_crit_edge191:                    ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb66

if.end63.sw.bb66_crit_edge190:                    ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb66

if.end63.sw.bb66_crit_edge:                       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb66

sw.bb:                                            ; preds = %if.end63
  %time_of_day_packet = getelementptr inbounds %struct.vivid_vbi_gen_data, ptr %vbi, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tm.i) #5
  %120 = getelementptr inbounds %struct.tm, ptr %tm.i, i32 0, i32 1
  %121 = getelementptr inbounds %struct.tm, ptr %tm.i, i32 0, i32 2
  %122 = getelementptr inbounds %struct.tm, ptr %tm.i, i32 0, i32 3
  %123 = getelementptr inbounds %struct.tm, ptr %tm.i, i32 0, i32 4
  %124 = getelementptr inbounds %struct.tm, ptr %tm.i, i32 0, i32 5
  %125 = getelementptr inbounds %struct.tm, ptr %tm.i, i32 0, i32 6
  %126 = call ptr @memset(ptr %tm.i, i32 255, i32 32)
  %call.i = tail call i64 @ktime_get_real_seconds() #5
  call void @time64_to_tm(i64 noundef %call.i, i32 noundef 0, ptr noundef nonnull %tm.i) #5
  %127 = ptrtoint ptr %time_of_day_packet to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 7, ptr %time_of_day_packet, align 1
  %arrayidx3.i = getelementptr %struct.vivid_vbi_gen_data, ptr %vbi, i32 0, i32 1, i32 1
  %128 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 1, ptr %arrayidx3.i, align 1
  %129 = ptrtoint ptr %120 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %120, align 4
  %131 = trunc i32 %130 to i8
  %132 = lshr i8 %131, 1
  %133 = lshr i8 %131, 2
  %134 = lshr i8 %131, 3
  %135 = lshr i8 %131, 4
  %136 = lshr i8 %131, 5
  %.neg160 = sub i8 %132, %131
  %.neg199.i = add i8 %.neg160, %133
  %add.1.i.neg.i = add i8 %.neg199.i, %134
  %137 = add nuw nsw i8 %135, %136
  %add.5.i.neg.i = sub i8 %add.1.i.neg.i, %137
  %138 = shl i8 %add.5.i.neg.i, 7
  %conv.i = or i8 %138, %131
  %conv5.i.i = or i8 %conv.i, 64
  %arrayidx5.i = getelementptr %struct.vivid_vbi_gen_data, ptr %vbi, i32 0, i32 1, i32 2
  %139 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 %conv5.i.i, ptr %arrayidx5.i, align 1
  %140 = ptrtoint ptr %121 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %121, align 4
  %142 = trunc i32 %141 to i8
  %143 = lshr i8 %142, 1
  %144 = lshr i8 %142, 2
  %145 = lshr i8 %142, 3
  %146 = lshr i8 %142, 4
  %147 = lshr i8 %142, 5
  %.neg164 = sub i8 %143, %142
  %.neg203.i = add i8 %.neg164, %144
  %add.1.i132.neg.i = add i8 %.neg203.i, %145
  %148 = add nuw nsw i8 %146, %147
  %add.5.i136.neg.i = sub i8 %add.1.i132.neg.i, %148
  %149 = shl i8 %add.5.i136.neg.i, 7
  %conv7.i = or i8 %149, %142
  %conv5.i138.i = or i8 %conv7.i, 64
  %arrayidx9.i = getelementptr %struct.vivid_vbi_gen_data, ptr %vbi, i32 0, i32 1, i32 3
  %150 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 %conv5.i138.i, ptr %arrayidx9.i, align 1
  %151 = ptrtoint ptr %122 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %122, align 4
  %153 = trunc i32 %152 to i8
  %154 = lshr i8 %153, 1
  %155 = lshr i8 %153, 2
  %156 = lshr i8 %153, 3
  %157 = lshr i8 %153, 4
  %158 = lshr i8 %153, 5
  %.neg168 = sub i8 %154, %153
  %.neg207.i = add i8 %.neg168, %155
  %add.1.i139.neg.i = add i8 %.neg207.i, %156
  %159 = add nuw nsw i8 %157, %158
  %add.5.i143.neg.i = sub i8 %add.1.i139.neg.i, %159
  %160 = shl i8 %add.5.i143.neg.i, 7
  %conv11.i = or i8 %160, %153
  %conv5.i145.i = or i8 %conv11.i, 64
  %arrayidx13.i = getelementptr %struct.vivid_vbi_gen_data, ptr %vbi, i32 0, i32 1, i32 4
  %161 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store1_noabort(i32 %161)
  store i8 %conv5.i145.i, ptr %arrayidx13.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %152)
  %cmp.i = icmp eq i32 %152, 1
  br i1 %cmp.i, label %land.lhs.true.i, label %sw.bb.if.end.i_crit_edge

sw.bb.if.end.i_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %sw.bb
  %162 = ptrtoint ptr %123 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %123, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %163)
  %cmp16.i = icmp eq i32 %163, 2
  br i1 %cmp16.i, label %land.lhs.true18.i, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

land.lhs.true18.i:                                ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sys_tz to i32))
  %164 = load i32, ptr @sys_tz, align 4
  %mul.i = mul i32 %141, 60
  %add.i = add i32 %mul.i, %130
  call void @__sanitizer_cov_trace_cmp4(i32 %164, i32 %add.i)
  %cmp21.i = icmp sgt i32 %164, %add.i
  br i1 %cmp21.i, label %if.then.i, label %land.lhs.true18.i.if.end.i_crit_edge

land.lhs.true18.i.if.end.i_crit_edge:             ; preds = %land.lhs.true18.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true18.i
  call void @__sanitizer_cov_trace_pc() #7
  %165 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store1_noabort(i32 %165)
  store i8 97, ptr %arrayidx13.i, align 1
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %land.lhs.true18.i.if.end.i_crit_edge, %land.lhs.true.i.if.end.i_crit_edge, %sw.bb.if.end.i_crit_edge
  %166 = ptrtoint ptr %123 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %123, align 4
  %168 = trunc i32 %167 to i8
  %169 = add i8 %168, 1
  %170 = lshr i8 %169, 1
  %.neg208.i = xor i8 %168, -1
  %171 = lshr i8 %169, 2
  %172 = lshr i8 %169, 3
  %173 = lshr i8 %169, 4
  %174 = lshr i8 %169, 5
  %.neg171 = add i8 %170, %.neg208.i
  %.neg211.i = add i8 %.neg171, %171
  %add.1.i146.neg.i = add i8 %.neg211.i, %172
  %175 = add nuw nsw i8 %173, %174
  %add.5.i150.neg.i = sub i8 %add.1.i146.neg.i, %175
  %176 = shl i8 %add.5.i150.neg.i, 7
  %conv31.i = or i8 %169, %176
  %conv5.i152.i = or i8 %conv31.i, 64
  %arrayidx33.i = getelementptr %struct.vivid_vbi_gen_data, ptr %vbi, i32 0, i32 1, i32 5
  %177 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_store1_noabort(i32 %177)
  store i8 %conv5.i152.i, ptr %arrayidx33.i, align 1
  %178 = ptrtoint ptr %125 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %125, align 4
  %180 = trunc i32 %179 to i8
  %181 = add i8 %180, 1
  %182 = lshr i8 %181, 1
  %.neg212.i = xor i8 %180, -1
  %183 = lshr i8 %181, 2
  %184 = lshr i8 %181, 3
  %185 = lshr i8 %181, 4
  %186 = lshr i8 %181, 5
  %.neg174 = add i8 %182, %.neg212.i
  %.neg215.i = add i8 %.neg174, %183
  %add.1.i153.neg.i = add i8 %.neg215.i, %184
  %187 = add nuw nsw i8 %185, %186
  %add.5.i157.neg.i = sub i8 %add.1.i153.neg.i, %187
  %188 = shl i8 %add.5.i157.neg.i, 7
  %conv36.i = or i8 %181, %188
  %conv5.i159.i = or i8 %conv36.i, 64
  %arrayidx38.i = getelementptr %struct.vivid_vbi_gen_data, ptr %vbi, i32 0, i32 1, i32 6
  %189 = ptrtoint ptr %arrayidx38.i to i32
  call void @__asan_store1_noabort(i32 %189)
  store i8 %conv5.i159.i, ptr %arrayidx38.i, align 1
  %190 = ptrtoint ptr %124 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %124, align 4
  %192 = trunc i32 %191 to i8
  %193 = add i8 %192, 38
  %194 = and i8 %193, 63
  %conv40.i = or i8 %194, 64
  %195 = lshr i8 %193, 1
  %196 = lshr i8 %193, 2
  %197 = lshr i8 %193, 3
  %198 = lshr i8 %193, 4
  %199 = lshr i8 %193, 5
  %.neg178 = sub i8 %195, %192
  %.neg219.i = add i8 %.neg178, %196
  %add.1.i160.neg.i = add i8 %.neg219.i, %197
  %200 = add nuw nsw i8 %198, %199
  %add.5.i164.neg.i = sub i8 %add.1.i160.neg.i, %200
  %201 = shl i8 %add.5.i164.neg.i, 7
  %conv5.i166.i = or i8 %201, %conv40.i
  %arrayidx42.i = getelementptr %struct.vivid_vbi_gen_data, ptr %vbi, i32 0, i32 1, i32 7
  %202 = ptrtoint ptr %arrayidx42.i to i32
  call void @__asan_store1_noabort(i32 %202)
  store i8 %conv5.i166.i, ptr %arrayidx42.i, align 1
  %arrayidx44.i = getelementptr %struct.vivid_vbi_gen_data, ptr %vbi, i32 0, i32 1, i32 8
  %203 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_store1_noabort(i32 %203)
  store i8 -113, ptr %arrayidx44.i, align 1
  %204 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %204)
  %205 = load i8, ptr %arrayidx3.i, align 1
  %206 = and i8 %205, 127
  %207 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load1_noabort(i32 %207)
  %208 = load i8, ptr %arrayidx5.i, align 1
  %209 = and i8 %208, 127
  %210 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load1_noabort(i32 %210)
  %211 = load i8, ptr %arrayidx9.i, align 1
  %212 = and i8 %211, 127
  %213 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load1_noabort(i32 %213)
  %214 = load i8, ptr %arrayidx13.i, align 1
  %215 = and i8 %214, 127
  %216 = and i8 %conv5.i152.i, 127
  %217 = and i8 %conv5.i159.i, 127
  %218 = add nuw i8 %206, %conv40.i
  %219 = add i8 %218, %209
  %220 = add i8 %219, %212
  %221 = add i8 %220, %216
  %222 = add i8 %221, %215
  %223 = add i8 %222, %217
  %conv56.i = sub i8 -22, %223
  %224 = and i8 %conv56.i, 1
  %225 = lshr i8 %conv56.i, 1
  %226 = lshr i8 %conv56.i, 2
  %227 = lshr i8 %conv56.i, 3
  %228 = lshr i8 %conv56.i, 4
  %229 = lshr i8 %conv56.i, 5
  %230 = lshr i8 %conv56.i, 6
  %add.1.i167.i = add nuw nsw i8 %228, %224
  %add.2.i168.i = add nuw nsw i8 %add.1.i167.i, %229
  %add.3.i169.i = add nuw nsw i8 %add.2.i168.i, %230
  %add.4.i170.i = add nuw i8 %add.3.i169.i, %225
  %add.5.i171.i = add nuw i8 %add.4.i170.i, %226
  %add.6.i172.i = add nuw i8 %add.5.i171.i, %227
  %231 = xor i8 %add.6.i172.i, -1
  %232 = shl i8 %231, 7
  %conv5.i173.i = or i8 %232, %conv56.i
  %arrayidx58.i = getelementptr %struct.vivid_vbi_gen_data, ptr %vbi, i32 0, i32 1, i32 9
  %233 = ptrtoint ptr %arrayidx58.i to i32
  call void @__asan_store1_noabort(i32 %233)
  store i8 %conv5.i173.i, ptr %arrayidx58.i, align 1
  %arrayidx60.i = getelementptr %struct.vivid_vbi_gen_data, ptr %vbi, i32 0, i32 1, i32 10
  %234 = ptrtoint ptr %arrayidx60.i to i32
  call void @__asan_store1_noabort(i32 %234)
  store i8 7, ptr %arrayidx60.i, align 1
  %arrayidx62.i = getelementptr %struct.vivid_vbi_gen_data, ptr %vbi, i32 0, i32 1, i32 11
  %235 = ptrtoint ptr %arrayidx62.i to i32
  call void @__asan_store1_noabort(i32 %235)
  store i8 4, ptr %arrayidx62.i, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sys_tz to i32))
  %236 = load i32, ptr @sys_tz, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %236)
  %cmp63.i = icmp sgt i32 %236, -1
  br i1 %cmp63.i, label %if.then65.i, label %if.else.i

if.then65.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %div195.i = udiv i32 %236, 60
  %237 = trunc i32 %div195.i to i8
  %238 = lshr i8 %237, 1
  %add.1.i174.neg.i = sub i8 %238, %237
  br label %vivid_vbi_gen_set_time_of_day.exit

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %.nonneg.i = sub i32 0, %236
  %div71196.i = udiv i32 %.nonneg.i, 60
  %239 = trunc i32 %div71196.i to i8
  %240 = sub i8 24, %239
  %241 = lshr i8 %240, 1
  %add.1.i181.neg.i = add i8 %241, %239
  br label %vivid_vbi_gen_set_time_of_day.exit

vivid_vbi_gen_set_time_of_day.exit:               ; preds = %if.else.i, %if.then65.i
  %.sink231.i = phi i8 [ %240, %if.else.i ], [ %237, %if.then65.i ]
  %add.1.i181.neg.sink.i = phi i8 [ %add.1.i181.neg.i, %if.else.i ], [ %add.1.i174.neg.i, %if.then65.i ]
  %conv75.sink.in.i = and i8 %.sink231.i, 31
  %conv75.sink.i = or i8 %conv75.sink.in.i, 64
  %242 = lshr i8 %.sink231.i, 2
  %add.2.i182.neg.i = add i8 %add.1.i181.neg.sink.i, %242
  %243 = lshr i8 %.sink231.i, 3
  %add.3.i183.neg.i = add i8 %add.2.i182.neg.i, %243
  %244 = lshr i8 %.sink231.i, 4
  %add.4.i184.neg.i = sub i8 %add.3.i183.neg.i, %244
  %245 = shl i8 %add.4.i184.neg.i, 7
  %conv5.i187.i = or i8 %245, %conv75.sink.i
  %246 = getelementptr %struct.vivid_vbi_gen_data, ptr %vbi, i32 0, i32 1, i32 12
  %247 = ptrtoint ptr %246 to i32
  call void @__asan_store1_noabort(i32 %247)
  store i8 %conv5.i187.i, ptr %246, align 1
  %arrayidx80.i = getelementptr %struct.vivid_vbi_gen_data, ptr %vbi, i32 0, i32 1, i32 13
  %248 = ptrtoint ptr %arrayidx80.i to i32
  call void @__asan_store1_noabort(i32 %248)
  store i8 -128, ptr %arrayidx80.i, align 1
  %arrayidx82.i = getelementptr %struct.vivid_vbi_gen_data, ptr %vbi, i32 0, i32 1, i32 14
  %249 = ptrtoint ptr %arrayidx82.i to i32
  call void @__asan_store1_noabort(i32 %249)
  store i8 -113, ptr %arrayidx82.i, align 1
  %conv100.i = sub nuw nsw i8 -90, %conv75.sink.in.i
  %arrayidx102.i = getelementptr %struct.vivid_vbi_gen_data, ptr %vbi, i32 0, i32 1, i32 15
  %250 = ptrtoint ptr %arrayidx102.i to i32
  call void @__asan_store1_noabort(i32 %250)
  store i8 %conv100.i, ptr %arrayidx102.i, align 1
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tm.i) #5
  br label %sw.bb66

sw.bb66:                                          ; preds = %vivid_vbi_gen_set_time_of_day.exit, %if.end63.sw.bb66_crit_edge, %if.end63.sw.bb66_crit_edge190, %if.end63.sw.bb66_crit_edge191, %if.end63.sw.bb66_crit_edge192, %if.end63.sw.bb66_crit_edge193, %if.end63.sw.bb66_crit_edge194, %if.end63.sw.bb66_crit_edge195
  %mul68 = shl nuw nsw i32 %rem64, 1
  %arrayidx69 = getelementptr %struct.vivid_vbi_gen_data, ptr %vbi, i32 0, i32 1, i32 %mul68
  %251 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_load1_noabort(i32 %251)
  %252 = load i8, ptr %arrayidx69, align 1
  %data70 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %vbi, i32 1, i32 4
  %253 = ptrtoint ptr %data70 to i32
  call void @__asan_store1_noabort(i32 %253)
  store i8 %252, ptr %data70, align 4
  %add74 = or i32 %mul68, 1
  %arrayidx75 = getelementptr %struct.vivid_vbi_gen_data, ptr %vbi, i32 0, i32 1, i32 %add74
  %254 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_load1_noabort(i32 %254)
  %255 = load i8, ptr %arrayidx75, align 1
  %arrayidx77 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %vbi, i32 1, i32 4, i32 1
  %256 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_store1_noabort(i32 %256)
  store i8 %255, ptr %arrayidx77, align 1
  br label %cleanup

sw.default:                                       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #7
  %data79 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %vbi, i32 1, i32 4
  %257 = ptrtoint ptr %data79 to i32
  call void @__asan_store1_noabort(i32 %257)
  store i8 -128, ptr %data79, align 4
  %arrayidx83 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %vbi, i32 1, i32 4, i32 1
  %258 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_store1_noabort(i32 %258)
  store i8 -128, ptr %arrayidx83, align 1
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %sw.bb66, %for.body.preheader
  ret void
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vivid_vbi_gen_teletext(ptr nocapture noundef %packet, i32 noundef %line, i32 noundef %frame) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %and = shl i32 %line, 3
  %shl = and i32 %and, 8
  %add = or i32 %shl, 1
  %arrayidx = getelementptr [16 x i8], ptr @hamming, i32 0, i32 %add
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %2 = ptrtoint ptr %packet to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %1, ptr %packet, align 1
  %shr = lshr i32 %line, 1
  %arrayidx2 = getelementptr [16 x i8], ptr @hamming, i32 0, i32 %shr
  %3 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx2, align 1
  %arrayidx3 = getelementptr i8, ptr %packet, i32 1
  %5 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %arrayidx3, align 1
  %add.ptr = getelementptr i8, ptr %packet, i32 2
  %6 = call ptr @memset(ptr %add.ptr, i32 32, i32 40)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %line)
  %cmp = icmp eq i32 %line, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %.pre = udiv i32 %frame, 10
  %.pre64 = urem i32 %frame, 10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %div = udiv i32 %frame, 10
  %7 = mul i32 %div, 10
  %rem.decomposed = sub i32 %frame, %7
  %arrayidx4 = getelementptr [16 x i8], ptr @hamming, i32 0, i32 %rem.decomposed
  %8 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx4, align 1
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %add.ptr, align 1
  %arrayidx6 = getelementptr [16 x i8], ptr @hamming, i32 0, i32 %div
  %11 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx6, align 1
  %arrayidx7 = getelementptr i8, ptr %packet, i32 3
  %13 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %arrayidx7, align 1
  %arrayidx8 = getelementptr i8, ptr %packet, i32 4
  %arrayidx13 = getelementptr i8, ptr %packet, i32 9
  %14 = call ptr @memset(ptr %arrayidx8, i32 21, i32 5)
  %15 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 2, ptr %arrayidx13, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %rem18.pre-phi = phi i32 [ %.pre64, %entry.if.end_crit_edge ], [ %rem.decomposed, %if.then ]
  %div15.pre-phi = phi i32 [ %.pre, %entry.if.end_crit_edge ], [ %div, %if.then ]
  %offset.0 = phi i32 [ 2, %entry.if.end_crit_edge ], [ 10, %if.then ]
  %add.ptr14 = getelementptr i8, ptr %packet, i32 %offset.0
  %16 = call ptr @memcpy(ptr %add.ptr14, ptr @.str, i32 15)
  %17 = trunc i32 %div15.pre-phi to i8
  %conv = add i8 %17, 48
  %arrayidx17 = getelementptr i8, ptr %add.ptr14, i32 7
  %18 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv, ptr %arrayidx17, align 1
  %19 = trunc i32 %rem18.pre-phi to i8
  %conv20 = or i8 %19, 48
  %arrayidx21 = getelementptr i8, ptr %add.ptr14, i32 8
  %20 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv20, ptr %arrayidx21, align 1
  %div22 = udiv i32 %line, 10
  %21 = trunc i32 %div22 to i8
  %conv24 = add i8 %21, 48
  %arrayidx25 = getelementptr i8, ptr %add.ptr14, i32 15
  %22 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv24, ptr %arrayidx25, align 1
  %23 = mul i32 %div22, 10
  %rem26.decomposed = sub i32 %line, %23
  %24 = trunc i32 %rem26.decomposed to i8
  %conv28 = or i8 %24, 48
  %arrayidx29 = getelementptr i8, ptr %add.ptr14, i32 16
  %25 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv28, ptr %arrayidx29, align 1
  %sub = sub nuw nsw i32 42, %offset.0
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end
  %i.063 = phi i32 [ 0, %if.end ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx32 = getelementptr i8, ptr %add.ptr14, i32 %i.063
  %26 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx32, align 1
  %28 = and i8 %27, 1
  %29 = lshr i8 %27, 1
  %30 = lshr i8 %27, 2
  %31 = lshr i8 %27, 3
  %32 = lshr i8 %27, 4
  %33 = lshr i8 %27, 5
  %34 = lshr i8 %27, 6
  %add.1.i = add nuw nsw i8 %32, %28
  %add.2.i = add nuw nsw i8 %add.1.i, %33
  %add.3.i = add nuw nsw i8 %add.2.i, %34
  %add.4.i = add nuw i8 %add.3.i, %29
  %add.5.i = add nuw i8 %add.4.i, %30
  %add.6.i = add nuw i8 %add.5.i, %31
  %35 = xor i8 %add.6.i, -1
  %36 = shl i8 %35, 7
  %conv5.i = or i8 %36, %27
  store i8 %conv5.i, ptr %arrayidx32, align 1
  %inc = add nuw nsw i32 %i.063, 1
  %exitcond.not = icmp eq i32 %inc, %sub
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @time64_to_tm(i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_real_seconds() local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/test-drivers/vivid/vivid-vbi-gen.c", i32 237, i32 17}
!2 = !{ptr @hamming, !3, !"hamming", i1 false, i1 false}
!3 = !{!"../drivers/media/test-drivers/vivid/vivid-vbi-gen.c", i32 211, i32 17}
!4 = !{ptr @vivid_cc_sequence1, !5, !"vivid_cc_sequence1", i1 false, i1 false}
!5 = !{!"../drivers/media/test-drivers/vivid/vivid-vbi-gen.c", i32 140, i32 17}
!6 = !{ptr @vivid_cc_sequence2, !7, !"vivid_cc_sequence2", i1 false, i1 false}
!7 = !{!"../drivers/media/test-drivers/vivid/vivid-vbi-gen.c", i32 151, i32 17}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 8, !"branch-target-enforcement", i32 0}
!11 = !{i32 8, !"sign-return-address", i32 0}
!12 = !{i32 8, !"sign-return-address-all", i32 0}
!13 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
