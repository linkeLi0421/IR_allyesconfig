; ModuleID = '/llk/IR_all_yes/crypto/lz4.c_pt.bc'
source_filename = "../crypto/lz4.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.scomp_alg = type { ptr, ptr, ptr, ptr, [112 x i8], %struct.crypto_alg }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon, ptr, ptr, ptr, ptr, %union.anon.44, [120 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%union.anon = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%union.anon.44 = type { %struct.crypto_istat_akcipher }
%struct.crypto_istat_akcipher = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.compress_alg = type { ptr, ptr }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }

@scomp = internal global %struct.scomp_alg { ptr @lz4_alloc_ctx, ptr @lz4_free_ctx, ptr @lz4_scompress, ptr @lz4_sdecompress, [112 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"lz4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"lz4-scomp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.44 zeroinitializer, [120 x i8] undef } }, align 128
@__initcall__kmod_lz4__173_155_lz4_mod_init4 = internal global ptr @lz4_mod_init, section ".initcall4.init", align 4
@__exitcall_lz4_mod_fini = internal global ptr @lz4_mod_fini, section ".exitcall.exit", align 4
@__UNIQUE_ID_file174 = internal constant [20 x i8] c"lz4.file=crypto/lz4\00", section ".modinfo", align 1
@__UNIQUE_ID_license175 = internal constant [16 x i8] c"lz4.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description176 = internal constant [42 x i8] c"lz4.description=LZ4 Compression Algorithm\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace177 = internal constant [14 x i8] c"lz4.alias=lz4\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto178 = internal constant [21 x i8] c"lz4.alias=crypto-lz4\00", section ".modinfo", align 1
@alg_lz4 = internal global { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, { %struct.compress_alg, [12 x i8] }, ptr, ptr, ptr, ptr, %union.anon.44, [120 x i8] } { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 2, i32 0, i32 4, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"lz4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"lz4-generic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, { %struct.compress_alg, [12 x i8] } { %struct.compress_alg { ptr @lz4_compress_crypto, ptr @lz4_decompress_crypto }, [12 x i8] undef }, ptr @lz4_init, ptr @lz4_exit, ptr null, ptr null, %union.anon.44 zeroinitializer, [120 x i8] undef }, align 128
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_alias_crypto178, ptr @__UNIQUE_ID_alias_userspace177, ptr @__UNIQUE_ID_description176, ptr @__UNIQUE_ID_file174, ptr @__UNIQUE_ID_license175, ptr @__exitcall_lz4_mod_fini, ptr @__initcall__kmod_lz4__173_155_lz4_mod_init4, ptr @lz4_mod_fini], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @lz4_mod_fini() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @crypto_unregister_alg(ptr noundef nonnull @alg_lz4) #4
  tail call void @crypto_unregister_scomp(ptr noundef nonnull @scomp) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_alg(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_scomp(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @lz4_mod_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @crypto_register_alg(ptr noundef nonnull @alg_lz4) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @crypto_register_scomp(ptr noundef nonnull @scomp) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @crypto_unregister_alg(ptr noundef nonnull @alg_lz4) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.then3 ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lz4_compress_crypto(ptr nocapture noundef readonly %tfm, ptr noundef %src, i32 noundef %slen, ptr noundef %dst, ptr nocapture noundef %dlen) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %0 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_ctx.i, align 4
  %2 = ptrtoint ptr %dlen to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dlen, align 4
  %call.i = tail call i32 @LZ4_compress_default(ptr noundef %src, ptr noundef %dst, i32 noundef %slen, i32 noundef %3, ptr noundef %1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %entry.__lz4_compress_crypto.exit_crit_edge, label %if.end.i

entry.__lz4_compress_crypto.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %__lz4_compress_crypto.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %dlen to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call.i, ptr %dlen, align 4
  br label %__lz4_compress_crypto.exit

__lz4_compress_crypto.exit:                       ; preds = %if.end.i, %entry.__lz4_compress_crypto.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end.i ], [ -22, %entry.__lz4_compress_crypto.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lz4_decompress_crypto(ptr nocapture noundef readnone %tfm, ptr noundef %src, i32 noundef %slen, ptr noundef %dst, ptr nocapture noundef %dlen) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dlen to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dlen, align 4
  %call.i = tail call i32 @LZ4_decompress_safe(ptr noundef %src, ptr noundef %dst, i32 noundef %slen, i32 noundef %1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.__lz4_decompress_crypto.exit_crit_edge, label %if.end.i

entry.__lz4_decompress_crypto.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %__lz4_decompress_crypto.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %2 = ptrtoint ptr %dlen to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call.i, ptr %dlen, align 4
  br label %__lz4_decompress_crypto.exit

__lz4_decompress_crypto.exit:                     ; preds = %if.end.i, %entry.__lz4_decompress_crypto.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end.i ], [ -22, %entry.__lz4_decompress_crypto.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lz4_init(ptr nocapture noundef writeonly %tfm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %call.i = tail call noalias ptr @vmalloc(i32 noundef 16416) #7
  %tobool.not.i = icmp eq ptr %call.i, null
  %spec.select.i = select i1 %tobool.not.i, ptr inttoptr (i32 -12 to ptr), ptr %call.i
  %0 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %spec.select.i, ptr %__crt_ctx.i, align 4
  %cmp.i = icmp ugt ptr %spec.select.i, inttoptr (i32 -4096 to ptr)
  %. = select i1 %cmp.i, i32 -12, i32 0
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lz4_exit(ptr nocapture noundef readonly %tfm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %0 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_ctx.i, align 4
  tail call void @vfree(ptr noundef %1) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @LZ4_compress_default(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @LZ4_decompress_safe(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @lz4_alloc_ctx(ptr nocapture noundef readnone %tfm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call noalias ptr @vmalloc(i32 noundef 16416) #7
  %tobool.not = icmp eq ptr %call, null
  %spec.select = select i1 %tobool.not, ptr inttoptr (i32 -12 to ptr), ptr %call
  ret ptr %spec.select
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lz4_free_ctx(ptr nocapture noundef readnone %tfm, ptr noundef %ctx) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @vfree(ptr noundef %ctx) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lz4_scompress(ptr nocapture noundef readnone %tfm, ptr noundef %src, i32 noundef %slen, ptr noundef %dst, ptr nocapture noundef %dlen, ptr noundef %ctx) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dlen to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dlen, align 4
  %call.i = tail call i32 @LZ4_compress_default(ptr noundef %src, ptr noundef %dst, i32 noundef %slen, i32 noundef %1, ptr noundef %ctx) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %entry.__lz4_compress_crypto.exit_crit_edge, label %if.end.i

entry.__lz4_compress_crypto.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %__lz4_compress_crypto.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %2 = ptrtoint ptr %dlen to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call.i, ptr %dlen, align 4
  br label %__lz4_compress_crypto.exit

__lz4_compress_crypto.exit:                       ; preds = %if.end.i, %entry.__lz4_compress_crypto.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end.i ], [ -22, %entry.__lz4_compress_crypto.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lz4_sdecompress(ptr nocapture noundef readnone %tfm, ptr noundef %src, i32 noundef %slen, ptr noundef %dst, ptr nocapture noundef %dlen, ptr nocapture noundef readnone %ctx) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dlen to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dlen, align 4
  %call.i = tail call i32 @LZ4_decompress_safe(ptr noundef %src, ptr noundef %dst, i32 noundef %slen, i32 noundef %1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.__lz4_decompress_crypto.exit_crit_edge, label %if.end.i

entry.__lz4_decompress_crypto.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %__lz4_decompress_crypto.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %2 = ptrtoint ptr %dlen to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call.i, ptr %dlen, align 4
  br label %__lz4_decompress_crypto.exit

__lz4_decompress_crypto.exit:                     ; preds = %if.end.i, %entry.__lz4_decompress_crypto.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end.i ], [ -22, %entry.__lz4_decompress_crypto.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_alg(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_scomp(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !12, !14}
!llvm.module.flags = !{!16, !17, !18, !19, !20, !21, !22, !23}
!llvm.ident = !{!24}

!0 = !{ptr @__initcall__kmod_lz4__173_155_lz4_mod_init4, !1, !"__initcall__kmod_lz4__173_155_lz4_mod_init4", i1 false, i1 false}
!1 = !{!"../crypto/lz4.c", i32 155, i32 1}
!2 = !{ptr @__exitcall_lz4_mod_fini, !3, !"__exitcall_lz4_mod_fini", i1 false, i1 false}
!3 = !{!"../crypto/lz4.c", i32 156, i32 1}
!4 = !{ptr @__UNIQUE_ID_file174, !5, !"__UNIQUE_ID_file174", i1 false, i1 false}
!5 = !{!"../crypto/lz4.c", i32 158, i32 1}
!6 = !{ptr @__UNIQUE_ID_license175, !5, !"__UNIQUE_ID_license175", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_description176, !8, !"__UNIQUE_ID_description176", i1 false, i1 false}
!8 = !{!"../crypto/lz4.c", i32 159, i32 1}
!9 = !{ptr @__UNIQUE_ID_alias_userspace177, !10, !"__UNIQUE_ID_alias_userspace177", i1 false, i1 false}
!10 = !{!"../crypto/lz4.c", i32 160, i32 1}
!11 = !{ptr @__UNIQUE_ID_alias_crypto178, !10, !"__UNIQUE_ID_alias_crypto178", i1 false, i1 false}
!12 = !{ptr @alg_lz4, !13, !"alg_lz4", i1 false, i1 false}
!13 = !{!"../crypto/lz4.c", i32 107, i32 26}
!14 = !{ptr @scomp, !15, !"scomp", i1 false, i1 false}
!15 = !{!"../crypto/lz4.c", i32 120, i32 25}
!16 = !{i32 1, !"wchar_size", i32 2}
!17 = !{i32 1, !"min_enum_size", i32 4}
!18 = !{i32 8, !"branch-target-enforcement", i32 0}
!19 = !{i32 8, !"sign-return-address", i32 0}
!20 = !{i32 8, !"sign-return-address-all", i32 0}
!21 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!22 = !{i32 7, !"uwtable", i32 1}
!23 = !{i32 7, !"frame-pointer", i32 2}
!24 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
