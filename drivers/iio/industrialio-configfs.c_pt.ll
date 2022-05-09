; ModuleID = '/llk/IR_all_yes/drivers/iio/industrialio-configfs.c_pt.bc'
source_filename = "../drivers/iio/industrialio-configfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+iio_configfs_subsys\22, \22a\22\09"
module asm "\09.weak\09__crc_iio_configfs_subsys\09\09\09\09"
module asm "\09.long\09__crc_iio_configfs_subsys\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iio_configfs_subsys:\09\09\09\09\09"
module asm "\09.asciz \09\22iio_configfs_subsys\22\09\09\09\09\09"
module asm "__kstrtabns_iio_configfs_subsys:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.config_item_type = type { ptr, ptr, ptr, ptr, ptr }
%struct.configfs_subsystem = type { %struct.config_group, %struct.mutex }
%struct.config_group = type { %struct.config_item, %struct.list_head, ptr, %struct.list_head, %struct.list_head }
%struct.config_item = type { ptr, [20 x i8], %struct.kref, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }

@iio_root_group_type = internal constant { %struct.config_item_type, [44 x i8] } zeroinitializer, align 32
@.str = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"iio_configfs_subsys.su_mutex.wait_lock\00", [57 x i8] zeroinitializer }, align 32
@iio_configfs_subsys = dso_local global { %struct.configfs_subsystem, [52 x i8] } { %struct.configfs_subsystem { %struct.config_group { %struct.config_item { ptr null, [20 x i8] c"iio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.kref zeroinitializer, %struct.list_head zeroinitializer, ptr null, ptr null, ptr @iio_root_group_type, ptr null }, %struct.list_head zeroinitializer, ptr null, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer }, %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @iio_configfs_subsys, i64 132), ptr getelementptr (i8, ptr @iio_configfs_subsys, i64 132) }, ptr getelementptr (i8, ptr @iio_configfs_subsys, i64 80), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 4, i8 0, i32 0, i32 0 } } }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"iio_configfs_subsys.su_mutex\00", [35 x i8] zeroinitializer }, align 32
@__kstrtab_iio_configfs_subsys = external dso_local constant [0 x i8], align 1
@__kstrtabns_iio_configfs_subsys = external dso_local constant [0 x i8], align 1
@__ksymtab_iio_configfs_subsys = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iio_configfs_subsys to i32), ptr @__kstrtab_iio_configfs_subsys, ptr @__kstrtabns_iio_configfs_subsys }, section "___ksymtab+iio_configfs_subsys", align 4
@__initcall__kmod_industrialio_configfs__183_38_iio_configfs_init6 = internal global ptr @iio_configfs_init, section ".initcall6.init", align 4
@__exitcall_iio_configfs_exit = internal global ptr @iio_configfs_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author184 = internal constant [69 x i8] c"industrialio_configfs.author=Daniel Baluta <daniel.baluta@intel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description185 = internal constant [66 x i8] c"industrialio_configfs.description=Industrial I/O configfs support\00", section ".modinfo", align 1
@__UNIQUE_ID_file186 = internal constant [61 x i8] c"industrialio_configfs.file=drivers/iio/industrialio-configfs\00", section ".modinfo", align 1
@__UNIQUE_ID_license187 = internal constant [37 x i8] c"industrialio_configfs.license=GPL v2\00", section ".modinfo", align 1
@___asan_gen_.2 = private unnamed_addr constant [20 x i8] c"iio_root_group_type\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 17, i32 38 }
@___asan_gen_.8 = private unnamed_addr constant [20 x i8] c"iio_configfs_subsys\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 21, i32 27 }
@___asan_gen_.11 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.12 = private constant [39 x i8] c"../drivers/iio/industrialio-configfs.c\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 28, i32 14 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @__UNIQUE_ID_author184, ptr @__UNIQUE_ID_description185, ptr @__UNIQUE_ID_file186, ptr @__UNIQUE_ID_license187, ptr @__exitcall_iio_configfs_exit, ptr @__initcall__kmod_industrialio_configfs__183_38_iio_configfs_init6, ptr @__ksymtab_iio_configfs_subsys, ptr @iio_configfs_exit, ptr @iio_root_group_type, ptr @.str, ptr @iio_configfs_subsys, ptr @.str.1], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_root_group_type to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_configfs_subsys to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @iio_configfs_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @config_group_init(ptr noundef nonnull @iio_configfs_subsys) #2
  %call = tail call i32 @configfs_register_subsystem(ptr noundef nonnull @iio_configfs_subsys) #2
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @iio_configfs_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  tail call void @configfs_unregister_subsystem(ptr noundef nonnull @iio_configfs_subsys) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @configfs_unregister_subsystem(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @config_group_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @configfs_register_subsystem(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !18}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/iio/industrialio-configfs.c", i32 28, i32 14}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @iio_configfs_subsys, !4, !"iio_configfs_subsys", i1 false, i1 false}
!4 = !{!"../drivers/iio/industrialio-configfs.c", i32 21, i32 27}
!5 = !{ptr @__ksymtab_iio_configfs_subsys, !6, !"__ksymtab_iio_configfs_subsys", i1 false, i1 false}
!6 = !{!"../drivers/iio/industrialio-configfs.c", i32 30, i32 1}
!7 = !{ptr @__initcall__kmod_industrialio_configfs__183_38_iio_configfs_init6, !8, !"__initcall__kmod_industrialio_configfs__183_38_iio_configfs_init6", i1 false, i1 false}
!8 = !{!"../drivers/iio/industrialio-configfs.c", i32 38, i32 1}
!9 = !{ptr @__exitcall_iio_configfs_exit, !10, !"__exitcall_iio_configfs_exit", i1 false, i1 false}
!10 = !{!"../drivers/iio/industrialio-configfs.c", i32 44, i32 1}
!11 = !{ptr @__UNIQUE_ID_author184, !12, !"__UNIQUE_ID_author184", i1 false, i1 false}
!12 = !{!"../drivers/iio/industrialio-configfs.c", i32 46, i32 1}
!13 = !{ptr @__UNIQUE_ID_description185, !14, !"__UNIQUE_ID_description185", i1 false, i1 false}
!14 = !{!"../drivers/iio/industrialio-configfs.c", i32 47, i32 1}
!15 = !{ptr @__UNIQUE_ID_file186, !16, !"__UNIQUE_ID_file186", i1 false, i1 false}
!16 = !{!"../drivers/iio/industrialio-configfs.c", i32 48, i32 1}
!17 = !{ptr @__UNIQUE_ID_license187, !16, !"__UNIQUE_ID_license187", i1 false, i1 false}
!18 = !{ptr @iio_root_group_type, !19, !"iio_root_group_type", i1 false, i1 false}
!19 = !{!"../drivers/iio/industrialio-configfs.c", i32 17, i32 38}
!20 = !{i32 1, !"wchar_size", i32 2}
!21 = !{i32 1, !"min_enum_size", i32 4}
!22 = !{i32 8, !"branch-target-enforcement", i32 0}
!23 = !{i32 8, !"sign-return-address", i32 0}
!24 = !{i32 8, !"sign-return-address-all", i32 0}
!25 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!26 = !{i32 7, !"uwtable", i32 1}
!27 = !{i32 7, !"frame-pointer", i32 2}
!28 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
