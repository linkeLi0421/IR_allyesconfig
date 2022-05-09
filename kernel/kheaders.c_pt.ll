; ModuleID = '/llk/IR_all_yes/kernel/kheaders.c_pt.bc'
source_filename = "../kernel/kheaders.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.pushsection .rodata, \22a\22\09\09"
module asm "\09.global kernel_headers_data\09\09"
module asm "kernel_headers_data:\09\09\09\09"
module asm "\09.incbin \22kernel/kheaders_data.tar.xz\22\09"
module asm "\09.global kernel_headers_data_end\09\09"
module asm "kernel_headers_data_end:\09\09\09"
module asm "\09.popsection\09\09\09\09"

%struct.bin_attribute = type { %struct.attribute, i32, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }

@kernel_kobj = external dso_local local_unnamed_addr global ptr, align 4
@kheaders_attr = internal global %struct.bin_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 0, ptr null, ptr null, ptr @ikheaders_read, ptr null, ptr null }, section ".data..ro_after_init", align 4
@__initcall__kmod_kheaders__106_61_ikheaders_init6 = internal global ptr @ikheaders_init, section ".initcall6.init", align 4
@__exitcall_ikheaders_cleanup = internal global ptr @ikheaders_cleanup, section ".exitcall.exit", align 4
@__UNIQUE_ID_file107 = internal constant [30 x i8] c"kheaders.file=kernel/kheaders\00", section ".modinfo", align 1
@__UNIQUE_ID_license108 = internal constant [24 x i8] c"kheaders.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author109 = internal constant [31 x i8] c"kheaders.author=Joel Fernandes\00", section ".modinfo", align 1
@__UNIQUE_ID_description110 = internal constant [79 x i8] c"kheaders.description=Echo the kernel header artifacts used to build the kernel\00", section ".modinfo", align 1
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"kheaders.tar.xz\00", [16 x i8] zeroinitializer }, align 32
@kernel_headers_data = external dso_local global i8, align 1
@kernel_headers_data_end = external dso_local global i8, align 1
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.2 = private constant [21 x i8] c"../kernel/kheaders.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 43, i32 11 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_author109, ptr @__UNIQUE_ID_description110, ptr @__UNIQUE_ID_file107, ptr @__UNIQUE_ID_license108, ptr @__exitcall_ikheaders_cleanup, ptr @__initcall__kmod_kheaders__106_61_ikheaders_init6, ptr @ikheaders_cleanup, ptr @.str], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ikheaders_cleanup() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kernel_kobj to i32))
  %0 = load ptr, ptr @kernel_kobj, align 4
  tail call void @sysfs_remove_bin_file(ptr noundef %0, ptr noundef nonnull @kheaders_attr) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_bin_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ikheaders_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  store i32 sub (i32 ptrtoint (ptr @kernel_headers_data_end to i32), i32 ptrtoint (ptr @kernel_headers_data to i32)), ptr getelementptr inbounds (%struct.bin_attribute, ptr @kheaders_attr, i32 0, i32 1), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kernel_kobj to i32))
  %0 = load ptr, ptr @kernel_kobj, align 4
  %call = tail call i32 @sysfs_create_bin_file(ptr noundef %0, ptr noundef nonnull @kheaders_attr) #3
  ret i32 %call
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ikheaders_read(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %kobj, ptr nocapture noundef readnone %bin_attr, ptr nocapture noundef writeonly %buf, i64 noundef %off, i32 noundef returned %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %idx.ext = trunc i64 %off to i32
  %add.ptr = getelementptr i8, ptr @kernel_headers_data, i32 %idx.ext
  %0 = call ptr @memcpy(ptr %buf, ptr %add.ptr, i32 %len)
  ret i32 %len
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_bin_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13}
!llvm.module.flags = !{!15, !16, !17, !18, !19, !20, !21, !22}
!llvm.ident = !{!23}

!0 = !{ptr @__initcall__kmod_kheaders__106_61_ikheaders_init6, !1, !"__initcall__kmod_kheaders__106_61_ikheaders_init6", i1 false, i1 false}
!1 = !{!"../kernel/kheaders.c", i32 61, i32 1}
!2 = !{ptr @__exitcall_ikheaders_cleanup, !3, !"__exitcall_ikheaders_cleanup", i1 false, i1 false}
!3 = !{!"../kernel/kheaders.c", i32 62, i32 1}
!4 = !{ptr @__UNIQUE_ID_file107, !5, !"__UNIQUE_ID_file107", i1 false, i1 false}
!5 = !{!"../kernel/kheaders.c", i32 64, i32 1}
!6 = !{ptr @__UNIQUE_ID_license108, !5, !"__UNIQUE_ID_license108", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author109, !8, !"__UNIQUE_ID_author109", i1 false, i1 false}
!8 = !{!"../kernel/kheaders.c", i32 65, i32 1}
!9 = !{ptr @__UNIQUE_ID_description110, !10, !"__UNIQUE_ID_description110", i1 false, i1 false}
!10 = !{!"../kernel/kheaders.c", i32 66, i32 1}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../kernel/kheaders.c", i32 43, i32 11}
!13 = !{ptr @kheaders_attr, !14, !"kheaders_attr", i1 false, i1 false}
!14 = !{!"../kernel/kheaders.c", i32 41, i32 29}
!15 = !{i32 1, !"wchar_size", i32 2}
!16 = !{i32 1, !"min_enum_size", i32 4}
!17 = !{i32 8, !"branch-target-enforcement", i32 0}
!18 = !{i32 8, !"sign-return-address", i32 0}
!19 = !{i32 8, !"sign-return-address-all", i32 0}
!20 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!21 = !{i32 7, !"uwtable", i32 1}
!22 = !{i32 7, !"frame-pointer", i32 2}
!23 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
