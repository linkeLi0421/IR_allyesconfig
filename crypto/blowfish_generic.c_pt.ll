; ModuleID = '/llk/IR_all_yes/crypto/blowfish_generic.c_pt.bc'
source_filename = "../crypto/blowfish_generic.c"
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

@alg = internal global %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 1, i32 8, i32 4168, i32 0, i32 100, %struct.refcount_struct zeroinitializer, [128 x i8] c"blowfish\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"blowfish-generic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon { %struct.cipher_alg { i32 4, i32 56, ptr @blowfish_setkey, ptr @bf_encrypt, ptr @bf_decrypt } }, ptr null, ptr null, ptr null, ptr null, %union.anon.68 zeroinitializer, [120 x i8] undef }, align 128
@__initcall__kmod_blowfish_generic__226_126_blowfish_mod_init4 = internal global ptr @blowfish_mod_init, section ".initcall4.init", align 4
@__exitcall_blowfish_mod_fini = internal global ptr @blowfish_mod_fini, section ".exitcall.exit", align 4
@__UNIQUE_ID_file227 = internal constant [46 x i8] c"blowfish_generic.file=crypto/blowfish_generic\00", section ".modinfo", align 1
@__UNIQUE_ID_license228 = internal constant [29 x i8] c"blowfish_generic.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description229 = internal constant [55 x i8] c"blowfish_generic.description=Blowfish Cipher Algorithm\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace230 = internal constant [32 x i8] c"blowfish_generic.alias=blowfish\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto231 = internal constant [39 x i8] c"blowfish_generic.alias=crypto-blowfish\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace232 = internal constant [40 x i8] c"blowfish_generic.alias=blowfish-generic\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto233 = internal constant [47 x i8] c"blowfish_generic.alias=crypto-blowfish-generic\00", section ".modinfo", align 1
@llvm.compiler.used = appending global [10 x ptr] [ptr @__UNIQUE_ID_alias_crypto231, ptr @__UNIQUE_ID_alias_crypto233, ptr @__UNIQUE_ID_alias_userspace230, ptr @__UNIQUE_ID_alias_userspace232, ptr @__UNIQUE_ID_description229, ptr @__UNIQUE_ID_file227, ptr @__UNIQUE_ID_license228, ptr @__exitcall_blowfish_mod_fini, ptr @__initcall__kmod_blowfish_generic__226_126_blowfish_mod_init4, ptr @blowfish_mod_fini], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @blowfish_mod_fini() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @crypto_unregister_alg(ptr noundef nonnull @alg) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_alg(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @blowfish_mod_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @crypto_register_alg(ptr noundef nonnull @alg) #3
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blowfish_setkey(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @bf_encrypt(ptr noundef readonly %tfm, ptr nocapture noundef writeonly %dst, ptr nocapture noundef readonly %src) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %s = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 56
  %0 = ptrtoint ptr %src to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %src, align 1
  %add.ptr = getelementptr i8, ptr %src, i32 4
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %add.ptr, align 1
  %4 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %__crt_ctx.i, align 4
  %xor = xor i32 %5, %1
  %shr = lshr i32 %xor, 24
  %arrayidx4 = getelementptr i32, ptr %s, i32 %shr
  %6 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx4, align 4
  %shr5 = lshr i32 %xor, 16
  %and6 = and i32 %shr5, 255
  %add = or i32 %and6, 256
  %arrayidx7 = getelementptr i32, ptr %s, i32 %add
  %8 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx7, align 4
  %add8 = add i32 %9, %7
  %shr9 = lshr i32 %xor, 8
  %and10 = and i32 %shr9, 255
  %add11 = or i32 %and10, 512
  %arrayidx12 = getelementptr i32, ptr %s, i32 %add11
  %10 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx12, align 4
  %xor13 = xor i32 %add8, %11
  %and14 = and i32 %xor, 255
  %add15 = or i32 %and14, 768
  %arrayidx16 = getelementptr i32, ptr %s, i32 %add15
  %12 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx16, align 4
  %add17 = add i32 %xor13, %13
  %xor18 = xor i32 %add17, %3
  %arrayidx19 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 1
  %14 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx19, align 4
  %xor20 = xor i32 %xor18, %15
  %shr22 = lshr i32 %xor20, 24
  %arrayidx24 = getelementptr i32, ptr %s, i32 %shr22
  %16 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx24, align 4
  %shr25 = lshr i32 %xor20, 16
  %and26 = and i32 %shr25, 255
  %add27 = or i32 %and26, 256
  %arrayidx28 = getelementptr i32, ptr %s, i32 %add27
  %18 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx28, align 4
  %add29 = add i32 %19, %17
  %shr30 = lshr i32 %xor20, 8
  %and31 = and i32 %shr30, 255
  %add32 = or i32 %and31, 512
  %arrayidx33 = getelementptr i32, ptr %s, i32 %add32
  %20 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx33, align 4
  %xor34 = xor i32 %add29, %21
  %and35 = and i32 %xor20, 255
  %add36 = or i32 %and35, 768
  %arrayidx37 = getelementptr i32, ptr %s, i32 %add36
  %22 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx37, align 4
  %add38 = add i32 %xor34, %23
  %xor39 = xor i32 %add38, %xor
  %arrayidx40 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 2
  %24 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx40, align 4
  %xor41 = xor i32 %xor39, %25
  %shr43 = lshr i32 %xor41, 24
  %arrayidx45 = getelementptr i32, ptr %s, i32 %shr43
  %26 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx45, align 4
  %shr46 = lshr i32 %xor41, 16
  %and47 = and i32 %shr46, 255
  %add48 = or i32 %and47, 256
  %arrayidx49 = getelementptr i32, ptr %s, i32 %add48
  %28 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx49, align 4
  %add50 = add i32 %29, %27
  %shr51 = lshr i32 %xor41, 8
  %and52 = and i32 %shr51, 255
  %add53 = or i32 %and52, 512
  %arrayidx54 = getelementptr i32, ptr %s, i32 %add53
  %30 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx54, align 4
  %xor55 = xor i32 %add50, %31
  %and56 = and i32 %xor41, 255
  %add57 = or i32 %and56, 768
  %arrayidx58 = getelementptr i32, ptr %s, i32 %add57
  %32 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx58, align 4
  %add59 = add i32 %xor55, %33
  %xor60 = xor i32 %add59, %xor20
  %arrayidx61 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 3
  %34 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx61, align 4
  %xor62 = xor i32 %xor60, %35
  %shr64 = lshr i32 %xor62, 24
  %arrayidx66 = getelementptr i32, ptr %s, i32 %shr64
  %36 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx66, align 4
  %shr67 = lshr i32 %xor62, 16
  %and68 = and i32 %shr67, 255
  %add69 = or i32 %and68, 256
  %arrayidx70 = getelementptr i32, ptr %s, i32 %add69
  %38 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx70, align 4
  %add71 = add i32 %39, %37
  %shr72 = lshr i32 %xor62, 8
  %and73 = and i32 %shr72, 255
  %add74 = or i32 %and73, 512
  %arrayidx75 = getelementptr i32, ptr %s, i32 %add74
  %40 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx75, align 4
  %xor76 = xor i32 %add71, %41
  %and77 = and i32 %xor62, 255
  %add78 = or i32 %and77, 768
  %arrayidx79 = getelementptr i32, ptr %s, i32 %add78
  %42 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx79, align 4
  %add80 = add i32 %xor76, %43
  %xor81 = xor i32 %add80, %xor41
  %arrayidx82 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4
  %44 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx82, align 4
  %xor83 = xor i32 %xor81, %45
  %shr85 = lshr i32 %xor83, 24
  %arrayidx87 = getelementptr i32, ptr %s, i32 %shr85
  %46 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx87, align 4
  %shr88 = lshr i32 %xor83, 16
  %and89 = and i32 %shr88, 255
  %add90 = or i32 %and89, 256
  %arrayidx91 = getelementptr i32, ptr %s, i32 %add90
  %48 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx91, align 4
  %add92 = add i32 %49, %47
  %shr93 = lshr i32 %xor83, 8
  %and94 = and i32 %shr93, 255
  %add95 = or i32 %and94, 512
  %arrayidx96 = getelementptr i32, ptr %s, i32 %add95
  %50 = ptrtoint ptr %arrayidx96 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx96, align 4
  %xor97 = xor i32 %add92, %51
  %and98 = and i32 %xor83, 255
  %add99 = or i32 %and98, 768
  %arrayidx100 = getelementptr i32, ptr %s, i32 %add99
  %52 = ptrtoint ptr %arrayidx100 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx100, align 4
  %add101 = add i32 %xor97, %53
  %xor102 = xor i32 %add101, %xor62
  %arrayidx103 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 4
  %54 = ptrtoint ptr %arrayidx103 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx103, align 4
  %xor104 = xor i32 %xor102, %55
  %shr106 = lshr i32 %xor104, 24
  %arrayidx108 = getelementptr i32, ptr %s, i32 %shr106
  %56 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx108, align 4
  %shr109 = lshr i32 %xor104, 16
  %and110 = and i32 %shr109, 255
  %add111 = or i32 %and110, 256
  %arrayidx112 = getelementptr i32, ptr %s, i32 %add111
  %58 = ptrtoint ptr %arrayidx112 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx112, align 4
  %add113 = add i32 %59, %57
  %shr114 = lshr i32 %xor104, 8
  %and115 = and i32 %shr114, 255
  %add116 = or i32 %and115, 512
  %arrayidx117 = getelementptr i32, ptr %s, i32 %add116
  %60 = ptrtoint ptr %arrayidx117 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx117, align 4
  %xor118 = xor i32 %add113, %61
  %and119 = and i32 %xor104, 255
  %add120 = or i32 %and119, 768
  %arrayidx121 = getelementptr i32, ptr %s, i32 %add120
  %62 = ptrtoint ptr %arrayidx121 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx121, align 4
  %add122 = add i32 %xor118, %63
  %xor123 = xor i32 %add122, %xor83
  %arrayidx124 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 8
  %64 = ptrtoint ptr %arrayidx124 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx124, align 4
  %xor125 = xor i32 %xor123, %65
  %shr127 = lshr i32 %xor125, 24
  %arrayidx129 = getelementptr i32, ptr %s, i32 %shr127
  %66 = ptrtoint ptr %arrayidx129 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx129, align 4
  %shr130 = lshr i32 %xor125, 16
  %and131 = and i32 %shr130, 255
  %add132 = or i32 %and131, 256
  %arrayidx133 = getelementptr i32, ptr %s, i32 %add132
  %68 = ptrtoint ptr %arrayidx133 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx133, align 4
  %add134 = add i32 %69, %67
  %shr135 = lshr i32 %xor125, 8
  %and136 = and i32 %shr135, 255
  %add137 = or i32 %and136, 512
  %arrayidx138 = getelementptr i32, ptr %s, i32 %add137
  %70 = ptrtoint ptr %arrayidx138 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx138, align 4
  %xor139 = xor i32 %add134, %71
  %and140 = and i32 %xor125, 255
  %add141 = or i32 %and140, 768
  %arrayidx142 = getelementptr i32, ptr %s, i32 %add141
  %72 = ptrtoint ptr %arrayidx142 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx142, align 4
  %add143 = add i32 %xor139, %73
  %xor144 = xor i32 %add143, %xor104
  %arrayidx145 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 12
  %74 = ptrtoint ptr %arrayidx145 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx145, align 4
  %xor146 = xor i32 %xor144, %75
  %shr148 = lshr i32 %xor146, 24
  %arrayidx150 = getelementptr i32, ptr %s, i32 %shr148
  %76 = ptrtoint ptr %arrayidx150 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx150, align 4
  %shr151 = lshr i32 %xor146, 16
  %and152 = and i32 %shr151, 255
  %add153 = or i32 %and152, 256
  %arrayidx154 = getelementptr i32, ptr %s, i32 %add153
  %78 = ptrtoint ptr %arrayidx154 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %arrayidx154, align 4
  %add155 = add i32 %79, %77
  %shr156 = lshr i32 %xor146, 8
  %and157 = and i32 %shr156, 255
  %add158 = or i32 %and157, 512
  %arrayidx159 = getelementptr i32, ptr %s, i32 %add158
  %80 = ptrtoint ptr %arrayidx159 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx159, align 4
  %xor160 = xor i32 %add155, %81
  %and161 = and i32 %xor146, 255
  %add162 = or i32 %and161, 768
  %arrayidx163 = getelementptr i32, ptr %s, i32 %add162
  %82 = ptrtoint ptr %arrayidx163 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arrayidx163, align 4
  %add164 = add i32 %xor160, %83
  %xor165 = xor i32 %add164, %xor125
  %arrayidx166 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 16
  %84 = ptrtoint ptr %arrayidx166 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %arrayidx166, align 4
  %xor167 = xor i32 %xor165, %85
  %shr169 = lshr i32 %xor167, 24
  %arrayidx171 = getelementptr i32, ptr %s, i32 %shr169
  %86 = ptrtoint ptr %arrayidx171 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx171, align 4
  %shr172 = lshr i32 %xor167, 16
  %and173 = and i32 %shr172, 255
  %add174 = or i32 %and173, 256
  %arrayidx175 = getelementptr i32, ptr %s, i32 %add174
  %88 = ptrtoint ptr %arrayidx175 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %arrayidx175, align 4
  %add176 = add i32 %89, %87
  %shr177 = lshr i32 %xor167, 8
  %and178 = and i32 %shr177, 255
  %add179 = or i32 %and178, 512
  %arrayidx180 = getelementptr i32, ptr %s, i32 %add179
  %90 = ptrtoint ptr %arrayidx180 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %arrayidx180, align 4
  %xor181 = xor i32 %add176, %91
  %and182 = and i32 %xor167, 255
  %add183 = or i32 %and182, 768
  %arrayidx184 = getelementptr i32, ptr %s, i32 %add183
  %92 = ptrtoint ptr %arrayidx184 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %arrayidx184, align 4
  %add185 = add i32 %xor181, %93
  %xor186 = xor i32 %add185, %xor146
  %arrayidx187 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 20
  %94 = ptrtoint ptr %arrayidx187 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %arrayidx187, align 4
  %xor188 = xor i32 %xor186, %95
  %shr190 = lshr i32 %xor188, 24
  %arrayidx192 = getelementptr i32, ptr %s, i32 %shr190
  %96 = ptrtoint ptr %arrayidx192 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %arrayidx192, align 4
  %shr193 = lshr i32 %xor188, 16
  %and194 = and i32 %shr193, 255
  %add195 = or i32 %and194, 256
  %arrayidx196 = getelementptr i32, ptr %s, i32 %add195
  %98 = ptrtoint ptr %arrayidx196 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %arrayidx196, align 4
  %add197 = add i32 %99, %97
  %shr198 = lshr i32 %xor188, 8
  %and199 = and i32 %shr198, 255
  %add200 = or i32 %and199, 512
  %arrayidx201 = getelementptr i32, ptr %s, i32 %add200
  %100 = ptrtoint ptr %arrayidx201 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %arrayidx201, align 4
  %xor202 = xor i32 %add197, %101
  %and203 = and i32 %xor188, 255
  %add204 = or i32 %and203, 768
  %arrayidx205 = getelementptr i32, ptr %s, i32 %add204
  %102 = ptrtoint ptr %arrayidx205 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %arrayidx205, align 4
  %add206 = add i32 %xor202, %103
  %xor207 = xor i32 %add206, %xor167
  %arrayidx208 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 24
  %104 = ptrtoint ptr %arrayidx208 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %arrayidx208, align 4
  %xor209 = xor i32 %xor207, %105
  %shr211 = lshr i32 %xor209, 24
  %arrayidx213 = getelementptr i32, ptr %s, i32 %shr211
  %106 = ptrtoint ptr %arrayidx213 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %arrayidx213, align 4
  %shr214 = lshr i32 %xor209, 16
  %and215 = and i32 %shr214, 255
  %add216 = or i32 %and215, 256
  %arrayidx217 = getelementptr i32, ptr %s, i32 %add216
  %108 = ptrtoint ptr %arrayidx217 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %arrayidx217, align 4
  %add218 = add i32 %109, %107
  %shr219 = lshr i32 %xor209, 8
  %and220 = and i32 %shr219, 255
  %add221 = or i32 %and220, 512
  %arrayidx222 = getelementptr i32, ptr %s, i32 %add221
  %110 = ptrtoint ptr %arrayidx222 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %arrayidx222, align 4
  %xor223 = xor i32 %add218, %111
  %and224 = and i32 %xor209, 255
  %add225 = or i32 %and224, 768
  %arrayidx226 = getelementptr i32, ptr %s, i32 %add225
  %112 = ptrtoint ptr %arrayidx226 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %arrayidx226, align 4
  %add227 = add i32 %xor223, %113
  %xor228 = xor i32 %add227, %xor188
  %arrayidx229 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 28
  %114 = ptrtoint ptr %arrayidx229 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %arrayidx229, align 4
  %xor230 = xor i32 %xor228, %115
  %shr232 = lshr i32 %xor230, 24
  %arrayidx234 = getelementptr i32, ptr %s, i32 %shr232
  %116 = ptrtoint ptr %arrayidx234 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %arrayidx234, align 4
  %shr235 = lshr i32 %xor230, 16
  %and236 = and i32 %shr235, 255
  %add237 = or i32 %and236, 256
  %arrayidx238 = getelementptr i32, ptr %s, i32 %add237
  %118 = ptrtoint ptr %arrayidx238 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %arrayidx238, align 4
  %add239 = add i32 %119, %117
  %shr240 = lshr i32 %xor230, 8
  %and241 = and i32 %shr240, 255
  %add242 = or i32 %and241, 512
  %arrayidx243 = getelementptr i32, ptr %s, i32 %add242
  %120 = ptrtoint ptr %arrayidx243 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %arrayidx243, align 4
  %xor244 = xor i32 %add239, %121
  %and245 = and i32 %xor230, 255
  %add246 = or i32 %and245, 768
  %arrayidx247 = getelementptr i32, ptr %s, i32 %add246
  %122 = ptrtoint ptr %arrayidx247 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %arrayidx247, align 4
  %add248 = add i32 %xor244, %123
  %xor249 = xor i32 %add248, %xor209
  %arrayidx250 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 32
  %124 = ptrtoint ptr %arrayidx250 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %arrayidx250, align 4
  %xor251 = xor i32 %xor249, %125
  %shr253 = lshr i32 %xor251, 24
  %arrayidx255 = getelementptr i32, ptr %s, i32 %shr253
  %126 = ptrtoint ptr %arrayidx255 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %arrayidx255, align 4
  %shr256 = lshr i32 %xor251, 16
  %and257 = and i32 %shr256, 255
  %add258 = or i32 %and257, 256
  %arrayidx259 = getelementptr i32, ptr %s, i32 %add258
  %128 = ptrtoint ptr %arrayidx259 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %arrayidx259, align 4
  %add260 = add i32 %129, %127
  %shr261 = lshr i32 %xor251, 8
  %and262 = and i32 %shr261, 255
  %add263 = or i32 %and262, 512
  %arrayidx264 = getelementptr i32, ptr %s, i32 %add263
  %130 = ptrtoint ptr %arrayidx264 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %arrayidx264, align 4
  %xor265 = xor i32 %add260, %131
  %and266 = and i32 %xor251, 255
  %add267 = or i32 %and266, 768
  %arrayidx268 = getelementptr i32, ptr %s, i32 %add267
  %132 = ptrtoint ptr %arrayidx268 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %arrayidx268, align 4
  %add269 = add i32 %xor265, %133
  %xor270 = xor i32 %add269, %xor230
  %arrayidx271 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 36
  %134 = ptrtoint ptr %arrayidx271 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %arrayidx271, align 4
  %xor272 = xor i32 %xor270, %135
  %shr274 = lshr i32 %xor272, 24
  %arrayidx276 = getelementptr i32, ptr %s, i32 %shr274
  %136 = ptrtoint ptr %arrayidx276 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %arrayidx276, align 4
  %shr277 = lshr i32 %xor272, 16
  %and278 = and i32 %shr277, 255
  %add279 = or i32 %and278, 256
  %arrayidx280 = getelementptr i32, ptr %s, i32 %add279
  %138 = ptrtoint ptr %arrayidx280 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %arrayidx280, align 4
  %add281 = add i32 %139, %137
  %shr282 = lshr i32 %xor272, 8
  %and283 = and i32 %shr282, 255
  %add284 = or i32 %and283, 512
  %arrayidx285 = getelementptr i32, ptr %s, i32 %add284
  %140 = ptrtoint ptr %arrayidx285 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %arrayidx285, align 4
  %xor286 = xor i32 %add281, %141
  %and287 = and i32 %xor272, 255
  %add288 = or i32 %and287, 768
  %arrayidx289 = getelementptr i32, ptr %s, i32 %add288
  %142 = ptrtoint ptr %arrayidx289 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %arrayidx289, align 4
  %add290 = add i32 %xor286, %143
  %xor291 = xor i32 %add290, %xor251
  %arrayidx292 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 40
  %144 = ptrtoint ptr %arrayidx292 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %arrayidx292, align 4
  %xor293 = xor i32 %xor291, %145
  %shr295 = lshr i32 %xor293, 24
  %arrayidx297 = getelementptr i32, ptr %s, i32 %shr295
  %146 = ptrtoint ptr %arrayidx297 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %arrayidx297, align 4
  %shr298 = lshr i32 %xor293, 16
  %and299 = and i32 %shr298, 255
  %add300 = or i32 %and299, 256
  %arrayidx301 = getelementptr i32, ptr %s, i32 %add300
  %148 = ptrtoint ptr %arrayidx301 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %arrayidx301, align 4
  %add302 = add i32 %149, %147
  %shr303 = lshr i32 %xor293, 8
  %and304 = and i32 %shr303, 255
  %add305 = or i32 %and304, 512
  %arrayidx306 = getelementptr i32, ptr %s, i32 %add305
  %150 = ptrtoint ptr %arrayidx306 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %arrayidx306, align 4
  %xor307 = xor i32 %add302, %151
  %and308 = and i32 %xor293, 255
  %add309 = or i32 %and308, 768
  %arrayidx310 = getelementptr i32, ptr %s, i32 %add309
  %152 = ptrtoint ptr %arrayidx310 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %arrayidx310, align 4
  %add311 = add i32 %xor307, %153
  %xor312 = xor i32 %add311, %xor272
  %arrayidx313 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 44
  %154 = ptrtoint ptr %arrayidx313 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %arrayidx313, align 4
  %xor314 = xor i32 %xor312, %155
  %shr316 = lshr i32 %xor314, 24
  %arrayidx318 = getelementptr i32, ptr %s, i32 %shr316
  %156 = ptrtoint ptr %arrayidx318 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %arrayidx318, align 4
  %shr319 = lshr i32 %xor314, 16
  %and320 = and i32 %shr319, 255
  %add321 = or i32 %and320, 256
  %arrayidx322 = getelementptr i32, ptr %s, i32 %add321
  %158 = ptrtoint ptr %arrayidx322 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %arrayidx322, align 4
  %add323 = add i32 %159, %157
  %shr324 = lshr i32 %xor314, 8
  %and325 = and i32 %shr324, 255
  %add326 = or i32 %and325, 512
  %arrayidx327 = getelementptr i32, ptr %s, i32 %add326
  %160 = ptrtoint ptr %arrayidx327 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %arrayidx327, align 4
  %xor328 = xor i32 %add323, %161
  %and329 = and i32 %xor314, 255
  %add330 = or i32 %and329, 768
  %arrayidx331 = getelementptr i32, ptr %s, i32 %add330
  %162 = ptrtoint ptr %arrayidx331 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %arrayidx331, align 4
  %add332 = add i32 %xor328, %163
  %xor333 = xor i32 %add332, %xor293
  %arrayidx334 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 48
  %164 = ptrtoint ptr %arrayidx334 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %arrayidx334, align 4
  %xor335 = xor i32 %xor333, %165
  %arrayidx336 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 52
  %166 = ptrtoint ptr %arrayidx336 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %arrayidx336, align 4
  %xor337 = xor i32 %167, %xor314
  %168 = ptrtoint ptr %dst to i32
  call void @__asan_storeN_noabort(i32 %168, i32 4)
  store i32 %xor337, ptr %dst, align 1
  %add.ptr338 = getelementptr i8, ptr %dst, i32 4
  %169 = ptrtoint ptr %add.ptr338 to i32
  call void @__asan_storeN_noabort(i32 %169, i32 4)
  store i32 %xor335, ptr %add.ptr338, align 1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @bf_decrypt(ptr noundef readonly %tfm, ptr nocapture noundef writeonly %dst, ptr nocapture noundef readonly %src) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %s = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 56
  %0 = ptrtoint ptr %src to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %src, align 1
  %add.ptr = getelementptr i8, ptr %src, i32 4
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %add.ptr, align 1
  %arrayidx = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 52
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %xor = xor i32 %5, %1
  %shr = lshr i32 %xor, 24
  %arrayidx4 = getelementptr i32, ptr %s, i32 %shr
  %6 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx4, align 4
  %shr5 = lshr i32 %xor, 16
  %and6 = and i32 %shr5, 255
  %add = or i32 %and6, 256
  %arrayidx7 = getelementptr i32, ptr %s, i32 %add
  %8 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx7, align 4
  %add8 = add i32 %9, %7
  %shr9 = lshr i32 %xor, 8
  %and10 = and i32 %shr9, 255
  %add11 = or i32 %and10, 512
  %arrayidx12 = getelementptr i32, ptr %s, i32 %add11
  %10 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx12, align 4
  %xor13 = xor i32 %add8, %11
  %and14 = and i32 %xor, 255
  %add15 = or i32 %and14, 768
  %arrayidx16 = getelementptr i32, ptr %s, i32 %add15
  %12 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx16, align 4
  %add17 = add i32 %xor13, %13
  %xor18 = xor i32 %add17, %3
  %arrayidx19 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 48
  %14 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx19, align 4
  %xor20 = xor i32 %xor18, %15
  %shr22 = lshr i32 %xor20, 24
  %arrayidx24 = getelementptr i32, ptr %s, i32 %shr22
  %16 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx24, align 4
  %shr25 = lshr i32 %xor20, 16
  %and26 = and i32 %shr25, 255
  %add27 = or i32 %and26, 256
  %arrayidx28 = getelementptr i32, ptr %s, i32 %add27
  %18 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx28, align 4
  %add29 = add i32 %19, %17
  %shr30 = lshr i32 %xor20, 8
  %and31 = and i32 %shr30, 255
  %add32 = or i32 %and31, 512
  %arrayidx33 = getelementptr i32, ptr %s, i32 %add32
  %20 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx33, align 4
  %xor34 = xor i32 %add29, %21
  %and35 = and i32 %xor20, 255
  %add36 = or i32 %and35, 768
  %arrayidx37 = getelementptr i32, ptr %s, i32 %add36
  %22 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx37, align 4
  %add38 = add i32 %xor34, %23
  %xor39 = xor i32 %add38, %xor
  %arrayidx40 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 44
  %24 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx40, align 4
  %xor41 = xor i32 %xor39, %25
  %shr43 = lshr i32 %xor41, 24
  %arrayidx45 = getelementptr i32, ptr %s, i32 %shr43
  %26 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx45, align 4
  %shr46 = lshr i32 %xor41, 16
  %and47 = and i32 %shr46, 255
  %add48 = or i32 %and47, 256
  %arrayidx49 = getelementptr i32, ptr %s, i32 %add48
  %28 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx49, align 4
  %add50 = add i32 %29, %27
  %shr51 = lshr i32 %xor41, 8
  %and52 = and i32 %shr51, 255
  %add53 = or i32 %and52, 512
  %arrayidx54 = getelementptr i32, ptr %s, i32 %add53
  %30 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx54, align 4
  %xor55 = xor i32 %add50, %31
  %and56 = and i32 %xor41, 255
  %add57 = or i32 %and56, 768
  %arrayidx58 = getelementptr i32, ptr %s, i32 %add57
  %32 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx58, align 4
  %add59 = add i32 %xor55, %33
  %xor60 = xor i32 %add59, %xor20
  %arrayidx61 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 40
  %34 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx61, align 4
  %xor62 = xor i32 %xor60, %35
  %shr64 = lshr i32 %xor62, 24
  %arrayidx66 = getelementptr i32, ptr %s, i32 %shr64
  %36 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx66, align 4
  %shr67 = lshr i32 %xor62, 16
  %and68 = and i32 %shr67, 255
  %add69 = or i32 %and68, 256
  %arrayidx70 = getelementptr i32, ptr %s, i32 %add69
  %38 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx70, align 4
  %add71 = add i32 %39, %37
  %shr72 = lshr i32 %xor62, 8
  %and73 = and i32 %shr72, 255
  %add74 = or i32 %and73, 512
  %arrayidx75 = getelementptr i32, ptr %s, i32 %add74
  %40 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx75, align 4
  %xor76 = xor i32 %add71, %41
  %and77 = and i32 %xor62, 255
  %add78 = or i32 %and77, 768
  %arrayidx79 = getelementptr i32, ptr %s, i32 %add78
  %42 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx79, align 4
  %add80 = add i32 %xor76, %43
  %xor81 = xor i32 %add80, %xor41
  %arrayidx82 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 36
  %44 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx82, align 4
  %xor83 = xor i32 %xor81, %45
  %shr85 = lshr i32 %xor83, 24
  %arrayidx87 = getelementptr i32, ptr %s, i32 %shr85
  %46 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx87, align 4
  %shr88 = lshr i32 %xor83, 16
  %and89 = and i32 %shr88, 255
  %add90 = or i32 %and89, 256
  %arrayidx91 = getelementptr i32, ptr %s, i32 %add90
  %48 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx91, align 4
  %add92 = add i32 %49, %47
  %shr93 = lshr i32 %xor83, 8
  %and94 = and i32 %shr93, 255
  %add95 = or i32 %and94, 512
  %arrayidx96 = getelementptr i32, ptr %s, i32 %add95
  %50 = ptrtoint ptr %arrayidx96 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx96, align 4
  %xor97 = xor i32 %add92, %51
  %and98 = and i32 %xor83, 255
  %add99 = or i32 %and98, 768
  %arrayidx100 = getelementptr i32, ptr %s, i32 %add99
  %52 = ptrtoint ptr %arrayidx100 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx100, align 4
  %add101 = add i32 %xor97, %53
  %xor102 = xor i32 %add101, %xor62
  %arrayidx103 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 32
  %54 = ptrtoint ptr %arrayidx103 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx103, align 4
  %xor104 = xor i32 %xor102, %55
  %shr106 = lshr i32 %xor104, 24
  %arrayidx108 = getelementptr i32, ptr %s, i32 %shr106
  %56 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx108, align 4
  %shr109 = lshr i32 %xor104, 16
  %and110 = and i32 %shr109, 255
  %add111 = or i32 %and110, 256
  %arrayidx112 = getelementptr i32, ptr %s, i32 %add111
  %58 = ptrtoint ptr %arrayidx112 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx112, align 4
  %add113 = add i32 %59, %57
  %shr114 = lshr i32 %xor104, 8
  %and115 = and i32 %shr114, 255
  %add116 = or i32 %and115, 512
  %arrayidx117 = getelementptr i32, ptr %s, i32 %add116
  %60 = ptrtoint ptr %arrayidx117 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx117, align 4
  %xor118 = xor i32 %add113, %61
  %and119 = and i32 %xor104, 255
  %add120 = or i32 %and119, 768
  %arrayidx121 = getelementptr i32, ptr %s, i32 %add120
  %62 = ptrtoint ptr %arrayidx121 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx121, align 4
  %add122 = add i32 %xor118, %63
  %xor123 = xor i32 %add122, %xor83
  %arrayidx124 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 28
  %64 = ptrtoint ptr %arrayidx124 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx124, align 4
  %xor125 = xor i32 %xor123, %65
  %shr127 = lshr i32 %xor125, 24
  %arrayidx129 = getelementptr i32, ptr %s, i32 %shr127
  %66 = ptrtoint ptr %arrayidx129 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx129, align 4
  %shr130 = lshr i32 %xor125, 16
  %and131 = and i32 %shr130, 255
  %add132 = or i32 %and131, 256
  %arrayidx133 = getelementptr i32, ptr %s, i32 %add132
  %68 = ptrtoint ptr %arrayidx133 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx133, align 4
  %add134 = add i32 %69, %67
  %shr135 = lshr i32 %xor125, 8
  %and136 = and i32 %shr135, 255
  %add137 = or i32 %and136, 512
  %arrayidx138 = getelementptr i32, ptr %s, i32 %add137
  %70 = ptrtoint ptr %arrayidx138 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx138, align 4
  %xor139 = xor i32 %add134, %71
  %and140 = and i32 %xor125, 255
  %add141 = or i32 %and140, 768
  %arrayidx142 = getelementptr i32, ptr %s, i32 %add141
  %72 = ptrtoint ptr %arrayidx142 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx142, align 4
  %add143 = add i32 %xor139, %73
  %xor144 = xor i32 %add143, %xor104
  %arrayidx145 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 24
  %74 = ptrtoint ptr %arrayidx145 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx145, align 4
  %xor146 = xor i32 %xor144, %75
  %shr148 = lshr i32 %xor146, 24
  %arrayidx150 = getelementptr i32, ptr %s, i32 %shr148
  %76 = ptrtoint ptr %arrayidx150 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx150, align 4
  %shr151 = lshr i32 %xor146, 16
  %and152 = and i32 %shr151, 255
  %add153 = or i32 %and152, 256
  %arrayidx154 = getelementptr i32, ptr %s, i32 %add153
  %78 = ptrtoint ptr %arrayidx154 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %arrayidx154, align 4
  %add155 = add i32 %79, %77
  %shr156 = lshr i32 %xor146, 8
  %and157 = and i32 %shr156, 255
  %add158 = or i32 %and157, 512
  %arrayidx159 = getelementptr i32, ptr %s, i32 %add158
  %80 = ptrtoint ptr %arrayidx159 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx159, align 4
  %xor160 = xor i32 %add155, %81
  %and161 = and i32 %xor146, 255
  %add162 = or i32 %and161, 768
  %arrayidx163 = getelementptr i32, ptr %s, i32 %add162
  %82 = ptrtoint ptr %arrayidx163 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arrayidx163, align 4
  %add164 = add i32 %xor160, %83
  %xor165 = xor i32 %add164, %xor125
  %arrayidx166 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 20
  %84 = ptrtoint ptr %arrayidx166 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %arrayidx166, align 4
  %xor167 = xor i32 %xor165, %85
  %shr169 = lshr i32 %xor167, 24
  %arrayidx171 = getelementptr i32, ptr %s, i32 %shr169
  %86 = ptrtoint ptr %arrayidx171 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx171, align 4
  %shr172 = lshr i32 %xor167, 16
  %and173 = and i32 %shr172, 255
  %add174 = or i32 %and173, 256
  %arrayidx175 = getelementptr i32, ptr %s, i32 %add174
  %88 = ptrtoint ptr %arrayidx175 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %arrayidx175, align 4
  %add176 = add i32 %89, %87
  %shr177 = lshr i32 %xor167, 8
  %and178 = and i32 %shr177, 255
  %add179 = or i32 %and178, 512
  %arrayidx180 = getelementptr i32, ptr %s, i32 %add179
  %90 = ptrtoint ptr %arrayidx180 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %arrayidx180, align 4
  %xor181 = xor i32 %add176, %91
  %and182 = and i32 %xor167, 255
  %add183 = or i32 %and182, 768
  %arrayidx184 = getelementptr i32, ptr %s, i32 %add183
  %92 = ptrtoint ptr %arrayidx184 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %arrayidx184, align 4
  %add185 = add i32 %xor181, %93
  %xor186 = xor i32 %add185, %xor146
  %arrayidx187 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 16
  %94 = ptrtoint ptr %arrayidx187 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %arrayidx187, align 4
  %xor188 = xor i32 %xor186, %95
  %shr190 = lshr i32 %xor188, 24
  %arrayidx192 = getelementptr i32, ptr %s, i32 %shr190
  %96 = ptrtoint ptr %arrayidx192 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %arrayidx192, align 4
  %shr193 = lshr i32 %xor188, 16
  %and194 = and i32 %shr193, 255
  %add195 = or i32 %and194, 256
  %arrayidx196 = getelementptr i32, ptr %s, i32 %add195
  %98 = ptrtoint ptr %arrayidx196 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %arrayidx196, align 4
  %add197 = add i32 %99, %97
  %shr198 = lshr i32 %xor188, 8
  %and199 = and i32 %shr198, 255
  %add200 = or i32 %and199, 512
  %arrayidx201 = getelementptr i32, ptr %s, i32 %add200
  %100 = ptrtoint ptr %arrayidx201 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %arrayidx201, align 4
  %xor202 = xor i32 %add197, %101
  %and203 = and i32 %xor188, 255
  %add204 = or i32 %and203, 768
  %arrayidx205 = getelementptr i32, ptr %s, i32 %add204
  %102 = ptrtoint ptr %arrayidx205 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %arrayidx205, align 4
  %add206 = add i32 %xor202, %103
  %xor207 = xor i32 %add206, %xor167
  %arrayidx208 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 12
  %104 = ptrtoint ptr %arrayidx208 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %arrayidx208, align 4
  %xor209 = xor i32 %xor207, %105
  %shr211 = lshr i32 %xor209, 24
  %arrayidx213 = getelementptr i32, ptr %s, i32 %shr211
  %106 = ptrtoint ptr %arrayidx213 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %arrayidx213, align 4
  %shr214 = lshr i32 %xor209, 16
  %and215 = and i32 %shr214, 255
  %add216 = or i32 %and215, 256
  %arrayidx217 = getelementptr i32, ptr %s, i32 %add216
  %108 = ptrtoint ptr %arrayidx217 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %arrayidx217, align 4
  %add218 = add i32 %109, %107
  %shr219 = lshr i32 %xor209, 8
  %and220 = and i32 %shr219, 255
  %add221 = or i32 %and220, 512
  %arrayidx222 = getelementptr i32, ptr %s, i32 %add221
  %110 = ptrtoint ptr %arrayidx222 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %arrayidx222, align 4
  %xor223 = xor i32 %add218, %111
  %and224 = and i32 %xor209, 255
  %add225 = or i32 %and224, 768
  %arrayidx226 = getelementptr i32, ptr %s, i32 %add225
  %112 = ptrtoint ptr %arrayidx226 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %arrayidx226, align 4
  %add227 = add i32 %xor223, %113
  %xor228 = xor i32 %add227, %xor188
  %arrayidx229 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 8
  %114 = ptrtoint ptr %arrayidx229 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %arrayidx229, align 4
  %xor230 = xor i32 %xor228, %115
  %shr232 = lshr i32 %xor230, 24
  %arrayidx234 = getelementptr i32, ptr %s, i32 %shr232
  %116 = ptrtoint ptr %arrayidx234 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %arrayidx234, align 4
  %shr235 = lshr i32 %xor230, 16
  %and236 = and i32 %shr235, 255
  %add237 = or i32 %and236, 256
  %arrayidx238 = getelementptr i32, ptr %s, i32 %add237
  %118 = ptrtoint ptr %arrayidx238 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %arrayidx238, align 4
  %add239 = add i32 %119, %117
  %shr240 = lshr i32 %xor230, 8
  %and241 = and i32 %shr240, 255
  %add242 = or i32 %and241, 512
  %arrayidx243 = getelementptr i32, ptr %s, i32 %add242
  %120 = ptrtoint ptr %arrayidx243 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %arrayidx243, align 4
  %xor244 = xor i32 %add239, %121
  %and245 = and i32 %xor230, 255
  %add246 = or i32 %and245, 768
  %arrayidx247 = getelementptr i32, ptr %s, i32 %add246
  %122 = ptrtoint ptr %arrayidx247 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %arrayidx247, align 4
  %add248 = add i32 %xor244, %123
  %xor249 = xor i32 %add248, %xor209
  %arrayidx250 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 4
  %124 = ptrtoint ptr %arrayidx250 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %arrayidx250, align 4
  %xor251 = xor i32 %xor249, %125
  %shr253 = lshr i32 %xor251, 24
  %arrayidx255 = getelementptr i32, ptr %s, i32 %shr253
  %126 = ptrtoint ptr %arrayidx255 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %arrayidx255, align 4
  %shr256 = lshr i32 %xor251, 16
  %and257 = and i32 %shr256, 255
  %add258 = or i32 %and257, 256
  %arrayidx259 = getelementptr i32, ptr %s, i32 %add258
  %128 = ptrtoint ptr %arrayidx259 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %arrayidx259, align 4
  %add260 = add i32 %129, %127
  %shr261 = lshr i32 %xor251, 8
  %and262 = and i32 %shr261, 255
  %add263 = or i32 %and262, 512
  %arrayidx264 = getelementptr i32, ptr %s, i32 %add263
  %130 = ptrtoint ptr %arrayidx264 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %arrayidx264, align 4
  %xor265 = xor i32 %add260, %131
  %and266 = and i32 %xor251, 255
  %add267 = or i32 %and266, 768
  %arrayidx268 = getelementptr i32, ptr %s, i32 %add267
  %132 = ptrtoint ptr %arrayidx268 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %arrayidx268, align 4
  %add269 = add i32 %xor265, %133
  %xor270 = xor i32 %add269, %xor230
  %arrayidx271 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4
  %134 = ptrtoint ptr %arrayidx271 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %arrayidx271, align 4
  %xor272 = xor i32 %xor270, %135
  %shr274 = lshr i32 %xor272, 24
  %arrayidx276 = getelementptr i32, ptr %s, i32 %shr274
  %136 = ptrtoint ptr %arrayidx276 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %arrayidx276, align 4
  %shr277 = lshr i32 %xor272, 16
  %and278 = and i32 %shr277, 255
  %add279 = or i32 %and278, 256
  %arrayidx280 = getelementptr i32, ptr %s, i32 %add279
  %138 = ptrtoint ptr %arrayidx280 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %arrayidx280, align 4
  %add281 = add i32 %139, %137
  %shr282 = lshr i32 %xor272, 8
  %and283 = and i32 %shr282, 255
  %add284 = or i32 %and283, 512
  %arrayidx285 = getelementptr i32, ptr %s, i32 %add284
  %140 = ptrtoint ptr %arrayidx285 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %arrayidx285, align 4
  %xor286 = xor i32 %add281, %141
  %and287 = and i32 %xor272, 255
  %add288 = or i32 %and287, 768
  %arrayidx289 = getelementptr i32, ptr %s, i32 %add288
  %142 = ptrtoint ptr %arrayidx289 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %arrayidx289, align 4
  %add290 = add i32 %xor286, %143
  %xor291 = xor i32 %add290, %xor251
  %arrayidx292 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 3
  %144 = ptrtoint ptr %arrayidx292 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %arrayidx292, align 4
  %xor293 = xor i32 %xor291, %145
  %shr295 = lshr i32 %xor293, 24
  %arrayidx297 = getelementptr i32, ptr %s, i32 %shr295
  %146 = ptrtoint ptr %arrayidx297 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %arrayidx297, align 4
  %shr298 = lshr i32 %xor293, 16
  %and299 = and i32 %shr298, 255
  %add300 = or i32 %and299, 256
  %arrayidx301 = getelementptr i32, ptr %s, i32 %add300
  %148 = ptrtoint ptr %arrayidx301 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %arrayidx301, align 4
  %add302 = add i32 %149, %147
  %shr303 = lshr i32 %xor293, 8
  %and304 = and i32 %shr303, 255
  %add305 = or i32 %and304, 512
  %arrayidx306 = getelementptr i32, ptr %s, i32 %add305
  %150 = ptrtoint ptr %arrayidx306 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %arrayidx306, align 4
  %xor307 = xor i32 %add302, %151
  %and308 = and i32 %xor293, 255
  %add309 = or i32 %and308, 768
  %arrayidx310 = getelementptr i32, ptr %s, i32 %add309
  %152 = ptrtoint ptr %arrayidx310 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %arrayidx310, align 4
  %add311 = add i32 %xor307, %153
  %xor312 = xor i32 %add311, %xor272
  %arrayidx313 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 2
  %154 = ptrtoint ptr %arrayidx313 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %arrayidx313, align 4
  %xor314 = xor i32 %xor312, %155
  %shr316 = lshr i32 %xor314, 24
  %arrayidx318 = getelementptr i32, ptr %s, i32 %shr316
  %156 = ptrtoint ptr %arrayidx318 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %arrayidx318, align 4
  %shr319 = lshr i32 %xor314, 16
  %and320 = and i32 %shr319, 255
  %add321 = or i32 %and320, 256
  %arrayidx322 = getelementptr i32, ptr %s, i32 %add321
  %158 = ptrtoint ptr %arrayidx322 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %arrayidx322, align 4
  %add323 = add i32 %159, %157
  %shr324 = lshr i32 %xor314, 8
  %and325 = and i32 %shr324, 255
  %add326 = or i32 %and325, 512
  %arrayidx327 = getelementptr i32, ptr %s, i32 %add326
  %160 = ptrtoint ptr %arrayidx327 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %arrayidx327, align 4
  %xor328 = xor i32 %add323, %161
  %and329 = and i32 %xor314, 255
  %add330 = or i32 %and329, 768
  %arrayidx331 = getelementptr i32, ptr %s, i32 %add330
  %162 = ptrtoint ptr %arrayidx331 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %arrayidx331, align 4
  %add332 = add i32 %xor328, %163
  %xor333 = xor i32 %add332, %xor293
  %arrayidx334 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 1
  %164 = ptrtoint ptr %arrayidx334 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %arrayidx334, align 4
  %xor335 = xor i32 %xor333, %165
  %166 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %__crt_ctx.i, align 4
  %xor337 = xor i32 %167, %xor314
  %168 = ptrtoint ptr %dst to i32
  call void @__asan_storeN_noabort(i32 %168, i32 4)
  store i32 %xor337, ptr %dst, align 1
  %add.ptr338 = getelementptr i8, ptr %dst, i32 4
  %169 = ptrtoint ptr %add.ptr338 to i32
  call void @__asan_storeN_noabort(i32 %169, i32 4)
  store i32 %xor335, ptr %add.ptr338, align 1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_alg(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !12, !14, !15}
!llvm.module.flags = !{!17, !18, !19, !20, !21, !22, !23, !24}
!llvm.ident = !{!25}

!0 = !{ptr @__initcall__kmod_blowfish_generic__226_126_blowfish_mod_init4, !1, !"__initcall__kmod_blowfish_generic__226_126_blowfish_mod_init4", i1 false, i1 false}
!1 = !{!"../crypto/blowfish_generic.c", i32 126, i32 1}
!2 = !{ptr @__exitcall_blowfish_mod_fini, !3, !"__exitcall_blowfish_mod_fini", i1 false, i1 false}
!3 = !{!"../crypto/blowfish_generic.c", i32 127, i32 1}
!4 = !{ptr @__UNIQUE_ID_file227, !5, !"__UNIQUE_ID_file227", i1 false, i1 false}
!5 = !{!"../crypto/blowfish_generic.c", i32 129, i32 1}
!6 = !{ptr @__UNIQUE_ID_license228, !5, !"__UNIQUE_ID_license228", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_description229, !8, !"__UNIQUE_ID_description229", i1 false, i1 false}
!8 = !{!"../crypto/blowfish_generic.c", i32 130, i32 1}
!9 = !{ptr @__UNIQUE_ID_alias_userspace230, !10, !"__UNIQUE_ID_alias_userspace230", i1 false, i1 false}
!10 = !{!"../crypto/blowfish_generic.c", i32 131, i32 1}
!11 = !{ptr @__UNIQUE_ID_alias_crypto231, !10, !"__UNIQUE_ID_alias_crypto231", i1 false, i1 false}
!12 = !{ptr @__UNIQUE_ID_alias_userspace232, !13, !"__UNIQUE_ID_alias_userspace232", i1 false, i1 false}
!13 = !{!"../crypto/blowfish_generic.c", i32 132, i32 1}
!14 = !{ptr @__UNIQUE_ID_alias_crypto233, !13, !"__UNIQUE_ID_alias_crypto233", i1 false, i1 false}
!15 = !{ptr @alg, !16, !"alg", i1 false, i1 false}
!16 = !{!"../crypto/blowfish_generic.c", i32 100, i32 26}
!17 = !{i32 1, !"wchar_size", i32 2}
!18 = !{i32 1, !"min_enum_size", i32 4}
!19 = !{i32 8, !"branch-target-enforcement", i32 0}
!20 = !{i32 8, !"sign-return-address", i32 0}
!21 = !{i32 8, !"sign-return-address-all", i32 0}
!22 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!23 = !{i32 7, !"uwtable", i32 1}
!24 = !{i32 7, !"frame-pointer", i32 2}
!25 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
