; ModuleID = '/llk/IR_all_yes/drivers/hwmon/pmbus/max8688.c_pt.bc'
source_filename = "../drivers/hwmon/pmbus/max8688.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }

@__initcall__kmod_max8688__288_189_max8688_driver_init6 = internal global ptr @max8688_driver_init, section ".initcall6.init", align 4
@max8688_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr null, ptr @max8688_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @max8688_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_max8688_driver_exit = internal global ptr @max8688_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [29 x i8] c"max8688.author=Guenter Roeck\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [51 x i8] c"max8688.description=PMBus driver for Maxim MAX8688\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [41 x i8] c"max8688.file=drivers/hwmon/pmbus/max8688\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [20 x i8] c"max8688.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_import_ns293 = internal constant [24 x i8] c"max8688.import_ns=PMBUS\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"max8688\00", [24 x i8] zeroinitializer }, align 32
@max8688_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"max8688\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@max8688_info = internal global { { i32, [32 x i8], [8 x i32], [32 x i32], [8 x i32], [8 x i32], [8 x i32], <{ i32, [31 x i32] }>, [10 x i32], ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr }, [116 x i8] } { { i32, [32 x i8], [8 x i32], [32 x i32], [8 x i32], [8 x i32], [8 x i32], <{ i32, [31 x i32] }>, [10 x i32], ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr } { i32 1, [32 x i8] zeroinitializer, [8 x i32] [i32 1, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 0], [32 x i32] zeroinitializer, [8 x i32] [i32 19995, i32 19995, i32 0, i32 23109, i32 0, i32 -7612, i32 0, i32 0], [8 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 335, i32 0, i32 0], [8 x i32] [i32 -1, i32 -1, i32 0, i32 -2, i32 0, i32 -3, i32 0, i32 0], <{ i32, [31 x i32] }> <{ i32 45588, [31 x i32] zeroinitializer }>, [10 x i32] zeroinitializer, ptr @max8688_read_byte_data, ptr @max8688_read_word_data, ptr @max8688_write_word_data, ptr null, ptr null, i32 0, ptr null, ptr null }, [116 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 122, i64 123, i64 125]
@__sancov_gen_cov_switch_values.2 = internal global [8 x i64] [i64 6, i64 32, i64 259, i64 260, i64 279, i64 280, i64 283, i64 284]
@__sancov_gen_cov_switch_values.3 = internal global [5 x i64] [i64 3, i64 32, i64 260, i64 280, i64 284]
@___asan_gen_.4 = private unnamed_addr constant [15 x i8] c"max8688_driver\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 181, i32 26 }
@___asan_gen_.7 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 183, i32 14 }
@___asan_gen_.10 = private unnamed_addr constant [11 x i8] c"max8688_id\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 173, i32 35 }
@___asan_gen_.13 = private unnamed_addr constant [13 x i8] c"max8688_info\00", align 1
@___asan_gen_.14 = private constant [33 x i8] c"../drivers/hwmon/pmbus/max8688.c\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 142, i32 33 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_import_ns293, ptr @__UNIQUE_ID_license292, ptr @__exitcall_max8688_driver_exit, ptr @__initcall__kmod_max8688__288_189_max8688_driver_init6, ptr @max8688_driver_exit, ptr @max8688_driver, ptr @.str, ptr @max8688_id, ptr @max8688_info], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8688_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8688_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8688_info to i32), i32 492, i32 608, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @max8688_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @max8688_driver) #3
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @max8688_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @i2c_del_driver(ptr noundef nonnull @max8688_driver) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max8688_probe(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pmbus_do_probe(ptr noundef %client, ptr noundef nonnull @max8688_info) #3
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pmbus_do_probe(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max8688_read_byte_data(ptr noundef %client, i32 noundef %page, i32 noundef %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %page)
  %cmp = icmp sgt i32 %page, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %reg, label %if.end.cleanup_crit_edge [
    i32 122, label %sw.bb
    i32 123, label %sw.bb21
    i32 125, label %sw.bb41
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %call = tail call i32 @pmbus_read_word_data(ptr noundef %client, i32 noundef 0, i32 noundef 255, i8 noundef zeroext -40) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp1 = icmp slt i32 %call, 0
  br i1 %cmp1, label %sw.bb.cleanup_crit_edge, label %if.end3

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end3:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #5
  %and = lshr i32 %call, 5
  %1 = and i32 %and, 48
  %and11 = lshr i32 %call, 2
  %2 = and i32 %and11, 64
  %3 = or i32 %1, %2
  %and16 = shl i32 %call, 2
  %4 = and i32 %and16, 128
  %5 = or i32 %3, %4
  br label %cleanup

sw.bb21:                                          ; preds = %if.end
  %call22 = tail call i32 @pmbus_read_word_data(ptr noundef %client, i32 noundef 0, i32 noundef 255, i8 noundef zeroext -40) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %sw.bb21.cleanup_crit_edge, label %if.end25

sw.bb21.cleanup_crit_edge:                        ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end25:                                         ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #5
  %and26 = lshr i32 %call22, 7
  %6 = and i32 %and26, 48
  %and36 = shl i32 %call22, 3
  %7 = and i32 %and36, 128
  %8 = or i32 %6, %7
  br label %cleanup

sw.bb41:                                          ; preds = %if.end
  %call42 = tail call i32 @pmbus_read_word_data(ptr noundef %client, i32 noundef 0, i32 noundef 255, i8 noundef zeroext -40) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %cmp43 = icmp slt i32 %call42, 0
  br i1 %cmp43, label %sw.bb41.cleanup_crit_edge, label %if.end45

sw.bb41.cleanup_crit_edge:                        ; preds = %sw.bb41
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end45:                                         ; preds = %sw.bb41
  call void @__sanitizer_cov_trace_pc() #5
  %and46 = lshr i32 %call42, 8
  %9 = and i32 %and46, 64
  %and51 = lshr i32 %call42, 6
  %10 = and i32 %and51, 128
  %11 = or i32 %10, %9
  br label %cleanup

cleanup:                                          ; preds = %if.end45, %sw.bb41.cleanup_crit_edge, %if.end25, %sw.bb21.cleanup_crit_edge, %if.end3, %sw.bb.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -6, %entry.cleanup_crit_edge ], [ %call, %sw.bb.cleanup_crit_edge ], [ %call22, %sw.bb21.cleanup_crit_edge ], [ %call42, %sw.bb41.cleanup_crit_edge ], [ -61, %if.end.cleanup_crit_edge ], [ %11, %if.end45 ], [ %5, %if.end3 ], [ %8, %if.end25 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max8688_read_word_data(ptr noundef %client, i32 noundef %page, i32 noundef %phase, i32 noundef %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %page)
  %cmp = icmp sgt i32 %page, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %reg, label %sw.default [
    i32 279, label %sw.bb
    i32 283, label %sw.bb1
    i32 259, label %sw.bb3
    i32 280, label %if.end.cleanup_crit_edge
    i32 284, label %if.end.cleanup_crit_edge8
    i32 260, label %if.end.cleanup_crit_edge9
  ]

if.end.cleanup_crit_edge9:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end.cleanup_crit_edge8:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %call = tail call i32 @pmbus_read_word_data(ptr noundef %client, i32 noundef 0, i32 noundef 255, i8 noundef zeroext -44) #3
  br label %cleanup

sw.bb1:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %call2 = tail call i32 @pmbus_read_word_data(ptr noundef %client, i32 noundef 0, i32 noundef 255, i8 noundef zeroext -43) #3
  br label %cleanup

sw.bb3:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %call4 = tail call i32 @pmbus_read_word_data(ptr noundef %client, i32 noundef 0, i32 noundef 255, i8 noundef zeroext -42) #3
  br label %cleanup

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %sw.bb3, %sw.bb1, %sw.bb, %if.end.cleanup_crit_edge, %if.end.cleanup_crit_edge8, %if.end.cleanup_crit_edge9, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -6, %entry.cleanup_crit_edge ], [ -61, %sw.default ], [ %call4, %sw.bb3 ], [ %call2, %sw.bb1 ], [ %call, %sw.bb ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge8 ], [ 0, %if.end.cleanup_crit_edge9 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max8688_write_word_data(ptr noundef %client, i32 noundef %page, i32 noundef %reg, i16 noundef zeroext %word) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.3)
  switch i32 %reg, label %entry.sw.epilog_crit_edge [
    i32 280, label %sw.bb
    i32 284, label %sw.bb1
    i32 260, label %sw.bb3
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call = tail call i32 @pmbus_write_word_data(ptr noundef %client, i32 noundef 0, i8 noundef zeroext -44, i16 noundef zeroext 0) #3
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call2 = tail call i32 @pmbus_write_word_data(ptr noundef %client, i32 noundef 0, i8 noundef zeroext -43, i16 noundef zeroext 0) #3
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call4 = tail call i32 @pmbus_write_word_data(ptr noundef %client, i32 noundef 0, i8 noundef zeroext -42, i16 noundef zeroext -1) #3
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb3, %sw.bb1, %sw.bb, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ %call4, %sw.bb3 ], [ %call2, %sw.bb1 ], [ %call, %sw.bb ], [ -61, %entry.sw.epilog_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pmbus_read_word_data(ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pmbus_write_word_data(ptr noundef, i32 noundef, i8 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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

!0 = !{ptr @__initcall__kmod_max8688__288_189_max8688_driver_init6, !1, !"__initcall__kmod_max8688__288_189_max8688_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/hwmon/pmbus/max8688.c", i32 189, i32 1}
!2 = !{ptr @__exitcall_max8688_driver_exit, !1, !"__exitcall_max8688_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/hwmon/pmbus/max8688.c", i32 191, i32 1}
!5 = !{ptr @__UNIQUE_ID_description290, !6, !"__UNIQUE_ID_description290", i1 false, i1 false}
!6 = !{!"../drivers/hwmon/pmbus/max8688.c", i32 192, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/hwmon/pmbus/max8688.c", i32 193, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_import_ns293, !11, !"__UNIQUE_ID_import_ns293", i1 false, i1 false}
!11 = !{!"../drivers/hwmon/pmbus/max8688.c", i32 194, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/hwmon/pmbus/max8688.c", i32 183, i32 14}
!14 = !{ptr @max8688_driver, !15, !"max8688_driver", i1 false, i1 false}
!15 = !{!"../drivers/hwmon/pmbus/max8688.c", i32 181, i32 26}
!16 = !{ptr @max8688_info, !17, !"max8688_info", i1 false, i1 false}
!17 = !{!"../drivers/hwmon/pmbus/max8688.c", i32 142, i32 33}
!18 = !{ptr @max8688_id, !19, !"max8688_id", i1 false, i1 false}
!19 = !{!"../drivers/hwmon/pmbus/max8688.c", i32 173, i32 35}
!20 = !{i32 1, !"wchar_size", i32 2}
!21 = !{i32 1, !"min_enum_size", i32 4}
!22 = !{i32 8, !"branch-target-enforcement", i32 0}
!23 = !{i32 8, !"sign-return-address", i32 0}
!24 = !{i32 8, !"sign-return-address-all", i32 0}
!25 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!26 = !{i32 7, !"uwtable", i32 1}
!27 = !{i32 7, !"frame-pointer", i32 2}
!28 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
