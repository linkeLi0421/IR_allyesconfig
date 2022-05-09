; ModuleID = '/llk/IR_all_yes/drivers/hwmon/pmbus/tps40422.c_pt.bc'
source_filename = "../drivers/hwmon/pmbus/tps40422.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }

@__initcall__kmod_tps40422__288_49_tps40422_driver_init6 = internal global ptr @tps40422_driver_init, section ".initcall6.init", align 4
@tps40422_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr null, ptr @tps40422_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @tps40422_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_tps40422_driver_exit = internal global ptr @tps40422_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [49 x i8] c"tps40422.author=Zhu Laiwen <richard.zhu@nsn.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [50 x i8] c"tps40422.description=PMBus driver for TI TPS40422\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [43 x i8] c"tps40422.file=drivers/hwmon/pmbus/tps40422\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [21 x i8] c"tps40422.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_import_ns293 = internal constant [25 x i8] c"tps40422.import_ns=PMBUS\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tps40422\00", [23 x i8] zeroinitializer }, align 32
@tps40422_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"tps40422\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@tps40422_info = internal global { { i32, [32 x i8], [8 x i32], [32 x i32], [8 x i32], [8 x i32], [8 x i32], <{ i32, i32, [30 x i32] }>, [10 x i32], ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr }, [116 x i8] } { { i32, [32 x i8], [8 x i32], [32 x i32], [8 x i32], [8 x i32], [8 x i32], <{ i32, i32, [30 x i32] }>, [10 x i32], ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr } { i32 2, [32 x i8] zeroinitializer, [8 x i32] zeroinitializer, [32 x i32] zeroinitializer, [8 x i32] zeroinitializer, [8 x i32] zeroinitializer, [8 x i32] zeroinitializer, <{ i32, i32, [30 x i32] }> <{ i32 46100, i32 46100, [30 x i32] zeroinitializer }>, [10 x i32] zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null }, [116 x i8] zeroinitializer }, align 32
@___asan_gen_.2 = private unnamed_addr constant [16 x i8] c"tps40422_driver\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 41, i32 26 }
@___asan_gen_.5 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 43, i32 14 }
@___asan_gen_.8 = private unnamed_addr constant [12 x i8] c"tps40422_id\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 33, i32 35 }
@___asan_gen_.11 = private unnamed_addr constant [14 x i8] c"tps40422_info\00", align 1
@___asan_gen_.12 = private constant [34 x i8] c"../drivers/hwmon/pmbus/tps40422.c\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 15, i32 33 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_import_ns293, ptr @__UNIQUE_ID_license292, ptr @__exitcall_tps40422_driver_exit, ptr @__initcall__kmod_tps40422__288_49_tps40422_driver_init6, ptr @tps40422_driver_exit, ptr @tps40422_driver, ptr @.str, ptr @tps40422_id, ptr @tps40422_info], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps40422_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps40422_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps40422_info to i32), i32 492, i32 608, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tps40422_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @tps40422_driver) #3
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tps40422_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @i2c_del_driver(ptr noundef nonnull @tps40422_driver) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tps40422_probe(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pmbus_do_probe(ptr noundef %client, ptr noundef nonnull @tps40422_info) #3
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pmbus_do_probe(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = !{ptr @__initcall__kmod_tps40422__288_49_tps40422_driver_init6, !1, !"__initcall__kmod_tps40422__288_49_tps40422_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/hwmon/pmbus/tps40422.c", i32 49, i32 1}
!2 = !{ptr @__exitcall_tps40422_driver_exit, !1, !"__exitcall_tps40422_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/hwmon/pmbus/tps40422.c", i32 51, i32 1}
!5 = !{ptr @__UNIQUE_ID_description290, !6, !"__UNIQUE_ID_description290", i1 false, i1 false}
!6 = !{!"../drivers/hwmon/pmbus/tps40422.c", i32 52, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/hwmon/pmbus/tps40422.c", i32 53, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_import_ns293, !11, !"__UNIQUE_ID_import_ns293", i1 false, i1 false}
!11 = !{!"../drivers/hwmon/pmbus/tps40422.c", i32 54, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/hwmon/pmbus/tps40422.c", i32 43, i32 14}
!14 = !{ptr @tps40422_driver, !15, !"tps40422_driver", i1 false, i1 false}
!15 = !{!"../drivers/hwmon/pmbus/tps40422.c", i32 41, i32 26}
!16 = !{ptr @tps40422_info, !17, !"tps40422_info", i1 false, i1 false}
!17 = !{!"../drivers/hwmon/pmbus/tps40422.c", i32 15, i32 33}
!18 = !{ptr @tps40422_id, !19, !"tps40422_id", i1 false, i1 false}
!19 = !{!"../drivers/hwmon/pmbus/tps40422.c", i32 33, i32 35}
!20 = !{i32 1, !"wchar_size", i32 2}
!21 = !{i32 1, !"min_enum_size", i32 4}
!22 = !{i32 8, !"branch-target-enforcement", i32 0}
!23 = !{i32 8, !"sign-return-address", i32 0}
!24 = !{i32 8, !"sign-return-address-all", i32 0}
!25 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!26 = !{i32 7, !"uwtable", i32 1}
!27 = !{i32 7, !"frame-pointer", i32 2}
!28 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
