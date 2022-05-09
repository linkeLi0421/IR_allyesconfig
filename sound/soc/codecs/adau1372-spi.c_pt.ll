; ModuleID = '/llk/IR_all_yes/sound/soc/codecs/adau1372-spi.c_pt.bc'
source_filename = "../sound/soc/codecs/adau1372-spi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spi_device_id = type { [32 x i8], i32 }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }

@__initcall__kmod_snd_soc_adau1372_spi__240_54_adau1372_spi_driver_init6 = internal global ptr @adau1372_spi_driver_init, section ".initcall6.init", align 4
@adau1372_spi_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr @adau1372_spi_id, ptr @adau1372_spi_probe, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_adau1372_spi_driver_exit = internal global ptr @adau1372_spi_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description241 = internal constant [64 x i8] c"snd_soc_adau1372_spi.description=ASoC ADAU1372 CODEC SPI driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author242 = internal constant [65 x i8] c"snd_soc_adau1372_spi.author=Lars-Peter Clausen <lars@metafoo.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_file243 = internal constant [64 x i8] c"snd_soc_adau1372_spi.file=sound/soc/codecs/snd-soc-adau1372-spi\00", section ".modinfo", align 1
@__UNIQUE_ID_license244 = internal constant [36 x i8] c"snd_soc_adau1372_spi.license=GPL v2\00", section ".modinfo", align 1
@adau1372_spi_id = internal constant { [2 x %struct.spi_device_id], [56 x i8] } { [2 x %struct.spi_device_id] [%struct.spi_device_id { [32 x i8] c"adau1372\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"adau1372\00", [23 x i8] zeroinitializer }, align 32
@adau1372_regmap_config = external dso_local local_unnamed_addr constant %struct.regmap_config, align 4
@adau1372_spi_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"adau1372_spi:38:(&config)->lock\00", [32 x i8] zeroinitializer }, align 32
@___asan_gen_.2 = private unnamed_addr constant [20 x i8] c"adau1372_spi_driver\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 47, i32 26 }
@___asan_gen_.5 = private unnamed_addr constant [16 x i8] c"adau1372_spi_id\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 41, i32 35 }
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 49, i32 11 }
@___asan_gen_.11 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.14 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.15 = private constant [35 x i8] c"../sound/soc/codecs/adau1372-spi.c\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 38, i32 3 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @__UNIQUE_ID_author242, ptr @__UNIQUE_ID_description241, ptr @__UNIQUE_ID_file243, ptr @__UNIQUE_ID_license244, ptr @__exitcall_adau1372_spi_driver_exit, ptr @__initcall__kmod_snd_soc_adau1372_spi__240_54_adau1372_spi_driver_init6, ptr @adau1372_spi_driver_exit, ptr @adau1372_spi_driver, ptr @adau1372_spi_id, ptr @.str, ptr @adau1372_spi_probe._key, ptr @.str.1], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1372_spi_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1372_spi_id to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1372_spi_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @adau1372_spi_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @adau1372_spi_driver) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @adau1372_spi_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @adau1372_spi_driver, i32 0, i32 4)) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adau1372_spi_probe(ptr noundef %spi) #2 align 64 {
entry:
  %config = alloca %struct.regmap_config, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 172, ptr nonnull %config) #4
  %0 = call ptr @memcpy(ptr %config, ptr @adau1372_regmap_config, i32 172)
  %read_flag_mask = getelementptr inbounds %struct.regmap_config, ptr %config, i32 0, i32 31
  %1 = ptrtoint ptr %read_flag_mask to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %read_flag_mask, align 4
  %call = call ptr @__devm_regmap_init_spi(ptr noundef %spi, ptr noundef nonnull %config, ptr noundef nonnull @adau1372_spi_probe._key, ptr noundef nonnull @.str.1) #4
  %call1 = call i32 @adau1372_probe(ptr noundef %spi, ptr noundef %call, ptr noundef nonnull @adau1372_spi_switch_mode) #4
  call void @llvm.lifetime.end.p0(i64 172, ptr nonnull %config) #4
  ret i32 %call1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @adau1372_probe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_spi(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @adau1372_spi_switch_mode(ptr noundef %dev) #2 align 64 {
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
  store i8 -1, ptr %result.i, align 1, !annotation !28
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
  store i8 -1, ptr %result.i7, align 1, !annotation !28
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
  store i8 -1, ptr %result.i10, align 1, !annotation !28
  %call.i11 = call i32 @spi_write_then_read(ptr noundef %dev, ptr noundef nonnull %cmd.addr.i9, i32 noundef 1, ptr noundef nonnull %result.i10, i32 noundef 1) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %result.i10) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i9)
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_write_then_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18}
!llvm.module.flags = !{!19, !20, !21, !22, !23, !24, !25, !26}
!llvm.ident = !{!27}

!0 = !{ptr @__initcall__kmod_snd_soc_adau1372_spi__240_54_adau1372_spi_driver_init6, !1, !"__initcall__kmod_snd_soc_adau1372_spi__240_54_adau1372_spi_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/codecs/adau1372-spi.c", i32 54, i32 1}
!2 = !{ptr @__exitcall_adau1372_spi_driver_exit, !1, !"__exitcall_adau1372_spi_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description241, !4, !"__UNIQUE_ID_description241", i1 false, i1 false}
!4 = !{!"../sound/soc/codecs/adau1372-spi.c", i32 56, i32 1}
!5 = !{ptr @__UNIQUE_ID_author242, !6, !"__UNIQUE_ID_author242", i1 false, i1 false}
!6 = !{!"../sound/soc/codecs/adau1372-spi.c", i32 57, i32 1}
!7 = !{ptr @__UNIQUE_ID_file243, !8, !"__UNIQUE_ID_file243", i1 false, i1 false}
!8 = !{!"../sound/soc/codecs/adau1372-spi.c", i32 58, i32 1}
!9 = !{ptr @__UNIQUE_ID_license244, !8, !"__UNIQUE_ID_license244", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/soc/codecs/adau1372-spi.c", i32 49, i32 11}
!12 = !{ptr @adau1372_spi_driver, !13, !"adau1372_spi_driver", i1 false, i1 false}
!13 = !{!"../sound/soc/codecs/adau1372-spi.c", i32 47, i32 26}
!14 = !{ptr @adau1372_spi_id, !15, !"adau1372_spi_id", i1 false, i1 false}
!15 = !{!"../sound/soc/codecs/adau1372-spi.c", i32 41, i32 35}
!16 = !{ptr @adau1372_spi_probe._key, !17, !"_key", i1 false, i1 false}
!17 = !{!"../sound/soc/codecs/adau1372-spi.c", i32 38, i32 3}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{i32 1, !"wchar_size", i32 2}
!20 = !{i32 1, !"min_enum_size", i32 4}
!21 = !{i32 8, !"branch-target-enforcement", i32 0}
!22 = !{i32 8, !"sign-return-address", i32 0}
!23 = !{i32 8, !"sign-return-address-all", i32 0}
!24 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!25 = !{i32 7, !"uwtable", i32 1}
!26 = !{i32 7, !"frame-pointer", i32 2}
!27 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!28 = !{!"auto-init"}
