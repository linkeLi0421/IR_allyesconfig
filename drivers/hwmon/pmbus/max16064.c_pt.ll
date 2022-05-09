; ModuleID = '/llk/IR_all_yes/drivers/hwmon/pmbus/max16064.c_pt.bc'
source_filename = "../drivers/hwmon/pmbus/max16064.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }

@__initcall__kmod_max16064__288_109_max16064_driver_init6 = internal global ptr @max16064_driver_init, section ".initcall6.init", align 4
@max16064_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr null, ptr @max16064_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @max16064_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_max16064_driver_exit = internal global ptr @max16064_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [30 x i8] c"max16064.author=Guenter Roeck\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [53 x i8] c"max16064.description=PMBus driver for Maxim MAX16064\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [43 x i8] c"max16064.file=drivers/hwmon/pmbus/max16064\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [21 x i8] c"max16064.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_import_ns293 = internal constant [25 x i8] c"max16064.import_ns=PMBUS\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"max16064\00", [23 x i8] zeroinitializer }, align 32
@max16064_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"max16064\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@max16064_info = internal global { { i32, [32 x i8], [8 x i32], [32 x i32], [8 x i32], [8 x i32], [8 x i32], <{ i32, i32, i32, i32, [28 x i32] }>, [10 x i32], ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr }, [116 x i8] } { { i32, [32 x i8], [8 x i32], [32 x i32], [8 x i32], [8 x i32], [8 x i32], <{ i32, i32, i32, i32, [28 x i32] }>, [10 x i32], ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr } { i32 4, [32 x i8] zeroinitializer, [8 x i32] [i32 1, i32 1, i32 0, i32 0, i32 0, i32 1, i32 0, i32 0], [32 x i32] zeroinitializer, [8 x i32] [i32 19995, i32 19995, i32 0, i32 0, i32 0, i32 -7612, i32 0, i32 0], [8 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 335, i32 0, i32 0], [8 x i32] [i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 -3, i32 0, i32 0], <{ i32, i32, i32, i32, [28 x i32] }> <{ i32 37380, i32 4100, i32 4100, i32 4100, [28 x i32] zeroinitializer }>, [10 x i32] zeroinitializer, ptr null, ptr @max16064_read_word_data, ptr @max16064_write_word_data, ptr null, ptr null, i32 0, ptr null, ptr null }, [116 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 259, i64 260, i64 279, i64 280]
@__sancov_gen_cov_switch_values.2 = internal global [4 x i64] [i64 2, i64 32, i64 260, i64 280]
@___asan_gen_.3 = private unnamed_addr constant [16 x i8] c"max16064_driver\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 101, i32 26 }
@___asan_gen_.6 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 103, i32 14 }
@___asan_gen_.9 = private unnamed_addr constant [12 x i8] c"max16064_id\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 93, i32 35 }
@___asan_gen_.12 = private unnamed_addr constant [14 x i8] c"max16064_info\00", align 1
@___asan_gen_.13 = private constant [34 x i8] c"../drivers/hwmon/pmbus/max16064.c\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 65, i32 33 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_import_ns293, ptr @__UNIQUE_ID_license292, ptr @__exitcall_max16064_driver_exit, ptr @__initcall__kmod_max16064__288_109_max16064_driver_init6, ptr @max16064_driver_exit, ptr @max16064_driver, ptr @.str, ptr @max16064_id, ptr @max16064_info], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max16064_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max16064_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max16064_info to i32), i32 492, i32 608, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @max16064_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @max16064_driver) #3
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @max16064_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @i2c_del_driver(ptr noundef nonnull @max16064_driver) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max16064_probe(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pmbus_do_probe(ptr noundef %client, ptr noundef nonnull @max16064_info) #3
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pmbus_do_probe(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max16064_read_word_data(ptr noundef %client, i32 noundef %page, i32 noundef %phase, i32 noundef %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %reg, label %sw.default [
    i32 279, label %sw.bb
    i32 259, label %sw.bb1
    i32 280, label %entry.sw.epilog_crit_edge
    i32 260, label %entry.sw.epilog_crit_edge7
  ]

entry.sw.epilog_crit_edge7:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call = tail call i32 @pmbus_read_word_data(ptr noundef %client, i32 noundef %page, i32 noundef %phase, i8 noundef zeroext -44) #3
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call2 = tail call i32 @pmbus_read_word_data(ptr noundef %client, i32 noundef %page, i32 noundef %phase, i8 noundef zeroext -42) #3
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb1, %sw.bb, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge7
  %ret.0 = phi i32 [ -61, %sw.default ], [ %call2, %sw.bb1 ], [ %call, %sw.bb ], [ 0, %entry.sw.epilog_crit_edge ], [ 0, %entry.sw.epilog_crit_edge7 ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max16064_write_word_data(ptr noundef %client, i32 noundef %page, i32 noundef %reg, i16 noundef zeroext %word) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %reg, label %entry.sw.epilog_crit_edge [
    i32 280, label %sw.bb
    i32 260, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call = tail call i32 @pmbus_write_word_data(ptr noundef %client, i32 noundef %page, i8 noundef zeroext -44, i16 noundef zeroext 0) #3
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call2 = tail call i32 @pmbus_write_word_data(ptr noundef %client, i32 noundef %page, i8 noundef zeroext -42, i16 noundef zeroext -1) #3
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %sw.bb, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ %call2, %sw.bb1 ], [ %call, %sw.bb ], [ -61, %entry.sw.epilog_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pmbus_read_word_data(ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pmbus_write_word_data(ptr noundef, i32 noundef, i8 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_switch(i64, ptr)

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

!0 = !{ptr @__initcall__kmod_max16064__288_109_max16064_driver_init6, !1, !"__initcall__kmod_max16064__288_109_max16064_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/hwmon/pmbus/max16064.c", i32 109, i32 1}
!2 = !{ptr @__exitcall_max16064_driver_exit, !1, !"__exitcall_max16064_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/hwmon/pmbus/max16064.c", i32 111, i32 1}
!5 = !{ptr @__UNIQUE_ID_description290, !6, !"__UNIQUE_ID_description290", i1 false, i1 false}
!6 = !{!"../drivers/hwmon/pmbus/max16064.c", i32 112, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/hwmon/pmbus/max16064.c", i32 113, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_import_ns293, !11, !"__UNIQUE_ID_import_ns293", i1 false, i1 false}
!11 = !{!"../drivers/hwmon/pmbus/max16064.c", i32 114, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/hwmon/pmbus/max16064.c", i32 103, i32 14}
!14 = !{ptr @max16064_driver, !15, !"max16064_driver", i1 false, i1 false}
!15 = !{!"../drivers/hwmon/pmbus/max16064.c", i32 101, i32 26}
!16 = !{ptr @max16064_info, !17, !"max16064_info", i1 false, i1 false}
!17 = !{!"../drivers/hwmon/pmbus/max16064.c", i32 65, i32 33}
!18 = !{ptr @max16064_id, !19, !"max16064_id", i1 false, i1 false}
!19 = !{!"../drivers/hwmon/pmbus/max16064.c", i32 93, i32 35}
!20 = !{i32 1, !"wchar_size", i32 2}
!21 = !{i32 1, !"min_enum_size", i32 4}
!22 = !{i32 8, !"branch-target-enforcement", i32 0}
!23 = !{i32 8, !"sign-return-address", i32 0}
!24 = !{i32 8, !"sign-return-address-all", i32 0}
!25 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!26 = !{i32 7, !"uwtable", i32 1}
!27 = !{i32 7, !"frame-pointer", i32 2}
!28 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
