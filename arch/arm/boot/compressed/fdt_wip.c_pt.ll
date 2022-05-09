; ModuleID = '/llk/IR_all_yes/arch/arm/boot/compressed/fdt_wip.c_pt.bc'
source_filename = "../arch/arm/boot/compressed/fdt_wip.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define i32 @fdt_setprop_inplace_namelen_partial(ptr noundef %fdt, i32 noundef %nodeoffset, ptr noundef %name, i32 noundef %namelen, i32 noundef %idx, ptr noundef %val, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  %proplen = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %proplen) #3
  store i32 -1, ptr %proplen, align 4, !annotation !9
  %call.i = call ptr @fdt_getprop_namelen(ptr noundef %fdt, i32 noundef %nodeoffset, ptr noundef %name, i32 noundef %namelen, ptr noundef nonnull %proplen) #4
  %tobool.not = icmp eq ptr %call.i, null
  %0 = load i32, ptr %proplen, align 4
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %add = add i32 %len, %idx
  %cmp = icmp ult i32 %0, %add
  br i1 %cmp, label %cleanup, label %if.end2

if.end2:                                          ; preds = %if.end
  %add.ptr = getelementptr i8, ptr %call.i, i32 %idx
  %call3 = call ptr @__memcpy(ptr noundef %add.ptr, ptr noundef %val, i32 noundef %len) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.end, %entry
  %retval.0 = phi i32 [ 0, %if.end2 ], [ -3, %if.end ], [ %0, %entry ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %proplen) #3
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare ptr @__memcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define i32 @fdt_setprop_inplace(ptr noundef %fdt, i32 noundef %nodeoffset, ptr noundef %name, ptr noundef %val, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  %proplen.i = alloca i32, align 4
  %proplen = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %proplen) #3
  store i32 -1, ptr %proplen, align 4, !annotation !9
  %call = call ptr @fdt_getprop(ptr noundef %fdt, i32 noundef %nodeoffset, ptr noundef %name, ptr noundef nonnull %proplen) #4
  %tobool.not = icmp eq ptr %call, null
  %0 = load i32, ptr %proplen, align 4
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %cmp.not = icmp eq i32 %0, %len
  br i1 %cmp.not, label %if.end2, label %cleanup

if.end2:                                          ; preds = %if.end
  %call3 = call i32 @strlen(ptr noundef %name) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %proplen.i) #3
  store i32 -1, ptr %proplen.i, align 4, !annotation !9
  %call.i.i = call ptr @fdt_getprop_namelen(ptr noundef %fdt, i32 noundef %nodeoffset, ptr noundef %name, i32 noundef %call3, ptr noundef nonnull %proplen.i) #4
  %tobool.not.i = icmp eq ptr %call.i.i, null
  %1 = load i32, ptr %proplen.i, align 4
  br i1 %tobool.not.i, label %fdt_setprop_inplace_namelen_partial.exit, label %if.end.i

if.end.i:                                         ; preds = %if.end2
  %cmp.i = icmp ult i32 %1, %len
  br i1 %cmp.i, label %fdt_setprop_inplace_namelen_partial.exit, label %if.end2.i

if.end2.i:                                        ; preds = %if.end.i
  %call3.i = call ptr @__memcpy(ptr noundef nonnull %call.i.i, ptr noundef %val, i32 noundef %len) #4
  br label %fdt_setprop_inplace_namelen_partial.exit

fdt_setprop_inplace_namelen_partial.exit:         ; preds = %if.end2.i, %if.end.i, %if.end2
  %retval.0.i = phi i32 [ 0, %if.end2.i ], [ -3, %if.end.i ], [ %1, %if.end2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %proplen.i) #3
  br label %cleanup

cleanup:                                          ; preds = %fdt_setprop_inplace_namelen_partial.exit, %if.end, %entry
  %retval.0 = phi i32 [ %retval.0.i, %fdt_setprop_inplace_namelen_partial.exit ], [ -3, %if.end ], [ %0, %entry ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %proplen) #3
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare ptr @fdt_getprop(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @strlen(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define i32 @fdt_nop_property(ptr noundef %fdt, i32 noundef %nodeoffset, ptr noundef %name) local_unnamed_addr #0 align 64 {
entry:
  %len = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #3
  store i32 -1, ptr %len, align 4, !annotation !9
  %call.i = call ptr @fdt_get_property(ptr noundef %fdt, i32 noundef %nodeoffset, ptr noundef %name, ptr noundef nonnull %len) #4
  %tobool.not = icmp eq ptr %call.i, null
  %0 = load i32, ptr %len, align 4
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %add = add i32 %0, 12
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 %add
  %cmp4.i = icmp ugt ptr %add.ptr.i, %call.i
  br i1 %cmp4.i, label %for.body.i, label %cleanup

for.body.i:                                       ; preds = %for.body.i, %if.end
  %p.05.i = phi ptr [ %incdec.ptr.i, %for.body.i ], [ %call.i, %if.end ]
  store i32 4, ptr %p.05.i, align 4
  %incdec.ptr.i = getelementptr i32, ptr %p.05.i, i32 1
  %cmp.i = icmp ult ptr %incdec.ptr.i, %add.ptr.i
  br i1 %cmp.i, label %for.body.i, label %cleanup

cleanup:                                          ; preds = %for.body.i, %if.end, %entry
  %retval.0 = phi i32 [ 0, %if.end ], [ %0, %entry ], [ 0, %for.body.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #3
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define i32 @fdt_node_end_offset_(ptr noundef %fdt, i32 noundef %offset) local_unnamed_addr #0 align 64 {
entry:
  %depth = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %depth) #3
  store i32 0, ptr %depth, align 4
  %cmp4 = icmp sgt i32 %offset, -1
  br i1 %cmp4, label %while.body, label %while.end

while.body:                                       ; preds = %while.body, %entry
  %offset.addr.06 = phi i32 [ %call, %while.body ], [ %offset, %entry ]
  %call = call i32 @fdt_next_node(ptr noundef %fdt, i32 noundef %offset.addr.06, ptr noundef nonnull %depth) #4
  %cmp = icmp sgt i32 %call, -1
  %0 = load i32, ptr %depth, align 4
  %cmp1 = icmp sgt i32 %0, -1
  %1 = select i1 %cmp, i1 %cmp1, i1 false
  br i1 %1, label %while.body, label %while.end

while.end:                                        ; preds = %while.body, %entry
  %offset.addr.0.lcssa = phi i32 [ %offset, %entry ], [ %call, %while.body ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %depth) #3
  ret i32 %offset.addr.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare i32 @fdt_next_node(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define i32 @fdt_nop_node(ptr noundef %fdt, i32 noundef %nodeoffset) local_unnamed_addr #0 align 64 {
entry:
  %depth.i = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %depth.i) #3
  store i32 0, ptr %depth.i, align 4
  %cmp4.i = icmp sgt i32 %nodeoffset, -1
  br i1 %cmp4.i, label %while.body.i, label %fdt_node_end_offset_.exit.thread

fdt_node_end_offset_.exit.thread:                 ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %depth.i) #3
  br label %cleanup

while.body.i:                                     ; preds = %while.body.i, %entry
  %offset.addr.06.i = phi i32 [ %call.i, %while.body.i ], [ %nodeoffset, %entry ]
  %call.i = call i32 @fdt_next_node(ptr noundef %fdt, i32 noundef %offset.addr.06.i, ptr noundef nonnull %depth.i) #4
  %cmp.i = icmp sgt i32 %call.i, -1
  %0 = load i32, ptr %depth.i, align 4
  %cmp1.i = icmp sgt i32 %0, -1
  %1 = select i1 %cmp.i, i1 %cmp1.i, i1 false
  br i1 %1, label %while.body.i, label %fdt_node_end_offset_.exit

fdt_node_end_offset_.exit:                        ; preds = %while.body.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %depth.i) #3
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %fdt_node_end_offset_.exit
  %call.i7 = call ptr @fdt_offset_ptr(ptr noundef %fdt, i32 noundef %nodeoffset, i32 noundef 0) #4
  %sub = sub i32 %call.i, %nodeoffset
  %add.ptr.i = getelementptr i8, ptr %call.i7, i32 %sub
  %cmp4.i8 = icmp ugt ptr %add.ptr.i, %call.i7
  br i1 %cmp4.i8, label %for.body.i, label %cleanup

for.body.i:                                       ; preds = %for.body.i, %if.end
  %p.05.i = phi ptr [ %incdec.ptr.i, %for.body.i ], [ %call.i7, %if.end ]
  store i32 4, ptr %p.05.i, align 4
  %incdec.ptr.i = getelementptr i32, ptr %p.05.i, i32 1
  %cmp.i9 = icmp ult ptr %incdec.ptr.i, %add.ptr.i
  br i1 %cmp.i9, label %for.body.i, label %cleanup

cleanup:                                          ; preds = %for.body.i, %if.end, %fdt_node_end_offset_.exit, %fdt_node_end_offset_.exit.thread
  %retval.0 = phi i32 [ %call.i, %fdt_node_end_offset_.exit ], [ %nodeoffset, %fdt_node_end_offset_.exit.thread ], [ 0, %if.end ], [ 0, %for.body.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare ptr @fdt_getprop_namelen(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @fdt_get_property(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @fdt_offset_ptr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nobuiltin nounwind "no-builtins" }

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
