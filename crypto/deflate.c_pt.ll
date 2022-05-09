; ModuleID = '/llk/IR_all_yes/crypto/deflate.c_pt.bc'
source_filename = "../crypto/deflate.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.scomp_alg = type { ptr, ptr, ptr, ptr, [112 x i8], %struct.crypto_alg }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon, ptr, ptr, ptr, ptr, %union.anon.71, [120 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%union.anon = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%union.anon.71 = type { %struct.crypto_istat_akcipher }
%struct.crypto_istat_akcipher = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.compress_alg = type { ptr, ptr }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.z_stream_s = type { ptr, i32, i32, ptr, i32, i32, ptr, ptr, ptr, i32, i32, i32 }
%struct.deflate_ctx = type { %struct.z_stream_s, %struct.z_stream_s }

@scomp = internal global [2 x %struct.scomp_alg] [%struct.scomp_alg { ptr @deflate_alloc_ctx, ptr @deflate_free_ctx, ptr @deflate_scompress, ptr @deflate_sdecompress, [112 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"deflate\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"deflate-scomp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.71 zeroinitializer, [120 x i8] undef } }, %struct.scomp_alg { ptr @zlib_deflate_alloc_ctx, ptr @deflate_free_ctx, ptr @deflate_scompress, ptr @deflate_sdecompress, [112 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"zlib-deflate\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"zlib-deflate-scomp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.71 zeroinitializer, [120 x i8] undef } }], align 128
@__initcall__kmod_deflate__234_334_deflate_mod_init4 = internal global ptr @deflate_mod_init, section ".initcall4.init", align 4
@__exitcall_deflate_mod_fini = internal global ptr @deflate_mod_fini, section ".exitcall.exit", align 4
@__UNIQUE_ID_file235 = internal constant [28 x i8] c"deflate.file=crypto/deflate\00", section ".modinfo", align 1
@__UNIQUE_ID_license236 = internal constant [20 x i8] c"deflate.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description237 = internal constant [61 x i8] c"deflate.description=Deflate Compression Algorithm for IPCOMP\00", section ".modinfo", align 1
@__UNIQUE_ID_author238 = internal constant [55 x i8] c"deflate.author=James Morris <jmorris@intercode.com.au>\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace239 = internal constant [22 x i8] c"deflate.alias=deflate\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto240 = internal constant [29 x i8] c"deflate.alias=crypto-deflate\00", section ".modinfo", align 1
@alg = internal global { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, { %struct.compress_alg, [12 x i8] }, ptr, ptr, ptr, ptr, %union.anon.71, [120 x i8] } { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 2, i32 0, i32 96, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"deflate\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"deflate-generic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, { %struct.compress_alg, [12 x i8] } { %struct.compress_alg { ptr @deflate_compress, ptr @deflate_decompress }, [12 x i8] undef }, ptr @deflate_init, ptr @deflate_exit, ptr null, ptr null, %union.anon.71 zeroinitializer, [120 x i8] undef }, align 128
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@llvm.compiler.used = appending global [9 x ptr] [ptr @__UNIQUE_ID_alias_crypto240, ptr @__UNIQUE_ID_alias_userspace239, ptr @__UNIQUE_ID_author238, ptr @__UNIQUE_ID_description237, ptr @__UNIQUE_ID_file235, ptr @__UNIQUE_ID_license236, ptr @__exitcall_deflate_mod_fini, ptr @__initcall__kmod_deflate__234_334_deflate_mod_init4, ptr @deflate_mod_fini], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @deflate_mod_fini() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @crypto_unregister_alg(ptr noundef nonnull @alg) #6
  tail call void @crypto_unregister_scomps(ptr noundef nonnull @scomp, i32 noundef 2) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_alg(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_scomps(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @deflate_mod_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @crypto_register_alg(ptr noundef nonnull @alg) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @crypto_register_scomps(ptr noundef nonnull @scomp, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @crypto_unregister_alg(ptr noundef nonnull @alg) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.then3 ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @deflate_compress(ptr noundef %tfm, ptr noundef %src, i32 noundef %slen, ptr noundef %dst, ptr nocapture noundef %dlen) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %call.i = tail call i32 @zlib_deflateReset(ptr noundef %__crt_ctx.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp.not.i, label %if.end.i, label %entry.__deflate_compress.exit_crit_edge

entry.__deflate_compress.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %__deflate_compress.exit

if.end.i:                                         ; preds = %entry
  %0 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %src, ptr %__crt_ctx.i, align 4
  %avail_in.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 1
  %1 = ptrtoint ptr %avail_in.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %slen, ptr %avail_in.i, align 4
  %next_out.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 3
  %2 = ptrtoint ptr %next_out.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dst, ptr %next_out.i, align 4
  %3 = ptrtoint ptr %dlen to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %dlen, align 4
  %avail_out.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 4
  %5 = ptrtoint ptr %avail_out.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %avail_out.i, align 4
  %call1.i = tail call i32 @zlib_deflate(ptr noundef %__crt_ctx.i, i32 noundef 5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call1.i)
  %cmp2.not.i = icmp eq i32 %call1.i, 1
  br i1 %cmp2.not.i, label %if.end4.i, label %if.end.i.__deflate_compress.exit_crit_edge

if.end.i.__deflate_compress.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__deflate_compress.exit

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %total_out.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 4
  %6 = ptrtoint ptr %total_out.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %total_out.i, align 4
  %8 = ptrtoint ptr %dlen to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %dlen, align 4
  br label %__deflate_compress.exit

__deflate_compress.exit:                          ; preds = %if.end4.i, %if.end.i.__deflate_compress.exit_crit_edge, %entry.__deflate_compress.exit_crit_edge
  %ret.0.i = phi i32 [ 0, %if.end4.i ], [ -22, %entry.__deflate_compress.exit_crit_edge ], [ -22, %if.end.i.__deflate_compress.exit_crit_edge ]
  ret i32 %ret.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @deflate_decompress(ptr noundef %tfm, ptr noundef %src, i32 noundef %slen, ptr noundef %dst, ptr nocapture noundef %dlen) #2 align 64 {
entry:
  %zerostuff.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %decomp_stream.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 32
  %call.i = tail call i32 @zlib_inflateReset(ptr noundef %decomp_stream.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp.not.i, label %if.end.i, label %entry.__deflate_decompress.exit_crit_edge

entry.__deflate_decompress.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %__deflate_decompress.exit

if.end.i:                                         ; preds = %entry
  %0 = ptrtoint ptr %decomp_stream.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %src, ptr %decomp_stream.i, align 4
  %avail_in.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 36
  %1 = ptrtoint ptr %avail_in.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %slen, ptr %avail_in.i, align 4
  %next_out.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 44
  %2 = ptrtoint ptr %next_out.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dst, ptr %next_out.i, align 4
  %3 = ptrtoint ptr %dlen to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %dlen, align 4
  %avail_out.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 48
  %5 = ptrtoint ptr %avail_out.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %avail_out.i, align 4
  %call1.i = tail call i32 @zlib_inflate(ptr noundef %decomp_stream.i, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp2.i = icmp eq i32 %call1.i, 0
  br i1 %cmp2.i, label %land.lhs.true.i, label %if.end.i.if.end11.i_crit_edge

if.end.i.if.end11.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %6 = ptrtoint ptr %avail_in.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %avail_in.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %land.lhs.true4.i, label %land.lhs.true.i.__deflate_decompress.exit_crit_edge

land.lhs.true.i.__deflate_decompress.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__deflate_decompress.exit

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %8 = ptrtoint ptr %avail_out.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %avail_out.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool6.not.i = icmp eq i32 %9, 0
  br i1 %tobool6.not.i, label %land.lhs.true4.i.__deflate_decompress.exit_crit_edge, label %if.then7.i

land.lhs.true4.i.__deflate_decompress.exit_crit_edge: ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__deflate_decompress.exit

if.then7.i:                                       ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %zerostuff.i) #6
  %10 = ptrtoint ptr %zerostuff.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %zerostuff.i, align 1
  %11 = ptrtoint ptr %decomp_stream.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %zerostuff.i, ptr %decomp_stream.i, align 4
  %12 = ptrtoint ptr %avail_in.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %avail_in.i, align 4
  %call10.i = call i32 @zlib_inflate(ptr noundef %decomp_stream.i, i32 noundef 5) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %zerostuff.i) #6
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then7.i, %if.end.i.if.end11.i_crit_edge
  %ret.0.i = phi i32 [ %call10.i, %if.then7.i ], [ %call1.i, %if.end.i.if.end11.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %ret.0.i)
  %cmp12.not.i = icmp eq i32 %ret.0.i, 1
  br i1 %cmp12.not.i, label %if.end14.i, label %if.end11.i.__deflate_decompress.exit_crit_edge

if.end11.i.__deflate_decompress.exit_crit_edge:   ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__deflate_decompress.exit

if.end14.i:                                       ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #8
  %total_out.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 52
  %13 = ptrtoint ptr %total_out.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %total_out.i, align 4
  %15 = ptrtoint ptr %dlen to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %dlen, align 4
  br label %__deflate_decompress.exit

__deflate_decompress.exit:                        ; preds = %if.end14.i, %if.end11.i.__deflate_decompress.exit_crit_edge, %land.lhs.true4.i.__deflate_decompress.exit_crit_edge, %land.lhs.true.i.__deflate_decompress.exit_crit_edge, %entry.__deflate_decompress.exit_crit_edge
  %ret.1.i = phi i32 [ 0, %if.end14.i ], [ -22, %entry.__deflate_decompress.exit_crit_edge ], [ -22, %if.end11.i.__deflate_decompress.exit_crit_edge ], [ -22, %land.lhs.true.i.__deflate_decompress.exit_crit_edge ], [ -22, %land.lhs.true4.i.__deflate_decompress.exit_crit_edge ]
  ret i32 %ret.1.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @deflate_init(ptr noundef %tfm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %call1 = tail call fastcc i32 @__deflate_init(ptr noundef %__crt_ctx.i, i32 noundef 0)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @deflate_exit(ptr noundef %tfm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %call.i.i = tail call i32 @zlib_deflateEnd(ptr noundef %__crt_ctx.i) #6
  %workspace.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 16
  %0 = ptrtoint ptr %workspace.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %workspace.i.i, align 4
  tail call void @vfree(ptr noundef %1) #6
  %decomp_stream.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 32
  %call.i2.i = tail call i32 @zlib_inflateEnd(ptr noundef %decomp_stream.i.i) #6
  %workspace.i3.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 64
  %2 = ptrtoint ptr %workspace.i3.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %workspace.i3.i, align 4
  tail call void @vfree(ptr noundef %3) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zlib_deflateReset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zlib_deflate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zlib_inflateReset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zlib_inflate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__deflate_init(ptr noundef %ctx, i32 noundef %format) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @zlib_deflate_workspacesize(i32 noundef 15, i32 noundef 8) #6
  %call1.i = tail call noalias ptr @vzalloc(i32 noundef %call.i) #9
  %workspace.i = getelementptr inbounds %struct.z_stream_s, ptr %ctx, i32 0, i32 8
  %0 = ptrtoint ptr %workspace.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call1.i, ptr %workspace.i, align 4
  %tobool.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i, label %entry.out_crit_edge, label %if.end.i

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %format)
  %tobool3.not.i = icmp eq i32 %format, 0
  br i1 %tobool3.not.i, label %if.else.i, label %if.then4.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %call5.i = tail call i32 @zlib_deflateInit2(ptr noundef %ctx, i32 noundef 3, i32 noundef 8, i32 noundef 15, i32 noundef 8, i32 noundef 0) #6
  br label %if.end7.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %call6.i = tail call i32 @zlib_deflateInit2(ptr noundef %ctx, i32 noundef -1, i32 noundef 8, i32 noundef -11, i32 noundef 8, i32 noundef 0) #6
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.else.i, %if.then4.i
  %ret.0.i = phi i32 [ %call5.i, %if.then4.i ], [ %call6.i, %if.else.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %cmp.not.i = icmp eq i32 %ret.0.i, 0
  br i1 %cmp.not.i, label %if.end, label %if.end7.i.out.sink.split_crit_edge

if.end7.i.out.sink.split_crit_edge:               ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out.sink.split

if.end:                                           ; preds = %if.end7.i
  %call.i10 = tail call i32 @zlib_inflate_workspacesize() #6
  %call1.i11 = tail call noalias ptr @vzalloc(i32 noundef %call.i10) #9
  %workspace.i12 = getelementptr inbounds %struct.deflate_ctx, ptr %ctx, i32 0, i32 1, i32 8
  %1 = ptrtoint ptr %workspace.i12 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call1.i11, ptr %workspace.i12, align 4
  %tobool.not.i13 = icmp eq ptr %call1.i11, null
  br i1 %tobool.not.i13, label %if.end.if.then3_crit_edge, label %if.end.i17

if.end.if.then3_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then3

if.end.i17:                                       ; preds = %if.end
  %decomp_stream.i = getelementptr inbounds %struct.deflate_ctx, ptr %ctx, i32 0, i32 1
  %..i = select i1 %tobool3.not.i, i32 -11, i32 15
  %call6.i15 = tail call i32 @zlib_inflateInit2(ptr noundef %decomp_stream.i, i32 noundef %..i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i15)
  %cmp.not.i16 = icmp eq i32 %call6.i15, 0
  br i1 %cmp.not.i16, label %if.end.i17.out_crit_edge, label %if.then8.i18

if.end.i17.out_crit_edge:                         ; preds = %if.end.i17
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.then8.i18:                                     ; preds = %if.end.i17
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %workspace.i12 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %workspace.i12, align 4
  tail call void @vfree(ptr noundef %3) #6
  br label %if.then3

if.then3:                                         ; preds = %if.then8.i18, %if.end.if.then3_crit_edge
  %ret.1.i19.ph = phi i32 [ -12, %if.end.if.then3_crit_edge ], [ -22, %if.then8.i18 ]
  %call.i20 = tail call i32 @zlib_deflateEnd(ptr noundef %ctx) #6
  br label %out.sink.split

out.sink.split:                                   ; preds = %if.then3, %if.end7.i.out.sink.split_crit_edge
  %ret.0.ph = phi i32 [ %ret.1.i19.ph, %if.then3 ], [ -22, %if.end7.i.out.sink.split_crit_edge ]
  %4 = ptrtoint ptr %workspace.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %workspace.i, align 4
  tail call void @vfree(ptr noundef %5) #6
  br label %out

out:                                              ; preds = %out.sink.split, %if.end.i17.out_crit_edge, %entry.out_crit_edge
  %ret.0 = phi i32 [ 0, %if.end.i17.out_crit_edge ], [ -12, %entry.out_crit_edge ], [ %ret.0.ph, %out.sink.split ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zlib_deflate_workspacesize(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zlib_deflateInit2(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zlib_inflate_workspacesize() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zlib_inflateInit2(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zlib_deflateEnd(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zlib_inflateEnd(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @deflate_alloc_ctx(ptr nocapture noundef readnone %tfm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 96) #10
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.gen_deflate_alloc_ctx.exit_crit_edge, label %if.end.i

entry.gen_deflate_alloc_ctx.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %gen_deflate_alloc_ctx.exit

if.end.i:                                         ; preds = %entry
  %call2.i = tail call fastcc i32 @__deflate_init(ptr noundef nonnull %call7.i.i.i, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end.i.gen_deflate_alloc_ctx.exit_crit_edge, label %if.then4.i

if.end.i.gen_deflate_alloc_ctx.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %gen_deflate_alloc_ctx.exit

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #6
  %1 = inttoptr i32 %call2.i to ptr
  br label %gen_deflate_alloc_ctx.exit

gen_deflate_alloc_ctx.exit:                       ; preds = %if.then4.i, %if.end.i.gen_deflate_alloc_ctx.exit_crit_edge, %entry.gen_deflate_alloc_ctx.exit_crit_edge
  %retval.0.i = phi ptr [ %1, %if.then4.i ], [ %call7.i.i.i, %if.end.i.gen_deflate_alloc_ctx.exit_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.gen_deflate_alloc_ctx.exit_crit_edge ]
  ret ptr %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @deflate_free_ctx(ptr nocapture noundef readnone %tfm, ptr noundef %ctx) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call i32 @zlib_deflateEnd(ptr noundef %ctx) #6
  %workspace.i.i = getelementptr inbounds %struct.z_stream_s, ptr %ctx, i32 0, i32 8
  %0 = ptrtoint ptr %workspace.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %workspace.i.i, align 4
  tail call void @vfree(ptr noundef %1) #6
  %decomp_stream.i.i = getelementptr inbounds %struct.deflate_ctx, ptr %ctx, i32 0, i32 1
  %call.i2.i = tail call i32 @zlib_inflateEnd(ptr noundef %decomp_stream.i.i) #6
  %workspace.i3.i = getelementptr inbounds %struct.deflate_ctx, ptr %ctx, i32 0, i32 1, i32 8
  %2 = ptrtoint ptr %workspace.i3.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %workspace.i3.i, align 4
  tail call void @vfree(ptr noundef %3) #6
  tail call void @kfree_sensitive(ptr noundef %ctx) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @deflate_scompress(ptr nocapture noundef readnone %tfm, ptr noundef %src, i32 noundef %slen, ptr noundef %dst, ptr nocapture noundef %dlen, ptr noundef %ctx) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @zlib_deflateReset(ptr noundef %ctx) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp.not.i, label %if.end.i, label %entry.__deflate_compress.exit_crit_edge

entry.__deflate_compress.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %__deflate_compress.exit

if.end.i:                                         ; preds = %entry
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %src, ptr %ctx, align 4
  %avail_in.i = getelementptr inbounds %struct.z_stream_s, ptr %ctx, i32 0, i32 1
  %1 = ptrtoint ptr %avail_in.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %slen, ptr %avail_in.i, align 4
  %next_out.i = getelementptr inbounds %struct.z_stream_s, ptr %ctx, i32 0, i32 3
  %2 = ptrtoint ptr %next_out.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dst, ptr %next_out.i, align 4
  %3 = ptrtoint ptr %dlen to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %dlen, align 4
  %avail_out.i = getelementptr inbounds %struct.z_stream_s, ptr %ctx, i32 0, i32 4
  %5 = ptrtoint ptr %avail_out.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %avail_out.i, align 4
  %call1.i = tail call i32 @zlib_deflate(ptr noundef %ctx, i32 noundef 5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call1.i)
  %cmp2.not.i = icmp eq i32 %call1.i, 1
  br i1 %cmp2.not.i, label %if.end4.i, label %if.end.i.__deflate_compress.exit_crit_edge

if.end.i.__deflate_compress.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__deflate_compress.exit

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %total_out.i = getelementptr inbounds %struct.z_stream_s, ptr %ctx, i32 0, i32 5
  %6 = ptrtoint ptr %total_out.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %total_out.i, align 4
  %8 = ptrtoint ptr %dlen to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %dlen, align 4
  br label %__deflate_compress.exit

__deflate_compress.exit:                          ; preds = %if.end4.i, %if.end.i.__deflate_compress.exit_crit_edge, %entry.__deflate_compress.exit_crit_edge
  %ret.0.i = phi i32 [ 0, %if.end4.i ], [ -22, %entry.__deflate_compress.exit_crit_edge ], [ -22, %if.end.i.__deflate_compress.exit_crit_edge ]
  ret i32 %ret.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @deflate_sdecompress(ptr nocapture noundef readnone %tfm, ptr noundef %src, i32 noundef %slen, ptr noundef %dst, ptr nocapture noundef %dlen, ptr noundef %ctx) #2 align 64 {
entry:
  %zerostuff.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %decomp_stream.i = getelementptr inbounds %struct.deflate_ctx, ptr %ctx, i32 0, i32 1
  %call.i = tail call i32 @zlib_inflateReset(ptr noundef %decomp_stream.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp.not.i, label %if.end.i, label %entry.__deflate_decompress.exit_crit_edge

entry.__deflate_decompress.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %__deflate_decompress.exit

if.end.i:                                         ; preds = %entry
  %0 = ptrtoint ptr %decomp_stream.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %src, ptr %decomp_stream.i, align 4
  %avail_in.i = getelementptr inbounds %struct.deflate_ctx, ptr %ctx, i32 0, i32 1, i32 1
  %1 = ptrtoint ptr %avail_in.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %slen, ptr %avail_in.i, align 4
  %next_out.i = getelementptr inbounds %struct.deflate_ctx, ptr %ctx, i32 0, i32 1, i32 3
  %2 = ptrtoint ptr %next_out.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dst, ptr %next_out.i, align 4
  %3 = ptrtoint ptr %dlen to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %dlen, align 4
  %avail_out.i = getelementptr inbounds %struct.deflate_ctx, ptr %ctx, i32 0, i32 1, i32 4
  %5 = ptrtoint ptr %avail_out.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %avail_out.i, align 4
  %call1.i = tail call i32 @zlib_inflate(ptr noundef %decomp_stream.i, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp2.i = icmp eq i32 %call1.i, 0
  br i1 %cmp2.i, label %land.lhs.true.i, label %if.end.i.if.end11.i_crit_edge

if.end.i.if.end11.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %6 = ptrtoint ptr %avail_in.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %avail_in.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %land.lhs.true4.i, label %land.lhs.true.i.__deflate_decompress.exit_crit_edge

land.lhs.true.i.__deflate_decompress.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__deflate_decompress.exit

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %8 = ptrtoint ptr %avail_out.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %avail_out.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool6.not.i = icmp eq i32 %9, 0
  br i1 %tobool6.not.i, label %land.lhs.true4.i.__deflate_decompress.exit_crit_edge, label %if.then7.i

land.lhs.true4.i.__deflate_decompress.exit_crit_edge: ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__deflate_decompress.exit

if.then7.i:                                       ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %zerostuff.i) #6
  %10 = ptrtoint ptr %zerostuff.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %zerostuff.i, align 1
  %11 = ptrtoint ptr %decomp_stream.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %zerostuff.i, ptr %decomp_stream.i, align 4
  %12 = ptrtoint ptr %avail_in.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %avail_in.i, align 4
  %call10.i = call i32 @zlib_inflate(ptr noundef %decomp_stream.i, i32 noundef 5) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %zerostuff.i) #6
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then7.i, %if.end.i.if.end11.i_crit_edge
  %ret.0.i = phi i32 [ %call10.i, %if.then7.i ], [ %call1.i, %if.end.i.if.end11.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %ret.0.i)
  %cmp12.not.i = icmp eq i32 %ret.0.i, 1
  br i1 %cmp12.not.i, label %if.end14.i, label %if.end11.i.__deflate_decompress.exit_crit_edge

if.end11.i.__deflate_decompress.exit_crit_edge:   ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__deflate_decompress.exit

if.end14.i:                                       ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #8
  %total_out.i = getelementptr inbounds %struct.deflate_ctx, ptr %ctx, i32 0, i32 1, i32 5
  %13 = ptrtoint ptr %total_out.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %total_out.i, align 4
  %15 = ptrtoint ptr %dlen to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %dlen, align 4
  br label %__deflate_decompress.exit

__deflate_decompress.exit:                        ; preds = %if.end14.i, %if.end11.i.__deflate_decompress.exit_crit_edge, %land.lhs.true4.i.__deflate_decompress.exit_crit_edge, %land.lhs.true.i.__deflate_decompress.exit_crit_edge, %entry.__deflate_decompress.exit_crit_edge
  %ret.1.i = phi i32 [ 0, %if.end14.i ], [ -22, %entry.__deflate_decompress.exit_crit_edge ], [ -22, %if.end11.i.__deflate_decompress.exit_crit_edge ], [ -22, %land.lhs.true.i.__deflate_decompress.exit_crit_edge ], [ -22, %land.lhs.true4.i.__deflate_decompress.exit_crit_edge ]
  ret i32 %ret.1.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @zlib_deflate_alloc_ctx(ptr nocapture noundef readnone %tfm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 96) #10
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.gen_deflate_alloc_ctx.exit_crit_edge, label %if.end.i

entry.gen_deflate_alloc_ctx.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %gen_deflate_alloc_ctx.exit

if.end.i:                                         ; preds = %entry
  %call2.i = tail call fastcc i32 @__deflate_init(ptr noundef nonnull %call7.i.i.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end.i.gen_deflate_alloc_ctx.exit_crit_edge, label %if.then4.i

if.end.i.gen_deflate_alloc_ctx.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %gen_deflate_alloc_ctx.exit

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #6
  %1 = inttoptr i32 %call2.i to ptr
  br label %gen_deflate_alloc_ctx.exit

gen_deflate_alloc_ctx.exit:                       ; preds = %if.then4.i, %if.end.i.gen_deflate_alloc_ctx.exit_crit_edge, %entry.gen_deflate_alloc_ctx.exit_crit_edge
  %retval.0.i = phi ptr [ %1, %if.then4.i ], [ %call7.i.i.i, %if.end.i.gen_deflate_alloc_ctx.exit_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.gen_deflate_alloc_ctx.exit_crit_edge ]
  ret ptr %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_sensitive(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_alg(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_scomps(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(0) }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !14, !16}
!llvm.module.flags = !{!18, !19, !20, !21, !22, !23, !24, !25}
!llvm.ident = !{!26}

!0 = !{ptr @__initcall__kmod_deflate__234_334_deflate_mod_init4, !1, !"__initcall__kmod_deflate__234_334_deflate_mod_init4", i1 false, i1 false}
!1 = !{!"../crypto/deflate.c", i32 334, i32 1}
!2 = !{ptr @__exitcall_deflate_mod_fini, !3, !"__exitcall_deflate_mod_fini", i1 false, i1 false}
!3 = !{!"../crypto/deflate.c", i32 335, i32 1}
!4 = !{ptr @__UNIQUE_ID_file235, !5, !"__UNIQUE_ID_file235", i1 false, i1 false}
!5 = !{!"../crypto/deflate.c", i32 337, i32 1}
!6 = !{ptr @__UNIQUE_ID_license236, !5, !"__UNIQUE_ID_license236", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_description237, !8, !"__UNIQUE_ID_description237", i1 false, i1 false}
!8 = !{!"../crypto/deflate.c", i32 338, i32 1}
!9 = !{ptr @__UNIQUE_ID_author238, !10, !"__UNIQUE_ID_author238", i1 false, i1 false}
!10 = !{!"../crypto/deflate.c", i32 339, i32 1}
!11 = !{ptr @__UNIQUE_ID_alias_userspace239, !12, !"__UNIQUE_ID_alias_userspace239", i1 false, i1 false}
!12 = !{!"../crypto/deflate.c", i32 340, i32 1}
!13 = !{ptr @__UNIQUE_ID_alias_crypto240, !12, !"__UNIQUE_ID_alias_crypto240", i1 false, i1 false}
!14 = !{ptr @alg, !15, !"alg", i1 false, i1 false}
!15 = !{!"../crypto/deflate.c", i32 276, i32 26}
!16 = !{ptr @scomp, !17, !"scomp", i1 false, i1 false}
!17 = !{!"../crypto/deflate.c", i32 289, i32 25}
!18 = !{i32 1, !"wchar_size", i32 2}
!19 = !{i32 1, !"min_enum_size", i32 4}
!20 = !{i32 8, !"branch-target-enforcement", i32 0}
!21 = !{i32 8, !"sign-return-address", i32 0}
!22 = !{i32 8, !"sign-return-address-all", i32 0}
!23 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!24 = !{i32 7, !"uwtable", i32 1}
!25 = !{i32 7, !"frame-pointer", i32 2}
!26 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
