; ModuleID = '/llk/IR_all_yes/scripts/dtc/libfdt/fdt_empty_tree.c_pt.bc'
source_filename = "../scripts/dtc/libfdt/fdt_empty_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @fdt_create_empty_tree(ptr noundef %buf, i32 noundef %bufsize) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @fdt_create(ptr noundef %buf, i32 noundef %bufsize) #2
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @fdt_finish_reservemap(ptr noundef %buf) #2
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @fdt_begin_node(ptr noundef %buf, ptr noundef nonnull @.str) #2
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %cleanup

if.end8:                                          ; preds = %if.end4
  %call9 = tail call i32 @fdt_end_node(ptr noundef %buf) #2
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %cleanup

if.end12:                                         ; preds = %if.end8
  %call13 = tail call i32 @fdt_finish(ptr noundef %buf) #2
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %cleanup

if.end16:                                         ; preds = %if.end12
  %call17 = tail call i32 @fdt_open_into(ptr noundef %buf, ptr noundef %buf, i32 noundef %bufsize) #2
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end12, %if.end8, %if.end4, %if.end, %entry
  %retval.0 = phi i32 [ %call17, %if.end16 ], [ %call, %entry ], [ %call1, %if.end ], [ %call5, %if.end4 ], [ %call9, %if.end8 ], [ %call13, %if.end12 ]
  ret i32 %retval.0
}

declare i32 @fdt_create(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @fdt_finish_reservemap(ptr noundef) local_unnamed_addr #1

declare i32 @fdt_begin_node(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @fdt_end_node(ptr noundef) local_unnamed_addr #1

declare i32 @fdt_finish(ptr noundef) local_unnamed_addr #1

declare i32 @fdt_open_into(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
