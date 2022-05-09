; ModuleID = '/llk/IR_all_yes/crypto/zstd.c_pt.bc'
source_filename = "../crypto/zstd.c"
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
%struct.ZSTD_parameters = type { %struct.ZSTD_compressionParameters, %struct.ZSTD_frameParameters }
%struct.ZSTD_compressionParameters = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.ZSTD_frameParameters = type { i32, i32, i32 }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.zstd_ctx = type { ptr, ptr, ptr, ptr }

@scomp = internal global %struct.scomp_alg { ptr @zstd_alloc_ctx, ptr @zstd_free_ctx, ptr @zstd_scompress, ptr @zstd_sdecompress, [112 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"zstd\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"zstd-scomp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.71 zeroinitializer, [120 x i8] undef } }, align 128
@__initcall__kmod_zstd__234_253_zstd_mod_init4 = internal global ptr @zstd_mod_init, section ".initcall4.init", align 4
@__exitcall_zstd_mod_fini = internal global ptr @zstd_mod_fini, section ".exitcall.exit", align 4
@__UNIQUE_ID_file235 = internal constant [22 x i8] c"zstd.file=crypto/zstd\00", section ".modinfo", align 1
@__UNIQUE_ID_license236 = internal constant [17 x i8] c"zstd.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description237 = internal constant [44 x i8] c"zstd.description=Zstd Compression Algorithm\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace238 = internal constant [16 x i8] c"zstd.alias=zstd\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto239 = internal constant [23 x i8] c"zstd.alias=crypto-zstd\00", section ".modinfo", align 1
@alg = internal global { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, { %struct.compress_alg, [12 x i8] }, ptr, ptr, ptr, ptr, %union.anon.71, [120 x i8] } { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 2, i32 0, i32 16, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"zstd\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"zstd-generic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, { %struct.compress_alg, [12 x i8] } { %struct.compress_alg { ptr @zstd_compress, ptr @zstd_decompress }, [12 x i8] undef }, ptr @zstd_init, ptr @zstd_exit, ptr null, ptr null, %union.anon.71 zeroinitializer, [120 x i8] undef }, align 128
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_alias_crypto239, ptr @__UNIQUE_ID_alias_userspace238, ptr @__UNIQUE_ID_description237, ptr @__UNIQUE_ID_file235, ptr @__UNIQUE_ID_license236, ptr @__exitcall_zstd_mod_fini, ptr @__initcall__kmod_zstd__234_253_zstd_mod_init4, ptr @zstd_mod_fini], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @zstd_mod_fini() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @crypto_unregister_alg(ptr noundef nonnull @alg) #6
  tail call void @crypto_unregister_scomp(ptr noundef nonnull @scomp) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_alg(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_scomp(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @zstd_mod_init() #0 section ".init.text" align 64 {
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
  %call1 = tail call i32 @crypto_register_scomp(ptr noundef nonnull @scomp) #6
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
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zstd_compress(ptr nocapture noundef readonly %tfm, ptr noundef %src, i32 noundef %slen, ptr noundef %dst, ptr nocapture noundef %dlen) #2 align 64 {
entry:
  %params.i = alloca %struct.ZSTD_parameters, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %params.i) #6
  %0 = call ptr @memset(ptr %params.i, i32 255, i32 40)
  call void @zstd_get_params(ptr nonnull sret(%struct.ZSTD_parameters) align 4 %params.i, i32 noundef 3, i64 noundef 0) #6
  %1 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %__crt_ctx.i, align 4
  %3 = ptrtoint ptr %dlen to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %dlen, align 4
  %call.i = call i32 @zstd_compress_cctx(ptr noundef %2, ptr noundef %dst, i32 noundef %4, ptr noundef %src, i32 noundef %slen, ptr noundef nonnull %params.i) #6
  %call1.i = call i32 @zstd_is_error(i32 noundef %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.__zstd_compress.exit_crit_edge

entry.__zstd_compress.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %__zstd_compress.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %dlen to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call.i, ptr %dlen, align 4
  br label %__zstd_compress.exit

__zstd_compress.exit:                             ; preds = %if.end.i, %entry.__zstd_compress.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end.i ], [ -22, %entry.__zstd_compress.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %params.i) #6
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zstd_decompress(ptr nocapture noundef readonly %tfm, ptr noundef %src, i32 noundef %slen, ptr noundef %dst, ptr nocapture noundef %dlen) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 1
  %0 = ptrtoint ptr %dctx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dctx.i, align 4
  %2 = ptrtoint ptr %dlen to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dlen, align 4
  %call.i = tail call i32 @zstd_decompress_dctx(ptr noundef %1, ptr noundef %dst, i32 noundef %3, ptr noundef %src, i32 noundef %slen) #6
  %call1.i = tail call i32 @zstd_is_error(i32 noundef %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.__zstd_decompress.exit_crit_edge

entry.__zstd_decompress.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %__zstd_decompress.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %dlen to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call.i, ptr %dlen, align 4
  br label %__zstd_decompress.exit

__zstd_decompress.exit:                           ; preds = %if.end.i, %entry.__zstd_decompress.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end.i ], [ -22, %entry.__zstd_decompress.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zstd_init(ptr nocapture noundef %tfm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %call1 = tail call fastcc i32 @__zstd_init(ptr noundef %__crt_ctx.i)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @zstd_exit(ptr nocapture noundef %tfm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %cwksp.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 2
  %0 = ptrtoint ptr %cwksp.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cwksp.i.i, align 4
  tail call void @vfree(ptr noundef %1) #6
  %2 = ptrtoint ptr %cwksp.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %cwksp.i.i, align 4
  %3 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %__crt_ctx.i, align 4
  %dwksp.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 3
  %4 = ptrtoint ptr %dwksp.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dwksp.i.i, align 4
  tail call void @vfree(ptr noundef %5) #6
  %6 = ptrtoint ptr %dwksp.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %dwksp.i.i, align 4
  %dctx.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 1
  %7 = ptrtoint ptr %dctx.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %dctx.i.i, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zstd_compress_cctx(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zstd_is_error(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @zstd_get_params(ptr sret(%struct.ZSTD_parameters) align 4, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zstd_decompress_dctx(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__zstd_init(ptr nocapture noundef %ctx) unnamed_addr #2 align 64 {
entry:
  %params.i = alloca %struct.ZSTD_parameters, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %params.i) #6
  %0 = call ptr @memset(ptr %params.i, i32 255, i32 40)
  call void @zstd_get_params(ptr nonnull sret(%struct.ZSTD_parameters) align 4 %params.i, i32 noundef 3, i64 noundef 0) #6
  %call.i = call i32 @zstd_cctx_workspace_bound(ptr noundef nonnull %params.i) #6
  %call1.i = call noalias ptr @vzalloc(i32 noundef %call.i) #9
  %cwksp.i = getelementptr inbounds %struct.zstd_ctx, ptr %ctx, i32 0, i32 2
  %1 = ptrtoint ptr %cwksp.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call1.i, ptr %cwksp.i, align 4
  %tobool.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i, label %entry.zstd_comp_init.exit.thread_crit_edge, label %if.end.i

entry.zstd_comp_init.exit.thread_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %zstd_comp_init.exit.thread

if.end.i:                                         ; preds = %entry
  %call4.i = call ptr @zstd_init_cctx(ptr noundef nonnull %call1.i, i32 noundef %call.i) #6
  %2 = ptrtoint ptr %ctx to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call4.i, ptr %ctx, align 4
  %tobool6.not.i = icmp eq ptr %call4.i, null
  br i1 %tobool6.not.i, label %if.then7.i, label %if.end

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %cwksp.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cwksp.i, align 4
  call void @vfree(ptr noundef %4) #6
  br label %zstd_comp_init.exit.thread

zstd_comp_init.exit.thread:                       ; preds = %if.then7.i, %entry.zstd_comp_init.exit.thread_crit_edge
  %ret.0.i.ph = phi i32 [ -12, %entry.zstd_comp_init.exit.thread_crit_edge ], [ -22, %if.then7.i ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %params.i) #6
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %params.i) #6
  %call.i10 = call i32 @zstd_dctx_workspace_bound() #6
  %call1.i11 = call noalias ptr @vzalloc(i32 noundef %call.i10) #9
  %dwksp.i = getelementptr inbounds %struct.zstd_ctx, ptr %ctx, i32 0, i32 3
  %5 = ptrtoint ptr %dwksp.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call1.i11, ptr %dwksp.i, align 4
  %tobool.not.i12 = icmp eq ptr %call1.i11, null
  br i1 %tobool.not.i12, label %if.end.if.then3_crit_edge, label %if.end.i15

if.end.if.then3_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then3

if.end.i15:                                       ; preds = %if.end
  %call4.i13 = call ptr @zstd_init_dctx(ptr noundef nonnull %call1.i11, i32 noundef %call.i10) #6
  %dctx.i = getelementptr inbounds %struct.zstd_ctx, ptr %ctx, i32 0, i32 1
  %6 = ptrtoint ptr %dctx.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call4.i13, ptr %dctx.i, align 4
  %tobool6.not.i14 = icmp eq ptr %call4.i13, null
  br i1 %tobool6.not.i14, label %if.then7.i16, label %if.end.i15.cleanup_crit_edge

if.end.i15.cleanup_crit_edge:                     ; preds = %if.end.i15
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then7.i16:                                     ; preds = %if.end.i15
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %dwksp.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dwksp.i, align 4
  call void @vfree(ptr noundef %8) #6
  br label %if.then3

if.then3:                                         ; preds = %if.then7.i16, %if.end.if.then3_crit_edge
  %ret.0.i17.ph = phi i32 [ -12, %if.end.if.then3_crit_edge ], [ -22, %if.then7.i16 ]
  %9 = ptrtoint ptr %cwksp.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cwksp.i, align 4
  call void @vfree(ptr noundef %10) #6
  %11 = ptrtoint ptr %cwksp.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %cwksp.i, align 4
  %12 = ptrtoint ptr %ctx to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %ctx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.i15.cleanup_crit_edge, %zstd_comp_init.exit.thread
  %retval.0 = phi i32 [ %ret.0.i17.ph, %if.then3 ], [ %ret.0.i.ph, %zstd_comp_init.exit.thread ], [ 0, %if.end.i15.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zstd_cctx_workspace_bound(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @zstd_init_cctx(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zstd_dctx_workspace_bound() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @zstd_init_dctx(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @zstd_alloc_ctx(ptr nocapture noundef readnone %tfm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 16) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call fastcc i32 @__zstd_init(ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.then4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  %1 = inttoptr i32 %call2 to ptr
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %1, %if.then4 ], [ %call7.i.i, %if.end.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @zstd_free_ctx(ptr nocapture noundef readnone %tfm, ptr noundef %ctx) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cwksp.i.i = getelementptr inbounds %struct.zstd_ctx, ptr %ctx, i32 0, i32 2
  %0 = ptrtoint ptr %cwksp.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cwksp.i.i, align 4
  tail call void @vfree(ptr noundef %1) #6
  %2 = ptrtoint ptr %cwksp.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %cwksp.i.i, align 4
  %3 = ptrtoint ptr %ctx to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %ctx, align 4
  %dwksp.i.i = getelementptr inbounds %struct.zstd_ctx, ptr %ctx, i32 0, i32 3
  %4 = ptrtoint ptr %dwksp.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dwksp.i.i, align 4
  tail call void @vfree(ptr noundef %5) #6
  %6 = ptrtoint ptr %dwksp.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %dwksp.i.i, align 4
  %dctx.i.i = getelementptr inbounds %struct.zstd_ctx, ptr %ctx, i32 0, i32 1
  %7 = ptrtoint ptr %dctx.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %dctx.i.i, align 4
  tail call void @kfree_sensitive(ptr noundef %ctx) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zstd_scompress(ptr nocapture noundef readnone %tfm, ptr noundef %src, i32 noundef %slen, ptr noundef %dst, ptr nocapture noundef %dlen, ptr nocapture noundef readonly %ctx) #2 align 64 {
entry:
  %params.i = alloca %struct.ZSTD_parameters, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %params.i) #6
  %0 = call ptr @memset(ptr %params.i, i32 255, i32 40)
  call void @zstd_get_params(ptr nonnull sret(%struct.ZSTD_parameters) align 4 %params.i, i32 noundef 3, i64 noundef 0) #6
  %1 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ctx, align 4
  %3 = ptrtoint ptr %dlen to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %dlen, align 4
  %call.i = call i32 @zstd_compress_cctx(ptr noundef %2, ptr noundef %dst, i32 noundef %4, ptr noundef %src, i32 noundef %slen, ptr noundef nonnull %params.i) #6
  %call1.i = call i32 @zstd_is_error(i32 noundef %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.__zstd_compress.exit_crit_edge

entry.__zstd_compress.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %__zstd_compress.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %dlen to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call.i, ptr %dlen, align 4
  br label %__zstd_compress.exit

__zstd_compress.exit:                             ; preds = %if.end.i, %entry.__zstd_compress.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end.i ], [ -22, %entry.__zstd_compress.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %params.i) #6
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zstd_sdecompress(ptr nocapture noundef readnone %tfm, ptr noundef %src, i32 noundef %slen, ptr noundef %dst, ptr nocapture noundef %dlen, ptr nocapture noundef readonly %ctx) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dctx.i = getelementptr inbounds %struct.zstd_ctx, ptr %ctx, i32 0, i32 1
  %0 = ptrtoint ptr %dctx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dctx.i, align 4
  %2 = ptrtoint ptr %dlen to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dlen, align 4
  %call.i = tail call i32 @zstd_decompress_dctx(ptr noundef %1, ptr noundef %dst, i32 noundef %3, ptr noundef %src, i32 noundef %slen) #6
  %call1.i = tail call i32 @zstd_is_error(i32 noundef %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.__zstd_decompress.exit_crit_edge

entry.__zstd_decompress.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %__zstd_decompress.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %dlen to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call.i, ptr %dlen, align 4
  br label %__zstd_decompress.exit

__zstd_decompress.exit:                           ; preds = %if.end.i, %entry.__zstd_decompress.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end.i ], [ -22, %entry.__zstd_decompress.exit_crit_edge ]
  ret i32 %retval.0.i
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
declare dso_local i32 @crypto_register_scomp(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

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

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !12, !14}
!llvm.module.flags = !{!16, !17, !18, !19, !20, !21, !22, !23}
!llvm.ident = !{!24}

!0 = !{ptr @__initcall__kmod_zstd__234_253_zstd_mod_init4, !1, !"__initcall__kmod_zstd__234_253_zstd_mod_init4", i1 false, i1 false}
!1 = !{!"../crypto/zstd.c", i32 253, i32 1}
!2 = !{ptr @__exitcall_zstd_mod_fini, !3, !"__exitcall_zstd_mod_fini", i1 false, i1 false}
!3 = !{!"../crypto/zstd.c", i32 254, i32 1}
!4 = !{ptr @__UNIQUE_ID_file235, !5, !"__UNIQUE_ID_file235", i1 false, i1 false}
!5 = !{!"../crypto/zstd.c", i32 256, i32 1}
!6 = !{ptr @__UNIQUE_ID_license236, !5, !"__UNIQUE_ID_license236", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_description237, !8, !"__UNIQUE_ID_description237", i1 false, i1 false}
!8 = !{!"../crypto/zstd.c", i32 257, i32 1}
!9 = !{ptr @__UNIQUE_ID_alias_userspace238, !10, !"__UNIQUE_ID_alias_userspace238", i1 false, i1 false}
!10 = !{!"../crypto/zstd.c", i32 258, i32 1}
!11 = !{ptr @__UNIQUE_ID_alias_crypto239, !10, !"__UNIQUE_ID_alias_crypto239", i1 false, i1 false}
!12 = !{ptr @alg, !13, !"alg", i1 false, i1 false}
!13 = !{!"../crypto/zstd.c", i32 207, i32 26}
!14 = !{ptr @scomp, !15, !"scomp", i1 false, i1 false}
!15 = !{!"../crypto/zstd.c", i32 220, i32 25}
!16 = !{i32 1, !"wchar_size", i32 2}
!17 = !{i32 1, !"min_enum_size", i32 4}
!18 = !{i32 8, !"branch-target-enforcement", i32 0}
!19 = !{i32 8, !"sign-return-address", i32 0}
!20 = !{i32 8, !"sign-return-address-all", i32 0}
!21 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!22 = !{i32 7, !"uwtable", i32 1}
!23 = !{i32 7, !"frame-pointer", i32 2}
!24 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
