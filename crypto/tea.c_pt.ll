; ModuleID = '/llk/IR_all_yes/crypto/tea.c_pt.bc'
source_filename = "../crypto/tea.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon, ptr, ptr, ptr, ptr, %union.anon.68, [120 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%union.anon = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%union.anon.68 = type { %struct.crypto_istat_akcipher }
%struct.crypto_istat_akcipher = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }

@tea_algs = internal global [3 x %struct.crypto_alg] [%struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 1, i32 8, i32 16, i32 3, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"tea\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"tea-generic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon { %struct.cipher_alg { i32 16, i32 16, ptr @tea_setkey, ptr @tea_encrypt, ptr @tea_decrypt } }, ptr null, ptr null, ptr null, ptr null, %union.anon.68 zeroinitializer, [120 x i8] undef }, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 1, i32 8, i32 16, i32 3, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"xtea\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"xtea-generic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon { %struct.cipher_alg { i32 16, i32 16, ptr @xtea_setkey, ptr @xtea_encrypt, ptr @xtea_decrypt } }, ptr null, ptr null, ptr null, ptr null, %union.anon.68 zeroinitializer, [120 x i8] undef }, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 1, i32 8, i32 16, i32 3, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"xeta\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"xeta-generic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon { %struct.cipher_alg { i32 16, i32 16, ptr @xtea_setkey, ptr @xeta_encrypt, ptr @xeta_decrypt } }, ptr null, ptr null, ptr null, ptr null, %union.anon.68 zeroinitializer, [120 x i8] undef }], align 128
@__UNIQUE_ID_alias_userspace226 = internal constant [14 x i8] c"tea.alias=tea\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto227 = internal constant [21 x i8] c"tea.alias=crypto-tea\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace228 = internal constant [15 x i8] c"tea.alias=xtea\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto229 = internal constant [22 x i8] c"tea.alias=crypto-xtea\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace230 = internal constant [15 x i8] c"tea.alias=xeta\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto231 = internal constant [22 x i8] c"tea.alias=crypto-xeta\00", section ".modinfo", align 1
@__initcall__kmod_tea__232_275_tea_mod_init4 = internal global ptr @tea_mod_init, section ".initcall4.init", align 4
@__exitcall_tea_mod_fini = internal global ptr @tea_mod_fini, section ".exitcall.exit", align 4
@__UNIQUE_ID_file233 = internal constant [20 x i8] c"tea.file=crypto/tea\00", section ".modinfo", align 1
@__UNIQUE_ID_license234 = internal constant [16 x i8] c"tea.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description235 = internal constant [58 x i8] c"tea.description=TEA, XTEA & XETA Cryptographic Algorithms\00", section ".modinfo", align 1
@llvm.compiler.used = appending global [12 x ptr] [ptr @__UNIQUE_ID_alias_crypto227, ptr @__UNIQUE_ID_alias_crypto229, ptr @__UNIQUE_ID_alias_crypto231, ptr @__UNIQUE_ID_alias_userspace226, ptr @__UNIQUE_ID_alias_userspace228, ptr @__UNIQUE_ID_alias_userspace230, ptr @__UNIQUE_ID_description235, ptr @__UNIQUE_ID_file233, ptr @__UNIQUE_ID_license234, ptr @__exitcall_tea_mod_fini, ptr @__initcall__kmod_tea__232_275_tea_mod_init4, ptr @tea_mod_fini], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tea_mod_fini() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @crypto_unregister_algs(ptr noundef nonnull @tea_algs, i32 noundef 3) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_algs(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tea_mod_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @crypto_register_algs(ptr noundef nonnull @tea_algs, i32 noundef 3) #5
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tea_setkey(ptr nocapture noundef writeonly %tfm, ptr nocapture noundef readonly %in_key, i32 noundef %key_len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %0 = ptrtoint ptr %in_key to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %in_key, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %3 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %__crt_ctx.i, align 4
  %arrayidx2 = getelementptr i32, ptr %in_key, i32 1
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx2, align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %arrayidx4 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 1
  %7 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %arrayidx4, align 4
  %arrayidx5 = getelementptr i32, ptr %in_key, i32 2
  %8 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx5, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %arrayidx7 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 2
  %11 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %arrayidx7, align 4
  %arrayidx8 = getelementptr i32, ptr %in_key, i32 3
  %12 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx8, align 4
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  %arrayidx10 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 3
  %15 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %arrayidx10, align 4
  ret i32 0
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tea_encrypt(ptr nocapture noundef readonly %tfm, ptr nocapture noundef writeonly %dst, ptr nocapture noundef readonly %src) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %0 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %src, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %arrayidx1 = getelementptr i32, ptr %src, i32 1
  %3 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx1, align 4
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %6 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %__crt_ctx.i, align 4
  %arrayidx4 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 1
  %8 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx4, align 4
  %arrayidx6 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 2
  %10 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx6, align 4
  %arrayidx8 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 3
  %12 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx8, align 4
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry
  %y.042 = phi i32 [ %2, %entry ], [ %add13, %while.body.while.body_crit_edge ]
  %z.041 = phi i32 [ %5, %entry ], [ %add21, %while.body.while.body_crit_edge ]
  %sum.040 = phi i32 [ 0, %entry ], [ %add, %while.body.while.body_crit_edge ]
  %n.039 = phi i32 [ 32, %entry ], [ %dec, %while.body.while.body_crit_edge ]
  %dec = add nsw i32 %n.039, -1
  %add = add i32 %sum.040, -1640531527
  %shl = shl i32 %z.041, 4
  %add9 = add i32 %shl, %7
  %add10 = add i32 %z.041, %add
  %xor = xor i32 %add9, %add10
  %shr = lshr i32 %z.041, 5
  %add11 = add i32 %shr, %9
  %xor12 = xor i32 %xor, %add11
  %add13 = add i32 %xor12, %y.042
  %shl14 = shl i32 %add13, 4
  %add15 = add i32 %shl14, %11
  %add16 = add i32 %add13, %add
  %xor17 = xor i32 %add15, %add16
  %shr18 = lshr i32 %add13, 5
  %add19 = add i32 %shr18, %13
  %xor20 = xor i32 %xor17, %add19
  %add21 = add i32 %xor20, %z.041
  %cmp.not = icmp eq i32 %dec, 0
  br i1 %cmp.not, label %while.end, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.end:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  %14 = tail call i32 @llvm.bswap.i32(i32 %add13)
  %15 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %dst, align 4
  %16 = tail call i32 @llvm.bswap.i32(i32 %add21)
  %arrayidx23 = getelementptr i32, ptr %dst, i32 1
  %17 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %arrayidx23, align 4
  ret void
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tea_decrypt(ptr nocapture noundef readonly %tfm, ptr nocapture noundef writeonly %dst, ptr nocapture noundef readonly %src) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %0 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %src, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %arrayidx1 = getelementptr i32, ptr %src, i32 1
  %3 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx1, align 4
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %6 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %__crt_ctx.i, align 4
  %arrayidx4 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 1
  %8 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx4, align 4
  %arrayidx6 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 2
  %10 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx6, align 4
  %arrayidx8 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 3
  %12 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx8, align 4
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry
  %y.041 = phi i32 [ %2, %entry ], [ %sub19, %while.body.while.body_crit_edge ]
  %z.040 = phi i32 [ %5, %entry ], [ %sub, %while.body.while.body_crit_edge ]
  %sum.039 = phi i32 [ -957401312, %entry ], [ %sub20, %while.body.while.body_crit_edge ]
  %n.038 = phi i32 [ 32, %entry ], [ %dec, %while.body.while.body_crit_edge ]
  %dec = add nsw i32 %n.038, -1
  %shl = shl i32 %y.041, 4
  %add = add i32 %shl, %11
  %add9 = add i32 %y.041, %sum.039
  %xor = xor i32 %add, %add9
  %shr = lshr i32 %y.041, 5
  %add10 = add i32 %shr, %13
  %xor11 = xor i32 %xor, %add10
  %sub = sub i32 %z.040, %xor11
  %shl12 = shl i32 %sub, 4
  %add13 = add i32 %shl12, %7
  %add14 = add i32 %sub, %sum.039
  %xor15 = xor i32 %add13, %add14
  %shr16 = lshr i32 %sub, 5
  %add17 = add i32 %shr16, %9
  %xor18 = xor i32 %xor15, %add17
  %sub19 = sub i32 %y.041, %xor18
  %sub20 = add i32 %sum.039, 1640531527
  %cmp.not = icmp eq i32 %dec, 0
  br i1 %cmp.not, label %while.end, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.end:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  %14 = tail call i32 @llvm.bswap.i32(i32 %sub19)
  %15 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %dst, align 4
  %16 = tail call i32 @llvm.bswap.i32(i32 %sub)
  %arrayidx22 = getelementptr i32, ptr %dst, i32 1
  %17 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %arrayidx22, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @xtea_setkey(ptr nocapture noundef writeonly %tfm, ptr nocapture noundef readonly %in_key, i32 noundef %key_len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %0 = ptrtoint ptr %in_key to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %in_key, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %3 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %__crt_ctx.i, align 4
  %arrayidx2 = getelementptr i32, ptr %in_key, i32 1
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx2, align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %arrayidx4 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 1
  %7 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %arrayidx4, align 4
  %arrayidx5 = getelementptr i32, ptr %in_key, i32 2
  %8 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx5, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %arrayidx7 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 2
  %11 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %arrayidx7, align 4
  %arrayidx8 = getelementptr i32, ptr %in_key, i32 3
  %12 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx8, align 4
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  %arrayidx10 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 3
  %15 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %arrayidx10, align 4
  ret i32 0
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xtea_encrypt(ptr nocapture noundef readonly %tfm, ptr nocapture noundef writeonly %dst, ptr nocapture noundef readonly %src) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %0 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %src, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %arrayidx1 = getelementptr i32, ptr %src, i32 1
  %3 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx1, align 4
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry
  %y.038 = phi i32 [ %2, %entry ], [ %add5, %while.body.while.body_crit_edge ]
  %sum.037 = phi i32 [ 0, %entry ], [ %add6, %while.body.while.body_crit_edge ]
  %z.036 = phi i32 [ %5, %entry ], [ %add17, %while.body.while.body_crit_edge ]
  %shl = shl i32 %z.036, 4
  %shr = lshr i32 %z.036, 5
  %xor = xor i32 %shl, %shr
  %add = add i32 %xor, %z.036
  %and = and i32 %sum.037, 3
  %arrayidx2 = getelementptr [4 x i32], ptr %__crt_ctx.i, i32 0, i32 %and
  %6 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx2, align 4
  %add3 = add i32 %7, %sum.037
  %xor4 = xor i32 %add3, %add
  %add5 = add i32 %xor4, %y.038
  %add6 = add i32 %sum.037, -1640531527
  %shl7 = shl i32 %add5, 4
  %shr8 = lshr i32 %add5, 5
  %xor9 = xor i32 %shl7, %shr8
  %add10 = add i32 %xor9, %add5
  %shr12 = lshr i32 %add6, 11
  %and13 = and i32 %shr12, 3
  %arrayidx14 = getelementptr [4 x i32], ptr %__crt_ctx.i, i32 0, i32 %and13
  %8 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx14, align 4
  %add15 = add i32 %9, %add6
  %xor16 = xor i32 %add10, %add15
  %add17 = add i32 %xor16, %z.036
  %cmp.not = icmp eq i32 %add6, -957401312
  br i1 %cmp.not, label %while.end, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.end:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  %10 = tail call i32 @llvm.bswap.i32(i32 %add5)
  %11 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %dst, align 4
  %12 = tail call i32 @llvm.bswap.i32(i32 %add17)
  %arrayidx19 = getelementptr i32, ptr %dst, i32 1
  %13 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %arrayidx19, align 4
  ret void
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xtea_decrypt(ptr nocapture noundef readonly %tfm, ptr nocapture noundef writeonly %dst, ptr nocapture noundef readonly %src) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %0 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %src, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %arrayidx1 = getelementptr i32, ptr %src, i32 1
  %3 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx1, align 4
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry
  %y.037 = phi i32 [ %2, %entry ], [ %sub16, %while.body.while.body_crit_edge ]
  %sum.036 = phi i32 [ -957401312, %entry ], [ %sub6, %while.body.while.body_crit_edge ]
  %z.035 = phi i32 [ %5, %entry ], [ %sub, %while.body.while.body_crit_edge ]
  %shl = shl i32 %y.037, 4
  %shr = lshr i32 %y.037, 5
  %xor = xor i32 %shl, %shr
  %add = add i32 %xor, %y.037
  %shr2 = lshr i32 %sum.036, 11
  %and = and i32 %shr2, 3
  %arrayidx3 = getelementptr [4 x i32], ptr %__crt_ctx.i, i32 0, i32 %and
  %6 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx3, align 4
  %add4 = add i32 %7, %sum.036
  %xor5 = xor i32 %add4, %add
  %sub = sub i32 %z.035, %xor5
  %sub6 = add i32 %sum.036, 1640531527
  %shl7 = shl i32 %sub, 4
  %shr8 = lshr i32 %sub, 5
  %xor9 = xor i32 %shl7, %shr8
  %add10 = add i32 %xor9, %sub
  %and12 = and i32 %sub6, 3
  %arrayidx13 = getelementptr [4 x i32], ptr %__crt_ctx.i, i32 0, i32 %and12
  %8 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx13, align 4
  %add14 = add i32 %9, %sub6
  %xor15 = xor i32 %add10, %add14
  %sub16 = sub i32 %y.037, %xor15
  %tobool.not = icmp eq i32 %sub6, 0
  br i1 %tobool.not, label %while.end, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.end:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  %10 = tail call i32 @llvm.bswap.i32(i32 %sub16)
  %11 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %dst, align 4
  %12 = tail call i32 @llvm.bswap.i32(i32 %sub)
  %arrayidx18 = getelementptr i32, ptr %dst, i32 1
  %13 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %arrayidx18, align 4
  ret void
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xeta_encrypt(ptr nocapture noundef readonly %tfm, ptr nocapture noundef writeonly %dst, ptr nocapture noundef readonly %src) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %0 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %src, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %arrayidx1 = getelementptr i32, ptr %src, i32 1
  %3 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx1, align 4
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry
  %y.038 = phi i32 [ %2, %entry ], [ %add5, %while.body.while.body_crit_edge ]
  %sum.037 = phi i32 [ 0, %entry ], [ %add6, %while.body.while.body_crit_edge ]
  %z.036 = phi i32 [ %5, %entry ], [ %add17, %while.body.while.body_crit_edge ]
  %shl = shl i32 %z.036, 4
  %shr = lshr i32 %z.036, 5
  %xor = xor i32 %shl, %shr
  %xor2 = xor i32 %sum.037, %z.036
  %add = add i32 %xor, %xor2
  %and = and i32 %sum.037, 3
  %arrayidx3 = getelementptr [4 x i32], ptr %__crt_ctx.i, i32 0, i32 %and
  %6 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx3, align 4
  %add4 = add i32 %add, %y.038
  %add5 = add i32 %add4, %7
  %add6 = add i32 %sum.037, -1640531527
  %shl7 = shl i32 %add5, 4
  %shr8 = lshr i32 %add5, 5
  %xor9 = xor i32 %shl7, %shr8
  %xor10 = xor i32 %add5, %add6
  %shr13 = lshr i32 %add6, 11
  %and14 = and i32 %shr13, 3
  %arrayidx15 = getelementptr [4 x i32], ptr %__crt_ctx.i, i32 0, i32 %and14
  %8 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx15, align 4
  %add11 = add i32 %9, %z.036
  %add16 = add i32 %add11, %xor10
  %add17 = add i32 %add16, %xor9
  %cmp.not = icmp eq i32 %add6, -957401312
  br i1 %cmp.not, label %while.end, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.end:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  %10 = tail call i32 @llvm.bswap.i32(i32 %add5)
  %11 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %dst, align 4
  %12 = tail call i32 @llvm.bswap.i32(i32 %add17)
  %arrayidx19 = getelementptr i32, ptr %dst, i32 1
  %13 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %arrayidx19, align 4
  ret void
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xeta_decrypt(ptr nocapture noundef readonly %tfm, ptr nocapture noundef writeonly %dst, ptr nocapture noundef readonly %src) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %0 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %src, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %arrayidx1 = getelementptr i32, ptr %src, i32 1
  %3 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx1, align 4
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry
  %y.038 = phi i32 [ %2, %entry ], [ %sub16, %while.body.while.body_crit_edge ]
  %sum.037 = phi i32 [ -957401312, %entry ], [ %sub6, %while.body.while.body_crit_edge ]
  %z.036 = phi i32 [ %5, %entry ], [ %sub, %while.body.while.body_crit_edge ]
  %shl = shl i32 %y.038, 4
  %shr = lshr i32 %y.038, 5
  %xor = xor i32 %shl, %shr
  %xor2 = xor i32 %y.038, %sum.037
  %shr3 = lshr i32 %sum.037, 11
  %and = and i32 %shr3, 3
  %arrayidx4 = getelementptr [4 x i32], ptr %__crt_ctx.i, i32 0, i32 %and
  %6 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx4, align 4
  %8 = add i32 %xor2, %xor
  %9 = add i32 %8, %7
  %sub = sub i32 %z.036, %9
  %sub6 = add i32 %sum.037, 1640531527
  %shl7 = shl i32 %sub, 4
  %shr8 = lshr i32 %sub, 5
  %xor9 = xor i32 %shl7, %shr8
  %xor10 = xor i32 %sub, %sub6
  %and13 = and i32 %sub6, 3
  %arrayidx14 = getelementptr [4 x i32], ptr %__crt_ctx.i, i32 0, i32 %and13
  %10 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx14, align 4
  %12 = add i32 %11, %xor10
  %13 = add i32 %12, %xor9
  %sub16 = sub i32 %y.038, %13
  %tobool.not = icmp eq i32 %sub6, 0
  br i1 %tobool.not, label %while.end, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.end:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  %14 = tail call i32 @llvm.bswap.i32(i32 %sub16)
  %15 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %dst, align 4
  %16 = tail call i32 @llvm.bswap.i32(i32 %sub)
  %arrayidx18 = getelementptr i32, ptr %dst, i32 1
  %17 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %arrayidx18, align 4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_algs(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !11, !13, !15, !16, !18}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = !{ptr @__UNIQUE_ID_alias_userspace226, !1, !"__UNIQUE_ID_alias_userspace226", i1 false, i1 false}
!1 = !{!"../crypto/tea.c", i32 271, i32 1}
!2 = !{ptr @__UNIQUE_ID_alias_crypto227, !1, !"__UNIQUE_ID_alias_crypto227", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_alias_userspace228, !4, !"__UNIQUE_ID_alias_userspace228", i1 false, i1 false}
!4 = !{!"../crypto/tea.c", i32 272, i32 1}
!5 = !{ptr @__UNIQUE_ID_alias_crypto229, !4, !"__UNIQUE_ID_alias_crypto229", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_alias_userspace230, !7, !"__UNIQUE_ID_alias_userspace230", i1 false, i1 false}
!7 = !{!"../crypto/tea.c", i32 273, i32 1}
!8 = !{ptr @__UNIQUE_ID_alias_crypto231, !7, !"__UNIQUE_ID_alias_crypto231", i1 false, i1 false}
!9 = !{ptr @__initcall__kmod_tea__232_275_tea_mod_init4, !10, !"__initcall__kmod_tea__232_275_tea_mod_init4", i1 false, i1 false}
!10 = !{!"../crypto/tea.c", i32 275, i32 1}
!11 = !{ptr @__exitcall_tea_mod_fini, !12, !"__exitcall_tea_mod_fini", i1 false, i1 false}
!12 = !{!"../crypto/tea.c", i32 276, i32 1}
!13 = !{ptr @__UNIQUE_ID_file233, !14, !"__UNIQUE_ID_file233", i1 false, i1 false}
!14 = !{!"../crypto/tea.c", i32 278, i32 1}
!15 = !{ptr @__UNIQUE_ID_license234, !14, !"__UNIQUE_ID_license234", i1 false, i1 false}
!16 = !{ptr @__UNIQUE_ID_description235, !17, !"__UNIQUE_ID_description235", i1 false, i1 false}
!17 = !{!"../crypto/tea.c", i32 279, i32 1}
!18 = !{ptr @tea_algs, !19, !"tea_algs", i1 false, i1 false}
!19 = !{!"../crypto/tea.c", i32 217, i32 26}
!20 = !{i32 1, !"wchar_size", i32 2}
!21 = !{i32 1, !"min_enum_size", i32 4}
!22 = !{i32 8, !"branch-target-enforcement", i32 0}
!23 = !{i32 8, !"sign-return-address", i32 0}
!24 = !{i32 8, !"sign-return-address-all", i32 0}
!25 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!26 = !{i32 7, !"uwtable", i32 1}
!27 = !{i32 7, !"frame-pointer", i32 2}
!28 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
