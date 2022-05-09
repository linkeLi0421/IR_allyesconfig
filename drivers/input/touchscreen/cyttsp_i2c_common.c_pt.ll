; ModuleID = '/llk/IR_all_yes/drivers/input/touchscreen/cyttsp_i2c_common.c_pt.bc'
source_filename = "../drivers/input/touchscreen/cyttsp_i2c_common.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+cyttsp_i2c_read_block_data\22, \22a\22\09"
module asm "\09.weak\09__crc_cyttsp_i2c_read_block_data\09\09\09\09"
module asm "\09.long\09__crc_cyttsp_i2c_read_block_data\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cyttsp_i2c_read_block_data:\09\09\09\09\09"
module asm "\09.asciz \09\22cyttsp_i2c_read_block_data\22\09\09\09\09\09"
module asm "__kstrtabns_cyttsp_i2c_read_block_data:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+cyttsp_i2c_write_block_data\22, \22a\22\09"
module asm "\09.weak\09__crc_cyttsp_i2c_write_block_data\09\09\09\09"
module asm "\09.long\09__crc_cyttsp_i2c_write_block_data\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cyttsp_i2c_write_block_data:\09\09\09\09\09"
module asm "\09.asciz \09\22cyttsp_i2c_write_block_data\22\09\09\09\09\09"
module asm "__kstrtabns_cyttsp_i2c_write_block_data:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@__kstrtab_cyttsp_i2c_read_block_data = external dso_local constant [0 x i8], align 1
@__kstrtabns_cyttsp_i2c_read_block_data = external dso_local constant [0 x i8], align 1
@__ksymtab_cyttsp_i2c_read_block_data = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cyttsp_i2c_read_block_data to i32), ptr @__kstrtab_cyttsp_i2c_read_block_data, ptr @__kstrtabns_cyttsp_i2c_read_block_data }, section "___ksymtab_gpl+cyttsp_i2c_read_block_data", align 4
@__kstrtab_cyttsp_i2c_write_block_data = external dso_local constant [0 x i8], align 1
@__kstrtabns_cyttsp_i2c_write_block_data = external dso_local constant [0 x i8], align 1
@__ksymtab_cyttsp_i2c_write_block_data = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cyttsp_i2c_write_block_data to i32), ptr @__kstrtab_cyttsp_i2c_write_block_data, ptr @__kstrtabns_cyttsp_i2c_write_block_data }, section "___ksymtab_gpl+cyttsp_i2c_write_block_data", align 4
@__UNIQUE_ID_file288 = internal constant [67 x i8] c"cyttsp_i2c_common.file=drivers/input/touchscreen/cyttsp_i2c_common\00", section ".modinfo", align 1
@__UNIQUE_ID_license289 = internal constant [30 x i8] c"cyttsp_i2c_common.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author290 = internal constant [33 x i8] c"cyttsp_i2c_common.author=Cypress\00", section ".modinfo", align 1
@llvm.compiler.used = appending global [5 x ptr] [ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_file288, ptr @__UNIQUE_ID_license289, ptr @__ksymtab_cyttsp_i2c_read_block_data, ptr @__ksymtab_cyttsp_i2c_write_block_data], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cyttsp_i2c_read_block_data(ptr nocapture noundef readonly %dev, ptr nocapture readnone %xfer_buf, i16 noundef zeroext %addr, i8 noundef zeroext %length, ptr noundef %values) #0 align 64 {
entry:
  %addr_lo = alloca i8, align 1
  %msgs = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %addr1 = getelementptr i8, ptr %dev, i32 -30
  %0 = ptrtoint ptr %addr1 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %addr1, align 2
  %2 = lshr i16 %addr, 8
  %and = and i16 %2, 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %addr_lo) #3
  %conv6 = trunc i16 %addr to i8
  %3 = ptrtoint ptr %addr_lo to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv6, ptr %addr_lo, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs) #3
  %4 = getelementptr inbounds i8, ptr %msgs, i32 4
  %5 = call ptr @memset(ptr %4, i32 255, i32 16)
  %.masked = and i16 %1, 255
  %conv8 = or i16 %.masked, %and
  %6 = ptrtoint ptr %msgs to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv8, ptr %msgs, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 1
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 2
  %8 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 1, ptr %len, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 3
  %9 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %addr_lo, ptr %buf, align 4
  %arrayinit.element = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 1
  %10 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv8, ptr %arrayinit.element, align 4
  %flags11 = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 1, i32 1
  %11 = ptrtoint ptr %flags11 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 1, ptr %flags11, align 2
  %len12 = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 1, i32 2
  %conv13 = zext i8 %length to i16
  %12 = ptrtoint ptr %len12 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv13, ptr %len12, align 4
  %buf14 = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 1, i32 3
  %13 = ptrtoint ptr %buf14 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %values, ptr %buf14, align 4
  %adapter = getelementptr i8, ptr %dev, i32 -8
  %14 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %adapter, align 8
  %call = call i32 @i2c_transfer(ptr noundef %15, ptr noundef nonnull %msgs, i32 noundef 2) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call)
  %cmp17.not = icmp eq i32 %call, 2
  %cond = select i1 %cmp17.not, i32 0, i32 -5
  %retval.0 = select i1 %cmp, i32 %call, i32 %cond
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %addr_lo) #3
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cyttsp_i2c_write_block_data(ptr nocapture noundef readonly %dev, ptr noundef %xfer_buf, i16 noundef zeroext %addr, i8 noundef zeroext %length, ptr nocapture noundef readonly %values) #0 align 64 {
entry:
  %msgs = alloca [1 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %addr1 = getelementptr i8, ptr %dev, i32 -30
  %0 = ptrtoint ptr %addr1 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %addr1, align 2
  %2 = lshr i16 %addr, 8
  %and = and i16 %2, 1
  %conv6 = trunc i16 %addr to i8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msgs) #3
  %3 = getelementptr inbounds i8, ptr %msgs, i32 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4
  %.masked = and i16 %1, 255
  %conv8 = or i16 %.masked, %and
  %5 = ptrtoint ptr %msgs to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %conv8, ptr %msgs, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 1
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 2
  %conv9 = zext i8 %length to i32
  %7 = zext i8 %length to i16
  %conv10 = add nuw nsw i16 %7, 1
  %8 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv10, ptr %len, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 3
  %9 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %xfer_buf, ptr %buf, align 4
  %10 = ptrtoint ptr %xfer_buf to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv6, ptr %xfer_buf, align 1
  %arrayidx12 = getelementptr i8, ptr %xfer_buf, i32 1
  %11 = call ptr @memcpy(ptr %arrayidx12, ptr %values, i32 %conv9)
  %adapter = getelementptr i8, ptr %dev, i32 -8
  %12 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %adapter, align 8
  %call = call i32 @i2c_transfer(ptr noundef %13, ptr noundef nonnull %msgs, i32 noundef 1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp15.not = icmp eq i32 %call, 1
  %cond = select i1 %cmp15.not, i32 0, i32 -5
  %retval.0 = select i1 %cmp, i32 %call, i32 %cond
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs) #3
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7}
!llvm.module.flags = !{!9, !10, !11, !12, !13, !14, !15, !16}
!llvm.ident = !{!17}

!0 = !{ptr @__ksymtab_cyttsp_i2c_read_block_data, !1, !"__ksymtab_cyttsp_i2c_read_block_data", i1 false, i1 false}
!1 = !{!"../drivers/input/touchscreen/cyttsp_i2c_common.c", i32 54, i32 1}
!2 = !{ptr @__ksymtab_cyttsp_i2c_write_block_data, !3, !"__ksymtab_cyttsp_i2c_write_block_data", i1 false, i1 false}
!3 = !{!"../drivers/input/touchscreen/cyttsp_i2c_common.c", i32 81, i32 1}
!4 = !{ptr @__UNIQUE_ID_file288, !5, !"__UNIQUE_ID_file288", i1 false, i1 false}
!5 = !{!"../drivers/input/touchscreen/cyttsp_i2c_common.c", i32 84, i32 1}
!6 = !{ptr @__UNIQUE_ID_license289, !5, !"__UNIQUE_ID_license289", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author290, !8, !"__UNIQUE_ID_author290", i1 false, i1 false}
!8 = !{!"../drivers/input/touchscreen/cyttsp_i2c_common.c", i32 85, i32 1}
!9 = !{i32 1, !"wchar_size", i32 2}
!10 = !{i32 1, !"min_enum_size", i32 4}
!11 = !{i32 8, !"branch-target-enforcement", i32 0}
!12 = !{i32 8, !"sign-return-address", i32 0}
!13 = !{i32 8, !"sign-return-address-all", i32 0}
!14 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!15 = !{i32 7, !"uwtable", i32 1}
!16 = !{i32 7, !"frame-pointer", i32 2}
!17 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
