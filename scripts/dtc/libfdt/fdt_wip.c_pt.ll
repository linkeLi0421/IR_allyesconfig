; ModuleID = '/llk/IR_all_yes/scripts/dtc/libfdt/fdt_wip.c_pt.bc'
source_filename = "../scripts/dtc/libfdt/fdt_wip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @fdt_setprop_inplace_namelen_partial(ptr noundef %fdt, i32 noundef %nodeoffset, ptr noundef %name, i32 noundef %namelen, i32 noundef %idx, ptr nocapture noundef readonly %val, i32 noundef %len) local_unnamed_addr #0 {
entry:
  %proplen = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %proplen) #6
  %call.i = call ptr @fdt_getprop_namelen(ptr noundef %fdt, i32 noundef %nodeoffset, ptr noundef %name, i32 noundef %namelen, ptr noundef nonnull %proplen) #6
  %tobool.not = icmp eq ptr %call.i, null
  %0 = load i32, ptr %proplen, align 4, !tbaa !5
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %add = add i32 %len, %idx
  %cmp = icmp ult i32 %0, %add
  br i1 %cmp, label %cleanup, label %if.end2

if.end2:                                          ; preds = %if.end
  %idx.ext = zext i32 %idx to i64
  %add.ptr = getelementptr inbounds i8, ptr %call.i, i64 %idx.ext
  %conv = sext i32 %len to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr, ptr align 1 %val, i64 %conv, i1 false)
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.end, %entry
  %retval.0 = phi i32 [ 0, %if.end2 ], [ -3, %if.end ], [ %0, %entry ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %proplen) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @fdt_setprop_inplace(ptr noundef %fdt, i32 noundef %nodeoffset, ptr noundef %name, ptr nocapture noundef readonly %val, i32 noundef %len) local_unnamed_addr #0 {
entry:
  %proplen.i = alloca i32, align 4
  %proplen = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %proplen) #6
  %call = call ptr @fdt_getprop(ptr noundef %fdt, i32 noundef %nodeoffset, ptr noundef %name, ptr noundef nonnull %proplen) #6
  %tobool.not = icmp eq ptr %call, null
  %0 = load i32, ptr %proplen, align 4, !tbaa !5
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %cmp.not = icmp eq i32 %0, %len
  br i1 %cmp.not, label %if.end2, label %cleanup

if.end2:                                          ; preds = %if.end
  %call3 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %name) #7
  %conv = trunc i64 %call3 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %proplen.i) #6
  %call.i.i = call ptr @fdt_getprop_namelen(ptr noundef %fdt, i32 noundef %nodeoffset, ptr noundef %name, i32 noundef %conv, ptr noundef nonnull %proplen.i) #6
  %tobool.not.i = icmp eq ptr %call.i.i, null
  %1 = load i32, ptr %proplen.i, align 4, !tbaa !5
  br i1 %tobool.not.i, label %fdt_setprop_inplace_namelen_partial.exit, label %if.end.i

if.end.i:                                         ; preds = %if.end2
  %cmp.i = icmp ult i32 %1, %len
  br i1 %cmp.i, label %fdt_setprop_inplace_namelen_partial.exit, label %if.end2.i

if.end2.i:                                        ; preds = %if.end.i
  %conv.i = sext i32 %len to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %call.i.i, ptr align 1 %val, i64 %conv.i, i1 false) #6
  br label %fdt_setprop_inplace_namelen_partial.exit

fdt_setprop_inplace_namelen_partial.exit:         ; preds = %if.end2.i, %if.end.i, %if.end2
  %retval.0.i = phi i32 [ 0, %if.end2.i ], [ -3, %if.end.i ], [ %1, %if.end2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %proplen.i) #6
  br label %cleanup

cleanup:                                          ; preds = %fdt_setprop_inplace_namelen_partial.exit, %if.end, %entry
  %retval.0 = phi i32 [ %retval.0.i, %fdt_setprop_inplace_namelen_partial.exit ], [ -3, %if.end ], [ %0, %entry ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %proplen) #6
  ret i32 %retval.0
}

declare ptr @fdt_getprop(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @fdt_nop_property(ptr noundef %fdt, i32 noundef %nodeoffset, ptr noundef %name) local_unnamed_addr #0 {
entry:
  %len = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #6
  %call.i = call ptr @fdt_get_property(ptr noundef %fdt, i32 noundef %nodeoffset, ptr noundef %name, ptr noundef nonnull %len) #6
  %call.i4 = ptrtoint ptr %call.i to i64
  %tobool.not = icmp eq ptr %call.i, null
  %0 = load i32, ptr %len, align 4, !tbaa !5
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %add = add i32 %0, 12
  %idx.ext.i = sext i32 %add to i64
  %add.ptr.i = getelementptr inbounds i8, ptr %call.i, i64 %idx.ext.i
  %cmp4.i = icmp sgt i32 %add, 0
  br i1 %cmp4.i, label %for.body.i.preheader, label %cleanup

for.body.i.preheader:                             ; preds = %if.end
  %1 = add i64 %call.i4, %idx.ext.i
  %2 = add i64 %call.i4, 4
  %umax = call i64 @llvm.umax.i64(i64 %1, i64 %2)
  %3 = xor i64 %call.i4, -1
  %4 = add i64 %umax, %3
  %5 = lshr i64 %4, 2
  %6 = add nuw nsw i64 %5, 1
  %min.iters.check = icmp ult i64 %4, 28
  br i1 %min.iters.check, label %for.body.i.preheader6, label %vector.ph

vector.ph:                                        ; preds = %for.body.i.preheader
  %n.vec = and i64 %6, 9223372036854775800
  %7 = shl i64 %n.vec, 2
  %ind.end = getelementptr i8, ptr %call.i, i64 %7
  %8 = add nsw i64 %n.vec, -8
  %9 = lshr exact i64 %8, 3
  %10 = add nuw nsw i64 %9, 1
  %xtraiter = and i64 %10, 3
  %11 = icmp ult i64 %8, 24
  br i1 %11, label %middle.block.unr-lcssa, label %vector.ph.new

vector.ph.new:                                    ; preds = %vector.ph
  %unroll_iter = and i64 %10, 4611686018427387900
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph.new
  %index = phi i64 [ 0, %vector.ph.new ], [ %index.next.3, %vector.body ]
  %niter = phi i64 [ 0, %vector.ph.new ], [ %niter.next.3, %vector.body ]
  %12 = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %call.i, i64 %12
  store <4 x i32> <i32 67108864, i32 67108864, i32 67108864, i32 67108864>, ptr %next.gep, align 4, !tbaa !5
  %13 = getelementptr i32, ptr %next.gep, i64 4
  store <4 x i32> <i32 67108864, i32 67108864, i32 67108864, i32 67108864>, ptr %13, align 4, !tbaa !5
  %index.next = shl i64 %index, 2
  %14 = or i64 %index.next, 32
  %next.gep.1 = getelementptr i8, ptr %call.i, i64 %14
  store <4 x i32> <i32 67108864, i32 67108864, i32 67108864, i32 67108864>, ptr %next.gep.1, align 4, !tbaa !5
  %15 = getelementptr i32, ptr %next.gep.1, i64 4
  store <4 x i32> <i32 67108864, i32 67108864, i32 67108864, i32 67108864>, ptr %15, align 4, !tbaa !5
  %index.next.1 = shl i64 %index, 2
  %16 = or i64 %index.next.1, 64
  %next.gep.2 = getelementptr i8, ptr %call.i, i64 %16
  store <4 x i32> <i32 67108864, i32 67108864, i32 67108864, i32 67108864>, ptr %next.gep.2, align 4, !tbaa !5
  %17 = getelementptr i32, ptr %next.gep.2, i64 4
  store <4 x i32> <i32 67108864, i32 67108864, i32 67108864, i32 67108864>, ptr %17, align 4, !tbaa !5
  %index.next.2 = shl i64 %index, 2
  %18 = or i64 %index.next.2, 96
  %next.gep.3 = getelementptr i8, ptr %call.i, i64 %18
  store <4 x i32> <i32 67108864, i32 67108864, i32 67108864, i32 67108864>, ptr %next.gep.3, align 4, !tbaa !5
  %19 = getelementptr i32, ptr %next.gep.3, i64 4
  store <4 x i32> <i32 67108864, i32 67108864, i32 67108864, i32 67108864>, ptr %19, align 4, !tbaa !5
  %index.next.3 = add nuw i64 %index, 32
  %niter.next.3 = add i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %middle.block.unr-lcssa, label %vector.body, !llvm.loop !9

middle.block.unr-lcssa:                           ; preds = %vector.body, %vector.ph
  %index.unr = phi i64 [ 0, %vector.ph ], [ %index.next.3, %vector.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %middle.block, label %vector.body.epil

vector.body.epil:                                 ; preds = %vector.body.epil, %middle.block.unr-lcssa
  %index.epil = phi i64 [ %index.next.epil, %vector.body.epil ], [ %index.unr, %middle.block.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %vector.body.epil ], [ 0, %middle.block.unr-lcssa ]
  %20 = shl i64 %index.epil, 2
  %next.gep.epil = getelementptr i8, ptr %call.i, i64 %20
  store <4 x i32> <i32 67108864, i32 67108864, i32 67108864, i32 67108864>, ptr %next.gep.epil, align 4, !tbaa !5
  %21 = getelementptr i32, ptr %next.gep.epil, i64 4
  store <4 x i32> <i32 67108864, i32 67108864, i32 67108864, i32 67108864>, ptr %21, align 4, !tbaa !5
  %index.next.epil = add nuw i64 %index.epil, 8
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %middle.block, label %vector.body.epil, !llvm.loop !11

middle.block:                                     ; preds = %vector.body.epil, %middle.block.unr-lcssa
  %cmp.n = icmp eq i64 %6, %n.vec
  br i1 %cmp.n, label %cleanup, label %for.body.i.preheader6

for.body.i.preheader6:                            ; preds = %middle.block, %for.body.i.preheader
  %p.05.i.ph = phi ptr [ %call.i, %for.body.i.preheader ], [ %ind.end, %middle.block ]
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %for.body.i.preheader6
  %p.05.i = phi ptr [ %incdec.ptr.i, %for.body.i ], [ %p.05.i.ph, %for.body.i.preheader6 ]
  store i32 67108864, ptr %p.05.i, align 4, !tbaa !5
  %incdec.ptr.i = getelementptr inbounds i32, ptr %p.05.i, i64 1
  %cmp.i = icmp ult ptr %incdec.ptr.i, %add.ptr.i
  br i1 %cmp.i, label %for.body.i, label %cleanup, !llvm.loop !13

cleanup:                                          ; preds = %for.body.i, %middle.block, %if.end, %entry
  %retval.0 = phi i32 [ 0, %if.end ], [ %0, %entry ], [ 0, %middle.block ], [ 0, %for.body.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @fdt_node_end_offset_(ptr noundef %fdt, i32 noundef %offset) local_unnamed_addr #0 {
entry:
  %depth = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %depth) #6
  store i32 0, ptr %depth, align 4, !tbaa !5
  %cmp4 = icmp sgt i32 %offset, -1
  br i1 %cmp4, label %while.body, label %while.end

while.body:                                       ; preds = %while.body, %entry
  %offset.addr.06 = phi i32 [ %call, %while.body ], [ %offset, %entry ]
  %call = call i32 @fdt_next_node(ptr noundef %fdt, i32 noundef %offset.addr.06, ptr noundef nonnull %depth) #6
  %cmp = icmp sgt i32 %call, -1
  %0 = load i32, ptr %depth, align 4
  %cmp1 = icmp sgt i32 %0, -1
  %1 = select i1 %cmp, i1 %cmp1, i1 false
  br i1 %1, label %while.body, label %while.end

while.end:                                        ; preds = %while.body, %entry
  %offset.addr.0.lcssa = phi i32 [ %offset, %entry ], [ %call, %while.body ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %depth) #6
  ret i32 %offset.addr.0.lcssa
}

declare i32 @fdt_next_node(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @fdt_nop_node(ptr noundef %fdt, i32 noundef %nodeoffset) local_unnamed_addr #0 {
entry:
  %depth.i = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %depth.i) #6
  store i32 0, ptr %depth.i, align 4, !tbaa !5
  %cmp4.i = icmp sgt i32 %nodeoffset, -1
  br i1 %cmp4.i, label %while.body.i, label %fdt_node_end_offset_.exit.thread

fdt_node_end_offset_.exit.thread:                 ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %depth.i) #6
  br label %cleanup

while.body.i:                                     ; preds = %while.body.i, %entry
  %offset.addr.06.i = phi i32 [ %call.i, %while.body.i ], [ %nodeoffset, %entry ]
  %call.i = call i32 @fdt_next_node(ptr noundef %fdt, i32 noundef %offset.addr.06.i, ptr noundef nonnull %depth.i) #6
  %cmp.i = icmp sgt i32 %call.i, -1
  %0 = load i32, ptr %depth.i, align 4
  %cmp1.i = icmp sgt i32 %0, -1
  %1 = select i1 %cmp.i, i1 %cmp1.i, i1 false
  br i1 %1, label %while.body.i, label %fdt_node_end_offset_.exit

fdt_node_end_offset_.exit:                        ; preds = %while.body.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %depth.i) #6
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %fdt_node_end_offset_.exit
  %call.i7 = call ptr @fdt_offset_ptr(ptr noundef %fdt, i32 noundef %nodeoffset, i32 noundef 0) #6
  %sub = sub nsw i32 %call.i, %nodeoffset
  %idx.ext.i = sext i32 %sub to i64
  %add.ptr.i = getelementptr inbounds i8, ptr %call.i7, i64 %idx.ext.i
  %cmp4.i8 = icmp sgt i32 %sub, 0
  br i1 %cmp4.i8, label %for.body.i.preheader, label %cleanup

for.body.i.preheader:                             ; preds = %if.end
  %call.i712 = ptrtoint ptr %call.i7 to i64
  %2 = sext i32 %call.i to i64
  %3 = add i64 %call.i712, %2
  %4 = sext i32 %nodeoffset to i64
  %5 = sub i64 %3, %4
  %6 = add i64 %call.i712, 4
  %umax = call i64 @llvm.umax.i64(i64 %5, i64 %6)
  %7 = xor i64 %call.i712, -1
  %8 = add i64 %umax, %7
  %9 = lshr i64 %8, 2
  %10 = add nuw nsw i64 %9, 1
  %min.iters.check = icmp ult i64 %8, 28
  br i1 %min.iters.check, label %for.body.i.preheader14, label %vector.ph

vector.ph:                                        ; preds = %for.body.i.preheader
  %n.vec = and i64 %10, 9223372036854775800
  %11 = shl i64 %n.vec, 2
  %ind.end = getelementptr i8, ptr %call.i7, i64 %11
  %12 = add nsw i64 %n.vec, -8
  %13 = lshr exact i64 %12, 3
  %14 = add nuw nsw i64 %13, 1
  %xtraiter = and i64 %14, 3
  %15 = icmp ult i64 %12, 24
  br i1 %15, label %middle.block.unr-lcssa, label %vector.ph.new

vector.ph.new:                                    ; preds = %vector.ph
  %unroll_iter = and i64 %14, 4611686018427387900
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph.new
  %index = phi i64 [ 0, %vector.ph.new ], [ %index.next.3, %vector.body ]
  %niter = phi i64 [ 0, %vector.ph.new ], [ %niter.next.3, %vector.body ]
  %16 = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %call.i7, i64 %16
  store <4 x i32> <i32 67108864, i32 67108864, i32 67108864, i32 67108864>, ptr %next.gep, align 4, !tbaa !5
  %17 = getelementptr i32, ptr %next.gep, i64 4
  store <4 x i32> <i32 67108864, i32 67108864, i32 67108864, i32 67108864>, ptr %17, align 4, !tbaa !5
  %index.next = shl i64 %index, 2
  %18 = or i64 %index.next, 32
  %next.gep.1 = getelementptr i8, ptr %call.i7, i64 %18
  store <4 x i32> <i32 67108864, i32 67108864, i32 67108864, i32 67108864>, ptr %next.gep.1, align 4, !tbaa !5
  %19 = getelementptr i32, ptr %next.gep.1, i64 4
  store <4 x i32> <i32 67108864, i32 67108864, i32 67108864, i32 67108864>, ptr %19, align 4, !tbaa !5
  %index.next.1 = shl i64 %index, 2
  %20 = or i64 %index.next.1, 64
  %next.gep.2 = getelementptr i8, ptr %call.i7, i64 %20
  store <4 x i32> <i32 67108864, i32 67108864, i32 67108864, i32 67108864>, ptr %next.gep.2, align 4, !tbaa !5
  %21 = getelementptr i32, ptr %next.gep.2, i64 4
  store <4 x i32> <i32 67108864, i32 67108864, i32 67108864, i32 67108864>, ptr %21, align 4, !tbaa !5
  %index.next.2 = shl i64 %index, 2
  %22 = or i64 %index.next.2, 96
  %next.gep.3 = getelementptr i8, ptr %call.i7, i64 %22
  store <4 x i32> <i32 67108864, i32 67108864, i32 67108864, i32 67108864>, ptr %next.gep.3, align 4, !tbaa !5
  %23 = getelementptr i32, ptr %next.gep.3, i64 4
  store <4 x i32> <i32 67108864, i32 67108864, i32 67108864, i32 67108864>, ptr %23, align 4, !tbaa !5
  %index.next.3 = add nuw i64 %index, 32
  %niter.next.3 = add i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %middle.block.unr-lcssa, label %vector.body, !llvm.loop !15

middle.block.unr-lcssa:                           ; preds = %vector.body, %vector.ph
  %index.unr = phi i64 [ 0, %vector.ph ], [ %index.next.3, %vector.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %middle.block, label %vector.body.epil

vector.body.epil:                                 ; preds = %vector.body.epil, %middle.block.unr-lcssa
  %index.epil = phi i64 [ %index.next.epil, %vector.body.epil ], [ %index.unr, %middle.block.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %vector.body.epil ], [ 0, %middle.block.unr-lcssa ]
  %24 = shl i64 %index.epil, 2
  %next.gep.epil = getelementptr i8, ptr %call.i7, i64 %24
  store <4 x i32> <i32 67108864, i32 67108864, i32 67108864, i32 67108864>, ptr %next.gep.epil, align 4, !tbaa !5
  %25 = getelementptr i32, ptr %next.gep.epil, i64 4
  store <4 x i32> <i32 67108864, i32 67108864, i32 67108864, i32 67108864>, ptr %25, align 4, !tbaa !5
  %index.next.epil = add nuw i64 %index.epil, 8
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %middle.block, label %vector.body.epil, !llvm.loop !16

middle.block:                                     ; preds = %vector.body.epil, %middle.block.unr-lcssa
  %cmp.n = icmp eq i64 %10, %n.vec
  br i1 %cmp.n, label %cleanup, label %for.body.i.preheader14

for.body.i.preheader14:                           ; preds = %middle.block, %for.body.i.preheader
  %p.05.i.ph = phi ptr [ %call.i7, %for.body.i.preheader ], [ %ind.end, %middle.block ]
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %for.body.i.preheader14
  %p.05.i = phi ptr [ %incdec.ptr.i, %for.body.i ], [ %p.05.i.ph, %for.body.i.preheader14 ]
  store i32 67108864, ptr %p.05.i, align 4, !tbaa !5
  %incdec.ptr.i = getelementptr inbounds i32, ptr %p.05.i, i64 1
  %cmp.i9 = icmp ult ptr %incdec.ptr.i, %add.ptr.i
  br i1 %cmp.i9, label %for.body.i, label %cleanup, !llvm.loop !17

cleanup:                                          ; preds = %for.body.i, %middle.block, %if.end, %fdt_node_end_offset_.exit, %fdt_node_end_offset_.exit.thread
  %retval.0 = phi i32 [ %call.i, %fdt_node_end_offset_.exit ], [ %nodeoffset, %fdt_node_end_offset_.exit.thread ], [ 0, %if.end ], [ 0, %middle.block ], [ 0, %for.body.i ]
  ret i32 %retval.0
}

declare ptr @fdt_getprop_namelen(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @fdt_get_property(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @fdt_offset_ptr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #5

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly willreturn }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.isvectorized", i32 1}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = distinct !{!13, !14, !10}
!14 = !{!"llvm.loop.unroll.runtime.disable"}
!15 = distinct !{!15, !10}
!16 = distinct !{!16, !12}
!17 = distinct !{!17, !14, !10}
