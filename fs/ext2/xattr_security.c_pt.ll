; ModuleID = '/llk/IR_all_yes/fs/ext2/xattr_security.c_pt.bc'
source_filename = "../fs/ext2/xattr_security.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xattr_handler = type { ptr, ptr, i32, ptr, ptr, ptr }
%struct.xattr = type { ptr, ptr, i32 }

@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"security.\00", [22 x i8] zeroinitializer }, align 32
@ext2_xattr_security_handler = dso_local constant { %struct.xattr_handler, [40 x i8] } { %struct.xattr_handler { ptr null, ptr @.str, i32 0, ptr null, ptr @ext2_xattr_security_get, ptr @ext2_xattr_security_set }, [40 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 56, i32 12 }
@___asan_gen_.4 = private unnamed_addr constant [28 x i8] c"ext2_xattr_security_handler\00", align 1
@___asan_gen_.5 = private constant [28 x i8] c"../fs/ext2/xattr_security.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 55, i32 28 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @.str, ptr @ext2_xattr_security_handler], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ext2_xattr_security_handler to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ext2_init_security(ptr noundef %inode, ptr noundef %dir, ptr noundef %qstr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @security_inode_init_security(ptr noundef %inode, ptr noundef %dir, ptr noundef %qstr, ptr noundef nonnull @ext2_initxattrs, ptr noundef null) #2
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_inode_init_security(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ext2_initxattrs(ptr noundef %inode, ptr nocapture noundef readonly %xattr_array, ptr nocapture noundef readnone %fs_info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %xattr_array to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %xattr_array, align 4
  %cmp.not8 = icmp eq ptr %1, null
  br i1 %cmp.not8, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end

for.cond:                                         ; preds = %for.body
  %incdec.ptr = getelementptr %struct.xattr, ptr %xattr.09, i32 1
  %2 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %incdec.ptr, align 4
  %cmp.not = icmp eq ptr %3, null
  br i1 %cmp.not, label %for.cond.for.end_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry.for.body_crit_edge
  %4 = phi ptr [ %3, %for.cond.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %xattr.09 = phi ptr [ %incdec.ptr, %for.cond.for.body_crit_edge ], [ %xattr_array, %entry.for.body_crit_edge ]
  %value = getelementptr inbounds %struct.xattr, ptr %xattr.09, i32 0, i32 1
  %5 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %value, align 4
  %value_len = getelementptr inbounds %struct.xattr, ptr %xattr.09, i32 0, i32 2
  %7 = ptrtoint ptr %value_len to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %value_len, align 4
  %call = tail call i32 @ext2_xattr_set(ptr noundef %inode, i32 noundef 6, ptr noundef nonnull %4, ptr noundef %6, i32 noundef %8, i32 noundef 0) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp2 = icmp slt i32 %call, 0
  br i1 %cmp2, label %for.body.for.end_crit_edge, label %for.cond

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge, %entry.for.end_crit_edge
  %err.1 = phi i32 [ 0, %entry.for.end_crit_edge ], [ %call, %for.body.for.end_crit_edge ], [ %call, %for.cond.for.end_crit_edge ]
  ret i32 %err.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ext2_xattr_security_get(ptr nocapture noundef readnone %handler, ptr nocapture noundef readnone %unused, ptr noundef %inode, ptr noundef %name, ptr noundef %buffer, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ext2_xattr_get(ptr noundef %inode, i32 noundef 6, ptr noundef %name, ptr noundef %buffer, i32 noundef %size) #2
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ext2_xattr_security_set(ptr nocapture noundef readnone %handler, ptr nocapture noundef readnone %mnt_userns, ptr nocapture noundef readnone %unused, ptr noundef %inode, ptr noundef %name, ptr noundef %value, i32 noundef %size, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ext2_xattr_set(ptr noundef %inode, i32 noundef 6, ptr noundef %name, ptr noundef %value, i32 noundef %size, i32 noundef %flags) #2
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext2_xattr_set(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext2_xattr_get(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/ext2/xattr_security.c", i32 56, i32 12}
!2 = !{ptr @ext2_xattr_security_handler, !3, !"ext2_xattr_security_handler", i1 false, i1 false}
!3 = !{!"../fs/ext2/xattr_security.c", i32 55, i32 28}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
