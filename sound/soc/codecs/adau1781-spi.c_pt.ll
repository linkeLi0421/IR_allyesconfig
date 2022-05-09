; ModuleID = '/llk/IR_all_yes/sound/soc/codecs/adau1781-spi.c_pt.bc'
source_filename = "../sound/soc/codecs/adau1781-spi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spi_device_id = type { [32 x i8], i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }

@__initcall__kmod_snd_soc_adau1781_spi__240_79_adau1781_spi_driver_init6 = internal global ptr @adau1781_spi_driver_init, section ".initcall6.init", align 4
@adau1781_spi_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr @adau1781_spi_id, ptr @adau1781_spi_probe, ptr @adau1781_spi_remove, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @adau1781_spi_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_adau1781_spi_driver_exit = internal global ptr @adau1781_spi_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description241 = internal constant [73 x i8] c"snd_soc_adau1781_spi.description=ASoC ADAU1381/ADAU1781 CODEC SPI driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author242 = internal constant [65 x i8] c"snd_soc_adau1781_spi.author=Lars-Peter Clausen <lars@metafoo.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_file243 = internal constant [64 x i8] c"snd_soc_adau1781_spi.file=sound/soc/codecs/snd-soc-adau1781-spi\00", section ".modinfo", align 1
@__UNIQUE_ID_license244 = internal constant [33 x i8] c"snd_soc_adau1781_spi.license=GPL\00", section ".modinfo", align 1
@adau1781_spi_id = internal constant { [3 x %struct.spi_device_id], [52 x i8] } { [3 x %struct.spi_device_id] [%struct.spi_device_id { [32 x i8] c"adau1381\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.spi_device_id { [32 x i8] c"adau1781\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 3 }, %struct.spi_device_id zeroinitializer], [52 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"adau1781\00", [23 x i8] zeroinitializer }, align 32
@adau1781_spi_dt_ids = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,adau1381\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,adau1781\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@adau1781_regmap_config = external dso_local local_unnamed_addr constant %struct.regmap_config, align 4
@adau1781_spi_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"adau1781_spi:44:(&config)->lock\00", [32 x i8] zeroinitializer }, align 32
@___asan_gen_.2 = private unnamed_addr constant [20 x i8] c"adau1781_spi_driver\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 70, i32 26 }
@___asan_gen_.5 = private unnamed_addr constant [16 x i8] c"adau1781_spi_id\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 54, i32 35 }
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 72, i32 11 }
@___asan_gen_.11 = private unnamed_addr constant [20 x i8] c"adau1781_spi_dt_ids\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 62, i32 34 }
@___asan_gen_.14 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.17 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.18 = private constant [35 x i8] c"../sound/soc/codecs/adau1781-spi.c\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 44, i32 3 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @__UNIQUE_ID_author242, ptr @__UNIQUE_ID_description241, ptr @__UNIQUE_ID_file243, ptr @__UNIQUE_ID_license244, ptr @__exitcall_adau1781_spi_driver_exit, ptr @__initcall__kmod_snd_soc_adau1781_spi__240_79_adau1781_spi_driver_init6, ptr @adau1781_spi_driver_exit, ptr @adau1781_spi_driver, ptr @adau1781_spi_id, ptr @.str, ptr @adau1781_spi_dt_ids, ptr @adau1781_spi_probe._key, ptr @.str.1], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1781_spi_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1781_spi_id to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1781_spi_dt_ids to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1781_spi_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @adau1781_spi_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @adau1781_spi_driver) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @adau1781_spi_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @adau1781_spi_driver, i32 0, i32 4)) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adau1781_spi_probe(ptr noundef %spi) #2 align 64 {
entry:
  %config = alloca %struct.regmap_config, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @spi_get_device_id(ptr noundef %spi) #4
  call void @llvm.lifetime.start.p0(i64 172, ptr nonnull %config) #4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %0 = call ptr @memcpy(ptr %config, ptr @adau1781_regmap_config, i32 172)
  %val_bits = getelementptr inbounds %struct.regmap_config, ptr %config, i32 0, i32 4
  %1 = ptrtoint ptr %val_bits to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 8, ptr %val_bits, align 4
  %reg_bits = getelementptr inbounds %struct.regmap_config, ptr %config, i32 0, i32 1
  %2 = ptrtoint ptr %reg_bits to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 24, ptr %reg_bits, align 4
  %read_flag_mask = getelementptr inbounds %struct.regmap_config, ptr %config, i32 0, i32 31
  %3 = ptrtoint ptr %read_flag_mask to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %read_flag_mask, align 4
  %call1 = call ptr @__devm_regmap_init_spi(ptr noundef %spi, ptr noundef nonnull %config, ptr noundef nonnull @adau1781_spi_probe._key, ptr noundef nonnull @.str.1) #4
  %driver_data = getelementptr inbounds %struct.spi_device_id, ptr %call, i32 0, i32 1
  %4 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %driver_data, align 4
  %call2 = call i32 @adau1781_probe(ptr noundef %spi, ptr noundef %call1, i32 noundef %5, ptr noundef nonnull @adau1781_spi_switch_mode) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 172, ptr nonnull %config) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adau1781_spi_remove(ptr noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @adau17x1_remove(ptr noundef %spi) #4
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @spi_get_device_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @adau1781_probe(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_spi(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @adau1781_spi_switch_mode(ptr noundef %dev) #2 align 64 {
entry:
  %cmd.addr.i9 = alloca i8, align 1
  %result.i10 = alloca i8, align 1
  %cmd.addr.i6 = alloca i8, align 1
  %result.i7 = alloca i8, align 1
  %cmd.addr.i = alloca i8, align 1
  %result.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd.addr.i)
  %0 = ptrtoint ptr %cmd.addr.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %cmd.addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %result.i) #4
  %1 = ptrtoint ptr %result.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %result.i, align 1, !annotation !30
  %call.i = call i32 @spi_write_then_read(ptr noundef %dev, ptr noundef nonnull %cmd.addr.i, i32 noundef 1, ptr noundef nonnull %result.i, i32 noundef 1) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %result.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd.addr.i6)
  %2 = ptrtoint ptr %cmd.addr.i6 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %cmd.addr.i6, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %result.i7) #4
  %3 = ptrtoint ptr %result.i7 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %result.i7, align 1, !annotation !30
  %call.i8 = call i32 @spi_write_then_read(ptr noundef %dev, ptr noundef nonnull %cmd.addr.i6, i32 noundef 1, ptr noundef nonnull %result.i7, i32 noundef 1) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %result.i7) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i6)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd.addr.i9)
  %4 = ptrtoint ptr %cmd.addr.i9 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %cmd.addr.i9, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %result.i10) #4
  %5 = ptrtoint ptr %result.i10 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %result.i10, align 1, !annotation !30
  %call.i11 = call i32 @spi_write_then_read(ptr noundef %dev, ptr noundef nonnull %cmd.addr.i9, i32 noundef 1, ptr noundef nonnull %result.i10, i32 noundef 1) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %result.i10) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i9)
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_write_then_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @adau17x1_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19}
!llvm.module.flags = !{!21, !22, !23, !24, !25, !26, !27, !28}
!llvm.ident = !{!29}

!0 = !{ptr @__initcall__kmod_snd_soc_adau1781_spi__240_79_adau1781_spi_driver_init6, !1, !"__initcall__kmod_snd_soc_adau1781_spi__240_79_adau1781_spi_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/codecs/adau1781-spi.c", i32 79, i32 1}
!2 = !{ptr @__exitcall_adau1781_spi_driver_exit, !1, !"__exitcall_adau1781_spi_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description241, !4, !"__UNIQUE_ID_description241", i1 false, i1 false}
!4 = !{!"../sound/soc/codecs/adau1781-spi.c", i32 81, i32 1}
!5 = !{ptr @__UNIQUE_ID_author242, !6, !"__UNIQUE_ID_author242", i1 false, i1 false}
!6 = !{!"../sound/soc/codecs/adau1781-spi.c", i32 82, i32 1}
!7 = !{ptr @__UNIQUE_ID_file243, !8, !"__UNIQUE_ID_file243", i1 false, i1 false}
!8 = !{!"../sound/soc/codecs/adau1781-spi.c", i32 83, i32 1}
!9 = !{ptr @__UNIQUE_ID_license244, !8, !"__UNIQUE_ID_license244", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/soc/codecs/adau1781-spi.c", i32 72, i32 11}
!12 = !{ptr @adau1781_spi_driver, !13, !"adau1781_spi_driver", i1 false, i1 false}
!13 = !{!"../sound/soc/codecs/adau1781-spi.c", i32 70, i32 26}
!14 = !{ptr @adau1781_spi_id, !15, !"adau1781_spi_id", i1 false, i1 false}
!15 = !{!"../sound/soc/codecs/adau1781-spi.c", i32 54, i32 35}
!16 = !{ptr @adau1781_spi_probe._key, !17, !"_key", i1 false, i1 false}
!17 = !{!"../sound/soc/codecs/adau1781-spi.c", i32 44, i32 3}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @adau1781_spi_dt_ids, !20, !"adau1781_spi_dt_ids", i1 false, i1 false}
!20 = !{!"../sound/soc/codecs/adau1781-spi.c", i32 62, i32 34}
!21 = !{i32 1, !"wchar_size", i32 2}
!22 = !{i32 1, !"min_enum_size", i32 4}
!23 = !{i32 8, !"branch-target-enforcement", i32 0}
!24 = !{i32 8, !"sign-return-address", i32 0}
!25 = !{i32 8, !"sign-return-address-all", i32 0}
!26 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!27 = !{i32 7, !"uwtable", i32 1}
!28 = !{i32 7, !"frame-pointer", i32 2}
!29 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!30 = !{!"auto-init"}
