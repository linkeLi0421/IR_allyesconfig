; ModuleID = '/llk/IR_all_yes/lib/decompress_unlzma.c_pt.bc'
source_filename = "../lib/decompress_unlzma.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lzma_header = type <{ i8, i32, i64 }>
%struct.rc = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr }
%struct.writer = type { ptr, i8, i32, i32, i32, ptr, ptr }
%struct.cstate = type { i32, i32, i32, i32, i32 }

@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Could not allocate input buffer\00", [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"bad header\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"LZMA data is corrupt\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"unexpected EOF\00", [17 x i8] zeroinitializer }, align 32
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 565, i32 9 }
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 587, i32 9 }
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 638, i32 11 }
@___asan_gen_.13 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.14 = private constant [27 x i8] c"../lib/decompress_unlzma.c\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 95, i32 13 }
@llvm.compiler.used = appending global [4 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold inlinehint nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @unlzma(ptr noundef %buf, i32 noundef %in_len, ptr noundef %fill, ptr noundef %flush, ptr noundef %output, ptr noundef writeonly %posp, ptr noundef %error) local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  %header = alloca %struct.lzma_header, align 1
  %rc = alloca %struct.rc, align 4
  %wr = alloca %struct.writer, align 4
  %cst = alloca %struct.cstate, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 13, ptr nonnull %header) #10
  %0 = ptrtoint ptr %header to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %header, align 1, !annotation !16
  %1 = getelementptr inbounds %struct.lzma_header, ptr %header, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %2, i32 4)
  store i32 -1, ptr %1, align 1, !annotation !16
  %3 = getelementptr inbounds %struct.lzma_header, ptr %header, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %4, i32 8)
  store i64 -1, ptr %3, align 1, !annotation !16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %rc) #10
  %5 = getelementptr inbounds i8, ptr %rc, i32 28
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %5, align 4, !annotation !16
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %wr) #10
  %7 = call ptr @memset(ptr %wr, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %cst) #10
  %8 = getelementptr inbounds %struct.cstate, ptr %cst, i32 0, i32 1
  %9 = getelementptr inbounds %struct.cstate, ptr %cst, i32 0, i32 2
  %10 = getelementptr inbounds %struct.cstate, ptr %cst, i32 0, i32 3
  %11 = getelementptr inbounds %struct.cstate, ptr %cst, i32 0, i32 4
  %error1 = getelementptr inbounds %struct.rc, ptr %rc, i32 0, i32 8
  %12 = ptrtoint ptr %error1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %error, ptr %error1, align 4
  %tobool.not = icmp eq ptr %buf, null
  br i1 %tobool.not, label %if.end, label %entry.if.end4_crit_edge

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.end:                                           ; preds = %entry
  %call1.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 65536, i32 noundef 3264, i32 noundef 4) #11
  %tobool2.not = icmp eq ptr %call1.i.i, null
  br i1 %tobool2.not, label %if.then3, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %error(ptr noundef nonnull @.str) #10
  br label %cleanup139

if.end4:                                          ; preds = %if.end.if.end4_crit_edge, %entry.if.end4_crit_edge
  %inbuf.0222 = phi ptr [ %call1.i.i, %if.end.if.end4_crit_edge ], [ %buf, %entry.if.end4_crit_edge ]
  %13 = ptrtoint ptr %cst to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %cst, align 4
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %11, align 4
  %15 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %10, align 4
  %16 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %9, align 4
  %17 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %8, align 4
  %header5 = getelementptr inbounds %struct.writer, ptr %wr, i32 0, i32 6
  %18 = ptrtoint ptr %header5 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %header, ptr %header5, align 4
  %flush6 = getelementptr inbounds %struct.writer, ptr %wr, i32 0, i32 5
  %19 = ptrtoint ptr %flush6 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %flush, ptr %flush6, align 4
  %global_pos = getelementptr inbounds %struct.writer, ptr %wr, i32 0, i32 4
  %20 = ptrtoint ptr %global_pos to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %global_pos, align 4
  %previous_byte = getelementptr inbounds %struct.writer, ptr %wr, i32 0, i32 1
  %21 = ptrtoint ptr %previous_byte to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %previous_byte, align 4
  %buffer_pos = getelementptr inbounds %struct.writer, ptr %wr, i32 0, i32 2
  %22 = ptrtoint ptr %buffer_pos to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %buffer_pos, align 4
  %tobool.not.i = icmp eq ptr %fill, null
  %nofill.fill.i = select i1 %tobool.not.i, ptr @nofill, ptr %fill
  %23 = ptrtoint ptr %rc to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %nofill.fill.i, ptr %rc, align 4
  %buffer3.i = getelementptr inbounds %struct.rc, ptr %rc, i32 0, i32 2
  %24 = ptrtoint ptr %buffer3.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %inbuf.0222, ptr %buffer3.i, align 4
  %buffer_size4.i = getelementptr inbounds %struct.rc, ptr %rc, i32 0, i32 4
  %25 = ptrtoint ptr %buffer_size4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %in_len, ptr %buffer_size4.i, align 4
  %add.ptr.i = getelementptr i8, ptr %inbuf.0222, i32 %in_len
  %buffer_end.i = getelementptr inbounds %struct.rc, ptr %rc, i32 0, i32 3
  %26 = ptrtoint ptr %buffer_end.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %add.ptr.i, ptr %buffer_end.i, align 4
  %ptr.i = getelementptr inbounds %struct.rc, ptr %rc, i32 0, i32 1
  %27 = ptrtoint ptr %ptr.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %inbuf.0222, ptr %ptr.i, align 4
  %code.i = getelementptr inbounds %struct.rc, ptr %rc, i32 0, i32 5
  %28 = ptrtoint ptr %code.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %code.i, align 4
  %range.i = getelementptr inbounds %struct.rc, ptr %rc, i32 0, i32 6
  %29 = ptrtoint ptr %range.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 -1, ptr %range.i, align 4
  br label %for.body

for.body:                                         ; preds = %if.end9.for.body_crit_edge, %if.end4
  %i.0228 = phi i32 [ 0, %if.end4 ], [ %inc, %if.end9.for.body_crit_edge ]
  %30 = ptrtoint ptr %ptr.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ptr.i, align 4
  %32 = ptrtoint ptr %buffer_end.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %buffer_end.i, align 4
  %cmp7.not = icmp ult ptr %31, %33
  br i1 %cmp7.not, label %for.body.if.end9_crit_edge, label %if.then8

for.body.if.end9_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then8:                                         ; preds = %for.body
  %34 = ptrtoint ptr %rc to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %rc, align 4
  %36 = ptrtoint ptr %buffer3.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %buffer3.i, align 4
  %call.i = call i32 %35(ptr noundef %37, i32 noundef 65536) #10
  %38 = ptrtoint ptr %buffer_size4.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %call.i, ptr %buffer_size4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 1
  br i1 %cmp.i, label %if.then.i, label %if.then8.rc_read.exit_crit_edge

if.then8.rc_read.exit_crit_edge:                  ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  br label %rc_read.exit

if.then.i:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  %39 = ptrtoint ptr %error1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %error1, align 4
  call void %40(ptr noundef nonnull @.str.3) #10
  br label %rc_read.exit

rc_read.exit:                                     ; preds = %if.then.i, %if.then8.rc_read.exit_crit_edge
  %41 = ptrtoint ptr %buffer3.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %buffer3.i, align 4
  %43 = ptrtoint ptr %ptr.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %42, ptr %ptr.i, align 4
  %44 = ptrtoint ptr %buffer_size4.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %buffer_size4.i, align 4
  %add.ptr.i194 = getelementptr i8, ptr %42, i32 %45
  %46 = ptrtoint ptr %buffer_end.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %add.ptr.i194, ptr %buffer_end.i, align 4
  br label %if.end9

if.end9:                                          ; preds = %rc_read.exit, %for.body.if.end9_crit_edge
  %47 = ptrtoint ptr %ptr.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ptr.i, align 4
  %incdec.ptr = getelementptr i8, ptr %48, i32 1
  store ptr %incdec.ptr, ptr %ptr.i, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %48, align 1
  %arrayidx = getelementptr i8, ptr %header, i32 %i.0228
  %51 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %50, ptr %arrayidx, align 1
  %inc = add nuw nsw i32 %i.0228, 1
  %exitcond.not = icmp eq i32 %inc, 13
  br i1 %exitcond.not, label %for.end, label %if.end9.for.body_crit_edge

if.end9.for.body_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %if.end9
  %52 = ptrtoint ptr %header to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %header, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -32, i8 %53)
  %cmp11 = icmp ugt i8 %53, -32
  br i1 %cmp11, label %if.then13, label %if.end14

if.then13:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  call void %error(ptr noundef nonnull @.str.1) #10
  br label %exit_1

if.end14:                                         ; preds = %for.end
  %conv = zext i8 %53 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %53)
  %cmp17229 = icmp ugt i8 %53, 8
  br i1 %cmp17229, label %while.cond20.preheader, label %if.end14.while.end26_crit_edge

if.end14.while.end26_crit_edge:                   ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end26

while.cond20.preheader:                           ; preds = %if.end14
  %54 = add nuw nsw i32 %conv, 8
  %smin = call i32 @llvm.smin.i32(i32 %conv, i32 17)
  %55 = sub nsw i32 %54, %smin
  %56 = udiv i32 %55, 9
  %57 = add nuw nsw i32 %56, 1
  %.neg242 = mul i32 %56, -9
  %58 = add nsw i32 %conv, -9
  %59 = add i32 %.neg242, %58
  call void @__sanitizer_cov_trace_const_cmp4(i32 35, i32 %55)
  %cmp21233 = icmp ugt i32 %55, 35
  br i1 %cmp21233, label %while.body23.preheader, label %while.cond20.preheader.while.end26_crit_edge

while.cond20.preheader.while.end26_crit_edge:     ; preds = %while.cond20.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end26

while.body23.preheader:                           ; preds = %while.cond20.preheader
  call void @__sanitizer_cov_trace_pc() #9
  %60 = add nuw nsw i32 %56, 5
  %smin240 = call i32 @llvm.smin.i32(i32 %57, i32 9)
  %61 = sub nuw nsw i32 %60, %smin240
  %62 = udiv i32 %61, 5
  %63 = add nuw nsw i32 %62, 1
  %.neg = mul nsw i32 %62, -5
  %64 = add nsw i32 %56, -4
  %65 = add nsw i32 %.neg, %64
  br label %while.end26

while.end26:                                      ; preds = %while.body23.preheader, %while.cond20.preheader.while.end26_crit_edge, %if.end14.while.end26_crit_edge
  %lc.0.lcssa246 = phi i32 [ %59, %while.cond20.preheader.while.end26_crit_edge ], [ %59, %while.body23.preheader ], [ %conv, %if.end14.while.end26_crit_edge ]
  %pb.0.lcssa = phi i32 [ 0, %while.cond20.preheader.while.end26_crit_edge ], [ %63, %while.body23.preheader ], [ 0, %if.end14.while.end26_crit_edge ]
  %lp.0.lcssa = phi i32 [ %57, %while.cond20.preheader.while.end26_crit_edge ], [ %65, %while.body23.preheader ], [ 0, %if.end14.while.end26_crit_edge ]
  %notmask = shl nsw i32 -1, %pb.0.lcssa
  %notmask191 = shl nsw i32 -1, %lp.0.lcssa
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %while.end26
  %ret.08.i = phi i64 [ %or.i, %for.body.i.for.body.i_crit_edge ], [ 0, %while.end26 ]
  %i.07.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %while.end26 ]
  %shl.i = shl i64 %ret.08.i, 8
  %sub1.i = sub nuw nsw i32 3, %i.07.i
  %arrayidx.i = getelementptr i8, ptr %1, i32 %sub1.i
  %66 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %67 to i64
  %or.i = or i64 %shl.i, %conv.i
  %inc.i = add nuw nsw i32 %i.07.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 4
  br i1 %exitcond.not.i, label %read_int.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

read_int.exit:                                    ; preds = %for.body.i
  %sub27 = xor i32 %notmask, -1
  %conv31 = trunc i64 %or.i to i32
  %68 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %68, i32 4)
  store i32 %conv31, ptr %1, align 1
  br label %for.body.i205

for.body.i205:                                    ; preds = %for.body.i205.for.body.i205_crit_edge, %read_int.exit
  %ret.08.i196 = phi i64 [ %or.i202, %for.body.i205.for.body.i205_crit_edge ], [ 0, %read_int.exit ]
  %i.07.i197 = phi i32 [ %inc.i203, %for.body.i205.for.body.i205_crit_edge ], [ 0, %read_int.exit ]
  %shl.i198 = shl i64 %ret.08.i196, 8
  %sub1.i199 = sub nuw nsw i32 7, %i.07.i197
  %arrayidx.i200 = getelementptr i8, ptr %3, i32 %sub1.i199
  %69 = ptrtoint ptr %arrayidx.i200 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx.i200, align 1
  %conv.i201 = zext i8 %70 to i64
  %or.i202 = or i64 %shl.i198, %conv.i201
  %inc.i203 = add nuw nsw i32 %i.07.i197, 1
  %exitcond.not.i204 = icmp eq i32 %inc.i203, 8
  br i1 %exitcond.not.i204, label %read_int.exit206, label %for.body.i205.for.body.i205_crit_edge

for.body.i205.for.body.i205_crit_edge:            ; preds = %for.body.i205
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i205

read_int.exit206:                                 ; preds = %for.body.i205
  %sub29 = xor i32 %notmask191, -1
  %71 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %71, i32 8)
  store i64 %or.i202, ptr %3, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv31)
  %cmp36 = icmp eq i32 %conv31, 0
  br i1 %cmp36, label %if.then38, label %read_int.exit206.if.end40_crit_edge

read_int.exit206.if.end40_crit_edge:              ; preds = %read_int.exit206
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end40

if.then38:                                        ; preds = %read_int.exit206
  call void @__sanitizer_cov_trace_pc() #9
  %72 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %72, i32 4)
  store i32 1, ptr %1, align 1
  br label %if.end40

if.end40:                                         ; preds = %if.then38, %read_int.exit206.if.end40_crit_edge
  %tobool41.not = icmp eq ptr %output, null
  br i1 %tobool41.not, label %if.end56, label %if.end56.thread

if.end56.thread:                                  ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  %73 = ptrtoint ptr %wr to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %output, ptr %wr, align 4
  br label %if.end61

if.end56:                                         ; preds = %if.end40
  %74 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %74, i32 4)
  %75 = load i32, ptr %1, align 1
  %conv46 = zext i32 %75 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %or.i202, i64 %conv46)
  %cmp47 = icmp ult i64 %or.i202, %conv46
  %extract.t = trunc i64 %or.i202 to i32
  %cond.off0 = select i1 %cmp47, i32 %extract.t, i32 %75
  %bufsize = getelementptr inbounds %struct.writer, ptr %wr, i32 0, i32 3
  %76 = ptrtoint ptr %bufsize to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %cond.off0, ptr %bufsize, align 4
  %call54 = call noalias ptr @vmalloc(i32 noundef %cond.off0) #11
  %77 = ptrtoint ptr %wr to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %call54, ptr %wr, align 4
  %cmp58 = icmp eq ptr %call54, null
  br i1 %cmp58, label %if.end56.exit_1_crit_edge, label %if.end56.if.end61_crit_edge

if.end56.if.end61_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end61

if.end56.exit_1_crit_edge:                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit_1

if.end61:                                         ; preds = %if.end56.if.end61_crit_edge, %if.end56.thread
  %add = add i32 %lp.0.lcssa, %lc.0.lcssa246
  %shl62 = shl i32 768, %add
  %add63 = add i32 %shl62, 1846
  %mul = shl i32 %add63, 1
  %call64 = call noalias ptr @vmalloc(i32 noundef %mul) #11
  %cmp65 = icmp eq ptr %call64, null
  br i1 %cmp65, label %if.end61.exit_2_crit_edge, label %for.cond72.preheader

if.end61.exit_2_crit_edge:                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit_2

for.cond72.preheader:                             ; preds = %if.end61
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add63)
  %cmp73238 = icmp sgt i32 %add63, 0
  br i1 %cmp73238, label %for.cond72.preheader.for.body75_crit_edge, label %for.cond72.preheader.for.body.i210.preheader_crit_edge

for.cond72.preheader.for.body.i210.preheader_crit_edge: ; preds = %for.cond72.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i210.preheader

for.cond72.preheader.for.body75_crit_edge:        ; preds = %for.cond72.preheader
  br label %for.body75

for.body75:                                       ; preds = %for.body75.for.body75_crit_edge, %for.cond72.preheader.for.body75_crit_edge
  %i.1239 = phi i32 [ %inc78, %for.body75.for.body75_crit_edge ], [ 0, %for.cond72.preheader.for.body75_crit_edge ]
  %arrayidx76 = getelementptr i16, ptr %call64, i32 %i.1239
  %78 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 1024, ptr %arrayidx76, align 2
  %inc78 = add nuw nsw i32 %i.1239, 1
  %exitcond241.not = icmp eq i32 %inc78, %add63
  br i1 %exitcond241.not, label %for.body75.for.body.i210.preheader_crit_edge, label %for.body75.for.body75_crit_edge

for.body75.for.body75_crit_edge:                  ; preds = %for.body75
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body75

for.body75.for.body.i210.preheader_crit_edge:     ; preds = %for.body75
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i210.preheader

for.body.i210.preheader:                          ; preds = %for.body75.for.body.i210.preheader_crit_edge, %for.cond72.preheader.for.body.i210.preheader_crit_edge
  br label %for.body.i210

for.body.i210:                                    ; preds = %if.end.i.for.body.i210_crit_edge, %for.body.i210.preheader
  %i.010.i = phi i32 [ %inc.i215, %if.end.i.for.body.i210_crit_edge ], [ 0, %for.body.i210.preheader ]
  %79 = ptrtoint ptr %ptr.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %ptr.i, align 4
  %81 = ptrtoint ptr %buffer_end.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %buffer_end.i, align 4
  %cmp1.not.i = icmp ult ptr %80, %82
  br i1 %cmp1.not.i, label %for.body.i210.if.end.i_crit_edge, label %if.then.i211

for.body.i210.if.end.i_crit_edge:                 ; preds = %for.body.i210
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i211:                                     ; preds = %for.body.i210
  %83 = ptrtoint ptr %rc to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %rc, align 4
  %85 = ptrtoint ptr %buffer3.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %buffer3.i, align 4
  %call.i.i = call i32 %84(ptr noundef %86, i32 noundef 65536) #10
  %87 = ptrtoint ptr %buffer_size4.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %call.i.i, ptr %buffer_size4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 1
  br i1 %cmp.i.i, label %if.then.i.i, label %if.then.i211.rc_read.exit.i_crit_edge

if.then.i211.rc_read.exit.i_crit_edge:            ; preds = %if.then.i211
  call void @__sanitizer_cov_trace_pc() #9
  br label %rc_read.exit.i

if.then.i.i:                                      ; preds = %if.then.i211
  call void @__sanitizer_cov_trace_pc() #9
  %88 = ptrtoint ptr %error1 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %error1, align 4
  call void %89(ptr noundef nonnull @.str.3) #10
  br label %rc_read.exit.i

rc_read.exit.i:                                   ; preds = %if.then.i.i, %if.then.i211.rc_read.exit.i_crit_edge
  %90 = ptrtoint ptr %buffer3.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %buffer3.i, align 4
  %92 = ptrtoint ptr %ptr.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %91, ptr %ptr.i, align 4
  %93 = ptrtoint ptr %buffer_size4.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %buffer_size4.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %91, i32 %94
  %95 = ptrtoint ptr %buffer_end.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %add.ptr.i.i, ptr %buffer_end.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %rc_read.exit.i, %for.body.i210.if.end.i_crit_edge
  %96 = ptrtoint ptr %code.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %code.i, align 4
  %shl.i212 = shl i32 %97, 8
  %98 = ptrtoint ptr %ptr.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %ptr.i, align 4
  %incdec.ptr.i = getelementptr i8, ptr %99, i32 1
  store ptr %incdec.ptr.i, ptr %ptr.i, align 4
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %99, align 1
  %conv.i213 = zext i8 %101 to i32
  %or.i214 = or i32 %shl.i212, %conv.i213
  store i32 %or.i214, ptr %code.i, align 4
  %inc.i215 = add nuw nsw i32 %i.010.i, 1
  %exitcond.not.i216 = icmp eq i32 %inc.i215, 5
  br i1 %exitcond.not.i216, label %if.end.i.while.cond80_crit_edge, label %if.end.i.for.body.i210_crit_edge

if.end.i.for.body.i210_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i210

if.end.i.while.cond80_crit_edge:                  ; preds = %if.end.i
  br label %while.cond80

while.cond80:                                     ; preds = %if.end109.while.cond80_crit_edge, %if.end.i.while.cond80_crit_edge
  %102 = ptrtoint ptr %global_pos to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %global_pos, align 4
  %104 = ptrtoint ptr %buffer_pos to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %buffer_pos, align 4
  %add.i = add i32 %105, %103
  %conv82 = zext i32 %add.i to i64
  %106 = ptrtoint ptr %3 to i32
  call void @__asan_loadN_noabort(i32 %106, i32 8)
  %107 = load i64, ptr %3, align 1
  call void @__sanitizer_cov_trace_cmp8(i64 %107, i64 %conv82)
  %cmp84 = icmp ugt i64 %107, %conv82
  br i1 %cmp84, label %while.body86, label %while.cond80.while.end115_crit_edge

while.cond80.while.end115_crit_edge:              ; preds = %while.cond80
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end115

while.body86:                                     ; preds = %while.cond80
  %and = and i32 %add.i, %sub27
  %108 = ptrtoint ptr %cst to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %cst, align 4
  %shl89 = shl i32 %109, 4
  %add.ptr90 = getelementptr i16, ptr %call64, i32 %shl89
  %add.ptr91 = getelementptr i16, ptr %add.ptr90, i32 %and
  %call92 = call fastcc i32 @rc_is_bit_0(ptr noundef nonnull %rc, ptr noundef %add.ptr91) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92)
  %tobool93.not = icmp eq i32 %call92, 0
  br i1 %tobool93.not, label %if.else99, label %if.then94

if.then94:                                        ; preds = %while.body86
  %call95 = call fastcc i32 @process_bit0(ptr noundef nonnull %wr, ptr noundef nonnull %rc, ptr noundef nonnull %cst, ptr noundef nonnull %call64, ptr noundef %add.ptr91, i32 noundef %lc.0.lcssa246, i32 noundef %sub29) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95)
  %tobool96.not = icmp eq i32 %call95, 0
  br i1 %tobool96.not, label %if.then94.if.end109_crit_edge, label %if.then97

if.then94.if.end109_crit_edge:                    ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end109

if.then97:                                        ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #9
  call void %error(ptr noundef nonnull @.str.2) #10
  br label %exit_3

if.else99:                                        ; preds = %while.body86
  %call100 = call fastcc i32 @process_bit1(ptr noundef nonnull %wr, ptr noundef nonnull %rc, ptr noundef nonnull %cst, ptr noundef nonnull %call64, i32 noundef %and, ptr noundef %add.ptr91) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100)
  %tobool101.not = icmp eq i32 %call100, 0
  br i1 %tobool101.not, label %if.end103, label %if.then102

if.then102:                                       ; preds = %if.else99
  call void @__sanitizer_cov_trace_pc() #9
  call void %error(ptr noundef nonnull @.str.2) #10
  br label %exit_3

if.end103:                                        ; preds = %if.else99
  %110 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %cmp105 = icmp eq i32 %111, 0
  br i1 %cmp105, label %if.end103.while.end115_crit_edge, label %if.end103.if.end109_crit_edge

if.end103.if.end109_crit_edge:                    ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end109

if.end103.while.end115_crit_edge:                 ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end115

if.end109:                                        ; preds = %if.end103.if.end109_crit_edge, %if.then94.if.end109_crit_edge
  %112 = ptrtoint ptr %buffer_size4.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %buffer_size4.i, align 4
  %cmp110 = icmp slt i32 %113, 1
  br i1 %cmp110, label %if.end109.exit_3_crit_edge, label %if.end109.while.cond80_crit_edge

if.end109.while.cond80_crit_edge:                 ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond80

if.end109.exit_3_crit_edge:                       ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit_3

while.end115:                                     ; preds = %if.end103.while.end115_crit_edge, %while.cond80.while.end115_crit_edge
  %tobool116.not = icmp eq ptr %posp, null
  br i1 %tobool116.not, label %while.end115.if.end120_crit_edge, label %if.then117

while.end115.if.end120_crit_edge:                 ; preds = %while.end115
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end120

if.then117:                                       ; preds = %while.end115
  call void @__sanitizer_cov_trace_pc() #9
  %114 = ptrtoint ptr %ptr.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %ptr.i, align 4
  %116 = ptrtoint ptr %buffer3.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %buffer3.i, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %115 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %117 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %118 = ptrtoint ptr %posp to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %sub.ptr.sub, ptr %posp, align 4
  br label %if.end120

if.end120:                                        ; preds = %if.then117, %while.end115.if.end120_crit_edge
  %119 = ptrtoint ptr %flush6 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %flush6, align 4
  %tobool122.not = icmp eq ptr %120, null
  br i1 %tobool122.not, label %if.end120.if.then130_crit_edge, label %lor.lhs.false

if.end120.if.then130_crit_edge:                   ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then130

lor.lhs.false:                                    ; preds = %if.end120
  %121 = ptrtoint ptr %wr to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %wr, align 4
  %123 = ptrtoint ptr %buffer_pos to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %buffer_pos, align 4
  %call126 = call i32 %120(ptr noundef %122, i32 noundef %124) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %call126, i32 %124)
  %cmp128 = icmp eq i32 %call126, %124
  br i1 %cmp128, label %lor.lhs.false.if.then130_crit_edge, label %lor.lhs.false.exit_3_crit_edge

lor.lhs.false.exit_3_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit_3

lor.lhs.false.if.then130_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then130

if.then130:                                       ; preds = %lor.lhs.false.if.then130_crit_edge, %if.end120.if.then130_crit_edge
  br label %exit_3

exit_3:                                           ; preds = %if.then130, %lor.lhs.false.exit_3_crit_edge, %if.end109.exit_3_crit_edge, %if.then102, %if.then97
  %ret.0 = phi i32 [ 0, %if.then130 ], [ -1, %lor.lhs.false.exit_3_crit_edge ], [ -1, %if.then97 ], [ -1, %if.then102 ], [ -1, %if.end109.exit_3_crit_edge ]
  call void @vfree(ptr noundef nonnull %call64) #10
  br label %exit_2

exit_2:                                           ; preds = %exit_3, %if.end61.exit_2_crit_edge
  %ret.1 = phi i32 [ -1, %if.end61.exit_2_crit_edge ], [ %ret.0, %exit_3 ]
  br i1 %tobool41.not, label %if.then133, label %exit_2.exit_1_crit_edge

exit_2.exit_1_crit_edge:                          ; preds = %exit_2
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit_1

if.then133:                                       ; preds = %exit_2
  call void @__sanitizer_cov_trace_pc() #9
  %125 = ptrtoint ptr %wr to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %wr, align 4
  call void @vfree(ptr noundef %126) #10
  br label %exit_1

exit_1:                                           ; preds = %if.then133, %exit_2.exit_1_crit_edge, %if.end56.exit_1_crit_edge, %if.then13
  %ret.2 = phi i32 [ -1, %if.then13 ], [ -1, %if.end56.exit_1_crit_edge ], [ %ret.1, %exit_2.exit_1_crit_edge ], [ %ret.1, %if.then133 ]
  br i1 %tobool.not, label %if.then137, label %exit_1.cleanup139_crit_edge

exit_1.cleanup139_crit_edge:                      ; preds = %exit_1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup139

if.then137:                                       ; preds = %exit_1
  call void @__sanitizer_cov_trace_pc() #9
  call void @kfree(ptr noundef nonnull %inbuf.0222) #10
  br label %cleanup139

cleanup139:                                       ; preds = %if.then137, %exit_1.cleanup139_crit_edge, %if.then3
  %retval.0 = phi i32 [ %ret.2, %exit_1.cleanup139_crit_edge ], [ %ret.2, %if.then137 ], [ -1, %if.then3 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %cst) #10
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %wr) #10
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %rc) #10
  call void @llvm.lifetime.end.p0(i64 13, ptr nonnull %header) #10
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #2

; Function Attrs: cold inlinehint nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rc_is_bit_0(ptr nocapture noundef %rc, ptr nocapture noundef readonly %p) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %range.i.i = getelementptr inbounds %struct.rc, ptr %rc, i32 0, i32 6
  %0 = ptrtoint ptr %range.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %range.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %1)
  %cmp.i.i = icmp ult i32 %1, 16777216
  br i1 %cmp.i.i, label %if.then.i.i, label %entry.rc_is_bit_0_helper.exit_crit_edge

entry.rc_is_bit_0_helper.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %rc_is_bit_0_helper.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @rc_do_normalize(ptr noundef %rc) #13
  br label %rc_is_bit_0_helper.exit

rc_is_bit_0_helper.exit:                          ; preds = %if.then.i.i, %entry.rc_is_bit_0_helper.exit_crit_edge
  %2 = ptrtoint ptr %p to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %p, align 2
  %conv.i = zext i16 %3 to i32
  %4 = ptrtoint ptr %range.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %range.i.i, align 4
  %shr.i = lshr i32 %5, 11
  %mul.i = mul i32 %shr.i, %conv.i
  %bound.i = getelementptr inbounds %struct.rc, ptr %rc, i32 0, i32 7
  %6 = ptrtoint ptr %bound.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %mul.i, ptr %bound.i, align 4
  %code = getelementptr inbounds %struct.rc, ptr %rc, i32 0, i32 5
  %7 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %code, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %mul.i)
  %cmp = icmp ult i32 %8, %mul.i
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: cold inlinehint nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @process_bit0(ptr nocapture noundef %wr, ptr nocapture noundef %rc, ptr nocapture noundef %cst, ptr nocapture noundef %p, ptr nocapture noundef %prob, i32 noundef %lc, i32 noundef %literal_pos_mask) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %mi = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mi) #10
  %0 = ptrtoint ptr %mi to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %mi, align 4
  %bound.i = getelementptr inbounds %struct.rc, ptr %rc, i32 0, i32 7
  %1 = ptrtoint ptr %bound.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %bound.i, align 4
  %range.i = getelementptr inbounds %struct.rc, ptr %rc, i32 0, i32 6
  %3 = ptrtoint ptr %range.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %range.i, align 4
  %4 = ptrtoint ptr %prob to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %prob, align 2
  %conv.i = zext i16 %5 to i32
  %sub.i = sub nsw i32 2048, %conv.i
  %shr.i = ashr i32 %sub.i, 5
  %6 = trunc i32 %shr.i to i16
  %conv2.i = add i16 %5, %6
  store i16 %conv2.i, ptr %prob, align 2
  %add.ptr = getelementptr i16, ptr %p, i32 1846
  %global_pos.i = getelementptr inbounds %struct.writer, ptr %wr, i32 0, i32 4
  %7 = ptrtoint ptr %global_pos.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %global_pos.i, align 4
  %buffer_pos.i = getelementptr inbounds %struct.writer, ptr %wr, i32 0, i32 2
  %9 = ptrtoint ptr %buffer_pos.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %buffer_pos.i, align 4
  %add.i = add i32 %10, %8
  %and = and i32 %add.i, %literal_pos_mask
  %shl = shl i32 %and, %lc
  %previous_byte = getelementptr inbounds %struct.writer, ptr %wr, i32 0, i32 1
  %11 = ptrtoint ptr %previous_byte to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %previous_byte, align 4
  %conv = zext i8 %12 to i32
  %sub = sub i32 8, %lc
  %shr = lshr i32 %conv, %sub
  %add = add i32 %shl, %shr
  %mul = mul i32 %add, 768
  %add.ptr1 = getelementptr i16, ptr %add.ptr, i32 %mul
  %13 = ptrtoint ptr %cst to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cst, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %14)
  %cmp = icmp sgt i32 %14, 6
  br i1 %cmp, label %if.then, label %entry.if.end21_crit_edge

entry.if.end21_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

if.then:                                          ; preds = %entry
  %rep0 = getelementptr inbounds %struct.cstate, ptr %cst, i32 0, i32 1
  %15 = ptrtoint ptr %rep0 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rep0, align 4
  %call3 = tail call fastcc zeroext i8 @peek_old_byte(ptr noundef %wr, i32 noundef %16) #12
  %conv4 = zext i8 %call3 to i32
  %add.ptr7 = getelementptr i16, ptr %add.ptr1, i32 256
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %if.then
  %match_byte.0 = phi i32 [ %conv4, %if.then ], [ %shl5, %do.cond.do.body_crit_edge ]
  %shl5 = shl i32 %match_byte.0, 1
  %and6 = and i32 %shl5, 256
  %add.ptr8 = getelementptr i16, ptr %add.ptr7, i32 %and6
  %17 = ptrtoint ptr %mi to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %mi, align 4
  %add.ptr9 = getelementptr i16, ptr %add.ptr8, i32 %18
  %call10 = call fastcc i32 @rc_get_bit(ptr noundef %rc, ptr noundef %add.ptr9, ptr noundef nonnull %mi) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool.not = icmp eq i32 %call10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool14.not = icmp eq i32 %and6, 0
  br i1 %tobool.not, label %if.else, label %if.then11

if.then11:                                        ; preds = %do.body
  br i1 %tobool14.not, label %if.then11.if.end21_crit_edge, label %if.then11.do.cond_crit_edge

if.then11.do.cond_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.cond

if.then11.if.end21_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

if.else:                                          ; preds = %do.body
  br i1 %tobool14.not, label %if.else.do.cond_crit_edge, label %if.else.if.end21_crit_edge

if.else.if.end21_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

if.else.do.cond_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.cond

do.cond:                                          ; preds = %if.else.do.cond_crit_edge, %if.then11.do.cond_crit_edge
  %19 = ptrtoint ptr %mi to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %mi, align 4
  %cmp19 = icmp slt i32 %20, 256
  br i1 %cmp19, label %do.cond.do.body_crit_edge, label %do.cond.while.end_crit_edge

do.cond.while.end_crit_edge:                      ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.end21:                                         ; preds = %if.else.if.end21_crit_edge, %if.then11.if.end21_crit_edge, %entry.if.end21_crit_edge
  %21 = ptrtoint ptr %mi to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pr = load i32, ptr %mi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %.pr)
  %cmp223 = icmp slt i32 %.pr, 256
  br i1 %cmp223, label %if.end21.while.body_crit_edge, label %if.end21.while.end_crit_edge

if.end21.while.end_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.end21.while.body_crit_edge:                    ; preds = %if.end21
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end21.while.body_crit_edge
  %22 = phi i32 [ %24, %while.body.while.body_crit_edge ], [ %.pr, %if.end21.while.body_crit_edge ]
  %add.ptr25 = getelementptr i16, ptr %add.ptr1, i32 %22
  %call26 = call fastcc i32 @rc_get_bit(ptr noundef %rc, ptr noundef %add.ptr25, ptr noundef nonnull %mi) #12
  %23 = ptrtoint ptr %mi to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %mi, align 4
  %cmp22 = icmp slt i32 %24, 256
  br i1 %cmp22, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.end21.while.end_crit_edge, %do.cond.while.end_crit_edge
  %.lcssa = phi i32 [ %.pr, %if.end21.while.end_crit_edge ], [ %24, %while.body.while.end_crit_edge ], [ %20, %do.cond.while.end_crit_edge ]
  %25 = ptrtoint ptr %cst to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cst, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %26)
  %cmp28 = icmp slt i32 %26, 4
  br i1 %cmp28, label %while.end.if.end43_crit_edge, label %if.else32

while.end.if.end43_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43

if.else32:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %26)
  %cmp34 = icmp ult i32 %26, 10
  br i1 %cmp34, label %if.then36, label %if.else39

if.then36:                                        ; preds = %if.else32
  call void @__sanitizer_cov_trace_pc() #9
  %sub38 = add nsw i32 %26, -3
  br label %if.end43

if.else39:                                        ; preds = %if.else32
  call void @__sanitizer_cov_trace_pc() #9
  %sub41 = add nsw i32 %26, -6
  br label %if.end43

if.end43:                                         ; preds = %if.else39, %if.then36, %while.end.if.end43_crit_edge
  %sub38.sink = phi i32 [ %sub38, %if.then36 ], [ %sub41, %if.else39 ], [ 0, %while.end.if.end43_crit_edge ]
  %27 = ptrtoint ptr %cst to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %sub38.sink, ptr %cst, align 4
  %conv44 = trunc i32 %.lcssa to i8
  %call45 = tail call fastcc i32 @write_byte(ptr noundef %wr, i8 noundef zeroext %conv44) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mi) #10
  ret i32 %call45
}

; Function Attrs: cold inlinehint nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @process_bit1(ptr nocapture noundef %wr, ptr noundef %rc, ptr noundef %cst, ptr nocapture noundef %p, i32 noundef %pos_state, ptr nocapture noundef %prob) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %len = alloca i32, align 4
  %pos_slot = alloca i32, align 4
  %mi = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #10
  %0 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %len, align 4, !annotation !16
  %bound.i = getelementptr inbounds %struct.rc, ptr %rc, i32 0, i32 7
  %1 = ptrtoint ptr %bound.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %bound.i, align 4
  %range.i = getelementptr inbounds %struct.rc, ptr %rc, i32 0, i32 6
  %3 = ptrtoint ptr %range.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %range.i, align 4
  %sub.i = sub i32 %4, %2
  store i32 %sub.i, ptr %range.i, align 4
  %code.i = getelementptr inbounds %struct.rc, ptr %rc, i32 0, i32 5
  %5 = ptrtoint ptr %code.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %code.i, align 4
  %sub2.i = sub i32 %6, %2
  store i32 %sub2.i, ptr %code.i, align 4
  %7 = ptrtoint ptr %prob to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %prob, align 2
  %9 = lshr i16 %8, 5
  %sub4.i = sub i16 %8, %9
  store i16 %sub4.i, ptr %prob, align 2
  %add.ptr = getelementptr i16, ptr %p, i32 192
  %10 = ptrtoint ptr %cst to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cst, align 4
  %add.ptr1 = getelementptr i16, ptr %add.ptr, i32 %11
  %call = tail call fastcc i32 @rc_is_bit_0(ptr noundef %rc, ptr noundef %add.ptr1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %12 = ptrtoint ptr %bound.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bound.i, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %range.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %range.i, align 4
  %15 = ptrtoint ptr %add.ptr1 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %add.ptr1, align 2
  %conv.i = zext i16 %16 to i32
  %sub.i268 = sub nsw i32 2048, %conv.i
  %shr.i = ashr i32 %sub.i268, 5
  %17 = trunc i32 %shr.i to i16
  %conv2.i = add i16 %16, %17
  store i16 %conv2.i, ptr %add.ptr1, align 2
  %rep2 = getelementptr inbounds %struct.cstate, ptr %cst, i32 0, i32 3
  %18 = ptrtoint ptr %rep2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rep2, align 4
  %rep3 = getelementptr inbounds %struct.cstate, ptr %cst, i32 0, i32 4
  %20 = ptrtoint ptr %rep3 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %rep3, align 4
  %rep1 = getelementptr inbounds %struct.cstate, ptr %cst, i32 0, i32 2
  %21 = ptrtoint ptr %rep1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %rep1, align 4
  store i32 %22, ptr %rep2, align 4
  %rep0 = getelementptr inbounds %struct.cstate, ptr %cst, i32 0, i32 1
  %23 = ptrtoint ptr %rep0 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rep0, align 4
  store i32 %24, ptr %rep1, align 4
  %25 = ptrtoint ptr %cst to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cst, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %26)
  %cmp = icmp slt i32 %26, 7
  %cond = select i1 %cmp, i32 0, i32 3
  br label %if.end60

if.else:                                          ; preds = %entry
  %27 = ptrtoint ptr %range.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %range.i, align 4
  %sub.i271 = sub i32 %28, %13
  store i32 %sub.i271, ptr %range.i, align 4
  %29 = ptrtoint ptr %code.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %code.i, align 4
  %sub2.i273 = sub i32 %30, %13
  store i32 %sub2.i273, ptr %code.i, align 4
  %31 = ptrtoint ptr %add.ptr1 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %add.ptr1, align 2
  %33 = lshr i16 %32, 5
  %sub4.i274 = sub i16 %32, %33
  store i16 %sub4.i274, ptr %add.ptr1, align 2
  %add.ptr7 = getelementptr i16, ptr %p, i32 204
  %34 = ptrtoint ptr %cst to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %cst, align 4
  %add.ptr9 = getelementptr i16, ptr %add.ptr7, i32 %35
  %call10 = tail call fastcc i32 @rc_is_bit_0(ptr noundef %rc, ptr noundef %add.ptr9) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  %36 = ptrtoint ptr %bound.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %bound.i, align 4
  br i1 %tobool11.not, label %if.else27, label %if.then12

if.then12:                                        ; preds = %if.else
  %38 = ptrtoint ptr %range.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %range.i, align 4
  %39 = ptrtoint ptr %add.ptr9 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %add.ptr9, align 2
  %conv.i277 = zext i16 %40 to i32
  %sub.i278 = sub nsw i32 2048, %conv.i277
  %shr.i279 = ashr i32 %sub.i278, 5
  %41 = trunc i32 %shr.i279 to i16
  %conv2.i280 = add i16 %40, %41
  store i16 %conv2.i280, ptr %add.ptr9, align 2
  %add.ptr13 = getelementptr i16, ptr %p, i32 240
  %42 = ptrtoint ptr %cst to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %cst, align 4
  %shl = shl i32 %43, 4
  %add.ptr15 = getelementptr i16, ptr %add.ptr13, i32 %shl
  %add.ptr16 = getelementptr i16, ptr %add.ptr15, i32 %pos_state
  %call17 = tail call fastcc i32 @rc_is_bit_0(ptr noundef %rc, ptr noundef %add.ptr16) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  %44 = ptrtoint ptr %bound.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %bound.i, align 4
  br i1 %tobool18.not, label %if.else26, label %if.then19

if.then19:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  %46 = ptrtoint ptr %range.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %range.i, align 4
  %47 = ptrtoint ptr %add.ptr16 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %add.ptr16, align 2
  %conv.i283 = zext i16 %48 to i32
  %sub.i284 = sub nsw i32 2048, %conv.i283
  %shr.i285 = ashr i32 %sub.i284, 5
  %49 = trunc i32 %shr.i285 to i16
  %conv2.i286 = add i16 %48, %49
  store i16 %conv2.i286, ptr %add.ptr16, align 2
  %50 = ptrtoint ptr %cst to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %cst, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %51)
  %cmp21 = icmp slt i32 %51, 7
  %cond22 = select i1 %cmp21, i32 9, i32 11
  %52 = ptrtoint ptr %cst to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %cond22, ptr %cst, align 4
  %rep024 = getelementptr inbounds %struct.cstate, ptr %cst, i32 0, i32 1
  %53 = ptrtoint ptr %rep024 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %rep024, align 4
  %call.i = tail call fastcc zeroext i8 @peek_old_byte(ptr noundef %wr, i32 noundef %54) #13
  %call1.i = tail call fastcc i32 @write_byte(ptr noundef %wr, i8 noundef zeroext %call.i) #13
  br label %cleanup145

if.else26:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  %55 = ptrtoint ptr %range.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %range.i, align 4
  %sub.i289 = sub i32 %56, %45
  store i32 %sub.i289, ptr %range.i, align 4
  %57 = ptrtoint ptr %code.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %code.i, align 4
  %sub2.i291 = sub i32 %58, %45
  store i32 %sub2.i291, ptr %code.i, align 4
  %59 = ptrtoint ptr %add.ptr16 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %add.ptr16, align 2
  %61 = lshr i16 %60, 5
  %sub4.i292 = sub i16 %60, %61
  store i16 %sub4.i292, ptr %add.ptr16, align 2
  br label %if.end54

if.else27:                                        ; preds = %if.else
  %62 = ptrtoint ptr %range.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %range.i, align 4
  %sub.i295 = sub i32 %63, %37
  store i32 %sub.i295, ptr %range.i, align 4
  %64 = ptrtoint ptr %code.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %code.i, align 4
  %sub2.i297 = sub i32 %65, %37
  store i32 %sub2.i297, ptr %code.i, align 4
  %66 = ptrtoint ptr %add.ptr9 to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %add.ptr9, align 2
  %68 = lshr i16 %67, 5
  %sub4.i298 = sub i16 %67, %68
  store i16 %sub4.i298, ptr %add.ptr9, align 2
  %add.ptr28 = getelementptr i16, ptr %p, i32 216
  %69 = ptrtoint ptr %cst to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %cst, align 4
  %add.ptr30 = getelementptr i16, ptr %add.ptr28, i32 %70
  %call31 = tail call fastcc i32 @rc_is_bit_0(ptr noundef %rc, ptr noundef %add.ptr30) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  %71 = ptrtoint ptr %bound.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %bound.i, align 4
  br i1 %tobool32.not, label %if.else35, label %if.then33

if.then33:                                        ; preds = %if.else27
  call void @__sanitizer_cov_trace_pc() #9
  %73 = ptrtoint ptr %range.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %range.i, align 4
  %74 = ptrtoint ptr %add.ptr30 to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %add.ptr30, align 2
  %conv.i301 = zext i16 %75 to i32
  %sub.i302 = sub nsw i32 2048, %conv.i301
  %shr.i303 = ashr i32 %sub.i302, 5
  %76 = trunc i32 %shr.i303 to i16
  %conv2.i304 = add i16 %75, %76
  store i16 %conv2.i304, ptr %add.ptr30, align 2
  %rep134 = getelementptr inbounds %struct.cstate, ptr %cst, i32 0, i32 2
  %77 = ptrtoint ptr %rep134 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %rep134, align 4
  br label %if.end50

if.else35:                                        ; preds = %if.else27
  %79 = ptrtoint ptr %range.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %range.i, align 4
  %sub.i307 = sub i32 %80, %72
  store i32 %sub.i307, ptr %range.i, align 4
  %81 = ptrtoint ptr %code.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %code.i, align 4
  %sub2.i309 = sub i32 %82, %72
  store i32 %sub2.i309, ptr %code.i, align 4
  %83 = ptrtoint ptr %add.ptr30 to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %add.ptr30, align 2
  %85 = lshr i16 %84, 5
  %sub4.i310 = sub i16 %84, %85
  store i16 %sub4.i310, ptr %add.ptr30, align 2
  %add.ptr36 = getelementptr i16, ptr %p, i32 228
  %86 = ptrtoint ptr %cst to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %cst, align 4
  %add.ptr38 = getelementptr i16, ptr %add.ptr36, i32 %87
  %call39 = tail call fastcc i32 @rc_is_bit_0(ptr noundef %rc, ptr noundef %add.ptr38) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  %88 = ptrtoint ptr %bound.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %bound.i, align 4
  br i1 %tobool40.not, label %if.else43, label %if.then41

if.then41:                                        ; preds = %if.else35
  call void @__sanitizer_cov_trace_pc() #9
  %90 = ptrtoint ptr %range.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %89, ptr %range.i, align 4
  %91 = ptrtoint ptr %add.ptr38 to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %add.ptr38, align 2
  %conv.i313 = zext i16 %92 to i32
  %sub.i314 = sub nsw i32 2048, %conv.i313
  %shr.i315 = ashr i32 %sub.i314, 5
  %93 = trunc i32 %shr.i315 to i16
  %conv2.i316 = add i16 %92, %93
  store i16 %conv2.i316, ptr %add.ptr38, align 2
  %rep242 = getelementptr inbounds %struct.cstate, ptr %cst, i32 0, i32 3
  %94 = ptrtoint ptr %rep242 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %rep242, align 4
  br label %if.end47

if.else43:                                        ; preds = %if.else35
  call void @__sanitizer_cov_trace_pc() #9
  %96 = ptrtoint ptr %range.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %range.i, align 4
  %sub.i319 = sub i32 %97, %89
  store i32 %sub.i319, ptr %range.i, align 4
  %98 = ptrtoint ptr %code.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %code.i, align 4
  %sub2.i321 = sub i32 %99, %89
  store i32 %sub2.i321, ptr %code.i, align 4
  %100 = ptrtoint ptr %add.ptr38 to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %add.ptr38, align 2
  %102 = lshr i16 %101, 5
  %sub4.i322 = sub i16 %101, %102
  store i16 %sub4.i322, ptr %add.ptr38, align 2
  %rep344 = getelementptr inbounds %struct.cstate, ptr %cst, i32 0, i32 4
  %103 = ptrtoint ptr %rep344 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %rep344, align 4
  %rep245 = getelementptr inbounds %struct.cstate, ptr %cst, i32 0, i32 3
  %105 = ptrtoint ptr %rep245 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %rep245, align 4
  store i32 %106, ptr %rep344, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.else43, %if.then41
  %distance.0 = phi i32 [ %95, %if.then41 ], [ %104, %if.else43 ]
  %rep148 = getelementptr inbounds %struct.cstate, ptr %cst, i32 0, i32 2
  %107 = ptrtoint ptr %rep148 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %rep148, align 4
  %rep249 = getelementptr inbounds %struct.cstate, ptr %cst, i32 0, i32 3
  %109 = ptrtoint ptr %rep249 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %108, ptr %rep249, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.end47, %if.then33
  %distance.1 = phi i32 [ %78, %if.then33 ], [ %distance.0, %if.end47 ]
  %rep051 = getelementptr inbounds %struct.cstate, ptr %cst, i32 0, i32 1
  %110 = ptrtoint ptr %rep051 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %rep051, align 4
  %rep152 = getelementptr inbounds %struct.cstate, ptr %cst, i32 0, i32 2
  %112 = ptrtoint ptr %rep152 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %111, ptr %rep152, align 4
  store i32 %distance.1, ptr %rep051, align 4
  br label %if.end54

if.end54:                                         ; preds = %if.end50, %if.else26
  %113 = ptrtoint ptr %cst to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %cst, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %114)
  %cmp56 = icmp slt i32 %114, 7
  %cond57 = select i1 %cmp56, i32 8, i32 11
  br label %if.end60

if.end60:                                         ; preds = %if.end54, %if.then
  %cond57.sink = phi i32 [ %cond57, %if.end54 ], [ %cond, %if.then ]
  %.sink = phi i32 [ 1332, %if.end54 ], [ 818, %if.then ]
  %115 = ptrtoint ptr %cst to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %cond57.sink, ptr %cst, align 4
  %add.ptr59 = getelementptr i16, ptr %p, i32 %.sink
  %call62 = tail call fastcc i32 @rc_is_bit_0(ptr noundef %rc, ptr noundef %add.ptr59) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  %116 = ptrtoint ptr %bound.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %bound.i, align 4
  br i1 %tobool63.not, label %if.else68, label %if.then64

if.then64:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #9
  %118 = ptrtoint ptr %range.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %117, ptr %range.i, align 4
  %119 = ptrtoint ptr %add.ptr59 to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %add.ptr59, align 2
  %conv.i325 = zext i16 %120 to i32
  %sub.i326 = sub nsw i32 2048, %conv.i325
  %shr.i327 = ashr i32 %sub.i326, 5
  %121 = trunc i32 %shr.i327 to i16
  %conv2.i328 = add i16 %120, %121
  store i16 %conv2.i328, ptr %add.ptr59, align 2
  %add.ptr65 = getelementptr i16, ptr %add.ptr59, i32 2
  %shl66 = shl i32 %pos_state, 3
  %add.ptr67 = getelementptr i16, ptr %add.ptr65, i32 %shl66
  br label %if.end79

if.else68:                                        ; preds = %if.end60
  %122 = ptrtoint ptr %range.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %range.i, align 4
  %sub.i331 = sub i32 %123, %117
  store i32 %sub.i331, ptr %range.i, align 4
  %124 = ptrtoint ptr %code.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %code.i, align 4
  %sub2.i333 = sub i32 %125, %117
  store i32 %sub2.i333, ptr %code.i, align 4
  %126 = ptrtoint ptr %add.ptr59 to i32
  call void @__asan_load2_noabort(i32 %126)
  %127 = load i16, ptr %add.ptr59, align 2
  %128 = lshr i16 %127, 5
  %sub4.i334 = sub i16 %127, %128
  store i16 %sub4.i334, ptr %add.ptr59, align 2
  %add.ptr69 = getelementptr i16, ptr %add.ptr59, i32 1
  %call70 = tail call fastcc i32 @rc_is_bit_0(ptr noundef %rc, ptr noundef %add.ptr69) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool71.not = icmp eq i32 %call70, 0
  %129 = ptrtoint ptr %bound.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %bound.i, align 4
  br i1 %tobool71.not, label %if.else76, label %if.then72

if.then72:                                        ; preds = %if.else68
  call void @__sanitizer_cov_trace_pc() #9
  %131 = ptrtoint ptr %range.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %130, ptr %range.i, align 4
  %132 = ptrtoint ptr %add.ptr69 to i32
  call void @__asan_load2_noabort(i32 %132)
  %133 = load i16, ptr %add.ptr69, align 2
  %conv.i337 = zext i16 %133 to i32
  %sub.i338 = sub nsw i32 2048, %conv.i337
  %shr.i339 = ashr i32 %sub.i338, 5
  %134 = trunc i32 %shr.i339 to i16
  %conv2.i340 = add i16 %133, %134
  store i16 %conv2.i340, ptr %add.ptr69, align 2
  %add.ptr73 = getelementptr i16, ptr %add.ptr59, i32 130
  %shl74 = shl i32 %pos_state, 3
  %add.ptr75 = getelementptr i16, ptr %add.ptr73, i32 %shl74
  br label %if.end79

if.else76:                                        ; preds = %if.else68
  call void @__sanitizer_cov_trace_pc() #9
  %135 = ptrtoint ptr %range.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %range.i, align 4
  %sub.i343 = sub i32 %136, %130
  store i32 %sub.i343, ptr %range.i, align 4
  %137 = ptrtoint ptr %code.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %code.i, align 4
  %sub2.i345 = sub i32 %138, %130
  store i32 %sub2.i345, ptr %code.i, align 4
  %139 = ptrtoint ptr %add.ptr69 to i32
  call void @__asan_load2_noabort(i32 %139)
  %140 = load i16, ptr %add.ptr69, align 2
  %141 = lshr i16 %140, 5
  %sub4.i346 = sub i16 %140, %141
  store i16 %sub4.i346, ptr %add.ptr69, align 2
  %add.ptr77 = getelementptr i16, ptr %add.ptr59, i32 258
  br label %if.end79

if.end79:                                         ; preds = %if.else76, %if.then72, %if.then64
  %offset.0 = phi i32 [ 0, %if.then64 ], [ 8, %if.then72 ], [ 16, %if.else76 ]
  %prob_len.0 = phi ptr [ %add.ptr67, %if.then64 ], [ %add.ptr75, %if.then72 ], [ %add.ptr77, %if.else76 ]
  %num_bits.0 = phi i32 [ 3, %if.then64 ], [ 3, %if.then72 ], [ 8, %if.else76 ]
  call fastcc void @rc_bit_tree_decode(ptr noundef %rc, ptr noundef %prob_len.0, i32 noundef %num_bits.0, ptr noundef nonnull %len) #12
  %142 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %len, align 4
  %add = add i32 %143, %offset.0
  store i32 %add, ptr %len, align 4
  %144 = ptrtoint ptr %cst to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %cst, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %145)
  %cmp81 = icmp slt i32 %145, 4
  br i1 %cmp81, label %if.then82, label %if.end79.if.end141_crit_edge

if.end79.if.end141_crit_edge:                     ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end141

if.then82:                                        ; preds = %if.end79
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pos_slot) #10
  %add84 = add nsw i32 %145, 7
  %146 = ptrtoint ptr %cst to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 %add84, ptr %cst, align 4
  %add.ptr85 = getelementptr i16, ptr %p, i32 432
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %add)
  %cmp86 = icmp slt i32 %add, 4
  %phi.bo = shl i32 %add, 6
  %spec.select = select i1 %cmp86, i32 %phi.bo, i32 192
  %add.ptr89 = getelementptr i16, ptr %add.ptr85, i32 %spec.select
  %147 = ptrtoint ptr %pos_slot to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 1, ptr %pos_slot, align 4
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.then82
  %i.06.i = phi i32 [ %dec.i, %while.body.i.while.body.i_crit_edge ], [ 6, %if.then82 ]
  %dec.i = add nsw i32 %i.06.i, -1
  %148 = ptrtoint ptr %pos_slot to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %pos_slot, align 4
  %add.ptr.i = getelementptr i16, ptr %add.ptr89, i32 %149
  %call.i347 = call fastcc i32 @rc_get_bit(ptr noundef %rc, ptr noundef %add.ptr.i, ptr noundef nonnull %pos_slot) #13
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %rc_bit_tree_decode.exit, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

rc_bit_tree_decode.exit:                          ; preds = %while.body.i
  %150 = ptrtoint ptr %pos_slot to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %pos_slot, align 4
  %sub.i348 = add i32 %151, -64
  store i32 %sub.i348, ptr %pos_slot, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.i348)
  %cmp90 = icmp sgt i32 %sub.i348, 3
  br i1 %cmp90, label %if.then91, label %if.else127

if.then91:                                        ; preds = %rc_bit_tree_decode.exit
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mi) #10
  %shr351 = lshr i32 %sub.i348, 1
  %and = and i32 %151, 1
  %or = or i32 %and, 2
  %rep092 = getelementptr inbounds %struct.cstate, ptr %cst, i32 0, i32 1
  %152 = ptrtoint ptr %rep092 to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %or, ptr %rep092, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %sub.i348)
  %cmp93 = icmp ult i32 %sub.i348, 14
  br i1 %cmp93, label %if.then94, label %if.else102

if.then94:                                        ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #9
  %sub = add nsw i32 %shr351, -1
  %shl96 = shl i32 %or, %sub
  %153 = ptrtoint ptr %rep092 to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 %shl96, ptr %rep092, align 4
  %add.ptr97 = getelementptr i16, ptr %p, i32 688
  %add.ptr99 = getelementptr i16, ptr %add.ptr97, i32 %shl96
  %idx.neg = sub nsw i32 64, %151
  %add.ptr100 = getelementptr i16, ptr %add.ptr99, i32 %idx.neg
  %add.ptr101 = getelementptr i16, ptr %add.ptr100, i32 -1
  br label %while.body117.preheader

if.else102:                                       ; preds = %if.then91
  %sub103 = add nsw i32 %shr351, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub103)
  %tobool104.not352 = icmp eq i32 %sub103, 0
  br i1 %tobool104.not352, label %if.else102.while.end_crit_edge, label %if.else102.while.body_crit_edge

if.else102.while.body_crit_edge:                  ; preds = %if.else102
  br label %while.body

if.else102.while.end_crit_edge:                   ; preds = %if.else102
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.else102.while.body_crit_edge
  %num_bits.1353 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %sub103, %if.else102.while.body_crit_edge ]
  %dec = add i32 %num_bits.1353, -1
  %154 = ptrtoint ptr %rep092 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %rep092, align 4
  %shl106 = shl i32 %155, 1
  %call107 = tail call fastcc i32 @rc_direct_bit(ptr noundef %rc) #12
  %or108 = or i32 %shl106, %call107
  %156 = ptrtoint ptr %rep092 to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 %or108, ptr %rep092, align 4
  %tobool104.not = icmp eq i32 %dec, 0
  br i1 %tobool104.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.else102.while.end_crit_edge
  %add.ptr110 = getelementptr i16, ptr %p, i32 802
  %157 = ptrtoint ptr %rep092 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %rep092, align 4
  %shl112 = shl i32 %158, 4
  store i32 %shl112, ptr %rep092, align 4
  br label %while.body117.preheader

while.body117.preheader:                          ; preds = %while.end, %if.then94
  %prob.addr.1 = phi ptr [ %add.ptr101, %if.then94 ], [ %add.ptr110, %while.end ]
  %num_bits.2 = phi i32 [ %sub, %if.then94 ], [ 4, %while.end ]
  %159 = ptrtoint ptr %mi to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 1, ptr %mi, align 4
  br label %while.body117

while.body117:                                    ; preds = %if.end124.while.body117_crit_edge, %while.body117.preheader
  %dec115357.in = phi i32 [ %dec115357, %if.end124.while.body117_crit_edge ], [ %num_bits.2, %while.body117.preheader ]
  %i.0356 = phi i32 [ %shl125, %if.end124.while.body117_crit_edge ], [ 1, %while.body117.preheader ]
  %dec115357 = add i32 %dec115357.in, -1
  %160 = ptrtoint ptr %mi to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %mi, align 4
  %add.ptr118 = getelementptr i16, ptr %prob.addr.1, i32 %161
  %call119 = call fastcc i32 @rc_get_bit(ptr noundef %rc, ptr noundef %add.ptr118, ptr noundef nonnull %mi) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call119)
  %tobool120.not = icmp eq i32 %call119, 0
  br i1 %tobool120.not, label %while.body117.if.end124_crit_edge, label %if.then121

while.body117.if.end124_crit_edge:                ; preds = %while.body117
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end124

if.then121:                                       ; preds = %while.body117
  call void @__sanitizer_cov_trace_pc() #9
  %162 = ptrtoint ptr %rep092 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %rep092, align 4
  %or123 = or i32 %163, %i.0356
  store i32 %or123, ptr %rep092, align 4
  br label %if.end124

if.end124:                                        ; preds = %if.then121, %while.body117.if.end124_crit_edge
  %shl125 = shl i32 %i.0356, 1
  %tobool116.not = icmp eq i32 %dec115357, 0
  br i1 %tobool116.not, label %while.end126, label %if.end124.while.body117_crit_edge

if.end124.while.body117_crit_edge:                ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body117

while.end126:                                     ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mi) #10
  br label %if.end129

if.else127:                                       ; preds = %rc_bit_tree_decode.exit
  call void @__sanitizer_cov_trace_pc() #9
  %rep0128 = getelementptr inbounds %struct.cstate, ptr %cst, i32 0, i32 1
  %164 = ptrtoint ptr %rep0128 to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 %sub.i348, ptr %rep0128, align 4
  br label %if.end129

if.end129:                                        ; preds = %if.else127, %while.end126
  %rep0130 = getelementptr inbounds %struct.cstate, ptr %cst, i32 0, i32 1
  %165 = ptrtoint ptr %rep0130 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %rep0130, align 4
  %inc = add i32 %166, 1
  store i32 %inc, ptr %rep0130, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc)
  %cmp131 = icmp eq i32 %inc, 0
  br i1 %cmp131, label %if.end129.cleanup.thread_crit_edge, label %if.end133

if.end129.cleanup.thread_crit_edge:               ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread

if.end133:                                        ; preds = %if.end129
  %header = getelementptr inbounds %struct.writer, ptr %wr, i32 0, i32 6
  %167 = ptrtoint ptr %header to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %header, align 4
  %dict_size = getelementptr inbounds %struct.lzma_header, ptr %168, i32 0, i32 1
  %169 = ptrtoint ptr %dict_size to i32
  call void @__asan_loadN_noabort(i32 %169, i32 4)
  %170 = load i32, ptr %dict_size, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %170)
  %cmp135 = icmp ugt i32 %inc, %170
  br i1 %cmp135, label %if.end133.cleanup.thread_crit_edge, label %cleanup

if.end133.cleanup.thread_crit_edge:               ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.end133.cleanup.thread_crit_edge, %if.end129.cleanup.thread_crit_edge
  %retval.0.ph = phi i32 [ -1, %if.end133.cleanup.thread_crit_edge ], [ 0, %if.end129.cleanup.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pos_slot) #10
  br label %cleanup145

cleanup:                                          ; preds = %if.end133
  %global_pos.i = getelementptr inbounds %struct.writer, ptr %wr, i32 0, i32 4
  %171 = ptrtoint ptr %global_pos.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %global_pos.i, align 4
  %buffer_pos.i = getelementptr inbounds %struct.writer, ptr %wr, i32 0, i32 2
  %173 = ptrtoint ptr %buffer_pos.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %buffer_pos.i, align 4
  %add.i = add i32 %174, %172
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %add.i)
  %cmp138.not = icmp ugt i32 %inc, %add.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pos_slot) #10
  br i1 %cmp138.not, label %cleanup.cleanup145_crit_edge, label %cleanup.if.end141_crit_edge

cleanup.if.end141_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end141

cleanup.cleanup145_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup145

if.end141:                                        ; preds = %cleanup.if.end141_crit_edge, %if.end79.if.end141_crit_edge
  %175 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %len, align 4
  %add142 = add i32 %176, 2
  store i32 %add142, ptr %len, align 4
  %rep0143 = getelementptr inbounds %struct.cstate, ptr %cst, i32 0, i32 1
  %177 = ptrtoint ptr %rep0143 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %rep0143, align 4
  %call144 = tail call fastcc i32 @copy_bytes(ptr noundef %wr, i32 noundef %178, i32 noundef %add142) #12
  br label %cleanup145

cleanup145:                                       ; preds = %if.end141, %cleanup.cleanup145_crit_edge, %cleanup.thread, %if.then19
  %retval.1 = phi i32 [ %call144, %if.end141 ], [ -1, %cleanup.cleanup145_crit_edge ], [ %call1.i, %if.then19 ], [ %retval.0.ph, %cleanup.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #10
  ret i32 %retval.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nofill(ptr nocapture noundef readnone %buffer, i32 noundef %len) #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  ret i32 -1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rc_do_normalize(ptr nocapture noundef %rc) unnamed_addr #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %ptr = getelementptr inbounds %struct.rc, ptr %rc, i32 0, i32 1
  %0 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptr, align 4
  %buffer_end = getelementptr inbounds %struct.rc, ptr %rc, i32 0, i32 3
  %2 = ptrtoint ptr %buffer_end to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buffer_end, align 4
  %cmp.not = icmp ult ptr %1, %3
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %rc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rc, align 4
  %buffer.i = getelementptr inbounds %struct.rc, ptr %rc, i32 0, i32 2
  %6 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %buffer.i, align 4
  %call.i = tail call i32 %5(ptr noundef %7, i32 noundef 65536) #10
  %buffer_size.i = getelementptr inbounds %struct.rc, ptr %rc, i32 0, i32 4
  %8 = ptrtoint ptr %buffer_size.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call.i, ptr %buffer_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 1
  br i1 %cmp.i, label %if.then.i, label %if.then.rc_read.exit_crit_edge

if.then.rc_read.exit_crit_edge:                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %rc_read.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %error.i = getelementptr inbounds %struct.rc, ptr %rc, i32 0, i32 8
  %9 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %error.i, align 4
  tail call void %10(ptr noundef nonnull @.str.3) #10
  br label %rc_read.exit

rc_read.exit:                                     ; preds = %if.then.i, %if.then.rc_read.exit_crit_edge
  %11 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %buffer.i, align 4
  %13 = ptrtoint ptr %ptr to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %ptr, align 4
  %14 = ptrtoint ptr %buffer_size.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %buffer_size.i, align 4
  %add.ptr.i = getelementptr i8, ptr %12, i32 %15
  %16 = ptrtoint ptr %buffer_end to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %add.ptr.i, ptr %buffer_end, align 4
  br label %if.end

if.end:                                           ; preds = %rc_read.exit, %entry.if.end_crit_edge
  %range = getelementptr inbounds %struct.rc, ptr %rc, i32 0, i32 6
  %17 = ptrtoint ptr %range to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %range, align 4
  %shl = shl i32 %18, 8
  store i32 %shl, ptr %range, align 4
  %code = getelementptr inbounds %struct.rc, ptr %rc, i32 0, i32 5
  %19 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %code, align 4
  %shl1 = shl i32 %20, 8
  %21 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ptr, align 4
  %incdec.ptr = getelementptr i8, ptr %22, i32 1
  store ptr %incdec.ptr, ptr %ptr, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %22, align 1
  %conv = zext i8 %24 to i32
  %or = or i32 %shl1, %conv
  store i32 %or, ptr %code, align 4
  ret void
}

; Function Attrs: cold inlinehint nofree norecurse nosync nounwind null_pointer_is_valid optsize readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i8 @peek_old_byte(ptr nocapture noundef readonly %wr, i32 noundef %offs) unnamed_addr #6 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %flush = getelementptr inbounds %struct.writer, ptr %wr, i32 0, i32 5
  %0 = ptrtoint ptr %flush to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %flush, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %while.cond.preheader, label %if.else

while.cond.preheader:                             ; preds = %entry
  %header = getelementptr inbounds %struct.writer, ptr %wr, i32 0, i32 6
  %2 = ptrtoint ptr %header to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %header, align 4
  %dict_size = getelementptr inbounds %struct.lzma_header, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %dict_size to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %dict_size, align 1
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %while.cond.preheader
  %offs.addr.0 = phi i32 [ %sub, %while.cond.while.cond_crit_edge ], [ %offs, %while.cond.preheader ]
  %cmp = icmp ugt i32 %offs.addr.0, %5
  %sub = sub i32 %offs.addr.0, %5
  br i1 %cmp, label %while.cond.while.cond_crit_edge, label %while.end

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond

while.end:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  %buffer_pos = getelementptr inbounds %struct.writer, ptr %wr, i32 0, i32 2
  %6 = ptrtoint ptr %buffer_pos to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %buffer_pos, align 4
  %sub3 = sub i32 %7, %offs.addr.0
  br label %return

if.else:                                          ; preds = %entry
  %buffer_pos5 = getelementptr inbounds %struct.writer, ptr %wr, i32 0, i32 2
  %8 = ptrtoint ptr %buffer_pos5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %buffer_pos5, align 4
  %sub6 = sub i32 %9, %offs
  %header8 = getelementptr inbounds %struct.writer, ptr %wr, i32 0, i32 6
  %10 = ptrtoint ptr %header8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %header8, align 4
  %dict_size9 = getelementptr inbounds %struct.lzma_header, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %dict_size9 to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %dict_size9, align 1
  br label %while.cond7

while.cond7:                                      ; preds = %while.cond7.while.cond7_crit_edge, %if.else
  %pos4.0 = phi i32 [ %sub6, %if.else ], [ %add, %while.cond7.while.cond7_crit_edge ]
  %cmp10.not = icmp ult i32 %pos4.0, %13
  %add = add i32 %13, %pos4.0
  br i1 %cmp10.not, label %while.cond7.return_crit_edge, label %while.cond7.while.cond7_crit_edge

while.cond7.while.cond7_crit_edge:                ; preds = %while.cond7
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond7

while.cond7.return_crit_edge:                     ; preds = %while.cond7
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

return:                                           ; preds = %while.cond7.return_crit_edge, %while.end
  %pos4.0.lcssa.sink = phi i32 [ %sub3, %while.end ], [ %pos4.0, %while.cond7.return_crit_edge ]
  %14 = ptrtoint ptr %wr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %wr, align 4
  %arrayidx16 = getelementptr i8, ptr %15, i32 %pos4.0.lcssa.sink
  %16 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %16)
  %retval.0 = load i8, ptr %arrayidx16, align 1
  ret i8 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rc_get_bit(ptr nocapture noundef %rc, ptr nocapture noundef %p, ptr nocapture noundef %symbol) unnamed_addr #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call fastcc i32 @rc_is_bit_0(ptr noundef %rc, ptr noundef %p) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %bound.i8 = getelementptr inbounds %struct.rc, ptr %rc, i32 0, i32 7
  %0 = ptrtoint ptr %bound.i8 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bound.i8, align 4
  %range.i9 = getelementptr inbounds %struct.rc, ptr %rc, i32 0, i32 6
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %range.i9 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %range.i9, align 4
  %3 = ptrtoint ptr %p to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %p, align 2
  %conv.i = zext i16 %4 to i32
  %sub.i = sub nsw i32 2048, %conv.i
  %shr.i = ashr i32 %sub.i, 5
  %5 = trunc i32 %shr.i to i16
  %conv2.i = add i16 %4, %5
  store i16 %conv2.i, ptr %p, align 2
  %6 = ptrtoint ptr %symbol to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %symbol, align 4
  %mul = shl i32 %7, 1
  br label %return

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %range.i9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %range.i9, align 4
  %sub.i10 = sub i32 %9, %1
  store i32 %sub.i10, ptr %range.i9, align 4
  %code.i = getelementptr inbounds %struct.rc, ptr %rc, i32 0, i32 5
  %10 = ptrtoint ptr %code.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %code.i, align 4
  %sub2.i = sub i32 %11, %1
  store i32 %sub2.i, ptr %code.i, align 4
  %12 = ptrtoint ptr %p to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %p, align 2
  %14 = lshr i16 %13, 5
  %sub4.i = sub i16 %13, %14
  store i16 %sub4.i, ptr %p, align 2
  %15 = ptrtoint ptr %symbol to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %symbol, align 4
  %mul1 = shl i32 %16, 1
  %add = or i32 %mul1, 1
  br label %return

return:                                           ; preds = %if.else, %if.then
  %storemerge = phi i32 [ %add, %if.else ], [ %mul, %if.then ]
  %retval.0 = phi i32 [ 1, %if.else ], [ 0, %if.then ]
  %17 = ptrtoint ptr %symbol to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %storemerge, ptr %symbol, align 4
  ret i32 %retval.0
}

; Function Attrs: cold inlinehint nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @write_byte(ptr nocapture noundef %wr, i8 noundef zeroext %byte) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %previous_byte = getelementptr inbounds %struct.writer, ptr %wr, i32 0, i32 1
  %0 = ptrtoint ptr %previous_byte to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %byte, ptr %previous_byte, align 4
  %1 = ptrtoint ptr %wr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %wr, align 4
  %buffer_pos = getelementptr inbounds %struct.writer, ptr %wr, i32 0, i32 2
  %3 = ptrtoint ptr %buffer_pos to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %buffer_pos, align 4
  %inc = add i32 %4, 1
  store i32 %inc, ptr %buffer_pos, align 4
  %arrayidx = getelementptr i8, ptr %2, i32 %4
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %byte, ptr %arrayidx, align 1
  %flush = getelementptr inbounds %struct.writer, ptr %wr, i32 0, i32 5
  %6 = ptrtoint ptr %flush to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %flush, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.if.end13_crit_edge, label %land.lhs.true

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

land.lhs.true:                                    ; preds = %entry
  %8 = ptrtoint ptr %buffer_pos to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %buffer_pos, align 4
  %header = getelementptr inbounds %struct.writer, ptr %wr, i32 0, i32 6
  %10 = ptrtoint ptr %header to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %header, align 4
  %dict_size = getelementptr inbounds %struct.lzma_header, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %dict_size to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %dict_size, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %13)
  %cmp = icmp eq i32 %9, %13
  br i1 %cmp, label %if.then, label %land.lhs.true.if.end13_crit_edge

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then:                                          ; preds = %land.lhs.true
  %14 = ptrtoint ptr %buffer_pos to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %buffer_pos, align 4
  %15 = ptrtoint ptr %dict_size to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load i32, ptr %dict_size, align 1
  %global_pos = getelementptr inbounds %struct.writer, ptr %wr, i32 0, i32 4
  %17 = ptrtoint ptr %global_pos to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %global_pos, align 4
  %add = add i32 %18, %16
  store i32 %add, ptr %global_pos, align 4
  %19 = ptrtoint ptr %wr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %wr, align 4
  %21 = load i32, ptr %dict_size, align 1
  %call = tail call i32 %7(ptr noundef %20, i32 noundef %21) #10
  %22 = ptrtoint ptr %header to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %header, align 4
  %dict_size10 = getelementptr inbounds %struct.lzma_header, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %dict_size10 to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %25 = load i32, ptr %dict_size10, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %25)
  %cmp11.not = icmp eq i32 %call, %25
  br i1 %cmp11.not, label %if.then.if.end13_crit_edge, label %if.then.return_crit_edge

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.then.if.end13_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.end13:                                         ; preds = %if.then.if.end13_crit_edge, %land.lhs.true.if.end13_crit_edge, %entry.if.end13_crit_edge
  br label %return

return:                                           ; preds = %if.end13, %if.then.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end13 ], [ -1, %if.then.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold inlinehint nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rc_bit_tree_decode(ptr nocapture noundef %rc, ptr nocapture noundef %p, i32 noundef %num_levels, ptr nocapture noundef %symbol) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %symbol to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %symbol, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_levels)
  %tobool.not5 = icmp eq i32 %num_levels, 0
  br i1 %tobool.not5, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %i.06 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %num_levels, %entry.while.body_crit_edge ]
  %dec = add i32 %i.06, -1
  %1 = ptrtoint ptr %symbol to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %symbol, align 4
  %add.ptr = getelementptr i16, ptr %p, i32 %2
  %call = tail call fastcc i32 @rc_get_bit(ptr noundef %rc, ptr noundef %add.ptr, ptr noundef %symbol) #12
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %shl.neg = shl nsw i32 -1, %num_levels
  %3 = ptrtoint ptr %symbol to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %symbol, align 4
  %sub = add i32 %4, %shl.neg
  store i32 %sub, ptr %symbol, align 4
  ret void
}

; Function Attrs: cold inlinehint nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rc_direct_bit(ptr nocapture noundef %rc) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %range.i = getelementptr inbounds %struct.rc, ptr %rc, i32 0, i32 6
  %0 = ptrtoint ptr %range.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %range.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %1)
  %cmp.i = icmp ult i32 %1, 16777216
  br i1 %cmp.i, label %if.then.i, label %entry.rc_normalize.exit_crit_edge

entry.rc_normalize.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %rc_normalize.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @rc_do_normalize(ptr noundef %rc) #13
  br label %rc_normalize.exit

rc_normalize.exit:                                ; preds = %if.then.i, %entry.rc_normalize.exit_crit_edge
  %2 = ptrtoint ptr %range.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %range.i, align 4
  %shr = lshr i32 %3, 1
  store i32 %shr, ptr %range.i, align 4
  %code = getelementptr inbounds %struct.rc, ptr %rc, i32 0, i32 5
  %4 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %code, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %shr)
  %cmp.not = icmp ult i32 %5, %shr
  br i1 %cmp.not, label %rc_normalize.exit.return_crit_edge, label %if.then

rc_normalize.exit.return_crit_edge:               ; preds = %rc_normalize.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.then:                                          ; preds = %rc_normalize.exit
  call void @__sanitizer_cov_trace_pc() #9
  %sub = sub i32 %5, %shr
  %6 = ptrtoint ptr %code to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %sub, ptr %code, align 4
  br label %return

return:                                           ; preds = %if.then, %rc_normalize.exit.return_crit_edge
  %retval.0 = phi i32 [ 1, %if.then ], [ 0, %rc_normalize.exit.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold inlinehint nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @copy_bytes(ptr nocapture noundef %wr, i32 noundef %rep0, i32 noundef %len) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %buffer_pos = getelementptr inbounds %struct.writer, ptr %wr, i32 0, i32 2
  %header = getelementptr inbounds %struct.writer, ptr %wr, i32 0, i32 6
  br label %do.body

do.body:                                          ; preds = %land.rhs.do.body_crit_edge, %entry
  %len.addr.0 = phi i32 [ %len, %entry ], [ %dec, %land.rhs.do.body_crit_edge ]
  %call.i = tail call fastcc zeroext i8 @peek_old_byte(ptr noundef %wr, i32 noundef %rep0) #13
  %call1.i = tail call fastcc i32 @write_byte(ptr noundef %wr, i8 noundef zeroext %call.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not = icmp eq i32 %call1.i, 0
  br i1 %tobool.not, label %if.end, label %do.body.return_crit_edge

do.body.return_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %do.body
  %dec = add i32 %len.addr.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp.not = icmp eq i32 %dec, 0
  br i1 %cmp.not, label %if.end.return_crit_edge, label %land.rhs

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

land.rhs:                                         ; preds = %if.end
  %0 = ptrtoint ptr %buffer_pos to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %buffer_pos, align 4
  %conv = zext i32 %1 to i64
  %2 = ptrtoint ptr %header to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %header, align 4
  %dst_size = getelementptr inbounds %struct.lzma_header, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %dst_size to i32
  call void @__asan_loadN_noabort(i32 %4, i32 8)
  %5 = load i64, ptr %dst_size, align 1
  %cmp1 = icmp ugt i64 %5, %conv
  br i1 %cmp1, label %land.rhs.do.body_crit_edge, label %land.rhs.return_crit_edge

land.rhs.return_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

land.rhs.do.body_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

return:                                           ; preds = %land.rhs.return_crit_edge, %if.end.return_crit_edge, %do.body.return_crit_edge
  %retval.0 = phi i32 [ -1, %do.body.return_crit_edge ], [ 0, %if.end.return_crit_edge ], [ %dec, %land.rhs.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

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

attributes #0 = { cold inlinehint nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold inlinehint nofree norecurse nosync nounwind null_pointer_is_valid optsize readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind uwtable(sync) }
attributes #9 = { nomerge }
attributes #10 = { nounwind }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { cold }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14}
!llvm.ident = !{!15}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../lib/decompress_unlzma.c", i32 565, i32 9}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../lib/decompress_unlzma.c", i32 587, i32 9}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../lib/decompress_unlzma.c", i32 638, i32 11}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../lib/decompress_unlzma.c", i32 95, i32 13}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 8, !"branch-target-enforcement", i32 0}
!11 = !{i32 8, !"sign-return-address", i32 0}
!12 = !{i32 8, !"sign-return-address-all", i32 0}
!13 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!16 = !{!"auto-init"}
