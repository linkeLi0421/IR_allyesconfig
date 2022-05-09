; ModuleID = '/llk/IR_all_yes/fs/autofs/init.c_pt.bc'
source_filename = "../fs/autofs/init.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_system_type = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.hlist_head = type { ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }

@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"autofs\00", [25 x i8] zeroinitializer }, align 32
@autofs_fs_type = dso_local global { %struct.file_system_type, [44 x i8] } { %struct.file_system_type { ptr @.str, i32 0, ptr null, ptr null, ptr @autofs_mount, ptr @autofs_kill_sb, ptr null, ptr null, %struct.hlist_head zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, [3 x %struct.lock_class_key] zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_alias215 = internal constant [24 x i8] c"autofs4.alias=fs-autofs\00", section ".modinfo", align 1
@__UNIQUE_ID_alias216 = internal constant [21 x i8] c"autofs4.alias=autofs\00", section ".modinfo", align 1
@__initcall__kmod_autofs4__217_44_init_autofs_fs6 = internal global ptr @init_autofs_fs, section ".initcall6.init", align 4
@__exitcall_exit_autofs_fs = internal global ptr @exit_autofs_fs, section ".exitcall.exit", align 4
@__UNIQUE_ID_file218 = internal constant [31 x i8] c"autofs4.file=fs/autofs/autofs4\00", section ".modinfo", align 1
@__UNIQUE_ID_license219 = internal constant [20 x i8] c"autofs4.license=GPL\00", section ".modinfo", align 1
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 18, i32 11 }
@___asan_gen_.4 = private unnamed_addr constant [15 x i8] c"autofs_fs_type\00", align 1
@___asan_gen_.5 = private constant [20 x i8] c"../fs/autofs/init.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 16, i32 25 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @__UNIQUE_ID_alias215, ptr @__UNIQUE_ID_alias216, ptr @__UNIQUE_ID_file218, ptr @__UNIQUE_ID_license219, ptr @__exitcall_exit_autofs_fs, ptr @__initcall__kmod_autofs4__217_44_init_autofs_fs6, ptr @exit_autofs_fs, ptr @.str, ptr @autofs_fs_type], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @autofs_fs_type to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @autofs_mount(ptr noundef %fs_type, i32 noundef %flags, ptr nocapture noundef readnone %dev_name, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @mount_nodev(ptr noundef %fs_type, i32 noundef %flags, ptr noundef %data, ptr noundef nonnull @autofs_fill_super) #3
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @autofs_kill_sb(ptr noundef) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @exit_autofs_fs() #2 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @autofs_dev_ioctl_exit() #3
  %call = tail call i32 @unregister_filesystem(ptr noundef nonnull @autofs_fs_type) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @autofs_dev_ioctl_exit() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_filesystem(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init_autofs_fs() #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @autofs_dev_ioctl_init() #3
  %call1 = tail call i32 @register_filesystem(ptr noundef nonnull @autofs_fs_type) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @autofs_dev_ioctl_exit() #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mount_nodev(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @autofs_fill_super(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @autofs_dev_ioctl_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_filesystem(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14}
!llvm.module.flags = !{!15, !16, !17, !18, !19, !20, !21, !22}
!llvm.ident = !{!23}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/autofs/init.c", i32 18, i32 11}
!2 = !{ptr @autofs_fs_type, !3, !"autofs_fs_type", i1 false, i1 false}
!3 = !{!"../fs/autofs/init.c", i32 16, i32 25}
!4 = !{ptr @__UNIQUE_ID_alias215, !5, !"__UNIQUE_ID_alias215", i1 false, i1 false}
!5 = !{!"../fs/autofs/init.c", i32 22, i32 1}
!6 = !{ptr @__UNIQUE_ID_alias216, !7, !"__UNIQUE_ID_alias216", i1 false, i1 false}
!7 = !{!"../fs/autofs/init.c", i32 23, i32 1}
!8 = !{ptr @__initcall__kmod_autofs4__217_44_init_autofs_fs6, !9, !"__initcall__kmod_autofs4__217_44_init_autofs_fs6", i1 false, i1 false}
!9 = !{!"../fs/autofs/init.c", i32 44, i32 1}
!10 = !{ptr @__exitcall_exit_autofs_fs, !11, !"__exitcall_exit_autofs_fs", i1 false, i1 false}
!11 = !{!"../fs/autofs/init.c", i32 45, i32 1}
!12 = !{ptr @__UNIQUE_ID_file218, !13, !"__UNIQUE_ID_file218", i1 false, i1 false}
!13 = !{!"../fs/autofs/init.c", i32 46, i32 1}
!14 = !{ptr @__UNIQUE_ID_license219, !13, !"__UNIQUE_ID_license219", i1 false, i1 false}
!15 = !{i32 1, !"wchar_size", i32 2}
!16 = !{i32 1, !"min_enum_size", i32 4}
!17 = !{i32 8, !"branch-target-enforcement", i32 0}
!18 = !{i32 8, !"sign-return-address", i32 0}
!19 = !{i32 8, !"sign-return-address-all", i32 0}
!20 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!21 = !{i32 7, !"uwtable", i32 1}
!22 = !{i32 7, !"frame-pointer", i32 2}
!23 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
