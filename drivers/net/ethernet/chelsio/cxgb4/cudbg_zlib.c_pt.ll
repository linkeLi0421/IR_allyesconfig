; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/chelsio/cxgb4/cudbg_zlib.c_pt.bc'
source_filename = "../drivers/net/ethernet/chelsio/cxgb4/cudbg_zlib.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.z_stream_s = type { ptr, i32, i32, ptr, i32, i32, ptr, ptr, ptr, i32, i32, i32 }
%struct.cudbg_buffer = type { i32, i32, ptr }
%struct.cudbg_init = type { ptr, ptr, i32, i8, ptr, i32, ptr }
%struct.cudbg_compress_hdr = type { i32, i64, i64, [32 x i64] }

@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cudbg_compress_buff(ptr nocapture noundef readonly %pdbg_init, ptr nocapture noundef readonly %pin_buff, ptr nocapture noundef %pout_buff) local_unnamed_addr #0 align 64 {
entry:
  %compress_stream = alloca %struct.z_stream_s, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %compress_stream) #3
  %offset.i = getelementptr inbounds %struct.cudbg_buffer, ptr %pout_buff, i32 0, i32 1
  %0 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %offset.i, align 4
  %add.i = add i32 %1, 280
  %2 = ptrtoint ptr %pout_buff to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pout_buff, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %3)
  %cmp.i = icmp ugt i32 %add.i, %3
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %data.i = getelementptr inbounds %struct.cudbg_buffer, ptr %pout_buff, i32 0, i32 2
  %4 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 %1
  %6 = ptrtoint ptr %offset.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %add.i, ptr %offset.i, align 4
  %7 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 17, ptr %add.ptr.i, align 8
  %8 = call ptr @memset(ptr %compress_stream, i32 0, i32 48)
  %workspace = getelementptr inbounds %struct.cudbg_init, ptr %pdbg_init, i32 0, i32 6
  %9 = ptrtoint ptr %workspace to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %workspace, align 4
  %workspace1 = getelementptr inbounds %struct.z_stream_s, ptr %compress_stream, i32 0, i32 8
  %11 = ptrtoint ptr %workspace1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %workspace1, align 4
  %call2 = call i32 @zlib_deflateInit2(ptr noundef nonnull %compress_stream, i32 noundef -1, i32 noundef 8, i32 noundef 12, i32 noundef 4, i32 noundef 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp.not = icmp eq i32 %call2, 0
  br i1 %cmp.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %data5 = getelementptr inbounds %struct.cudbg_buffer, ptr %pin_buff, i32 0, i32 2
  %12 = ptrtoint ptr %data5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data5, align 4
  %14 = ptrtoint ptr %compress_stream to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %compress_stream, align 4
  %15 = ptrtoint ptr %pin_buff to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pin_buff, align 4
  %avail_in = getelementptr inbounds %struct.z_stream_s, ptr %compress_stream, i32 0, i32 1
  %17 = ptrtoint ptr %avail_in to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %avail_in, align 4
  %18 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data.i, align 4
  %20 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %offset.i, align 4
  %add.ptr = getelementptr i8, ptr %19, i32 %21
  %next_out = getelementptr inbounds %struct.z_stream_s, ptr %compress_stream, i32 0, i32 3
  %22 = ptrtoint ptr %next_out to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %add.ptr, ptr %next_out, align 4
  %23 = ptrtoint ptr %pout_buff to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pout_buff, align 4
  %sub = sub i32 %24, %21
  %avail_out = getelementptr inbounds %struct.z_stream_s, ptr %compress_stream, i32 0, i32 4
  %25 = ptrtoint ptr %avail_out to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %sub, ptr %avail_out, align 4
  %call9 = call i32 @zlib_deflate(ptr noundef nonnull %compress_stream, i32 noundef 5) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call9)
  %cmp10.not = icmp eq i32 %call9, 1
  br i1 %cmp10.not, label %if.end12, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end12:                                         ; preds = %if.end4
  %call13 = call i32 @zlib_deflateEnd(ptr noundef nonnull %compress_stream) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14.not = icmp eq i32 %call13, 0
  br i1 %cmp14.not, label %if.end16, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end16:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #5
  %total_out = getelementptr inbounds %struct.z_stream_s, ptr %compress_stream, i32 0, i32 5
  %26 = ptrtoint ptr %total_out to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %total_out, align 4
  %conv = zext i32 %27 to i64
  %compress_size = getelementptr inbounds %struct.cudbg_compress_hdr, ptr %add.ptr.i, i32 0, i32 2
  %28 = ptrtoint ptr %compress_size to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %conv, ptr %compress_size, align 8
  %29 = ptrtoint ptr %pin_buff to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %pin_buff, align 4
  %conv18 = zext i32 %30 to i64
  %decompress_size = getelementptr inbounds %struct.cudbg_compress_hdr, ptr %add.ptr.i, i32 0, i32 1
  %31 = ptrtoint ptr %decompress_size to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %conv18, ptr %decompress_size, align 8
  %32 = load i32, ptr %total_out, align 4
  %33 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %offset.i, align 4
  %add = add i32 %34, %32
  store i32 %add, ptr %offset.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end12.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end16 ], [ -29, %if.end.cleanup_crit_edge ], [ -29, %if.end4.cleanup_crit_edge ], [ -29, %if.end12.cleanup_crit_edge ], [ -19, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %compress_stream) #3
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zlib_deflateInit2(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zlib_deflate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zlib_deflateEnd(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

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

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"branch-target-enforcement", i32 0}
!3 = !{i32 8, !"sign-return-address", i32 0}
!4 = !{i32 8, !"sign-return-address-all", i32 0}
!5 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{i32 7, !"frame-pointer", i32 2}
!8 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
