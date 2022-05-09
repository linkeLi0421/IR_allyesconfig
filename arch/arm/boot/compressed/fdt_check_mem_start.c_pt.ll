; ModuleID = '/llk/IR_all_yes/arch/arm/boot/compressed/fdt_check_mem_start.c_pt.bc'
source_filename = "../arch/arm/boot/compressed/fdt_check_mem_start.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

@.str = private unnamed_addr constant [15 x i8] c"#address-cells\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"#size-cells\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"/chosen\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"linux,usable-memory-range\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"device_type\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"memory\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"linux,usable-memory\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"/\00", align 1

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define i32 @fdt_check_mem_start(i32 noundef %mem_start, ptr noundef %fdt) local_unnamed_addr #0 align 64 {
entry:
  %len.i = alloca i32, align 4
  %len.i.i183 = alloca i32, align 4
  %len.i.i = alloca i32, align 4
  %len = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #4
  store i32 -1, ptr %len, align 4, !annotation !9
  %tobool.not = icmp eq ptr %fdt, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %0 = load i8, ptr %fdt, align 1
  %conv.i = zext i8 %0 to i32
  %shl.i = shl nuw i32 %conv.i, 24
  %arrayidx1.i = getelementptr i8, ptr %fdt, i32 1
  %1 = load i8, ptr %arrayidx1.i, align 1
  %conv2.i = zext i8 %1 to i32
  %shl3.i = shl nuw nsw i32 %conv2.i, 16
  %or.i = or i32 %shl3.i, %shl.i
  %arrayidx4.i = getelementptr i8, ptr %fdt, i32 2
  %2 = load i8, ptr %arrayidx4.i, align 1
  %conv5.i = zext i8 %2 to i32
  %shl6.i = shl nuw nsw i32 %conv5.i, 8
  %or7.i = or i32 %or.i, %shl6.i
  %arrayidx8.i = getelementptr i8, ptr %fdt, i32 3
  %3 = load i8, ptr %arrayidx8.i, align 1
  %conv9.i = zext i8 %3 to i32
  %or10.i = or i32 %or7.i, %conv9.i
  %cmp.not = icmp eq i32 %or10.i, -804389139
  br i1 %cmp.not, label %if.end2, label %cleanup

if.end2:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len.i.i) #4
  store i32 -1, ptr %len.i.i, align 4, !annotation !9
  %call.i.i = tail call i32 @fdt_path_offset(ptr noundef nonnull %fdt, ptr noundef nonnull @.str.8) #5
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %get_prop.exit.thread.i, label %if.end.i.i

if.end.i.i:                                       ; preds = %if.end2
  %call1.i.i = call ptr @fdt_getprop(ptr noundef nonnull %fdt, i32 noundef %call.i.i, ptr noundef nonnull @.str, ptr noundef nonnull %len.i.i) #5
  %tobool.not.i.i = icmp eq ptr %call1.i.i, null
  %4 = load i32, ptr %len.i.i, align 4
  %cmp2.i.i = icmp slt i32 %4, 4
  %or.cond.i.i = select i1 %tobool.not.i.i, i1 true, i1 %cmp2.i.i
  br i1 %or.cond.i.i, label %get_prop.exit.thread.i, label %if.end.i

get_prop.exit.thread.i:                           ; preds = %if.end.i.i, %if.end2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i.i) #4
  br label %get_cells.exit

if.end.i:                                         ; preds = %if.end.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i.i) #4
  %5 = load i8, ptr %call1.i.i, align 1
  %conv.i.i = zext i8 %5 to i32
  %shl.i.i = shl nuw i32 %conv.i.i, 24
  %arrayidx1.i.i = getelementptr i8, ptr %call1.i.i, i32 1
  %6 = load i8, ptr %arrayidx1.i.i, align 1
  %conv2.i.i = zext i8 %6 to i32
  %shl3.i.i = shl nuw nsw i32 %conv2.i.i, 16
  %or.i.i = or i32 %shl3.i.i, %shl.i.i
  %arrayidx4.i.i = getelementptr i8, ptr %call1.i.i, i32 2
  %7 = load i8, ptr %arrayidx4.i.i, align 1
  %conv5.i.i = zext i8 %7 to i32
  %shl6.i.i = shl nuw nsw i32 %conv5.i.i, 8
  %or7.i.i = or i32 %or.i.i, %shl6.i.i
  %arrayidx8.i.i = getelementptr i8, ptr %call1.i.i, i32 3
  %8 = load i8, ptr %arrayidx8.i.i, align 1
  %conv9.i.i = zext i8 %8 to i32
  %or10.i.i = or i32 %or7.i.i, %conv9.i.i
  br label %get_cells.exit

get_cells.exit:                                   ; preds = %if.end.i, %get_prop.exit.thread.i
  %retval.0.i = phi i32 [ %or10.i.i, %if.end.i ], [ 1, %get_prop.exit.thread.i ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len.i.i183) #4
  store i32 -1, ptr %len.i.i183, align 4, !annotation !9
  %call.i.i184 = call i32 @fdt_path_offset(ptr noundef nonnull %fdt, ptr noundef nonnull @.str.8) #5
  %cmp.i.i185 = icmp slt i32 %call.i.i184, 0
  br i1 %cmp.i.i185, label %get_prop.exit.thread.i191, label %if.end.i.i190

if.end.i.i190:                                    ; preds = %get_cells.exit
  %call1.i.i186 = call ptr @fdt_getprop(ptr noundef nonnull %fdt, i32 noundef %call.i.i184, ptr noundef nonnull @.str.1, ptr noundef nonnull %len.i.i183) #5
  %tobool.not.i.i187 = icmp eq ptr %call1.i.i186, null
  %9 = load i32, ptr %len.i.i183, align 4
  %cmp2.i.i188 = icmp slt i32 %9, 4
  %or.cond.i.i189 = select i1 %tobool.not.i.i187, i1 true, i1 %cmp2.i.i188
  br i1 %or.cond.i.i189, label %get_prop.exit.thread.i191, label %if.end.i205

get_prop.exit.thread.i191:                        ; preds = %if.end.i.i190, %get_cells.exit
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i.i183) #4
  br label %get_cells.exit207

if.end.i205:                                      ; preds = %if.end.i.i190
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i.i183) #4
  %10 = load i8, ptr %call1.i.i186, align 1
  %conv.i.i192 = zext i8 %10 to i32
  %shl.i.i193 = shl nuw i32 %conv.i.i192, 24
  %arrayidx1.i.i194 = getelementptr i8, ptr %call1.i.i186, i32 1
  %11 = load i8, ptr %arrayidx1.i.i194, align 1
  %conv2.i.i195 = zext i8 %11 to i32
  %shl3.i.i196 = shl nuw nsw i32 %conv2.i.i195, 16
  %or.i.i197 = or i32 %shl3.i.i196, %shl.i.i193
  %arrayidx4.i.i198 = getelementptr i8, ptr %call1.i.i186, i32 2
  %12 = load i8, ptr %arrayidx4.i.i198, align 1
  %conv5.i.i199 = zext i8 %12 to i32
  %shl6.i.i200 = shl nuw nsw i32 %conv5.i.i199, 8
  %or7.i.i201 = or i32 %or.i.i197, %shl6.i.i200
  %arrayidx8.i.i202 = getelementptr i8, ptr %call1.i.i186, i32 3
  %13 = load i8, ptr %arrayidx8.i.i202, align 1
  %conv9.i.i203 = zext i8 %13 to i32
  %or10.i.i204 = or i32 %or7.i.i201, %conv9.i.i203
  br label %get_cells.exit207

get_cells.exit207:                                ; preds = %if.end.i205, %get_prop.exit.thread.i191
  %retval.0.i206 = phi i32 [ %or10.i.i204, %if.end.i205 ], [ 1, %get_prop.exit.thread.i191 ]
  %cmp5 = icmp ugt i32 %retval.0.i, 2
  %cmp6 = icmp ugt i32 %retval.0.i206, 2
  %or.cond = select i1 %cmp5, i1 true, i1 %cmp6
  br i1 %or.cond, label %cleanup, label %if.end8

if.end8:                                          ; preds = %get_cells.exit207
  %add = add nuw nsw i32 %retval.0.i206, %retval.0.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len.i) #4
  store i32 -1, ptr %len.i, align 4, !annotation !9
  %call.i = call i32 @fdt_path_offset(ptr noundef nonnull %fdt, ptr noundef nonnull @.str.2) #5
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %get_prop.exit.thread, label %if.end.i208

if.end.i208:                                      ; preds = %if.end8
  %mul = shl nuw nsw i32 %add, 2
  %call1.i = call ptr @fdt_getprop(ptr noundef nonnull %fdt, i32 noundef %call.i, ptr noundef nonnull @.str.3, ptr noundef nonnull %len.i) #5
  %tobool.not.i = icmp eq ptr %call1.i, null
  %14 = load i32, ptr %len.i, align 4
  %cmp2.i = icmp slt i32 %14, %mul
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %cmp2.i
  br i1 %or.cond.i, label %get_prop.exit.thread, label %if.then11

get_prop.exit.thread:                             ; preds = %if.end.i208, %if.end8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i) #4
  br label %if.end25

if.then11:                                        ; preds = %if.end.i208
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i) #4
  %add.ptr = getelementptr i32, ptr %call1.i, i32 %retval.0.i
  %15 = load i8, ptr %add.ptr, align 1
  %conv.i.i210 = zext i8 %15 to i32
  %shl.i.i211 = shl nuw i32 %conv.i.i210, 24
  %arrayidx1.i.i212 = getelementptr i8, ptr %add.ptr, i32 1
  %16 = load i8, ptr %arrayidx1.i.i212, align 1
  %conv2.i.i213 = zext i8 %16 to i32
  %shl3.i.i214 = shl nuw nsw i32 %conv2.i.i213, 16
  %or.i.i215 = or i32 %shl3.i.i214, %shl.i.i211
  %arrayidx4.i.i216 = getelementptr i8, ptr %add.ptr, i32 2
  %17 = load i8, ptr %arrayidx4.i.i216, align 1
  %conv5.i.i217 = zext i8 %17 to i32
  %shl6.i.i218 = shl nuw nsw i32 %conv5.i.i217, 8
  %or7.i.i219 = or i32 %or.i.i215, %shl6.i.i218
  %arrayidx8.i.i220 = getelementptr i8, ptr %add.ptr, i32 3
  %18 = load i8, ptr %arrayidx8.i.i220, align 1
  %conv9.i.i221 = zext i8 %18 to i32
  %or10.i.i222 = or i32 %or7.i.i219, %conv9.i.i221
  %conv.i223 = zext i32 %or10.i.i222 to i64
  %cmp.i224 = icmp ugt i32 %retval.0.i206, 1
  br i1 %cmp.i224, label %if.then.i, label %get_val.exit

if.then.i:                                        ; preds = %if.then11
  %shl.i225 = shl nuw i64 %conv.i223, 32
  %add.ptr.i = getelementptr i32, ptr %add.ptr, i32 1
  %19 = load i8, ptr %add.ptr.i, align 1
  %conv.i6.i = zext i8 %19 to i32
  %shl.i7.i = shl nuw i32 %conv.i6.i, 24
  %arrayidx1.i8.i = getelementptr i8, ptr %add.ptr.i, i32 1
  %20 = load i8, ptr %arrayidx1.i8.i, align 1
  %conv2.i9.i = zext i8 %20 to i32
  %shl3.i10.i = shl nuw nsw i32 %conv2.i9.i, 16
  %or.i11.i = or i32 %shl3.i10.i, %shl.i7.i
  %arrayidx4.i12.i = getelementptr i8, ptr %add.ptr.i, i32 2
  %21 = load i8, ptr %arrayidx4.i12.i, align 1
  %conv5.i13.i = zext i8 %21 to i32
  %shl6.i14.i = shl nuw nsw i32 %conv5.i13.i, 8
  %or7.i15.i = or i32 %or.i11.i, %shl6.i14.i
  %arrayidx8.i16.i = getelementptr i8, ptr %add.ptr.i, i32 3
  %22 = load i8, ptr %arrayidx8.i16.i, align 1
  %conv9.i17.i = zext i8 %22 to i32
  %or10.i18.i = or i32 %or7.i15.i, %conv9.i17.i
  %conv3.i = zext i32 %or10.i18.i to i64
  %or.i226 = or i64 %shl.i225, %conv3.i
  br label %get_val.exit

get_val.exit:                                     ; preds = %if.then.i, %if.then11
  %r.0.i = phi i64 [ %or.i226, %if.then.i ], [ %conv.i223, %if.then11 ]
  %tobool13.not = icmp eq i64 %r.0.i, 0
  br i1 %tobool13.not, label %cleanup, label %if.end15

if.end15:                                         ; preds = %get_val.exit
  %cmp16 = icmp ugt i32 %retval.0.i, 1
  br i1 %cmp16, label %land.lhs.true, label %if.end20

land.lhs.true:                                    ; preds = %if.end15
  %23 = load i8, ptr %call1.i, align 1
  %conv.i228 = zext i8 %23 to i32
  %shl.i229 = shl nuw i32 %conv.i228, 24
  %arrayidx1.i230 = getelementptr i8, ptr %call1.i, i32 1
  %24 = load i8, ptr %arrayidx1.i230, align 1
  %conv2.i231 = zext i8 %24 to i32
  %shl3.i232 = shl nuw nsw i32 %conv2.i231, 16
  %or.i233 = or i32 %shl3.i232, %shl.i229
  %arrayidx4.i234 = getelementptr i8, ptr %call1.i, i32 2
  %25 = load i8, ptr %arrayidx4.i234, align 1
  %conv5.i235 = zext i8 %25 to i32
  %shl6.i236 = shl nuw nsw i32 %conv5.i235, 8
  %or7.i237 = or i32 %or.i233, %shl6.i236
  %arrayidx8.i238 = getelementptr i8, ptr %call1.i, i32 3
  %26 = load i8, ptr %arrayidx8.i238, align 1
  %conv9.i239 = zext i8 %26 to i32
  %or10.i240 = or i32 %or7.i237, %conv9.i239
  %tobool18.not = icmp eq i32 %or10.i240, 0
  br i1 %tobool18.not, label %if.end20, label %cleanup

if.end20:                                         ; preds = %land.lhs.true, %if.end15
  %add.ptr22 = getelementptr i32, ptr %add.ptr, i32 -1
  %27 = load i8, ptr %add.ptr22, align 1
  %conv.i241 = zext i8 %27 to i32
  %shl.i242 = shl nuw i32 %conv.i241, 24
  %arrayidx1.i243 = getelementptr i8, ptr %add.ptr22, i32 1
  %28 = load i8, ptr %arrayidx1.i243, align 1
  %conv2.i244 = zext i8 %28 to i32
  %shl3.i245 = shl nuw nsw i32 %conv2.i244, 16
  %or.i246 = or i32 %shl3.i245, %shl.i242
  %arrayidx4.i247 = getelementptr i8, ptr %add.ptr22, i32 2
  %29 = load i8, ptr %arrayidx4.i247, align 1
  %conv5.i248 = zext i8 %29 to i32
  %shl6.i249 = shl nuw nsw i32 %conv5.i248, 8
  %or7.i250 = or i32 %or.i246, %shl6.i249
  %arrayidx8.i251 = getelementptr i8, ptr %add.ptr22, i32 3
  %30 = load i8, ptr %arrayidx8.i251, align 1
  %conv9.i252 = zext i8 %30 to i32
  %or10.i253 = or i32 %or7.i250, %conv9.i252
  %conv = zext i32 %or10.i253 to i64
  %add24 = add i64 %r.0.i, %conv
  br label %if.end25

if.end25:                                         ; preds = %if.end20, %get_prop.exit.thread
  %tobool10.not318 = phi i1 [ false, %if.end20 ], [ true, %get_prop.exit.thread ]
  %usable_base.0 = phi i32 [ %or10.i253, %if.end20 ], [ -1, %get_prop.exit.thread ]
  %usable_end.0 = phi i64 [ %add24, %if.end20 ], [ -1, %get_prop.exit.thread ]
  %call26 = call i32 @fdt_next_node(ptr noundef nonnull %fdt, i32 noundef -1, ptr noundef null) #5
  %cmp27332 = icmp sgt i32 %call26, -1
  br i1 %cmp27332, label %for.body.lr.ph, label %cleanup

for.body.lr.ph:                                   ; preds = %if.end25
  %cmp.i268 = icmp ugt i32 %retval.0.i206, 1
  %cmp55 = icmp ugt i32 %retval.0.i, 1
  %conv85 = zext i32 %mem_start to i64
  br label %for.body

for.body:                                         ; preds = %for.inc97, %for.body.lr.ph
  %offset.0334 = phi i32 [ %call26, %for.body.lr.ph ], [ %call98, %for.inc97 ]
  %fdt_mem_start.0333 = phi i32 [ -1, %for.body.lr.ph ], [ %fdt_mem_start.3, %for.inc97 ]
  %call29 = call ptr @fdt_getprop(ptr noundef nonnull %fdt, i32 noundef %offset.0334, ptr noundef nonnull @.str.4, ptr noundef null) #5
  %tobool30.not = icmp eq ptr %call29, null
  br i1 %tobool30.not, label %for.inc97, label %lor.lhs.false31

lor.lhs.false31:                                  ; preds = %for.body
  %call32 = call i32 @strcmp(ptr noundef nonnull %call29, ptr noundef nonnull @.str.5) #5
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end35, label %for.inc97

if.end35:                                         ; preds = %lor.lhs.false31
  %call36 = call ptr @fdt_getprop(ptr noundef nonnull %fdt, i32 noundef %offset.0334, ptr noundef nonnull @.str.6, ptr noundef nonnull %len) #5
  %tobool37.not = icmp eq ptr %call36, null
  br i1 %tobool37.not, label %if.end40, label %if.end43

if.end40:                                         ; preds = %if.end35
  %call39 = call ptr @fdt_getprop(ptr noundef nonnull %fdt, i32 noundef %offset.0334, ptr noundef nonnull @.str.7, ptr noundef nonnull %len) #5
  %tobool41.not = icmp eq ptr %call39, null
  br i1 %tobool41.not, label %for.inc97, label %if.end43

if.end43:                                         ; preds = %if.end40, %if.end35
  %reg.0321 = phi ptr [ %call39, %if.end40 ], [ %call36, %if.end35 ]
  %31 = load i32, ptr %len, align 4
  %div180 = lshr i32 %31, 2
  %add.ptr44 = getelementptr i32, ptr %reg.0321, i32 %div180
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr44 to i32
  %add.ptr44.idx = ashr i32 %31, 2
  %cmp47.not327 = icmp ult i32 %add.ptr44.idx, %add
  br i1 %cmp47.not327, label %for.inc97, label %for.body49

for.body49:                                       ; preds = %for.inc, %if.end43
  %reg.1329 = phi ptr [ %add.ptr96, %for.inc ], [ %reg.0321, %if.end43 ]
  %fdt_mem_start.1328 = phi i32 [ %fdt_mem_start.2, %for.inc ], [ %fdt_mem_start.0333, %if.end43 ]
  %add.ptr50 = getelementptr i32, ptr %reg.1329, i32 %retval.0.i
  %32 = load i8, ptr %add.ptr50, align 1
  %conv.i.i254 = zext i8 %32 to i32
  %shl.i.i255 = shl nuw i32 %conv.i.i254, 24
  %arrayidx1.i.i256 = getelementptr i8, ptr %add.ptr50, i32 1
  %33 = load i8, ptr %arrayidx1.i.i256, align 1
  %conv2.i.i257 = zext i8 %33 to i32
  %shl3.i.i258 = shl nuw nsw i32 %conv2.i.i257, 16
  %or.i.i259 = or i32 %shl3.i.i258, %shl.i.i255
  %arrayidx4.i.i260 = getelementptr i8, ptr %add.ptr50, i32 2
  %34 = load i8, ptr %arrayidx4.i.i260, align 1
  %conv5.i.i261 = zext i8 %34 to i32
  %shl6.i.i262 = shl nuw nsw i32 %conv5.i.i261, 8
  %or7.i.i263 = or i32 %or.i.i259, %shl6.i.i262
  %arrayidx8.i.i264 = getelementptr i8, ptr %add.ptr50, i32 3
  %35 = load i8, ptr %arrayidx8.i.i264, align 1
  %conv9.i.i265 = zext i8 %35 to i32
  %or10.i.i266 = or i32 %or7.i.i263, %conv9.i.i265
  %conv.i267 = zext i32 %or10.i.i266 to i64
  br i1 %cmp.i268, label %if.then.i286, label %get_val.exit289

if.then.i286:                                     ; preds = %for.body49
  %shl.i269 = shl nuw i64 %conv.i267, 32
  %add.ptr.i270 = getelementptr i32, ptr %add.ptr50, i32 1
  %36 = load i8, ptr %add.ptr.i270, align 1
  %conv.i6.i271 = zext i8 %36 to i32
  %shl.i7.i272 = shl nuw i32 %conv.i6.i271, 24
  %arrayidx1.i8.i273 = getelementptr i8, ptr %add.ptr.i270, i32 1
  %37 = load i8, ptr %arrayidx1.i8.i273, align 1
  %conv2.i9.i274 = zext i8 %37 to i32
  %shl3.i10.i275 = shl nuw nsw i32 %conv2.i9.i274, 16
  %or.i11.i276 = or i32 %shl3.i10.i275, %shl.i7.i272
  %arrayidx4.i12.i277 = getelementptr i8, ptr %add.ptr.i270, i32 2
  %38 = load i8, ptr %arrayidx4.i12.i277, align 1
  %conv5.i13.i278 = zext i8 %38 to i32
  %shl6.i14.i279 = shl nuw nsw i32 %conv5.i13.i278, 8
  %or7.i15.i280 = or i32 %or.i11.i276, %shl6.i14.i279
  %arrayidx8.i16.i281 = getelementptr i8, ptr %add.ptr.i270, i32 3
  %39 = load i8, ptr %arrayidx8.i16.i281, align 1
  %conv9.i17.i282 = zext i8 %39 to i32
  %or10.i18.i283 = or i32 %or7.i15.i280, %conv9.i17.i282
  %conv3.i284 = zext i32 %or10.i18.i283 to i64
  %or.i285 = or i64 %shl.i269, %conv3.i284
  br label %get_val.exit289

get_val.exit289:                                  ; preds = %if.then.i286, %for.body49
  %r.0.i287 = phi i64 [ %or.i285, %if.then.i286 ], [ %conv.i267, %for.body49 ]
  %tobool52.not = icmp eq i64 %r.0.i287, 0
  br i1 %tobool52.not, label %for.inc, label %if.end54

if.end54:                                         ; preds = %get_val.exit289
  br i1 %cmp55, label %land.lhs.true57, label %if.end61

land.lhs.true57:                                  ; preds = %if.end54
  %40 = load i8, ptr %reg.1329, align 1
  %conv.i290 = zext i8 %40 to i32
  %shl.i291 = shl nuw i32 %conv.i290, 24
  %arrayidx1.i292 = getelementptr i8, ptr %reg.1329, i32 1
  %41 = load i8, ptr %arrayidx1.i292, align 1
  %conv2.i293 = zext i8 %41 to i32
  %shl3.i294 = shl nuw nsw i32 %conv2.i293, 16
  %or.i295 = or i32 %shl3.i294, %shl.i291
  %arrayidx4.i296 = getelementptr i8, ptr %reg.1329, i32 2
  %42 = load i8, ptr %arrayidx4.i296, align 1
  %conv5.i297 = zext i8 %42 to i32
  %shl6.i298 = shl nuw nsw i32 %conv5.i297, 8
  %or7.i299 = or i32 %or.i295, %shl6.i298
  %arrayidx8.i300 = getelementptr i8, ptr %reg.1329, i32 3
  %43 = load i8, ptr %arrayidx8.i300, align 1
  %conv9.i301 = zext i8 %43 to i32
  %or10.i302 = or i32 %or7.i299, %conv9.i301
  %tobool59.not = icmp eq i32 %or10.i302, 0
  br i1 %tobool59.not, label %if.end61, label %for.inc

if.end61:                                         ; preds = %land.lhs.true57, %if.end54
  %add.ptr63 = getelementptr i32, ptr %add.ptr50, i32 -1
  %44 = load i8, ptr %add.ptr63, align 1
  %conv.i303 = zext i8 %44 to i32
  %shl.i304 = shl nuw i32 %conv.i303, 24
  %arrayidx1.i305 = getelementptr i8, ptr %add.ptr63, i32 1
  %45 = load i8, ptr %arrayidx1.i305, align 1
  %conv2.i306 = zext i8 %45 to i32
  %shl3.i307 = shl nuw nsw i32 %conv2.i306, 16
  %or.i308 = or i32 %shl3.i307, %shl.i304
  %arrayidx4.i309 = getelementptr i8, ptr %add.ptr63, i32 2
  %46 = load i8, ptr %arrayidx4.i309, align 1
  %conv5.i310 = zext i8 %46 to i32
  %shl6.i311 = shl nuw nsw i32 %conv5.i310, 8
  %or7.i312 = or i32 %or.i308, %shl6.i311
  %arrayidx8.i313 = getelementptr i8, ptr %add.ptr63, i32 3
  %47 = load i8, ptr %arrayidx8.i313, align 1
  %conv9.i314 = zext i8 %47 to i32
  %or10.i315 = or i32 %or7.i312, %conv9.i314
  %conv65 = zext i32 %or10.i315 to i64
  %add66 = add i64 %r.0.i287, %conv65
  br i1 %tobool10.not318, label %if.else, label %if.then68

if.then68:                                        ; preds = %if.end61
  %48 = call i32 @llvm.umax.i32(i32 %or10.i315, i32 %usable_base.0)
  %49 = call i64 @llvm.umin.i64(i64 %add66, i64 %usable_end.0)
  %conv77 = zext i32 %48 to i64
  %cmp78.not = icmp ugt i64 %49, %conv77
  br i1 %cmp78.not, label %if.end90, label %for.inc

if.else:                                          ; preds = %if.end61
  %cmp82.not = icmp ule i32 %or10.i315, %mem_start
  %cmp86 = icmp ugt i64 %add66, %conv85
  %or.cond181 = select i1 %cmp82.not, i1 %cmp86, i1 false
  br i1 %or.cond181, label %cleanup, label %if.end90

if.end90:                                         ; preds = %if.else, %if.then68
  %base.1 = phi i32 [ %48, %if.then68 ], [ %or10.i315, %if.else ]
  %50 = call i32 @llvm.umin.i32(i32 %base.1, i32 %fdt_mem_start.1328)
  br label %for.inc

for.inc:                                          ; preds = %if.end90, %if.then68, %land.lhs.true57, %get_val.exit289
  %fdt_mem_start.2 = phi i32 [ %fdt_mem_start.1328, %land.lhs.true57 ], [ %fdt_mem_start.1328, %if.then68 ], [ %fdt_mem_start.1328, %get_val.exit289 ], [ %50, %if.end90 ]
  %add.ptr96 = getelementptr i32, ptr %reg.1329, i32 %add
  %sub.ptr.rhs.cast = ptrtoint ptr %add.ptr96 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i32 %sub.ptr.sub, 2
  %cmp47.not = icmp ult i32 %sub.ptr.div, %add
  br i1 %cmp47.not, label %for.inc97, label %for.body49

for.inc97:                                        ; preds = %for.inc, %if.end43, %if.end40, %lor.lhs.false31, %for.body
  %fdt_mem_start.3 = phi i32 [ %fdt_mem_start.0333, %lor.lhs.false31 ], [ %fdt_mem_start.0333, %if.end40 ], [ %fdt_mem_start.0333, %for.body ], [ %fdt_mem_start.0333, %if.end43 ], [ %fdt_mem_start.2, %for.inc ]
  %call98 = call i32 @fdt_next_node(ptr noundef nonnull %fdt, i32 noundef %offset.0334, ptr noundef null) #5
  %cmp27 = icmp sgt i32 %call98, -1
  br i1 %cmp27, label %for.body, label %for.end99

for.end99:                                        ; preds = %for.inc97
  %cmp100 = icmp eq i32 %fdt_mem_start.3, -1
  br i1 %cmp100, label %cleanup, label %if.end103

if.end103:                                        ; preds = %for.end99
  %sub = add i32 %fdt_mem_start.3, -1
  %or = or i32 %sub, 2097151
  %add104 = add i32 %or, 1
  br label %cleanup

cleanup:                                          ; preds = %if.end103, %for.end99, %if.else, %if.end25, %land.lhs.true, %get_val.exit, %get_cells.exit207, %if.end, %entry
  %retval.0 = phi i32 [ %add104, %if.end103 ], [ %mem_start, %entry ], [ %mem_start, %if.end ], [ %mem_start, %get_cells.exit207 ], [ %mem_start, %get_val.exit ], [ %mem_start, %land.lhs.true ], [ %mem_start, %for.end99 ], [ %mem_start, %if.end25 ], [ %mem_start, %if.else ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #4
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare i32 @fdt_next_node(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @fdt_getprop(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @strcmp(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare i32 @fdt_path_offset(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

attributes #0 = { nounwind null_pointer_is_valid uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"branch-target-enforcement", i32 0}
!3 = !{i32 8, !"sign-return-address", i32 0}
!4 = !{i32 8, !"sign-return-address-all", i32 0}
!5 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"PIC Level", i32 1}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!9 = !{!"auto-init"}
