; ModuleID = '/llk/IR_all_yes/crypto/twofish_generic.c_pt.bc'
source_filename = "../crypto/twofish_generic.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon, ptr, ptr, ptr, ptr, %union.anon.44, [120 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%union.anon = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%union.anon.44 = type { %struct.crypto_istat_akcipher }
%struct.crypto_istat_akcipher = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }

@alg = internal global %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 1, i32 16, i32 4256, i32 0, i32 100, %struct.refcount_struct zeroinitializer, [128 x i8] c"twofish\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"twofish-generic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon { %struct.cipher_alg { i32 16, i32 32, ptr @twofish_setkey, ptr @twofish_encrypt, ptr @twofish_decrypt } }, ptr null, ptr null, ptr null, ptr null, %union.anon.44 zeroinitializer, [120 x i8] undef }, align 128
@__initcall__kmod_twofish_generic__173_190_twofish_mod_init4 = internal global ptr @twofish_mod_init, section ".initcall4.init", align 4
@__exitcall_twofish_mod_fini = internal global ptr @twofish_mod_fini, section ".exitcall.exit", align 4
@__UNIQUE_ID_file174 = internal constant [44 x i8] c"twofish_generic.file=crypto/twofish_generic\00", section ".modinfo", align 1
@__UNIQUE_ID_license175 = internal constant [28 x i8] c"twofish_generic.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description176 = internal constant [53 x i8] c"twofish_generic.description=Twofish Cipher Algorithm\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace177 = internal constant [30 x i8] c"twofish_generic.alias=twofish\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto178 = internal constant [37 x i8] c"twofish_generic.alias=crypto-twofish\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace179 = internal constant [38 x i8] c"twofish_generic.alias=twofish-generic\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto180 = internal constant [45 x i8] c"twofish_generic.alias=crypto-twofish-generic\00", section ".modinfo", align 1
@llvm.compiler.used = appending global [10 x ptr] [ptr @__UNIQUE_ID_alias_crypto178, ptr @__UNIQUE_ID_alias_crypto180, ptr @__UNIQUE_ID_alias_userspace177, ptr @__UNIQUE_ID_alias_userspace179, ptr @__UNIQUE_ID_description176, ptr @__UNIQUE_ID_file174, ptr @__UNIQUE_ID_license175, ptr @__exitcall_twofish_mod_fini, ptr @__initcall__kmod_twofish_generic__173_190_twofish_mod_init4, ptr @twofish_mod_fini], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @twofish_mod_fini() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @crypto_unregister_alg(ptr noundef nonnull @alg) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_alg(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @twofish_mod_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @crypto_register_alg(ptr noundef nonnull @alg) #4
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @twofish_setkey(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @twofish_encrypt(ptr noundef readonly %tfm, ptr nocapture noundef writeonly %out, ptr nocapture noundef readonly %in) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %0 = ptrtoint ptr %in to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %in, align 1
  %2 = tail call i32 @llvm.bswap.i32(i32 %1) #4
  %w = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 33
  %3 = ptrtoint ptr %w to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %w, align 4
  %xor = xor i32 %2, %4
  %add.ptr2 = getelementptr i8, ptr %in, i32 4
  %5 = ptrtoint ptr %add.ptr2 to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %6 = load i32, ptr %add.ptr2, align 1
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #4
  %arrayidx5 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 33, i32 1
  %8 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx5, align 4
  %xor6 = xor i32 %7, %9
  %add.ptr7 = getelementptr i8, ptr %in, i32 8
  %10 = ptrtoint ptr %add.ptr7 to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %add.ptr7, align 1
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #4
  %arrayidx10 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 33, i32 2
  %13 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx10, align 4
  %xor11 = xor i32 %12, %14
  %add.ptr12 = getelementptr i8, ptr %in, i32 12
  %15 = ptrtoint ptr %add.ptr12 to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load i32, ptr %add.ptr12, align 1
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #4
  %arrayidx15 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 33, i32 3
  %18 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx15, align 4
  %xor16 = xor i32 %17, %19
  %and = and i32 %xor, 255
  %arrayidx18 = getelementptr [256 x i32], ptr %__crt_ctx.i, i32 0, i32 %and
  %20 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx18, align 4
  %shr = lshr i32 %xor, 8
  %and21 = and i32 %shr, 255
  %arrayidx22 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 1, i32 %and21
  %22 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx22, align 4
  %xor23 = xor i32 %23, %21
  %shr26 = lshr i32 %xor, 16
  %and27 = and i32 %shr26, 255
  %arrayidx28 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 2, i32 %and27
  %24 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx28, align 4
  %xor29 = xor i32 %xor23, %25
  %shr32 = lshr i32 %xor, 24
  %arrayidx33 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 3, i32 %shr32
  %26 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx33, align 4
  %xor34 = xor i32 %xor29, %27
  %and37 = and i32 %xor6, 255
  %arrayidx38 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 1, i32 %and37
  %28 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx38, align 4
  %shr41 = lshr i32 %xor6, 8
  %and42 = and i32 %shr41, 255
  %arrayidx43 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 2, i32 %and42
  %30 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx43, align 4
  %xor44 = xor i32 %31, %29
  %shr47 = lshr i32 %xor6, 16
  %and48 = and i32 %shr47, 255
  %arrayidx49 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 3, i32 %and48
  %32 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx49, align 4
  %xor50 = xor i32 %xor44, %33
  %shr53 = lshr i32 %xor6, 24
  %arrayidx54 = getelementptr [256 x i32], ptr %__crt_ctx.i, i32 0, i32 %shr53
  %34 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx54, align 4
  %xor55 = xor i32 %xor50, %35
  %add = add i32 %xor55, %xor34
  %k = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 33, i32 4, i32 16
  %arrayidx56 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 33, i32 4, i32 20
  %36 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx56, align 4
  %add57 = add i32 %xor55, %37
  %add58 = add i32 %add57, %add
  %38 = ptrtoint ptr %k to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %k, align 4
  %add61 = add i32 %add, %39
  %xor62 = xor i32 %xor11, %add61
  %or.i = tail call i32 @llvm.fshl.i32(i32 %xor62, i32 %xor62, i32 31) #4
  %or.i1339 = tail call i32 @llvm.fshl.i32(i32 %xor16, i32 %xor16, i32 1) #4
  %xor65 = xor i32 %add58, %or.i1339
  %and68 = and i32 %or.i, 255
  %arrayidx69 = getelementptr [256 x i32], ptr %__crt_ctx.i, i32 0, i32 %and68
  %40 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx69, align 4
  %shr72 = lshr i32 %or.i, 8
  %and73 = and i32 %shr72, 255
  %arrayidx74 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 1, i32 %and73
  %42 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx74, align 4
  %xor75 = xor i32 %43, %41
  %shr78 = lshr i32 %or.i, 16
  %and79 = and i32 %shr78, 255
  %arrayidx80 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 2, i32 %and79
  %44 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx80, align 4
  %xor81 = xor i32 %xor75, %45
  %shr84 = lshr i32 %or.i, 24
  %arrayidx85 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 3, i32 %shr84
  %46 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx85, align 4
  %xor86 = xor i32 %xor81, %47
  %and89 = and i32 %xor65, 255
  %arrayidx90 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 1, i32 %and89
  %48 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx90, align 4
  %shr93 = lshr i32 %xor65, 8
  %and94 = and i32 %shr93, 255
  %arrayidx95 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 2, i32 %and94
  %50 = ptrtoint ptr %arrayidx95 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx95, align 4
  %xor96 = xor i32 %51, %49
  %shr99 = lshr i32 %xor65, 16
  %and100 = and i32 %shr99, 255
  %arrayidx101 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 3, i32 %and100
  %52 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx101, align 4
  %xor102 = xor i32 %xor96, %53
  %shr105 = lshr i32 %xor65, 24
  %arrayidx106 = getelementptr [256 x i32], ptr %__crt_ctx.i, i32 0, i32 %shr105
  %54 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx106, align 4
  %xor107 = xor i32 %xor102, %55
  %add108 = add i32 %xor107, %xor86
  %arrayidx110 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 33, i32 4, i32 28
  %56 = ptrtoint ptr %arrayidx110 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx110, align 4
  %add111 = add i32 %xor107, %57
  %add112 = add i32 %add111, %add108
  %arrayidx114 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 33, i32 4, i32 24
  %58 = ptrtoint ptr %arrayidx114 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx114, align 4
  %add115 = add i32 %add108, %59
  %xor116 = xor i32 %add115, %xor
  %or.i1340 = tail call i32 @llvm.fshl.i32(i32 %xor116, i32 %xor116, i32 31) #4
  %or.i1341 = tail call i32 @llvm.fshl.i32(i32 %xor6, i32 %xor6, i32 1) #4
  %xor119 = xor i32 %add112, %or.i1341
  %and122 = and i32 %or.i1340, 255
  %arrayidx123 = getelementptr [256 x i32], ptr %__crt_ctx.i, i32 0, i32 %and122
  %60 = ptrtoint ptr %arrayidx123 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx123, align 4
  %shr126 = lshr i32 %or.i1340, 8
  %and127 = and i32 %shr126, 255
  %arrayidx128 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 1, i32 %and127
  %62 = ptrtoint ptr %arrayidx128 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx128, align 4
  %xor129 = xor i32 %63, %61
  %shr132 = lshr i32 %or.i1340, 16
  %and133 = and i32 %shr132, 255
  %arrayidx134 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 2, i32 %and133
  %64 = ptrtoint ptr %arrayidx134 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx134, align 4
  %xor135 = xor i32 %xor129, %65
  %shr138 = lshr i32 %or.i1340, 24
  %arrayidx139 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 3, i32 %shr138
  %66 = ptrtoint ptr %arrayidx139 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx139, align 4
  %xor140 = xor i32 %xor135, %67
  %and143 = and i32 %xor119, 255
  %arrayidx144 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 1, i32 %and143
  %68 = ptrtoint ptr %arrayidx144 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx144, align 4
  %shr147 = lshr i32 %xor119, 8
  %and148 = and i32 %shr147, 255
  %arrayidx149 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 2, i32 %and148
  %70 = ptrtoint ptr %arrayidx149 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx149, align 4
  %xor150 = xor i32 %71, %69
  %shr153 = lshr i32 %xor119, 16
  %and154 = and i32 %shr153, 255
  %arrayidx155 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 3, i32 %and154
  %72 = ptrtoint ptr %arrayidx155 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx155, align 4
  %xor156 = xor i32 %xor150, %73
  %shr159 = lshr i32 %xor119, 24
  %arrayidx160 = getelementptr [256 x i32], ptr %__crt_ctx.i, i32 0, i32 %shr159
  %74 = ptrtoint ptr %arrayidx160 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx160, align 4
  %xor161 = xor i32 %xor156, %75
  %add162 = add i32 %xor161, %xor140
  %arrayidx164 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 33, i32 4, i32 36
  %76 = ptrtoint ptr %arrayidx164 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx164, align 4
  %add165 = add i32 %xor161, %77
  %add166 = add i32 %add165, %add162
  %arrayidx168 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 33, i32 4, i32 32
  %78 = ptrtoint ptr %arrayidx168 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %arrayidx168, align 4
  %add169 = add i32 %add162, %79
  %xor170 = xor i32 %add169, %or.i
  %or.i1342 = tail call i32 @llvm.fshl.i32(i32 %xor170, i32 %xor170, i32 31) #4
  %or.i1343 = tail call i32 @llvm.fshl.i32(i32 %xor65, i32 %xor65, i32 1) #4
  %xor173 = xor i32 %add166, %or.i1343
  %and176 = and i32 %or.i1342, 255
  %arrayidx177 = getelementptr [256 x i32], ptr %__crt_ctx.i, i32 0, i32 %and176
  %80 = ptrtoint ptr %arrayidx177 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx177, align 4
  %shr180 = lshr i32 %or.i1342, 8
  %and181 = and i32 %shr180, 255
  %arrayidx182 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 1, i32 %and181
  %82 = ptrtoint ptr %arrayidx182 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arrayidx182, align 4
  %xor183 = xor i32 %83, %81
  %shr186 = lshr i32 %or.i1342, 16
  %and187 = and i32 %shr186, 255
  %arrayidx188 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 2, i32 %and187
  %84 = ptrtoint ptr %arrayidx188 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %arrayidx188, align 4
  %xor189 = xor i32 %xor183, %85
  %shr192 = lshr i32 %or.i1342, 24
  %arrayidx193 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 3, i32 %shr192
  %86 = ptrtoint ptr %arrayidx193 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx193, align 4
  %xor194 = xor i32 %xor189, %87
  %and197 = and i32 %xor173, 255
  %arrayidx198 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 1, i32 %and197
  %88 = ptrtoint ptr %arrayidx198 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %arrayidx198, align 4
  %shr201 = lshr i32 %xor173, 8
  %and202 = and i32 %shr201, 255
  %arrayidx203 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 2, i32 %and202
  %90 = ptrtoint ptr %arrayidx203 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %arrayidx203, align 4
  %xor204 = xor i32 %91, %89
  %shr207 = lshr i32 %xor173, 16
  %and208 = and i32 %shr207, 255
  %arrayidx209 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 3, i32 %and208
  %92 = ptrtoint ptr %arrayidx209 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %arrayidx209, align 4
  %xor210 = xor i32 %xor204, %93
  %shr213 = lshr i32 %xor173, 24
  %arrayidx214 = getelementptr [256 x i32], ptr %__crt_ctx.i, i32 0, i32 %shr213
  %94 = ptrtoint ptr %arrayidx214 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %arrayidx214, align 4
  %xor215 = xor i32 %xor210, %95
  %add216 = add i32 %xor215, %xor194
  %arrayidx218 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 33, i32 4, i32 44
  %96 = ptrtoint ptr %arrayidx218 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %arrayidx218, align 4
  %add219 = add i32 %xor215, %97
  %add220 = add i32 %add219, %add216
  %arrayidx222 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 33, i32 4, i32 40
  %98 = ptrtoint ptr %arrayidx222 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %arrayidx222, align 4
  %add223 = add i32 %add216, %99
  %xor224 = xor i32 %add223, %or.i1340
  %or.i1344 = tail call i32 @llvm.fshl.i32(i32 %xor224, i32 %xor224, i32 31) #4
  %or.i1345 = tail call i32 @llvm.fshl.i32(i32 %xor119, i32 %xor119, i32 1) #4
  %xor227 = xor i32 %add220, %or.i1345
  %and230 = and i32 %or.i1344, 255
  %arrayidx231 = getelementptr [256 x i32], ptr %__crt_ctx.i, i32 0, i32 %and230
  %100 = ptrtoint ptr %arrayidx231 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %arrayidx231, align 4
  %shr234 = lshr i32 %or.i1344, 8
  %and235 = and i32 %shr234, 255
  %arrayidx236 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 1, i32 %and235
  %102 = ptrtoint ptr %arrayidx236 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %arrayidx236, align 4
  %xor237 = xor i32 %103, %101
  %shr240 = lshr i32 %or.i1344, 16
  %and241 = and i32 %shr240, 255
  %arrayidx242 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 2, i32 %and241
  %104 = ptrtoint ptr %arrayidx242 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %arrayidx242, align 4
  %xor243 = xor i32 %xor237, %105
  %shr246 = lshr i32 %or.i1344, 24
  %arrayidx247 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 3, i32 %shr246
  %106 = ptrtoint ptr %arrayidx247 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %arrayidx247, align 4
  %xor248 = xor i32 %xor243, %107
  %and251 = and i32 %xor227, 255
  %arrayidx252 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 1, i32 %and251
  %108 = ptrtoint ptr %arrayidx252 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %arrayidx252, align 4
  %shr255 = lshr i32 %xor227, 8
  %and256 = and i32 %shr255, 255
  %arrayidx257 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 2, i32 %and256
  %110 = ptrtoint ptr %arrayidx257 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %arrayidx257, align 4
  %xor258 = xor i32 %111, %109
  %shr261 = lshr i32 %xor227, 16
  %and262 = and i32 %shr261, 255
  %arrayidx263 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 3, i32 %and262
  %112 = ptrtoint ptr %arrayidx263 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %arrayidx263, align 4
  %xor264 = xor i32 %xor258, %113
  %shr267 = lshr i32 %xor227, 24
  %arrayidx268 = getelementptr [256 x i32], ptr %__crt_ctx.i, i32 0, i32 %shr267
  %114 = ptrtoint ptr %arrayidx268 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %arrayidx268, align 4
  %xor269 = xor i32 %xor264, %115
  %add270 = add i32 %xor269, %xor248
  %arrayidx272 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 33, i32 4, i32 52
  %116 = ptrtoint ptr %arrayidx272 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %arrayidx272, align 4
  %add273 = add i32 %xor269, %117
  %add274 = add i32 %add273, %add270
  %arrayidx276 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 33, i32 4, i32 48
  %118 = ptrtoint ptr %arrayidx276 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %arrayidx276, align 4
  %add277 = add i32 %add270, %119
  %xor278 = xor i32 %add277, %or.i1342
  %or.i1346 = tail call i32 @llvm.fshl.i32(i32 %xor278, i32 %xor278, i32 31) #4
  %or.i1347 = tail call i32 @llvm.fshl.i32(i32 %xor173, i32 %xor173, i32 1) #4
  %xor281 = xor i32 %add274, %or.i1347
  %and284 = and i32 %or.i1346, 255
  %arrayidx285 = getelementptr [256 x i32], ptr %__crt_ctx.i, i32 0, i32 %and284
  %120 = ptrtoint ptr %arrayidx285 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %arrayidx285, align 4
  %shr288 = lshr i32 %or.i1346, 8
  %and289 = and i32 %shr288, 255
  %arrayidx290 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 1, i32 %and289
  %122 = ptrtoint ptr %arrayidx290 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %arrayidx290, align 4
  %xor291 = xor i32 %123, %121
  %shr294 = lshr i32 %or.i1346, 16
  %and295 = and i32 %shr294, 255
  %arrayidx296 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 2, i32 %and295
  %124 = ptrtoint ptr %arrayidx296 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %arrayidx296, align 4
  %xor297 = xor i32 %xor291, %125
  %shr300 = lshr i32 %or.i1346, 24
  %arrayidx301 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 3, i32 %shr300
  %126 = ptrtoint ptr %arrayidx301 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %arrayidx301, align 4
  %xor302 = xor i32 %xor297, %127
  %and305 = and i32 %xor281, 255
  %arrayidx306 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 1, i32 %and305
  %128 = ptrtoint ptr %arrayidx306 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %arrayidx306, align 4
  %shr309 = lshr i32 %xor281, 8
  %and310 = and i32 %shr309, 255
  %arrayidx311 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 2, i32 %and310
  %130 = ptrtoint ptr %arrayidx311 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %arrayidx311, align 4
  %xor312 = xor i32 %131, %129
  %shr315 = lshr i32 %xor281, 16
  %and316 = and i32 %shr315, 255
  %arrayidx317 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 3, i32 %and316
  %132 = ptrtoint ptr %arrayidx317 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %arrayidx317, align 4
  %xor318 = xor i32 %xor312, %133
  %shr321 = lshr i32 %xor281, 24
  %arrayidx322 = getelementptr [256 x i32], ptr %__crt_ctx.i, i32 0, i32 %shr321
  %134 = ptrtoint ptr %arrayidx322 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %arrayidx322, align 4
  %xor323 = xor i32 %xor318, %135
  %add324 = add i32 %xor323, %xor302
  %arrayidx326 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 33, i32 4, i32 60
  %136 = ptrtoint ptr %arrayidx326 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %arrayidx326, align 4
  %add327 = add i32 %xor323, %137
  %add328 = add i32 %add327, %add324
  %arrayidx330 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 33, i32 4, i32 56
  %138 = ptrtoint ptr %arrayidx330 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %arrayidx330, align 4
  %add331 = add i32 %add324, %139
  %xor332 = xor i32 %add331, %or.i1344
  %or.i1348 = tail call i32 @llvm.fshl.i32(i32 %xor332, i32 %xor332, i32 31) #4
  %or.i1349 = tail call i32 @llvm.fshl.i32(i32 %xor227, i32 %xor227, i32 1) #4
  %xor335 = xor i32 %add328, %or.i1349
  %and338 = and i32 %or.i1348, 255
  %arrayidx339 = getelementptr [256 x i32], ptr %__crt_ctx.i, i32 0, i32 %and338
  %140 = ptrtoint ptr %arrayidx339 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %arrayidx339, align 4
  %shr342 = lshr i32 %or.i1348, 8
  %and343 = and i32 %shr342, 255
  %arrayidx344 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 1, i32 %and343
  %142 = ptrtoint ptr %arrayidx344 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %arrayidx344, align 4
  %xor345 = xor i32 %143, %141
  %shr348 = lshr i32 %or.i1348, 16
  %and349 = and i32 %shr348, 255
  %arrayidx350 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 2, i32 %and349
  %144 = ptrtoint ptr %arrayidx350 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %arrayidx350, align 4
  %xor351 = xor i32 %xor345, %145
  %shr354 = lshr i32 %or.i1348, 24
  %arrayidx355 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 3, i32 %shr354
  %146 = ptrtoint ptr %arrayidx355 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %arrayidx355, align 4
  %xor356 = xor i32 %xor351, %147
  %and359 = and i32 %xor335, 255
  %arrayidx360 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 1, i32 %and359
  %148 = ptrtoint ptr %arrayidx360 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %arrayidx360, align 4
  %shr363 = lshr i32 %xor335, 8
  %and364 = and i32 %shr363, 255
  %arrayidx365 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 2, i32 %and364
  %150 = ptrtoint ptr %arrayidx365 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %arrayidx365, align 4
  %xor366 = xor i32 %151, %149
  %shr369 = lshr i32 %xor335, 16
  %and370 = and i32 %shr369, 255
  %arrayidx371 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 3, i32 %and370
  %152 = ptrtoint ptr %arrayidx371 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %arrayidx371, align 4
  %xor372 = xor i32 %xor366, %153
  %shr375 = lshr i32 %xor335, 24
  %arrayidx376 = getelementptr [256 x i32], ptr %__crt_ctx.i, i32 0, i32 %shr375
  %154 = ptrtoint ptr %arrayidx376 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %arrayidx376, align 4
  %xor377 = xor i32 %xor372, %155
  %add378 = add i32 %xor377, %xor356
  %arrayidx380 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 33, i32 4, i32 68
  %156 = ptrtoint ptr %arrayidx380 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %arrayidx380, align 4
  %add381 = add i32 %xor377, %157
  %add382 = add i32 %add381, %add378
  %arrayidx384 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 33, i32 4, i32 64
  %158 = ptrtoint ptr %arrayidx384 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %arrayidx384, align 4
  %add385 = add i32 %add378, %159
  %xor386 = xor i32 %add385, %or.i1346
  %or.i1350 = tail call i32 @llvm.fshl.i32(i32 %xor386, i32 %xor386, i32 31) #4
  %or.i1351 = tail call i32 @llvm.fshl.i32(i32 %xor281, i32 %xor281, i32 1) #4
  %xor389 = xor i32 %add382, %or.i1351
  %and392 = and i32 %or.i1350, 255
  %arrayidx393 = getelementptr [256 x i32], ptr %__crt_ctx.i, i32 0, i32 %and392
  %160 = ptrtoint ptr %arrayidx393 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %arrayidx393, align 4
  %shr396 = lshr i32 %or.i1350, 8
  %and397 = and i32 %shr396, 255
  %arrayidx398 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 1, i32 %and397
  %162 = ptrtoint ptr %arrayidx398 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %arrayidx398, align 4
  %xor399 = xor i32 %163, %161
  %shr402 = lshr i32 %or.i1350, 16
  %and403 = and i32 %shr402, 255
  %arrayidx404 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 2, i32 %and403
  %164 = ptrtoint ptr %arrayidx404 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %arrayidx404, align 4
  %xor405 = xor i32 %xor399, %165
  %shr408 = lshr i32 %or.i1350, 24
  %arrayidx409 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 3, i32 %shr408
  %166 = ptrtoint ptr %arrayidx409 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %arrayidx409, align 4
  %xor410 = xor i32 %xor405, %167
  %and413 = and i32 %xor389, 255
  %arrayidx414 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 1, i32 %and413
  %168 = ptrtoint ptr %arrayidx414 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %arrayidx414, align 4
  %shr417 = lshr i32 %xor389, 8
  %and418 = and i32 %shr417, 255
  %arrayidx419 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 2, i32 %and418
  %170 = ptrtoint ptr %arrayidx419 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %arrayidx419, align 4
  %xor420 = xor i32 %171, %169
  %shr423 = lshr i32 %xor389, 16
  %and424 = and i32 %shr423, 255
  %arrayidx425 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 3, i32 %and424
  %172 = ptrtoint ptr %arrayidx425 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %arrayidx425, align 4
  %xor426 = xor i32 %xor420, %173
  %shr429 = lshr i32 %xor389, 24
  %arrayidx430 = getelementptr [256 x i32], ptr %__crt_ctx.i, i32 0, i32 %shr429
  %174 = ptrtoint ptr %arrayidx430 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %arrayidx430, align 4
  %xor431 = xor i32 %xor426, %175
  %add432 = add i32 %xor431, %xor410
  %arrayidx434 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 33, i32 4, i32 76
  %176 = ptrtoint ptr %arrayidx434 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %arrayidx434, align 4
  %add435 = add i32 %xor431, %177
  %add436 = add i32 %add435, %add432
  %arrayidx438 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 33, i32 4, i32 72
  %178 = ptrtoint ptr %arrayidx438 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %arrayidx438, align 4
  %add439 = add i32 %add432, %179
  %xor440 = xor i32 %add439, %or.i1348
  %or.i1352 = tail call i32 @llvm.fshl.i32(i32 %xor440, i32 %xor440, i32 31) #4
  %or.i1353 = tail call i32 @llvm.fshl.i32(i32 %xor335, i32 %xor335, i32 1) #4
  %xor443 = xor i32 %add436, %or.i1353
  %and446 = and i32 %or.i1352, 255
  %arrayidx447 = getelementptr [256 x i32], ptr %__crt_ctx.i, i32 0, i32 %and446
  %180 = ptrtoint ptr %arrayidx447 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %arrayidx447, align 4
  %shr450 = lshr i32 %or.i1352, 8
  %and451 = and i32 %shr450, 255
  %arrayidx452 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 1, i32 %and451
  %182 = ptrtoint ptr %arrayidx452 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %arrayidx452, align 4
  %xor453 = xor i32 %183, %181
  %shr456 = lshr i32 %or.i1352, 16
  %and457 = and i32 %shr456, 255
  %arrayidx458 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 2, i32 %and457
  %184 = ptrtoint ptr %arrayidx458 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %arrayidx458, align 4
  %xor459 = xor i32 %xor453, %185
  %shr462 = lshr i32 %or.i1352, 24
  %arrayidx463 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 3, i32 %shr462
  %186 = ptrtoint ptr %arrayidx463 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %arrayidx463, align 4
  %xor464 = xor i32 %xor459, %187
  %and467 = and i32 %xor443, 255
  %arrayidx468 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 1, i32 %and467
  %188 = ptrtoint ptr %arrayidx468 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %arrayidx468, align 4
  %shr471 = lshr i32 %xor443, 8
  %and472 = and i32 %shr471, 255
  %arrayidx473 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 2, i32 %and472
  %190 = ptrtoint ptr %arrayidx473 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %arrayidx473, align 4
  %xor474 = xor i32 %191, %189
  %shr477 = lshr i32 %xor443, 16
  %and478 = and i32 %shr477, 255
  %arrayidx479 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 3, i32 %and478
  %192 = ptrtoint ptr %arrayidx479 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %arrayidx479, align 4
  %xor480 = xor i32 %xor474, %193
  %shr483 = lshr i32 %xor443, 24
  %arrayidx484 = getelementptr [256 x i32], ptr %__crt_ctx.i, i32 0, i32 %shr483
  %194 = ptrtoint ptr %arrayidx484 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %arrayidx484, align 4
  %xor485 = xor i32 %xor480, %195
  %add486 = add i32 %xor485, %xor464
  %arrayidx488 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 33, i32 4, i32 84
  %196 = ptrtoint ptr %arrayidx488 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %arrayidx488, align 4
  %add489 = add i32 %xor485, %197
  %add490 = add i32 %add489, %add486
  %arrayidx492 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 33, i32 4, i32 80
  %198 = ptrtoint ptr %arrayidx492 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %arrayidx492, align 4
  %add493 = add i32 %add486, %199
  %xor494 = xor i32 %add493, %or.i1350
  %or.i1354 = tail call i32 @llvm.fshl.i32(i32 %xor494, i32 %xor494, i32 31) #4
  %or.i1355 = tail call i32 @llvm.fshl.i32(i32 %xor389, i32 %xor389, i32 1) #4
  %xor497 = xor i32 %add490, %or.i1355
  %and500 = and i32 %or.i1354, 255
  %arrayidx501 = getelementptr [256 x i32], ptr %__crt_ctx.i, i32 0, i32 %and500
  %200 = ptrtoint ptr %arrayidx501 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %arrayidx501, align 4
  %shr504 = lshr i32 %or.i1354, 8
  %and505 = and i32 %shr504, 255
  %arrayidx506 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 1, i32 %and505
  %202 = ptrtoint ptr %arrayidx506 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %arrayidx506, align 4
  %xor507 = xor i32 %203, %201
  %shr510 = lshr i32 %or.i1354, 16
  %and511 = and i32 %shr510, 255
  %arrayidx512 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 2, i32 %and511
  %204 = ptrtoint ptr %arrayidx512 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %arrayidx512, align 4
  %xor513 = xor i32 %xor507, %205
  %shr516 = lshr i32 %or.i1354, 24
  %arrayidx517 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 3, i32 %shr516
  %206 = ptrtoint ptr %arrayidx517 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %arrayidx517, align 4
  %xor518 = xor i32 %xor513, %207
  %and521 = and i32 %xor497, 255
  %arrayidx522 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 1, i32 %and521
  %208 = ptrtoint ptr %arrayidx522 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %arrayidx522, align 4
  %shr525 = lshr i32 %xor497, 8
  %and526 = and i32 %shr525, 255
  %arrayidx527 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 2, i32 %and526
  %210 = ptrtoint ptr %arrayidx527 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %arrayidx527, align 4
  %xor528 = xor i32 %211, %209
  %shr531 = lshr i32 %xor497, 16
  %and532 = and i32 %shr531, 255
  %arrayidx533 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 3, i32 %and532
  %212 = ptrtoint ptr %arrayidx533 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %arrayidx533, align 4
  %xor534 = xor i32 %xor528, %213
  %shr537 = lshr i32 %xor497, 24
  %arrayidx538 = getelementptr [256 x i32], ptr %__crt_ctx.i, i32 0, i32 %shr537
  %214 = ptrtoint ptr %arrayidx538 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %arrayidx538, align 4
  %xor539 = xor i32 %xor534, %215
  %add540 = add i32 %xor539, %xor518
  %arrayidx542 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 33, i32 4, i32 92
  %216 = ptrtoint ptr %arrayidx542 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %arrayidx542, align 4
  %add543 = add i32 %xor539, %217
  %add544 = add i32 %add543, %add540
  %arrayidx546 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 33, i32 4, i32 88
  %218 = ptrtoint ptr %arrayidx546 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %arrayidx546, align 4
  %add547 = add i32 %add540, %219
  %xor548 = xor i32 %add547, %or.i1352
  %or.i1356 = tail call i32 @llvm.fshl.i32(i32 %xor548, i32 %xor548, i32 31) #4
  %or.i1357 = tail call i32 @llvm.fshl.i32(i32 %xor443, i32 %xor443, i32 1) #4
  %xor551 = xor i32 %add544, %or.i1357
  %and554 = and i32 %or.i1356, 255
  %arrayidx555 = getelementptr [256 x i32], ptr %__crt_ctx.i, i32 0, i32 %and554
  %220 = ptrtoint ptr %arrayidx555 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %arrayidx555, align 4
  %shr558 = lshr i32 %or.i1356, 8
  %and559 = and i32 %shr558, 255
  %arrayidx560 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 1, i32 %and559
  %222 = ptrtoint ptr %arrayidx560 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %arrayidx560, align 4
  %xor561 = xor i32 %223, %221
  %shr564 = lshr i32 %or.i1356, 16
  %and565 = and i32 %shr564, 255
  %arrayidx566 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 2, i32 %and565
  %224 = ptrtoint ptr %arrayidx566 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %arrayidx566, align 4
  %xor567 = xor i32 %xor561, %225
  %shr570 = lshr i32 %or.i1356, 24
  %arrayidx571 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 3, i32 %shr570
  %226 = ptrtoint ptr %arrayidx571 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %arrayidx571, align 4
  %xor572 = xor i32 %xor567, %227
  %and575 = and i32 %xor551, 255
  %arrayidx576 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 1, i32 %and575
  %228 = ptrtoint ptr %arrayidx576 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %arrayidx576, align 4
  %shr579 = lshr i32 %xor551, 8
  %and580 = and i32 %shr579, 255
  %arrayidx581 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 2, i32 %and580
  %230 = ptrtoint ptr %arrayidx581 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %arrayidx581, align 4
  %xor582 = xor i32 %231, %229
  %shr585 = lshr i32 %xor551, 16
  %and586 = and i32 %shr585, 255
  %arrayidx587 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 3, i32 %and586
  %232 = ptrtoint ptr %arrayidx587 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %arrayidx587, align 4
  %xor588 = xor i32 %xor582, %233
  %shr591 = lshr i32 %xor551, 24
  %arrayidx592 = getelementptr [256 x i32], ptr %__crt_ctx.i, i32 0, i32 %shr591
  %234 = ptrtoint ptr %arrayidx592 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %arrayidx592, align 4
  %xor593 = xor i32 %xor588, %235
  %add594 = add i32 %xor593, %xor572
  %arrayidx596 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 33, i32 4, i32 100
  %236 = ptrtoint ptr %arrayidx596 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %arrayidx596, align 4
  %add597 = add i32 %xor593, %237
  %add598 = add i32 %add597, %add594
  %arrayidx600 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 33, i32 4, i32 96
  %238 = ptrtoint ptr %arrayidx600 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %arrayidx600, align 4
  %add601 = add i32 %add594, %239
  %xor602 = xor i32 %add601, %or.i1354
  %or.i1358 = tail call i32 @llvm.fshl.i32(i32 %xor602, i32 %xor602, i32 31) #4
  %or.i1359 = tail call i32 @llvm.fshl.i32(i32 %xor497, i32 %xor497, i32 1) #4
  %xor605 = xor i32 %add598, %or.i1359
  %and608 = and i32 %or.i1358, 255
  %arrayidx609 = getelementptr [256 x i32], ptr %__crt_ctx.i, i32 0, i32 %and608
  %240 = ptrtoint ptr %arrayidx609 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %arrayidx609, align 4
  %shr612 = lshr i32 %or.i1358, 8
  %and613 = and i32 %shr612, 255
  %arrayidx614 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 1, i32 %and613
  %242 = ptrtoint ptr %arrayidx614 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %arrayidx614, align 4
  %xor615 = xor i32 %243, %241
  %shr618 = lshr i32 %or.i1358, 16
  %and619 = and i32 %shr618, 255
  %arrayidx620 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 2, i32 %and619
  %244 = ptrtoint ptr %arrayidx620 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %arrayidx620, align 4
  %xor621 = xor i32 %xor615, %245
  %shr624 = lshr i32 %or.i1358, 24
  %arrayidx625 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 3, i32 %shr624
  %246 = ptrtoint ptr %arrayidx625 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %arrayidx625, align 4
  %xor626 = xor i32 %xor621, %247
  %and629 = and i32 %xor605, 255
  %arrayidx630 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 1, i32 %and629
  %248 = ptrtoint ptr %arrayidx630 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %arrayidx630, align 4
  %shr633 = lshr i32 %xor605, 8
  %and634 = and i32 %shr633, 255
  %arrayidx635 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 2, i32 %and634
  %250 = ptrtoint ptr %arrayidx635 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %arrayidx635, align 4
  %xor636 = xor i32 %251, %249
  %shr639 = lshr i32 %xor605, 16
  %and640 = and i32 %shr639, 255
  %arrayidx641 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 3, i32 %and640
  %252 = ptrtoint ptr %arrayidx641 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %arrayidx641, align 4
  %xor642 = xor i32 %xor636, %253
  %shr645 = lshr i32 %xor605, 24
  %arrayidx646 = getelementptr [256 x i32], ptr %__crt_ctx.i, i32 0, i32 %shr645
  %254 = ptrtoint ptr %arrayidx646 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %arrayidx646, align 4
  %xor647 = xor i32 %xor642, %255
  %add648 = add i32 %xor647, %xor626
  %arrayidx650 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 33, i32 4, i32 108
  %256 = ptrtoint ptr %arrayidx650 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %arrayidx650, align 4
  %add651 = add i32 %xor647, %257
  %add652 = add i32 %add651, %add648
  %arrayidx654 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 33, i32 4, i32 104
  %258 = ptrtoint ptr %arrayidx654 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %arrayidx654, align 4
  %add655 = add i32 %add648, %259
  %xor656 = xor i32 %add655, %or.i1356
  %or.i1360 = tail call i32 @llvm.fshl.i32(i32 %xor656, i32 %xor656, i32 31) #4
  %or.i1361 = tail call i32 @llvm.fshl.i32(i32 %xor551, i32 %xor551, i32 1) #4
  %xor659 = xor i32 %add652, %or.i1361
  %and662 = and i32 %or.i1360, 255
  %arrayidx663 = getelementptr [256 x i32], ptr %__crt_ctx.i, i32 0, i32 %and662
  %260 = ptrtoint ptr %arrayidx663 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %arrayidx663, align 4
  %shr666 = lshr i32 %or.i1360, 8
  %and667 = and i32 %shr666, 255
  %arrayidx668 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 1, i32 %and667
  %262 = ptrtoint ptr %arrayidx668 to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %arrayidx668, align 4
  %xor669 = xor i32 %263, %261
  %shr672 = lshr i32 %or.i1360, 16
  %and673 = and i32 %shr672, 255
  %arrayidx674 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 2, i32 %and673
  %264 = ptrtoint ptr %arrayidx674 to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %arrayidx674, align 4
  %xor675 = xor i32 %xor669, %265
  %shr678 = lshr i32 %or.i1360, 24
  %arrayidx679 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 3, i32 %shr678
  %266 = ptrtoint ptr %arrayidx679 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %arrayidx679, align 4
  %xor680 = xor i32 %xor675, %267
  %and683 = and i32 %xor659, 255
  %arrayidx684 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 1, i32 %and683
  %268 = ptrtoint ptr %arrayidx684 to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %arrayidx684, align 4
  %shr687 = lshr i32 %xor659, 8
  %and688 = and i32 %shr687, 255
  %arrayidx689 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 2, i32 %and688
  %270 = ptrtoint ptr %arrayidx689 to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load i32, ptr %arrayidx689, align 4
  %xor690 = xor i32 %271, %269
  %shr693 = lshr i32 %xor659, 16
  %and694 = and i32 %shr693, 255
  %arrayidx695 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 3, i32 %and694
  %272 = ptrtoint ptr %arrayidx695 to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %arrayidx695, align 4
  %xor696 = xor i32 %xor690, %273
  %shr699 = lshr i32 %xor659, 24
  %arrayidx700 = getelementptr [256 x i32], ptr %__crt_ctx.i, i32 0, i32 %shr699
  %274 = ptrtoint ptr %arrayidx700 to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load i32, ptr %arrayidx700, align 4
  %xor701 = xor i32 %xor696, %275
  %add702 = add i32 %xor701, %xor680
  %arrayidx704 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 34, i32 1
  %276 = ptrtoint ptr %arrayidx704 to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %arrayidx704, align 4
  %add705 = add i32 %xor701, %277
  %add706 = add i32 %add705, %add702
  %arrayidx708 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 34
  %278 = ptrtoint ptr %arrayidx708 to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %arrayidx708, align 4
  %add709 = add i32 %add702, %279
  %xor710 = xor i32 %add709, %or.i1358
  %or.i1362 = tail call i32 @llvm.fshl.i32(i32 %xor710, i32 %xor710, i32 31) #4
  %or.i1363 = tail call i32 @llvm.fshl.i32(i32 %xor605, i32 %xor605, i32 1) #4
  %xor713 = xor i32 %add706, %or.i1363
  %and716 = and i32 %or.i1362, 255
  %arrayidx717 = getelementptr [256 x i32], ptr %__crt_ctx.i, i32 0, i32 %and716
  %280 = ptrtoint ptr %arrayidx717 to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %arrayidx717, align 4
  %shr720 = lshr i32 %or.i1362, 8
  %and721 = and i32 %shr720, 255
  %arrayidx722 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 1, i32 %and721
  %282 = ptrtoint ptr %arrayidx722 to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load i32, ptr %arrayidx722, align 4
  %xor723 = xor i32 %283, %281
  %shr726 = lshr i32 %or.i1362, 16
  %and727 = and i32 %shr726, 255
  %arrayidx728 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 2, i32 %and727
  %284 = ptrtoint ptr %arrayidx728 to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load i32, ptr %arrayidx728, align 4
  %xor729 = xor i32 %xor723, %285
  %shr732 = lshr i32 %or.i1362, 24
  %arrayidx733 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 3, i32 %shr732
  %286 = ptrtoint ptr %arrayidx733 to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load i32, ptr %arrayidx733, align 4
  %xor734 = xor i32 %xor729, %287
  %and737 = and i32 %xor713, 255
  %arrayidx738 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 1, i32 %and737
  %288 = ptrtoint ptr %arrayidx738 to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load i32, ptr %arrayidx738, align 4
  %shr741 = lshr i32 %xor713, 8
  %and742 = and i32 %shr741, 255
  %arrayidx743 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 2, i32 %and742
  %290 = ptrtoint ptr %arrayidx743 to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load i32, ptr %arrayidx743, align 4
  %xor744 = xor i32 %291, %289
  %shr747 = lshr i32 %xor713, 16
  %and748 = and i32 %shr747, 255
  %arrayidx749 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 3, i32 %and748
  %292 = ptrtoint ptr %arrayidx749 to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load i32, ptr %arrayidx749, align 4
  %xor750 = xor i32 %xor744, %293
  %shr753 = lshr i32 %xor713, 24
  %arrayidx754 = getelementptr [256 x i32], ptr %__crt_ctx.i, i32 0, i32 %shr753
  %294 = ptrtoint ptr %arrayidx754 to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load i32, ptr %arrayidx754, align 4
  %xor755 = xor i32 %xor750, %295
  %add756 = add i32 %xor755, %xor734
  %arrayidx758 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 34, i32 3
  %296 = ptrtoint ptr %arrayidx758 to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load i32, ptr %arrayidx758, align 4
  %add759 = add i32 %xor755, %297
  %add760 = add i32 %add759, %add756
  %arrayidx762 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 34, i32 2
  %298 = ptrtoint ptr %arrayidx762 to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load i32, ptr %arrayidx762, align 4
  %add763 = add i32 %add756, %299
  %xor764 = xor i32 %add763, %or.i1360
  %or.i1364 = tail call i32 @llvm.fshl.i32(i32 %xor764, i32 %xor764, i32 31) #4
  %or.i1365 = tail call i32 @llvm.fshl.i32(i32 %xor659, i32 %xor659, i32 1) #4
  %xor767 = xor i32 %add760, %or.i1365
  %and770 = and i32 %or.i1364, 255
  %arrayidx771 = getelementptr [256 x i32], ptr %__crt_ctx.i, i32 0, i32 %and770
  %300 = ptrtoint ptr %arrayidx771 to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load i32, ptr %arrayidx771, align 4
  %shr774 = lshr i32 %or.i1364, 8
  %and775 = and i32 %shr774, 255
  %arrayidx776 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 1, i32 %and775
  %302 = ptrtoint ptr %arrayidx776 to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load i32, ptr %arrayidx776, align 4
  %xor777 = xor i32 %303, %301
  %shr780 = lshr i32 %or.i1364, 16
  %and781 = and i32 %shr780, 255
  %arrayidx782 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 2, i32 %and781
  %304 = ptrtoint ptr %arrayidx782 to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load i32, ptr %arrayidx782, align 4
  %xor783 = xor i32 %xor777, %305
  %shr786 = lshr i32 %or.i1364, 24
  %arrayidx787 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 3, i32 %shr786
  %306 = ptrtoint ptr %arrayidx787 to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load i32, ptr %arrayidx787, align 4
  %xor788 = xor i32 %xor783, %307
  %and791 = and i32 %xor767, 255
  %arrayidx792 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 1, i32 %and791
  %308 = ptrtoint ptr %arrayidx792 to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load i32, ptr %arrayidx792, align 4
  %shr795 = lshr i32 %xor767, 8
  %and796 = and i32 %shr795, 255
  %arrayidx797 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 2, i32 %and796
  %310 = ptrtoint ptr %arrayidx797 to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load i32, ptr %arrayidx797, align 4
  %xor798 = xor i32 %311, %309
  %shr801 = lshr i32 %xor767, 16
  %and802 = and i32 %shr801, 255
  %arrayidx803 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 3, i32 %and802
  %312 = ptrtoint ptr %arrayidx803 to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load i32, ptr %arrayidx803, align 4
  %xor804 = xor i32 %xor798, %313
  %shr807 = lshr i32 %xor767, 24
  %arrayidx808 = getelementptr [256 x i32], ptr %__crt_ctx.i, i32 0, i32 %shr807
  %314 = ptrtoint ptr %arrayidx808 to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load i32, ptr %arrayidx808, align 4
  %xor809 = xor i32 %xor804, %315
  %add810 = add i32 %xor809, %xor788
  %arrayidx812 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 34, i32 4, i32 4
  %316 = ptrtoint ptr %arrayidx812 to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load i32, ptr %arrayidx812, align 4
  %add813 = add i32 %xor809, %317
  %add814 = add i32 %add813, %add810
  %arrayidx816 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 34, i32 4
  %318 = ptrtoint ptr %arrayidx816 to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load i32, ptr %arrayidx816, align 4
  %add817 = add i32 %add810, %319
  %xor818 = xor i32 %add817, %or.i1362
  %or.i1366 = tail call i32 @llvm.fshl.i32(i32 %xor818, i32 %xor818, i32 31) #4
  %or.i1367 = tail call i32 @llvm.fshl.i32(i32 %xor713, i32 %xor713, i32 1) #4
  %xor821 = xor i32 %add814, %or.i1367
  %and824 = and i32 %or.i1366, 255
  %arrayidx825 = getelementptr [256 x i32], ptr %__crt_ctx.i, i32 0, i32 %and824
  %320 = ptrtoint ptr %arrayidx825 to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load i32, ptr %arrayidx825, align 4
  %shr828 = lshr i32 %or.i1366, 8
  %and829 = and i32 %shr828, 255
  %arrayidx830 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 1, i32 %and829
  %322 = ptrtoint ptr %arrayidx830 to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load i32, ptr %arrayidx830, align 4
  %xor831 = xor i32 %323, %321
  %shr834 = lshr i32 %or.i1366, 16
  %and835 = and i32 %shr834, 255
  %arrayidx836 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 2, i32 %and835
  %324 = ptrtoint ptr %arrayidx836 to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load i32, ptr %arrayidx836, align 4
  %xor837 = xor i32 %xor831, %325
  %shr840 = lshr i32 %or.i1366, 24
  %arrayidx841 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 3, i32 %shr840
  %326 = ptrtoint ptr %arrayidx841 to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load i32, ptr %arrayidx841, align 4
  %xor842 = xor i32 %xor837, %327
  %and845 = and i32 %xor821, 255
  %arrayidx846 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 1, i32 %and845
  %328 = ptrtoint ptr %arrayidx846 to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load i32, ptr %arrayidx846, align 4
  %shr849 = lshr i32 %xor821, 8
  %and850 = and i32 %shr849, 255
  %arrayidx851 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 2, i32 %and850
  %330 = ptrtoint ptr %arrayidx851 to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load i32, ptr %arrayidx851, align 4
  %xor852 = xor i32 %331, %329
  %shr855 = lshr i32 %xor821, 16
  %and856 = and i32 %shr855, 255
  %arrayidx857 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 3, i32 %and856
  %332 = ptrtoint ptr %arrayidx857 to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load i32, ptr %arrayidx857, align 4
  %xor858 = xor i32 %xor852, %333
  %shr861 = lshr i32 %xor821, 24
  %arrayidx862 = getelementptr [256 x i32], ptr %__crt_ctx.i, i32 0, i32 %shr861
  %334 = ptrtoint ptr %arrayidx862 to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load i32, ptr %arrayidx862, align 4
  %xor863 = xor i32 %xor858, %335
  %add864 = add i32 %xor863, %xor842
  %arrayidx866 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 34, i32 4, i32 12
  %336 = ptrtoint ptr %arrayidx866 to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load i32, ptr %arrayidx866, align 4
  %add867 = add i32 %xor863, %337
  %add868 = add i32 %add867, %add864
  %arrayidx870 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 34, i32 4, i32 8
  %338 = ptrtoint ptr %arrayidx870 to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load i32, ptr %arrayidx870, align 4
  %add871 = add i32 %add864, %339
  %xor872 = xor i32 %add871, %or.i1364
  %or.i1368 = tail call i32 @llvm.fshl.i32(i32 %xor872, i32 %xor872, i32 31) #4
  %or.i1369 = tail call i32 @llvm.fshl.i32(i32 %xor767, i32 %xor767, i32 1) #4
  %xor875 = xor i32 %add868, %or.i1369
  %arrayidx877 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 33, i32 4
  %340 = ptrtoint ptr %arrayidx877 to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load i32, ptr %arrayidx877, align 4
  %xor878 = xor i32 %341, %or.i1366
  %342 = tail call i32 @llvm.bswap.i32(i32 %xor878) #4
  %343 = ptrtoint ptr %out to i32
  call void @__asan_storeN_noabort(i32 %343, i32 4)
  store i32 %342, ptr %out, align 1
  %arrayidx881 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 33, i32 4, i32 4
  %344 = ptrtoint ptr %arrayidx881 to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load i32, ptr %arrayidx881, align 4
  %xor882 = xor i32 %345, %xor821
  %add.ptr883 = getelementptr i8, ptr %out, i32 4
  %346 = tail call i32 @llvm.bswap.i32(i32 %xor882) #4
  %347 = ptrtoint ptr %add.ptr883 to i32
  call void @__asan_storeN_noabort(i32 %347, i32 4)
  store i32 %346, ptr %add.ptr883, align 1
  %arrayidx885 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 33, i32 4, i32 8
  %348 = ptrtoint ptr %arrayidx885 to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load i32, ptr %arrayidx885, align 4
  %xor886 = xor i32 %349, %or.i1368
  %add.ptr887 = getelementptr i8, ptr %out, i32 8
  %350 = tail call i32 @llvm.bswap.i32(i32 %xor886) #4
  %351 = ptrtoint ptr %add.ptr887 to i32
  call void @__asan_storeN_noabort(i32 %351, i32 4)
  store i32 %350, ptr %add.ptr887, align 1
  %arrayidx889 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 33, i32 4, i32 12
  %352 = ptrtoint ptr %arrayidx889 to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load i32, ptr %arrayidx889, align 4
  %xor890 = xor i32 %xor875, %353
  %add.ptr891 = getelementptr i8, ptr %out, i32 12
  %354 = tail call i32 @llvm.bswap.i32(i32 %xor890) #4
  %355 = ptrtoint ptr %add.ptr891 to i32
  call void @__asan_storeN_noabort(i32 %355, i32 4)
  store i32 %354, ptr %add.ptr891, align 1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @twofish_decrypt(ptr noundef readonly %tfm, ptr nocapture noundef writeonly %out, ptr nocapture noundef readonly %in) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %0 = ptrtoint ptr %in to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %in, align 1
  %2 = tail call i32 @llvm.bswap.i32(i32 %1) #4
  %w = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 33
  %arrayidx = getelementptr %struct.crypto_tfm, ptr %tfm, i32 33, i32 4
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 4
  %xor = xor i32 %2, %4
  %add.ptr2 = getelementptr i8, ptr %in, i32 4
  %5 = ptrtoint ptr %add.ptr2 to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %6 = load i32, ptr %add.ptr2, align 1
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #4
  %arrayidx5 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 33, i32 4, i32 4
  %8 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx5, align 4
  %xor6 = xor i32 %7, %9
  %add.ptr7 = getelementptr i8, ptr %in, i32 8
  %10 = ptrtoint ptr %add.ptr7 to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %add.ptr7, align 1
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #4
  %arrayidx10 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 33, i32 4, i32 8
  %13 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx10, align 4
  %xor11 = xor i32 %12, %14
  %add.ptr12 = getelementptr i8, ptr %in, i32 12
  %15 = ptrtoint ptr %add.ptr12 to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load i32, ptr %add.ptr12, align 1
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #4
  %arrayidx15 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 33, i32 4, i32 12
  %18 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx15, align 4
  %xor16 = xor i32 %17, %19
  %and = and i32 %xor, 255
  %arrayidx18 = getelementptr [256 x i32], ptr %__crt_ctx.i, i32 0, i32 %and
  %20 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx18, align 4
  %shr = lshr i32 %xor, 8
  %and21 = and i32 %shr, 255
  %arrayidx22 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 1, i32 %and21
  %22 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx22, align 4
  %xor23 = xor i32 %23, %21
  %shr26 = lshr i32 %xor, 16
  %and27 = and i32 %shr26, 255
  %arrayidx28 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 2, i32 %and27
  %24 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx28, align 4
  %xor29 = xor i32 %xor23, %25
  %shr32 = lshr i32 %xor, 24
  %arrayidx33 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 3, i32 %shr32
  %26 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx33, align 4
  %xor34 = xor i32 %xor29, %27
  %and37 = and i32 %xor6, 255
  %arrayidx38 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 1, i32 %and37
  %28 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx38, align 4
  %shr41 = lshr i32 %xor6, 8
  %and42 = and i32 %shr41, 255
  %arrayidx43 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 2, i32 %and42
  %30 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx43, align 4
  %xor44 = xor i32 %31, %29
  %shr47 = lshr i32 %xor6, 16
  %and48 = and i32 %shr47, 255
  %arrayidx49 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 3, i32 %and48
  %32 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx49, align 4
  %xor50 = xor i32 %xor44, %33
  %shr53 = lshr i32 %xor6, 24
  %arrayidx54 = getelementptr [256 x i32], ptr %__crt_ctx.i, i32 0, i32 %shr53
  %34 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx54, align 4
  %xor55 = xor i32 %xor50, %35
  %add = add i32 %xor55, %xor34
  %k = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 33, i32 4, i32 16
  %arrayidx57 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 34, i32 4, i32 12
  %36 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx57, align 4
  %add56 = add i32 %37, %xor55
  %add58 = add i32 %add56, %add
  %xor59 = xor i32 %xor16, %add58
  %or.i = tail call i32 @llvm.fshl.i32(i32 %xor59, i32 %xor59, i32 31) #4
  %or.i1355 = tail call i32 @llvm.fshl.i32(i32 %xor11, i32 %xor11, i32 1) #4
  %arrayidx63 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 34, i32 4, i32 8
  %38 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx63, align 4
  %add64 = add i32 %add, %39
  %xor65 = xor i32 %add64, %or.i1355
  %and68 = and i32 %xor65, 255
  %arrayidx69 = getelementptr [256 x i32], ptr %__crt_ctx.i, i32 0, i32 %and68
  %40 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx69, align 4
  %shr72 = lshr i32 %xor65, 8
  %and73 = and i32 %shr72, 255
  %arrayidx74 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 1, i32 %and73
  %42 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx74, align 4
  %xor75 = xor i32 %43, %41
  %shr78 = lshr i32 %xor65, 16
  %and79 = and i32 %shr78, 255
  %arrayidx80 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 2, i32 %and79
  %44 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx80, align 4
  %xor81 = xor i32 %xor75, %45
  %shr84 = lshr i32 %xor65, 24
  %arrayidx85 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 3, i32 %shr84
  %46 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx85, align 4
  %xor86 = xor i32 %xor81, %47
  %and89 = and i32 %or.i, 255
  %arrayidx90 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 1, i32 %and89
  %48 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx90, align 4
  %shr93 = lshr i32 %or.i, 8
  %and94 = and i32 %shr93, 255
  %arrayidx95 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 2, i32 %and94
  %50 = ptrtoint ptr %arrayidx95 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx95, align 4
  %xor96 = xor i32 %51, %49
  %shr99 = lshr i32 %or.i, 16
  %and100 = and i32 %shr99, 255
  %arrayidx101 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 3, i32 %and100
  %52 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx101, align 4
  %xor102 = xor i32 %xor96, %53
  %shr105 = lshr i32 %or.i, 24
  %arrayidx106 = getelementptr [256 x i32], ptr %__crt_ctx.i, i32 0, i32 %shr105
  %54 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx106, align 4
  %xor107 = xor i32 %xor102, %55
  %add108 = add i32 %xor107, %xor86
  %arrayidx111 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 34, i32 4, i32 4
  %56 = ptrtoint ptr %arrayidx111 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx111, align 4
  %add109 = add i32 %57, %xor107
  %add112 = add i32 %add109, %add108
  %xor113 = xor i32 %add112, %xor6
  %or.i1356 = tail call i32 @llvm.fshl.i32(i32 %xor113, i32 %xor113, i32 31) #4
  %or.i1357 = tail call i32 @llvm.fshl.i32(i32 %xor, i32 %xor, i32 1) #4
  %arrayidx117 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 34, i32 4
  %58 = ptrtoint ptr %arrayidx117 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx117, align 4
  %add118 = add i32 %add108, %59
  %xor119 = xor i32 %add118, %or.i1357
  %and122 = and i32 %xor119, 255
  %arrayidx123 = getelementptr [256 x i32], ptr %__crt_ctx.i, i32 0, i32 %and122
  %60 = ptrtoint ptr %arrayidx123 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx123, align 4
  %shr126 = lshr i32 %xor119, 8
  %and127 = and i32 %shr126, 255
  %arrayidx128 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 1, i32 %and127
  %62 = ptrtoint ptr %arrayidx128 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx128, align 4
  %xor129 = xor i32 %63, %61
  %shr132 = lshr i32 %xor119, 16
  %and133 = and i32 %shr132, 255
  %arrayidx134 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 2, i32 %and133
  %64 = ptrtoint ptr %arrayidx134 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx134, align 4
  %xor135 = xor i32 %xor129, %65
  %shr138 = lshr i32 %xor119, 24
  %arrayidx139 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 3, i32 %shr138
  %66 = ptrtoint ptr %arrayidx139 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx139, align 4
  %xor140 = xor i32 %xor135, %67
  %and143 = and i32 %or.i1356, 255
  %arrayidx144 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 1, i32 %and143
  %68 = ptrtoint ptr %arrayidx144 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx144, align 4
  %shr147 = lshr i32 %or.i1356, 8
  %and148 = and i32 %shr147, 255
  %arrayidx149 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 2, i32 %and148
  %70 = ptrtoint ptr %arrayidx149 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx149, align 4
  %xor150 = xor i32 %71, %69
  %shr153 = lshr i32 %or.i1356, 16
  %and154 = and i32 %shr153, 255
  %arrayidx155 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 3, i32 %and154
  %72 = ptrtoint ptr %arrayidx155 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx155, align 4
  %xor156 = xor i32 %xor150, %73
  %shr159 = lshr i32 %or.i1356, 24
  %arrayidx160 = getelementptr [256 x i32], ptr %__crt_ctx.i, i32 0, i32 %shr159
  %74 = ptrtoint ptr %arrayidx160 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx160, align 4
  %xor161 = xor i32 %xor156, %75
  %add162 = add i32 %xor161, %xor140
  %arrayidx165 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 34, i32 3
  %76 = ptrtoint ptr %arrayidx165 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx165, align 4
  %add163 = add i32 %77, %xor161
  %add166 = add i32 %add163, %add162
  %xor167 = xor i32 %add166, %or.i
  %or.i1358 = tail call i32 @llvm.fshl.i32(i32 %xor167, i32 %xor167, i32 31) #4
  %or.i1359 = tail call i32 @llvm.fshl.i32(i32 %xor65, i32 %xor65, i32 1) #4
  %arrayidx171 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 34, i32 2
  %78 = ptrtoint ptr %arrayidx171 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %arrayidx171, align 4
  %add172 = add i32 %add162, %79
  %xor173 = xor i32 %add172, %or.i1359
  %and176 = and i32 %xor173, 255
  %arrayidx177 = getelementptr [256 x i32], ptr %__crt_ctx.i, i32 0, i32 %and176
  %80 = ptrtoint ptr %arrayidx177 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx177, align 4
  %shr180 = lshr i32 %xor173, 8
  %and181 = and i32 %shr180, 255
  %arrayidx182 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 1, i32 %and181
  %82 = ptrtoint ptr %arrayidx182 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arrayidx182, align 4
  %xor183 = xor i32 %83, %81
  %shr186 = lshr i32 %xor173, 16
  %and187 = and i32 %shr186, 255
  %arrayidx188 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 2, i32 %and187
  %84 = ptrtoint ptr %arrayidx188 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %arrayidx188, align 4
  %xor189 = xor i32 %xor183, %85
  %shr192 = lshr i32 %xor173, 24
  %arrayidx193 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 3, i32 %shr192
  %86 = ptrtoint ptr %arrayidx193 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx193, align 4
  %xor194 = xor i32 %xor189, %87
  %and197 = and i32 %or.i1358, 255
  %arrayidx198 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 1, i32 %and197
  %88 = ptrtoint ptr %arrayidx198 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %arrayidx198, align 4
  %shr201 = lshr i32 %or.i1358, 8
  %and202 = and i32 %shr201, 255
  %arrayidx203 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 2, i32 %and202
  %90 = ptrtoint ptr %arrayidx203 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %arrayidx203, align 4
  %xor204 = xor i32 %91, %89
  %shr207 = lshr i32 %or.i1358, 16
  %and208 = and i32 %shr207, 255
  %arrayidx209 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 3, i32 %and208
  %92 = ptrtoint ptr %arrayidx209 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %arrayidx209, align 4
  %xor210 = xor i32 %xor204, %93
  %shr213 = lshr i32 %or.i1358, 24
  %arrayidx214 = getelementptr [256 x i32], ptr %__crt_ctx.i, i32 0, i32 %shr213
  %94 = ptrtoint ptr %arrayidx214 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %arrayidx214, align 4
  %xor215 = xor i32 %xor210, %95
  %add216 = add i32 %xor215, %xor194
  %arrayidx219 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 34, i32 1
  %96 = ptrtoint ptr %arrayidx219 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %arrayidx219, align 4
  %add217 = add i32 %97, %xor215
  %add220 = add i32 %add217, %add216
  %xor221 = xor i32 %add220, %or.i1356
  %or.i1360 = tail call i32 @llvm.fshl.i32(i32 %xor221, i32 %xor221, i32 31) #4
  %or.i1361 = tail call i32 @llvm.fshl.i32(i32 %xor119, i32 %xor119, i32 1) #4
  %arrayidx225 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 34
  %98 = ptrtoint ptr %arrayidx225 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %arrayidx225, align 4
  %add226 = add i32 %add216, %99
  %xor227 = xor i32 %add226, %or.i1361
  %and230 = and i32 %xor227, 255
  %arrayidx231 = getelementptr [256 x i32], ptr %__crt_ctx.i, i32 0, i32 %and230
  %100 = ptrtoint ptr %arrayidx231 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %arrayidx231, align 4
  %shr234 = lshr i32 %xor227, 8
  %and235 = and i32 %shr234, 255
  %arrayidx236 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 1, i32 %and235
  %102 = ptrtoint ptr %arrayidx236 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %arrayidx236, align 4
  %xor237 = xor i32 %103, %101
  %shr240 = lshr i32 %xor227, 16
  %and241 = and i32 %shr240, 255
  %arrayidx242 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 2, i32 %and241
  %104 = ptrtoint ptr %arrayidx242 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %arrayidx242, align 4
  %xor243 = xor i32 %xor237, %105
  %shr246 = lshr i32 %xor227, 24
  %arrayidx247 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 3, i32 %shr246
  %106 = ptrtoint ptr %arrayidx247 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %arrayidx247, align 4
  %xor248 = xor i32 %xor243, %107
  %and251 = and i32 %or.i1360, 255
  %arrayidx252 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 1, i32 %and251
  %108 = ptrtoint ptr %arrayidx252 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %arrayidx252, align 4
  %shr255 = lshr i32 %or.i1360, 8
  %and256 = and i32 %shr255, 255
  %arrayidx257 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 2, i32 %and256
  %110 = ptrtoint ptr %arrayidx257 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %arrayidx257, align 4
  %xor258 = xor i32 %111, %109
  %shr261 = lshr i32 %or.i1360, 16
  %and262 = and i32 %shr261, 255
  %arrayidx263 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 3, i32 %and262
  %112 = ptrtoint ptr %arrayidx263 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %arrayidx263, align 4
  %xor264 = xor i32 %xor258, %113
  %shr267 = lshr i32 %or.i1360, 24
  %arrayidx268 = getelementptr [256 x i32], ptr %__crt_ctx.i, i32 0, i32 %shr267
  %114 = ptrtoint ptr %arrayidx268 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %arrayidx268, align 4
  %xor269 = xor i32 %xor264, %115
  %add270 = add i32 %xor269, %xor248
  %arrayidx273 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 33, i32 4, i32 108
  %116 = ptrtoint ptr %arrayidx273 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %arrayidx273, align 4
  %add271 = add i32 %117, %xor269
  %add274 = add i32 %add271, %add270
  %xor275 = xor i32 %add274, %or.i1358
  %or.i1362 = tail call i32 @llvm.fshl.i32(i32 %xor275, i32 %xor275, i32 31) #4
  %or.i1363 = tail call i32 @llvm.fshl.i32(i32 %xor173, i32 %xor173, i32 1) #4
  %arrayidx279 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 33, i32 4, i32 104
  %118 = ptrtoint ptr %arrayidx279 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %arrayidx279, align 4
  %add280 = add i32 %add270, %119
  %xor281 = xor i32 %add280, %or.i1363
  %and284 = and i32 %xor281, 255
  %arrayidx285 = getelementptr [256 x i32], ptr %__crt_ctx.i, i32 0, i32 %and284
  %120 = ptrtoint ptr %arrayidx285 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %arrayidx285, align 4
  %shr288 = lshr i32 %xor281, 8
  %and289 = and i32 %shr288, 255
  %arrayidx290 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 1, i32 %and289
  %122 = ptrtoint ptr %arrayidx290 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %arrayidx290, align 4
  %xor291 = xor i32 %123, %121
  %shr294 = lshr i32 %xor281, 16
  %and295 = and i32 %shr294, 255
  %arrayidx296 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 2, i32 %and295
  %124 = ptrtoint ptr %arrayidx296 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %arrayidx296, align 4
  %xor297 = xor i32 %xor291, %125
  %shr300 = lshr i32 %xor281, 24
  %arrayidx301 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 3, i32 %shr300
  %126 = ptrtoint ptr %arrayidx301 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %arrayidx301, align 4
  %xor302 = xor i32 %xor297, %127
  %and305 = and i32 %or.i1362, 255
  %arrayidx306 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 1, i32 %and305
  %128 = ptrtoint ptr %arrayidx306 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %arrayidx306, align 4
  %shr309 = lshr i32 %or.i1362, 8
  %and310 = and i32 %shr309, 255
  %arrayidx311 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 2, i32 %and310
  %130 = ptrtoint ptr %arrayidx311 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %arrayidx311, align 4
  %xor312 = xor i32 %131, %129
  %shr315 = lshr i32 %or.i1362, 16
  %and316 = and i32 %shr315, 255
  %arrayidx317 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 3, i32 %and316
  %132 = ptrtoint ptr %arrayidx317 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %arrayidx317, align 4
  %xor318 = xor i32 %xor312, %133
  %shr321 = lshr i32 %or.i1362, 24
  %arrayidx322 = getelementptr [256 x i32], ptr %__crt_ctx.i, i32 0, i32 %shr321
  %134 = ptrtoint ptr %arrayidx322 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %arrayidx322, align 4
  %xor323 = xor i32 %xor318, %135
  %add324 = add i32 %xor323, %xor302
  %arrayidx327 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 33, i32 4, i32 100
  %136 = ptrtoint ptr %arrayidx327 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %arrayidx327, align 4
  %add325 = add i32 %137, %xor323
  %add328 = add i32 %add325, %add324
  %xor329 = xor i32 %add328, %or.i1360
  %or.i1364 = tail call i32 @llvm.fshl.i32(i32 %xor329, i32 %xor329, i32 31) #4
  %or.i1365 = tail call i32 @llvm.fshl.i32(i32 %xor227, i32 %xor227, i32 1) #4
  %arrayidx333 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 33, i32 4, i32 96
  %138 = ptrtoint ptr %arrayidx333 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %arrayidx333, align 4
  %add334 = add i32 %add324, %139
  %xor335 = xor i32 %add334, %or.i1365
  %and338 = and i32 %xor335, 255
  %arrayidx339 = getelementptr [256 x i32], ptr %__crt_ctx.i, i32 0, i32 %and338
  %140 = ptrtoint ptr %arrayidx339 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %arrayidx339, align 4
  %shr342 = lshr i32 %xor335, 8
  %and343 = and i32 %shr342, 255
  %arrayidx344 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 1, i32 %and343
  %142 = ptrtoint ptr %arrayidx344 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %arrayidx344, align 4
  %xor345 = xor i32 %143, %141
  %shr348 = lshr i32 %xor335, 16
  %and349 = and i32 %shr348, 255
  %arrayidx350 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 2, i32 %and349
  %144 = ptrtoint ptr %arrayidx350 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %arrayidx350, align 4
  %xor351 = xor i32 %xor345, %145
  %shr354 = lshr i32 %xor335, 24
  %arrayidx355 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 3, i32 %shr354
  %146 = ptrtoint ptr %arrayidx355 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %arrayidx355, align 4
  %xor356 = xor i32 %xor351, %147
  %and359 = and i32 %or.i1364, 255
  %arrayidx360 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 1, i32 %and359
  %148 = ptrtoint ptr %arrayidx360 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %arrayidx360, align 4
  %shr363 = lshr i32 %or.i1364, 8
  %and364 = and i32 %shr363, 255
  %arrayidx365 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 2, i32 %and364
  %150 = ptrtoint ptr %arrayidx365 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %arrayidx365, align 4
  %xor366 = xor i32 %151, %149
  %shr369 = lshr i32 %or.i1364, 16
  %and370 = and i32 %shr369, 255
  %arrayidx371 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 3, i32 %and370
  %152 = ptrtoint ptr %arrayidx371 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %arrayidx371, align 4
  %xor372 = xor i32 %xor366, %153
  %shr375 = lshr i32 %or.i1364, 24
  %arrayidx376 = getelementptr [256 x i32], ptr %__crt_ctx.i, i32 0, i32 %shr375
  %154 = ptrtoint ptr %arrayidx376 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %arrayidx376, align 4
  %xor377 = xor i32 %xor372, %155
  %add378 = add i32 %xor377, %xor356
  %arrayidx381 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 33, i32 4, i32 92
  %156 = ptrtoint ptr %arrayidx381 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %arrayidx381, align 4
  %add379 = add i32 %157, %xor377
  %add382 = add i32 %add379, %add378
  %xor383 = xor i32 %add382, %or.i1362
  %or.i1366 = tail call i32 @llvm.fshl.i32(i32 %xor383, i32 %xor383, i32 31) #4
  %or.i1367 = tail call i32 @llvm.fshl.i32(i32 %xor281, i32 %xor281, i32 1) #4
  %arrayidx387 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 33, i32 4, i32 88
  %158 = ptrtoint ptr %arrayidx387 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %arrayidx387, align 4
  %add388 = add i32 %add378, %159
  %xor389 = xor i32 %add388, %or.i1367
  %and392 = and i32 %xor389, 255
  %arrayidx393 = getelementptr [256 x i32], ptr %__crt_ctx.i, i32 0, i32 %and392
  %160 = ptrtoint ptr %arrayidx393 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %arrayidx393, align 4
  %shr396 = lshr i32 %xor389, 8
  %and397 = and i32 %shr396, 255
  %arrayidx398 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 1, i32 %and397
  %162 = ptrtoint ptr %arrayidx398 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %arrayidx398, align 4
  %xor399 = xor i32 %163, %161
  %shr402 = lshr i32 %xor389, 16
  %and403 = and i32 %shr402, 255
  %arrayidx404 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 2, i32 %and403
  %164 = ptrtoint ptr %arrayidx404 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %arrayidx404, align 4
  %xor405 = xor i32 %xor399, %165
  %shr408 = lshr i32 %xor389, 24
  %arrayidx409 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 3, i32 %shr408
  %166 = ptrtoint ptr %arrayidx409 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %arrayidx409, align 4
  %xor410 = xor i32 %xor405, %167
  %and413 = and i32 %or.i1366, 255
  %arrayidx414 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 1, i32 %and413
  %168 = ptrtoint ptr %arrayidx414 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %arrayidx414, align 4
  %shr417 = lshr i32 %or.i1366, 8
  %and418 = and i32 %shr417, 255
  %arrayidx419 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 2, i32 %and418
  %170 = ptrtoint ptr %arrayidx419 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %arrayidx419, align 4
  %xor420 = xor i32 %171, %169
  %shr423 = lshr i32 %or.i1366, 16
  %and424 = and i32 %shr423, 255
  %arrayidx425 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 3, i32 %and424
  %172 = ptrtoint ptr %arrayidx425 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %arrayidx425, align 4
  %xor426 = xor i32 %xor420, %173
  %shr429 = lshr i32 %or.i1366, 24
  %arrayidx430 = getelementptr [256 x i32], ptr %__crt_ctx.i, i32 0, i32 %shr429
  %174 = ptrtoint ptr %arrayidx430 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %arrayidx430, align 4
  %xor431 = xor i32 %xor426, %175
  %add432 = add i32 %xor431, %xor410
  %arrayidx435 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 33, i32 4, i32 84
  %176 = ptrtoint ptr %arrayidx435 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %arrayidx435, align 4
  %add433 = add i32 %177, %xor431
  %add436 = add i32 %add433, %add432
  %xor437 = xor i32 %add436, %or.i1364
  %or.i1368 = tail call i32 @llvm.fshl.i32(i32 %xor437, i32 %xor437, i32 31) #4
  %or.i1369 = tail call i32 @llvm.fshl.i32(i32 %xor335, i32 %xor335, i32 1) #4
  %arrayidx441 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 33, i32 4, i32 80
  %178 = ptrtoint ptr %arrayidx441 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %arrayidx441, align 4
  %add442 = add i32 %add432, %179
  %xor443 = xor i32 %add442, %or.i1369
  %and446 = and i32 %xor443, 255
  %arrayidx447 = getelementptr [256 x i32], ptr %__crt_ctx.i, i32 0, i32 %and446
  %180 = ptrtoint ptr %arrayidx447 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %arrayidx447, align 4
  %shr450 = lshr i32 %xor443, 8
  %and451 = and i32 %shr450, 255
  %arrayidx452 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 1, i32 %and451
  %182 = ptrtoint ptr %arrayidx452 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %arrayidx452, align 4
  %xor453 = xor i32 %183, %181
  %shr456 = lshr i32 %xor443, 16
  %and457 = and i32 %shr456, 255
  %arrayidx458 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 2, i32 %and457
  %184 = ptrtoint ptr %arrayidx458 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %arrayidx458, align 4
  %xor459 = xor i32 %xor453, %185
  %shr462 = lshr i32 %xor443, 24
  %arrayidx463 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 3, i32 %shr462
  %186 = ptrtoint ptr %arrayidx463 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %arrayidx463, align 4
  %xor464 = xor i32 %xor459, %187
  %and467 = and i32 %or.i1368, 255
  %arrayidx468 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 1, i32 %and467
  %188 = ptrtoint ptr %arrayidx468 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %arrayidx468, align 4
  %shr471 = lshr i32 %or.i1368, 8
  %and472 = and i32 %shr471, 255
  %arrayidx473 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 2, i32 %and472
  %190 = ptrtoint ptr %arrayidx473 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %arrayidx473, align 4
  %xor474 = xor i32 %191, %189
  %shr477 = lshr i32 %or.i1368, 16
  %and478 = and i32 %shr477, 255
  %arrayidx479 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 3, i32 %and478
  %192 = ptrtoint ptr %arrayidx479 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %arrayidx479, align 4
  %xor480 = xor i32 %xor474, %193
  %shr483 = lshr i32 %or.i1368, 24
  %arrayidx484 = getelementptr [256 x i32], ptr %__crt_ctx.i, i32 0, i32 %shr483
  %194 = ptrtoint ptr %arrayidx484 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %arrayidx484, align 4
  %xor485 = xor i32 %xor480, %195
  %add486 = add i32 %xor485, %xor464
  %arrayidx489 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 33, i32 4, i32 76
  %196 = ptrtoint ptr %arrayidx489 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %arrayidx489, align 4
  %add487 = add i32 %197, %xor485
  %add490 = add i32 %add487, %add486
  %xor491 = xor i32 %add490, %or.i1366
  %or.i1370 = tail call i32 @llvm.fshl.i32(i32 %xor491, i32 %xor491, i32 31) #4
  %or.i1371 = tail call i32 @llvm.fshl.i32(i32 %xor389, i32 %xor389, i32 1) #4
  %arrayidx495 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 33, i32 4, i32 72
  %198 = ptrtoint ptr %arrayidx495 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %arrayidx495, align 4
  %add496 = add i32 %add486, %199
  %xor497 = xor i32 %add496, %or.i1371
  %and500 = and i32 %xor497, 255
  %arrayidx501 = getelementptr [256 x i32], ptr %__crt_ctx.i, i32 0, i32 %and500
  %200 = ptrtoint ptr %arrayidx501 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %arrayidx501, align 4
  %shr504 = lshr i32 %xor497, 8
  %and505 = and i32 %shr504, 255
  %arrayidx506 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 1, i32 %and505
  %202 = ptrtoint ptr %arrayidx506 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %arrayidx506, align 4
  %xor507 = xor i32 %203, %201
  %shr510 = lshr i32 %xor497, 16
  %and511 = and i32 %shr510, 255
  %arrayidx512 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 2, i32 %and511
  %204 = ptrtoint ptr %arrayidx512 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %arrayidx512, align 4
  %xor513 = xor i32 %xor507, %205
  %shr516 = lshr i32 %xor497, 24
  %arrayidx517 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 3, i32 %shr516
  %206 = ptrtoint ptr %arrayidx517 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %arrayidx517, align 4
  %xor518 = xor i32 %xor513, %207
  %and521 = and i32 %or.i1370, 255
  %arrayidx522 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 1, i32 %and521
  %208 = ptrtoint ptr %arrayidx522 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %arrayidx522, align 4
  %shr525 = lshr i32 %or.i1370, 8
  %and526 = and i32 %shr525, 255
  %arrayidx527 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 2, i32 %and526
  %210 = ptrtoint ptr %arrayidx527 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %arrayidx527, align 4
  %xor528 = xor i32 %211, %209
  %shr531 = lshr i32 %or.i1370, 16
  %and532 = and i32 %shr531, 255
  %arrayidx533 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 3, i32 %and532
  %212 = ptrtoint ptr %arrayidx533 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %arrayidx533, align 4
  %xor534 = xor i32 %xor528, %213
  %shr537 = lshr i32 %or.i1370, 24
  %arrayidx538 = getelementptr [256 x i32], ptr %__crt_ctx.i, i32 0, i32 %shr537
  %214 = ptrtoint ptr %arrayidx538 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %arrayidx538, align 4
  %xor539 = xor i32 %xor534, %215
  %add540 = add i32 %xor539, %xor518
  %arrayidx543 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 33, i32 4, i32 68
  %216 = ptrtoint ptr %arrayidx543 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %arrayidx543, align 4
  %add541 = add i32 %217, %xor539
  %add544 = add i32 %add541, %add540
  %xor545 = xor i32 %add544, %or.i1368
  %or.i1372 = tail call i32 @llvm.fshl.i32(i32 %xor545, i32 %xor545, i32 31) #4
  %or.i1373 = tail call i32 @llvm.fshl.i32(i32 %xor443, i32 %xor443, i32 1) #4
  %arrayidx549 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 33, i32 4, i32 64
  %218 = ptrtoint ptr %arrayidx549 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %arrayidx549, align 4
  %add550 = add i32 %add540, %219
  %xor551 = xor i32 %add550, %or.i1373
  %and554 = and i32 %xor551, 255
  %arrayidx555 = getelementptr [256 x i32], ptr %__crt_ctx.i, i32 0, i32 %and554
  %220 = ptrtoint ptr %arrayidx555 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %arrayidx555, align 4
  %shr558 = lshr i32 %xor551, 8
  %and559 = and i32 %shr558, 255
  %arrayidx560 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 1, i32 %and559
  %222 = ptrtoint ptr %arrayidx560 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %arrayidx560, align 4
  %xor561 = xor i32 %223, %221
  %shr564 = lshr i32 %xor551, 16
  %and565 = and i32 %shr564, 255
  %arrayidx566 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 2, i32 %and565
  %224 = ptrtoint ptr %arrayidx566 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %arrayidx566, align 4
  %xor567 = xor i32 %xor561, %225
  %shr570 = lshr i32 %xor551, 24
  %arrayidx571 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 3, i32 %shr570
  %226 = ptrtoint ptr %arrayidx571 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %arrayidx571, align 4
  %xor572 = xor i32 %xor567, %227
  %and575 = and i32 %or.i1372, 255
  %arrayidx576 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 1, i32 %and575
  %228 = ptrtoint ptr %arrayidx576 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %arrayidx576, align 4
  %shr579 = lshr i32 %or.i1372, 8
  %and580 = and i32 %shr579, 255
  %arrayidx581 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 2, i32 %and580
  %230 = ptrtoint ptr %arrayidx581 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %arrayidx581, align 4
  %xor582 = xor i32 %231, %229
  %shr585 = lshr i32 %or.i1372, 16
  %and586 = and i32 %shr585, 255
  %arrayidx587 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 3, i32 %and586
  %232 = ptrtoint ptr %arrayidx587 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %arrayidx587, align 4
  %xor588 = xor i32 %xor582, %233
  %shr591 = lshr i32 %or.i1372, 24
  %arrayidx592 = getelementptr [256 x i32], ptr %__crt_ctx.i, i32 0, i32 %shr591
  %234 = ptrtoint ptr %arrayidx592 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %arrayidx592, align 4
  %xor593 = xor i32 %xor588, %235
  %add594 = add i32 %xor593, %xor572
  %arrayidx597 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 33, i32 4, i32 60
  %236 = ptrtoint ptr %arrayidx597 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %arrayidx597, align 4
  %add595 = add i32 %237, %xor593
  %add598 = add i32 %add595, %add594
  %xor599 = xor i32 %add598, %or.i1370
  %or.i1374 = tail call i32 @llvm.fshl.i32(i32 %xor599, i32 %xor599, i32 31) #4
  %or.i1375 = tail call i32 @llvm.fshl.i32(i32 %xor497, i32 %xor497, i32 1) #4
  %arrayidx603 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 33, i32 4, i32 56
  %238 = ptrtoint ptr %arrayidx603 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %arrayidx603, align 4
  %add604 = add i32 %add594, %239
  %xor605 = xor i32 %add604, %or.i1375
  %and608 = and i32 %xor605, 255
  %arrayidx609 = getelementptr [256 x i32], ptr %__crt_ctx.i, i32 0, i32 %and608
  %240 = ptrtoint ptr %arrayidx609 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %arrayidx609, align 4
  %shr612 = lshr i32 %xor605, 8
  %and613 = and i32 %shr612, 255
  %arrayidx614 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 1, i32 %and613
  %242 = ptrtoint ptr %arrayidx614 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %arrayidx614, align 4
  %xor615 = xor i32 %243, %241
  %shr618 = lshr i32 %xor605, 16
  %and619 = and i32 %shr618, 255
  %arrayidx620 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 2, i32 %and619
  %244 = ptrtoint ptr %arrayidx620 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %arrayidx620, align 4
  %xor621 = xor i32 %xor615, %245
  %shr624 = lshr i32 %xor605, 24
  %arrayidx625 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 3, i32 %shr624
  %246 = ptrtoint ptr %arrayidx625 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %arrayidx625, align 4
  %xor626 = xor i32 %xor621, %247
  %and629 = and i32 %or.i1374, 255
  %arrayidx630 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 1, i32 %and629
  %248 = ptrtoint ptr %arrayidx630 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %arrayidx630, align 4
  %shr633 = lshr i32 %or.i1374, 8
  %and634 = and i32 %shr633, 255
  %arrayidx635 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 2, i32 %and634
  %250 = ptrtoint ptr %arrayidx635 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %arrayidx635, align 4
  %xor636 = xor i32 %251, %249
  %shr639 = lshr i32 %or.i1374, 16
  %and640 = and i32 %shr639, 255
  %arrayidx641 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 3, i32 %and640
  %252 = ptrtoint ptr %arrayidx641 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %arrayidx641, align 4
  %xor642 = xor i32 %xor636, %253
  %shr645 = lshr i32 %or.i1374, 24
  %arrayidx646 = getelementptr [256 x i32], ptr %__crt_ctx.i, i32 0, i32 %shr645
  %254 = ptrtoint ptr %arrayidx646 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %arrayidx646, align 4
  %xor647 = xor i32 %xor642, %255
  %add648 = add i32 %xor647, %xor626
  %arrayidx651 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 33, i32 4, i32 52
  %256 = ptrtoint ptr %arrayidx651 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %arrayidx651, align 4
  %add649 = add i32 %257, %xor647
  %add652 = add i32 %add649, %add648
  %xor653 = xor i32 %add652, %or.i1372
  %or.i1376 = tail call i32 @llvm.fshl.i32(i32 %xor653, i32 %xor653, i32 31) #4
  %or.i1377 = tail call i32 @llvm.fshl.i32(i32 %xor551, i32 %xor551, i32 1) #4
  %arrayidx657 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 33, i32 4, i32 48
  %258 = ptrtoint ptr %arrayidx657 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %arrayidx657, align 4
  %add658 = add i32 %add648, %259
  %xor659 = xor i32 %add658, %or.i1377
  %and662 = and i32 %xor659, 255
  %arrayidx663 = getelementptr [256 x i32], ptr %__crt_ctx.i, i32 0, i32 %and662
  %260 = ptrtoint ptr %arrayidx663 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %arrayidx663, align 4
  %shr666 = lshr i32 %xor659, 8
  %and667 = and i32 %shr666, 255
  %arrayidx668 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 1, i32 %and667
  %262 = ptrtoint ptr %arrayidx668 to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %arrayidx668, align 4
  %xor669 = xor i32 %263, %261
  %shr672 = lshr i32 %xor659, 16
  %and673 = and i32 %shr672, 255
  %arrayidx674 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 2, i32 %and673
  %264 = ptrtoint ptr %arrayidx674 to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %arrayidx674, align 4
  %xor675 = xor i32 %xor669, %265
  %shr678 = lshr i32 %xor659, 24
  %arrayidx679 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 3, i32 %shr678
  %266 = ptrtoint ptr %arrayidx679 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %arrayidx679, align 4
  %xor680 = xor i32 %xor675, %267
  %and683 = and i32 %or.i1376, 255
  %arrayidx684 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 1, i32 %and683
  %268 = ptrtoint ptr %arrayidx684 to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %arrayidx684, align 4
  %shr687 = lshr i32 %or.i1376, 8
  %and688 = and i32 %shr687, 255
  %arrayidx689 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 2, i32 %and688
  %270 = ptrtoint ptr %arrayidx689 to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load i32, ptr %arrayidx689, align 4
  %xor690 = xor i32 %271, %269
  %shr693 = lshr i32 %or.i1376, 16
  %and694 = and i32 %shr693, 255
  %arrayidx695 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 3, i32 %and694
  %272 = ptrtoint ptr %arrayidx695 to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %arrayidx695, align 4
  %xor696 = xor i32 %xor690, %273
  %shr699 = lshr i32 %or.i1376, 24
  %arrayidx700 = getelementptr [256 x i32], ptr %__crt_ctx.i, i32 0, i32 %shr699
  %274 = ptrtoint ptr %arrayidx700 to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load i32, ptr %arrayidx700, align 4
  %xor701 = xor i32 %xor696, %275
  %add702 = add i32 %xor701, %xor680
  %arrayidx705 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 33, i32 4, i32 44
  %276 = ptrtoint ptr %arrayidx705 to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %arrayidx705, align 4
  %add703 = add i32 %277, %xor701
  %add706 = add i32 %add703, %add702
  %xor707 = xor i32 %add706, %or.i1374
  %or.i1378 = tail call i32 @llvm.fshl.i32(i32 %xor707, i32 %xor707, i32 31) #4
  %or.i1379 = tail call i32 @llvm.fshl.i32(i32 %xor605, i32 %xor605, i32 1) #4
  %arrayidx711 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 33, i32 4, i32 40
  %278 = ptrtoint ptr %arrayidx711 to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %arrayidx711, align 4
  %add712 = add i32 %add702, %279
  %xor713 = xor i32 %add712, %or.i1379
  %and716 = and i32 %xor713, 255
  %arrayidx717 = getelementptr [256 x i32], ptr %__crt_ctx.i, i32 0, i32 %and716
  %280 = ptrtoint ptr %arrayidx717 to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %arrayidx717, align 4
  %shr720 = lshr i32 %xor713, 8
  %and721 = and i32 %shr720, 255
  %arrayidx722 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 1, i32 %and721
  %282 = ptrtoint ptr %arrayidx722 to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load i32, ptr %arrayidx722, align 4
  %xor723 = xor i32 %283, %281
  %shr726 = lshr i32 %xor713, 16
  %and727 = and i32 %shr726, 255
  %arrayidx728 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 2, i32 %and727
  %284 = ptrtoint ptr %arrayidx728 to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load i32, ptr %arrayidx728, align 4
  %xor729 = xor i32 %xor723, %285
  %shr732 = lshr i32 %xor713, 24
  %arrayidx733 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 3, i32 %shr732
  %286 = ptrtoint ptr %arrayidx733 to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load i32, ptr %arrayidx733, align 4
  %xor734 = xor i32 %xor729, %287
  %and737 = and i32 %or.i1378, 255
  %arrayidx738 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 1, i32 %and737
  %288 = ptrtoint ptr %arrayidx738 to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load i32, ptr %arrayidx738, align 4
  %shr741 = lshr i32 %or.i1378, 8
  %and742 = and i32 %shr741, 255
  %arrayidx743 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 2, i32 %and742
  %290 = ptrtoint ptr %arrayidx743 to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load i32, ptr %arrayidx743, align 4
  %xor744 = xor i32 %291, %289
  %shr747 = lshr i32 %or.i1378, 16
  %and748 = and i32 %shr747, 255
  %arrayidx749 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 3, i32 %and748
  %292 = ptrtoint ptr %arrayidx749 to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load i32, ptr %arrayidx749, align 4
  %xor750 = xor i32 %xor744, %293
  %shr753 = lshr i32 %or.i1378, 24
  %arrayidx754 = getelementptr [256 x i32], ptr %__crt_ctx.i, i32 0, i32 %shr753
  %294 = ptrtoint ptr %arrayidx754 to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load i32, ptr %arrayidx754, align 4
  %xor755 = xor i32 %xor750, %295
  %add756 = add i32 %xor755, %xor734
  %arrayidx759 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 33, i32 4, i32 36
  %296 = ptrtoint ptr %arrayidx759 to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load i32, ptr %arrayidx759, align 4
  %add757 = add i32 %297, %xor755
  %add760 = add i32 %add757, %add756
  %xor761 = xor i32 %add760, %or.i1376
  %or.i1380 = tail call i32 @llvm.fshl.i32(i32 %xor761, i32 %xor761, i32 31) #4
  %or.i1381 = tail call i32 @llvm.fshl.i32(i32 %xor659, i32 %xor659, i32 1) #4
  %arrayidx765 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 33, i32 4, i32 32
  %298 = ptrtoint ptr %arrayidx765 to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load i32, ptr %arrayidx765, align 4
  %add766 = add i32 %add756, %299
  %xor767 = xor i32 %add766, %or.i1381
  %and770 = and i32 %xor767, 255
  %arrayidx771 = getelementptr [256 x i32], ptr %__crt_ctx.i, i32 0, i32 %and770
  %300 = ptrtoint ptr %arrayidx771 to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load i32, ptr %arrayidx771, align 4
  %shr774 = lshr i32 %xor767, 8
  %and775 = and i32 %shr774, 255
  %arrayidx776 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 1, i32 %and775
  %302 = ptrtoint ptr %arrayidx776 to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load i32, ptr %arrayidx776, align 4
  %xor777 = xor i32 %303, %301
  %shr780 = lshr i32 %xor767, 16
  %and781 = and i32 %shr780, 255
  %arrayidx782 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 2, i32 %and781
  %304 = ptrtoint ptr %arrayidx782 to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load i32, ptr %arrayidx782, align 4
  %xor783 = xor i32 %xor777, %305
  %shr786 = lshr i32 %xor767, 24
  %arrayidx787 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 3, i32 %shr786
  %306 = ptrtoint ptr %arrayidx787 to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load i32, ptr %arrayidx787, align 4
  %xor788 = xor i32 %xor783, %307
  %and791 = and i32 %or.i1380, 255
  %arrayidx792 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 1, i32 %and791
  %308 = ptrtoint ptr %arrayidx792 to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load i32, ptr %arrayidx792, align 4
  %shr795 = lshr i32 %or.i1380, 8
  %and796 = and i32 %shr795, 255
  %arrayidx797 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 2, i32 %and796
  %310 = ptrtoint ptr %arrayidx797 to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load i32, ptr %arrayidx797, align 4
  %xor798 = xor i32 %311, %309
  %shr801 = lshr i32 %or.i1380, 16
  %and802 = and i32 %shr801, 255
  %arrayidx803 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 3, i32 %and802
  %312 = ptrtoint ptr %arrayidx803 to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load i32, ptr %arrayidx803, align 4
  %xor804 = xor i32 %xor798, %313
  %shr807 = lshr i32 %or.i1380, 24
  %arrayidx808 = getelementptr [256 x i32], ptr %__crt_ctx.i, i32 0, i32 %shr807
  %314 = ptrtoint ptr %arrayidx808 to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load i32, ptr %arrayidx808, align 4
  %xor809 = xor i32 %xor804, %315
  %add810 = add i32 %xor809, %xor788
  %arrayidx813 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 33, i32 4, i32 28
  %316 = ptrtoint ptr %arrayidx813 to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load i32, ptr %arrayidx813, align 4
  %add811 = add i32 %317, %xor809
  %add814 = add i32 %add811, %add810
  %xor815 = xor i32 %add814, %or.i1378
  %or.i1382 = tail call i32 @llvm.fshl.i32(i32 %xor815, i32 %xor815, i32 31) #4
  %or.i1383 = tail call i32 @llvm.fshl.i32(i32 %xor713, i32 %xor713, i32 1) #4
  %arrayidx819 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 33, i32 4, i32 24
  %318 = ptrtoint ptr %arrayidx819 to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load i32, ptr %arrayidx819, align 4
  %add820 = add i32 %add810, %319
  %xor821 = xor i32 %add820, %or.i1383
  %and824 = and i32 %xor821, 255
  %arrayidx825 = getelementptr [256 x i32], ptr %__crt_ctx.i, i32 0, i32 %and824
  %320 = ptrtoint ptr %arrayidx825 to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load i32, ptr %arrayidx825, align 4
  %shr828 = lshr i32 %xor821, 8
  %and829 = and i32 %shr828, 255
  %arrayidx830 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 1, i32 %and829
  %322 = ptrtoint ptr %arrayidx830 to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load i32, ptr %arrayidx830, align 4
  %xor831 = xor i32 %323, %321
  %shr834 = lshr i32 %xor821, 16
  %and835 = and i32 %shr834, 255
  %arrayidx836 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 2, i32 %and835
  %324 = ptrtoint ptr %arrayidx836 to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load i32, ptr %arrayidx836, align 4
  %xor837 = xor i32 %xor831, %325
  %shr840 = lshr i32 %xor821, 24
  %arrayidx841 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 3, i32 %shr840
  %326 = ptrtoint ptr %arrayidx841 to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load i32, ptr %arrayidx841, align 4
  %xor842 = xor i32 %xor837, %327
  %and845 = and i32 %or.i1382, 255
  %arrayidx846 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 1, i32 %and845
  %328 = ptrtoint ptr %arrayidx846 to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load i32, ptr %arrayidx846, align 4
  %shr849 = lshr i32 %or.i1382, 8
  %and850 = and i32 %shr849, 255
  %arrayidx851 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 2, i32 %and850
  %330 = ptrtoint ptr %arrayidx851 to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load i32, ptr %arrayidx851, align 4
  %xor852 = xor i32 %331, %329
  %shr855 = lshr i32 %or.i1382, 16
  %and856 = and i32 %shr855, 255
  %arrayidx857 = getelementptr [4 x [256 x i32]], ptr %__crt_ctx.i, i32 0, i32 3, i32 %and856
  %332 = ptrtoint ptr %arrayidx857 to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load i32, ptr %arrayidx857, align 4
  %xor858 = xor i32 %xor852, %333
  %shr861 = lshr i32 %or.i1382, 24
  %arrayidx862 = getelementptr [256 x i32], ptr %__crt_ctx.i, i32 0, i32 %shr861
  %334 = ptrtoint ptr %arrayidx862 to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load i32, ptr %arrayidx862, align 4
  %xor863 = xor i32 %xor858, %335
  %add864 = add i32 %xor863, %xor842
  %arrayidx867 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 33, i32 4, i32 20
  %336 = ptrtoint ptr %arrayidx867 to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load i32, ptr %arrayidx867, align 4
  %add865 = add i32 %337, %xor863
  %add868 = add i32 %add865, %add864
  %xor869 = xor i32 %add868, %or.i1380
  %or.i1384 = tail call i32 @llvm.fshl.i32(i32 %xor869, i32 %xor869, i32 31) #4
  %or.i1385 = tail call i32 @llvm.fshl.i32(i32 %xor767, i32 %xor767, i32 1) #4
  %338 = ptrtoint ptr %k to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load i32, ptr %k, align 4
  %add874 = add i32 %add864, %339
  %xor875 = xor i32 %add874, %or.i1385
  %340 = ptrtoint ptr %w to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load i32, ptr %w, align 4
  %xor878 = xor i32 %341, %xor821
  %342 = tail call i32 @llvm.bswap.i32(i32 %xor878) #4
  %343 = ptrtoint ptr %out to i32
  call void @__asan_storeN_noabort(i32 %343, i32 4)
  store i32 %342, ptr %out, align 1
  %arrayidx881 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 33, i32 1
  %344 = ptrtoint ptr %arrayidx881 to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load i32, ptr %arrayidx881, align 4
  %xor882 = xor i32 %345, %or.i1382
  %add.ptr883 = getelementptr i8, ptr %out, i32 4
  %346 = tail call i32 @llvm.bswap.i32(i32 %xor882) #4
  %347 = ptrtoint ptr %add.ptr883 to i32
  call void @__asan_storeN_noabort(i32 %347, i32 4)
  store i32 %346, ptr %add.ptr883, align 1
  %arrayidx885 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 33, i32 2
  %348 = ptrtoint ptr %arrayidx885 to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load i32, ptr %arrayidx885, align 4
  %xor886 = xor i32 %xor875, %349
  %add.ptr887 = getelementptr i8, ptr %out, i32 8
  %350 = tail call i32 @llvm.bswap.i32(i32 %xor886) #4
  %351 = ptrtoint ptr %add.ptr887 to i32
  call void @__asan_storeN_noabort(i32 %351, i32 4)
  store i32 %350, ptr %add.ptr887, align 1
  %arrayidx889 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 33, i32 3
  %352 = ptrtoint ptr %arrayidx889 to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load i32, ptr %arrayidx889, align 4
  %xor890 = xor i32 %353, %or.i1384
  %add.ptr891 = getelementptr i8, ptr %out, i32 12
  %354 = tail call i32 @llvm.bswap.i32(i32 %xor890) #4
  %355 = ptrtoint ptr %add.ptr891 to i32
  call void @__asan_storeN_noabort(i32 %355, i32 4)
  store i32 %354, ptr %add.ptr891, align 1
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_alg(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !12, !14, !15}
!llvm.module.flags = !{!17, !18, !19, !20, !21, !22, !23, !24}
!llvm.ident = !{!25}

!0 = !{ptr @__initcall__kmod_twofish_generic__173_190_twofish_mod_init4, !1, !"__initcall__kmod_twofish_generic__173_190_twofish_mod_init4", i1 false, i1 false}
!1 = !{!"../crypto/twofish_generic.c", i32 190, i32 1}
!2 = !{ptr @__exitcall_twofish_mod_fini, !3, !"__exitcall_twofish_mod_fini", i1 false, i1 false}
!3 = !{!"../crypto/twofish_generic.c", i32 191, i32 1}
!4 = !{ptr @__UNIQUE_ID_file174, !5, !"__UNIQUE_ID_file174", i1 false, i1 false}
!5 = !{!"../crypto/twofish_generic.c", i32 193, i32 1}
!6 = !{ptr @__UNIQUE_ID_license175, !5, !"__UNIQUE_ID_license175", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_description176, !8, !"__UNIQUE_ID_description176", i1 false, i1 false}
!8 = !{!"../crypto/twofish_generic.c", i32 194, i32 1}
!9 = !{ptr @__UNIQUE_ID_alias_userspace177, !10, !"__UNIQUE_ID_alias_userspace177", i1 false, i1 false}
!10 = !{!"../crypto/twofish_generic.c", i32 195, i32 1}
!11 = !{ptr @__UNIQUE_ID_alias_crypto178, !10, !"__UNIQUE_ID_alias_crypto178", i1 false, i1 false}
!12 = !{ptr @__UNIQUE_ID_alias_userspace179, !13, !"__UNIQUE_ID_alias_userspace179", i1 false, i1 false}
!13 = !{!"../crypto/twofish_generic.c", i32 196, i32 1}
!14 = !{ptr @__UNIQUE_ID_alias_crypto180, !13, !"__UNIQUE_ID_alias_crypto180", i1 false, i1 false}
!15 = !{ptr @alg, !16, !"alg", i1 false, i1 false}
!16 = !{!"../crypto/twofish_generic.c", i32 164, i32 26}
!17 = !{i32 1, !"wchar_size", i32 2}
!18 = !{i32 1, !"min_enum_size", i32 4}
!19 = !{i32 8, !"branch-target-enforcement", i32 0}
!20 = !{i32 8, !"sign-return-address", i32 0}
!21 = !{i32 8, !"sign-return-address-all", i32 0}
!22 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!23 = !{i32 7, !"uwtable", i32 1}
!24 = !{i32 7, !"frame-pointer", i32 2}
!25 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
