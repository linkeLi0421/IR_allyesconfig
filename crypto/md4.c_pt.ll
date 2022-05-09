; ModuleID = '/llk/IR_all_yes/crypto/md4.c_pt.bc'
source_filename = "../crypto/md4.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.shash_alg = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [84 x i8], i32, i32, [120 x i8], %struct.crypto_alg }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon, ptr, ptr, ptr, ptr, %union.anon.44, [120 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%union.anon = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%union.anon.44 = type { %struct.crypto_istat_akcipher }
%struct.crypto_istat_akcipher = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.shash_desc = type { ptr, [4 x i8], [0 x ptr] }

@alg = internal global %struct.shash_alg { ptr @md4_init, ptr @md4_update, ptr @md4_final, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 88, [84 x i8] undef, i32 16, i32 0, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 64, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"md4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"md4-generic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.44 zeroinitializer, [120 x i8] undef } }, align 128
@__initcall__kmod_md4__173_236_md4_mod_init4 = internal global ptr @md4_mod_init, section ".initcall4.init", align 4
@__exitcall_md4_mod_fini = internal global ptr @md4_mod_fini, section ".exitcall.exit", align 4
@__UNIQUE_ID_file174 = internal constant [20 x i8] c"md4.file=crypto/md4\00", section ".modinfo", align 1
@__UNIQUE_ID_license175 = internal constant [16 x i8] c"md4.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description176 = internal constant [45 x i8] c"md4.description=MD4 Message Digest Algorithm\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace177 = internal constant [14 x i8] c"md4.alias=md4\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto178 = internal constant [21 x i8] c"md4.alias=crypto-md4\00", section ".modinfo", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_alias_crypto178, ptr @__UNIQUE_ID_alias_userspace177, ptr @__UNIQUE_ID_description176, ptr @__UNIQUE_ID_file174, ptr @__UNIQUE_ID_license175, ptr @__exitcall_md4_mod_fini, ptr @__initcall__kmod_md4__173_236_md4_mod_init4, ptr @md4_mod_fini], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @md4_mod_fini() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @crypto_unregister_shash(ptr noundef nonnull @alg) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_shash(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @md4_mod_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @crypto_register_shash(ptr noundef nonnull @alg) #6
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @md4_init(ptr nocapture noundef writeonly %desc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 0, i32 2
  %0 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1732584193, ptr %__ctx.i, align 8
  %arrayidx2 = getelementptr %struct.shash_desc, ptr %desc, i32 1, i32 1
  %1 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -271733879, ptr %arrayidx2, align 4
  %arrayidx4 = getelementptr %struct.shash_desc, ptr %desc, i32 2
  %2 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1732584194, ptr %arrayidx4, align 8
  %arrayidx6 = getelementptr %struct.shash_desc, ptr %desc, i32 2, i32 1
  %3 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 271733878, ptr %arrayidx6, align 4
  %byte_count = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 11
  %4 = ptrtoint ptr %byte_count to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 0, ptr %byte_count, align 8
  ret i32 0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @md4_update(ptr noundef %desc, ptr nocapture noundef readonly %data, i32 noundef %len) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 0, i32 2
  %byte_count = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 11
  %0 = ptrtoint ptr %byte_count to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %byte_count, align 8
  %2 = trunc i64 %1 to i32
  %3 = and i32 %2, 63
  %conv = sub nuw nsw i32 64, %3
  %conv1 = zext i32 %len to i64
  %add = add i64 %1, %conv1
  store i64 %add, ptr %byte_count, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %len)
  %cmp = icmp ugt i32 %conv, %len
  %block = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 3
  %add.ptr = getelementptr i8, ptr %block, i32 %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %4 = call ptr @memcpy(ptr %add.ptr, ptr %data, i32 %len)
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = call ptr @memcpy(ptr %add.ptr, ptr %data, i32 %conv)
  %6 = ptrtoint ptr %block to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %block, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #6
  %9 = ptrtoint ptr %block to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %block, align 4
  %incdec.ptr.i.i = getelementptr %struct.shash_desc, ptr %desc, i32 3, i32 1
  %10 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %incdec.ptr.i.i, align 4
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #6
  %13 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %incdec.ptr.i.i, align 4
  %incdec.ptr.i.1.i = getelementptr %struct.shash_desc, ptr %desc, i32 4
  %14 = ptrtoint ptr %incdec.ptr.i.1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %incdec.ptr.i.1.i, align 4
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #6
  %17 = ptrtoint ptr %incdec.ptr.i.1.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %incdec.ptr.i.1.i, align 4
  %incdec.ptr.i.2.i = getelementptr %struct.shash_desc, ptr %desc, i32 4, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i.2.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %incdec.ptr.i.2.i, align 4
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #6
  %21 = ptrtoint ptr %incdec.ptr.i.2.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %incdec.ptr.i.2.i, align 4
  %incdec.ptr.i.3.i = getelementptr %struct.shash_desc, ptr %desc, i32 5
  %22 = ptrtoint ptr %incdec.ptr.i.3.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %incdec.ptr.i.3.i, align 4
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #6
  %25 = ptrtoint ptr %incdec.ptr.i.3.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %incdec.ptr.i.3.i, align 4
  %incdec.ptr.i.4.i = getelementptr %struct.shash_desc, ptr %desc, i32 5, i32 1
  %26 = ptrtoint ptr %incdec.ptr.i.4.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %incdec.ptr.i.4.i, align 4
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #6
  %29 = ptrtoint ptr %incdec.ptr.i.4.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %incdec.ptr.i.4.i, align 4
  %incdec.ptr.i.5.i = getelementptr %struct.shash_desc, ptr %desc, i32 6
  %30 = ptrtoint ptr %incdec.ptr.i.5.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %incdec.ptr.i.5.i, align 4
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #6
  %33 = ptrtoint ptr %incdec.ptr.i.5.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %incdec.ptr.i.5.i, align 4
  %incdec.ptr.i.6.i = getelementptr %struct.shash_desc, ptr %desc, i32 6, i32 1
  %34 = ptrtoint ptr %incdec.ptr.i.6.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %incdec.ptr.i.6.i, align 4
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #6
  %37 = ptrtoint ptr %incdec.ptr.i.6.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %incdec.ptr.i.6.i, align 4
  %incdec.ptr.i.7.i = getelementptr %struct.shash_desc, ptr %desc, i32 7
  %38 = ptrtoint ptr %incdec.ptr.i.7.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %incdec.ptr.i.7.i, align 4
  %40 = tail call i32 @llvm.bswap.i32(i32 %39) #6
  %41 = ptrtoint ptr %incdec.ptr.i.7.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %incdec.ptr.i.7.i, align 4
  %incdec.ptr.i.8.i = getelementptr %struct.shash_desc, ptr %desc, i32 7, i32 1
  %42 = ptrtoint ptr %incdec.ptr.i.8.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %incdec.ptr.i.8.i, align 4
  %44 = tail call i32 @llvm.bswap.i32(i32 %43) #6
  %45 = ptrtoint ptr %incdec.ptr.i.8.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %incdec.ptr.i.8.i, align 4
  %incdec.ptr.i.9.i = getelementptr %struct.shash_desc, ptr %desc, i32 8
  %46 = ptrtoint ptr %incdec.ptr.i.9.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %incdec.ptr.i.9.i, align 4
  %48 = tail call i32 @llvm.bswap.i32(i32 %47) #6
  %49 = ptrtoint ptr %incdec.ptr.i.9.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %incdec.ptr.i.9.i, align 4
  %incdec.ptr.i.10.i = getelementptr %struct.shash_desc, ptr %desc, i32 8, i32 1
  %50 = ptrtoint ptr %incdec.ptr.i.10.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %incdec.ptr.i.10.i, align 4
  %52 = tail call i32 @llvm.bswap.i32(i32 %51) #6
  %53 = ptrtoint ptr %incdec.ptr.i.10.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %incdec.ptr.i.10.i, align 4
  %incdec.ptr.i.11.i = getelementptr %struct.shash_desc, ptr %desc, i32 9
  %54 = ptrtoint ptr %incdec.ptr.i.11.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %incdec.ptr.i.11.i, align 4
  %56 = tail call i32 @llvm.bswap.i32(i32 %55) #6
  %57 = ptrtoint ptr %incdec.ptr.i.11.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %incdec.ptr.i.11.i, align 4
  %incdec.ptr.i.12.i = getelementptr %struct.shash_desc, ptr %desc, i32 9, i32 1
  %58 = ptrtoint ptr %incdec.ptr.i.12.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %incdec.ptr.i.12.i, align 4
  %60 = tail call i32 @llvm.bswap.i32(i32 %59) #6
  %61 = ptrtoint ptr %incdec.ptr.i.12.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %incdec.ptr.i.12.i, align 4
  %incdec.ptr.i.13.i = getelementptr %struct.shash_desc, ptr %desc, i32 10
  %62 = ptrtoint ptr %incdec.ptr.i.13.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %incdec.ptr.i.13.i, align 4
  %64 = tail call i32 @llvm.bswap.i32(i32 %63) #6
  %65 = ptrtoint ptr %incdec.ptr.i.13.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %incdec.ptr.i.13.i, align 4
  %incdec.ptr.i.14.i = getelementptr %struct.shash_desc, ptr %desc, i32 10, i32 1
  %66 = ptrtoint ptr %incdec.ptr.i.14.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %incdec.ptr.i.14.i, align 4
  %68 = tail call i32 @llvm.bswap.i32(i32 %67) #6
  %69 = ptrtoint ptr %incdec.ptr.i.14.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %incdec.ptr.i.14.i, align 4
  tail call fastcc void @md4_transform(ptr noundef %__ctx.i, ptr noundef %block) #6
  %add.ptr9 = getelementptr i8, ptr %data, i32 %conv
  %sub10 = sub i32 %len, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %sub10)
  %cmp1159 = icmp ugt i32 %sub10, 63
  br i1 %cmp1159, label %if.end.while.body_crit_edge, label %if.end.while.end_crit_edge

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

if.end.while.body_crit_edge:                      ; preds = %if.end
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end.while.body_crit_edge
  %len.addr.061 = phi i32 [ %sub16, %while.body.while.body_crit_edge ], [ %sub10, %if.end.while.body_crit_edge ]
  %data.addr.060 = phi ptr [ %add.ptr15, %while.body.while.body_crit_edge ], [ %add.ptr9, %if.end.while.body_crit_edge ]
  %70 = call ptr @memcpy(ptr %block, ptr %data.addr.060, i32 64)
  %71 = ptrtoint ptr %block to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %block, align 4
  %73 = tail call i32 @llvm.bswap.i32(i32 %72) #6
  %74 = ptrtoint ptr %block to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %block, align 4
  %75 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %incdec.ptr.i.i, align 4
  %77 = tail call i32 @llvm.bswap.i32(i32 %76) #6
  %78 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %incdec.ptr.i.i, align 4
  %79 = ptrtoint ptr %incdec.ptr.i.1.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %incdec.ptr.i.1.i, align 4
  %81 = tail call i32 @llvm.bswap.i32(i32 %80) #6
  %82 = ptrtoint ptr %incdec.ptr.i.1.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %81, ptr %incdec.ptr.i.1.i, align 4
  %83 = ptrtoint ptr %incdec.ptr.i.2.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %incdec.ptr.i.2.i, align 4
  %85 = tail call i32 @llvm.bswap.i32(i32 %84) #6
  %86 = ptrtoint ptr %incdec.ptr.i.2.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %85, ptr %incdec.ptr.i.2.i, align 4
  %87 = ptrtoint ptr %incdec.ptr.i.3.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %incdec.ptr.i.3.i, align 4
  %89 = tail call i32 @llvm.bswap.i32(i32 %88) #6
  %90 = ptrtoint ptr %incdec.ptr.i.3.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %89, ptr %incdec.ptr.i.3.i, align 4
  %91 = ptrtoint ptr %incdec.ptr.i.4.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %incdec.ptr.i.4.i, align 4
  %93 = tail call i32 @llvm.bswap.i32(i32 %92) #6
  %94 = ptrtoint ptr %incdec.ptr.i.4.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %93, ptr %incdec.ptr.i.4.i, align 4
  %95 = ptrtoint ptr %incdec.ptr.i.5.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %incdec.ptr.i.5.i, align 4
  %97 = tail call i32 @llvm.bswap.i32(i32 %96) #6
  %98 = ptrtoint ptr %incdec.ptr.i.5.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %97, ptr %incdec.ptr.i.5.i, align 4
  %99 = ptrtoint ptr %incdec.ptr.i.6.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %incdec.ptr.i.6.i, align 4
  %101 = tail call i32 @llvm.bswap.i32(i32 %100) #6
  %102 = ptrtoint ptr %incdec.ptr.i.6.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %101, ptr %incdec.ptr.i.6.i, align 4
  %103 = ptrtoint ptr %incdec.ptr.i.7.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %incdec.ptr.i.7.i, align 4
  %105 = tail call i32 @llvm.bswap.i32(i32 %104) #6
  %106 = ptrtoint ptr %incdec.ptr.i.7.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %105, ptr %incdec.ptr.i.7.i, align 4
  %107 = ptrtoint ptr %incdec.ptr.i.8.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %incdec.ptr.i.8.i, align 4
  %109 = tail call i32 @llvm.bswap.i32(i32 %108) #6
  %110 = ptrtoint ptr %incdec.ptr.i.8.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %109, ptr %incdec.ptr.i.8.i, align 4
  %111 = ptrtoint ptr %incdec.ptr.i.9.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %incdec.ptr.i.9.i, align 4
  %113 = tail call i32 @llvm.bswap.i32(i32 %112) #6
  %114 = ptrtoint ptr %incdec.ptr.i.9.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %113, ptr %incdec.ptr.i.9.i, align 4
  %115 = ptrtoint ptr %incdec.ptr.i.10.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %incdec.ptr.i.10.i, align 4
  %117 = tail call i32 @llvm.bswap.i32(i32 %116) #6
  %118 = ptrtoint ptr %incdec.ptr.i.10.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %117, ptr %incdec.ptr.i.10.i, align 4
  %119 = ptrtoint ptr %incdec.ptr.i.11.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %incdec.ptr.i.11.i, align 4
  %121 = tail call i32 @llvm.bswap.i32(i32 %120) #6
  %122 = ptrtoint ptr %incdec.ptr.i.11.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %121, ptr %incdec.ptr.i.11.i, align 4
  %123 = ptrtoint ptr %incdec.ptr.i.12.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %incdec.ptr.i.12.i, align 4
  %125 = tail call i32 @llvm.bswap.i32(i32 %124) #6
  %126 = ptrtoint ptr %incdec.ptr.i.12.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %125, ptr %incdec.ptr.i.12.i, align 4
  %127 = ptrtoint ptr %incdec.ptr.i.13.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %incdec.ptr.i.13.i, align 4
  %129 = tail call i32 @llvm.bswap.i32(i32 %128) #6
  %130 = ptrtoint ptr %incdec.ptr.i.13.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %129, ptr %incdec.ptr.i.13.i, align 4
  %131 = ptrtoint ptr %incdec.ptr.i.14.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %incdec.ptr.i.14.i, align 4
  %133 = tail call i32 @llvm.bswap.i32(i32 %132) #6
  %134 = ptrtoint ptr %incdec.ptr.i.14.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %133, ptr %incdec.ptr.i.14.i, align 4
  tail call fastcc void @md4_transform(ptr noundef %__ctx.i, ptr noundef %block) #6
  %add.ptr15 = getelementptr i8, ptr %data.addr.060, i32 64
  %sub16 = add i32 %len.addr.061, -64
  %cmp11 = icmp ugt i32 %sub16, 63
  br i1 %cmp11, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.end.while.end_crit_edge
  %data.addr.0.lcssa = phi ptr [ %add.ptr9, %if.end.while.end_crit_edge ], [ %add.ptr15, %while.body.while.end_crit_edge ]
  %len.addr.0.lcssa = phi i32 [ %sub10, %if.end.while.end_crit_edge ], [ %sub16, %while.body.while.end_crit_edge ]
  %135 = call ptr @memcpy(ptr %block, ptr %data.addr.0.lcssa, i32 %len.addr.0.lcssa)
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then
  ret i32 0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @md4_final(ptr noundef %desc, ptr nocapture noundef writeonly %out) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 0, i32 2
  %byte_count = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 11
  %0 = ptrtoint ptr %byte_count to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %byte_count, align 8
  %2 = trunc i64 %1 to i32
  %conv = and i32 %2, 63
  %block = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 3
  %add.ptr = getelementptr i8, ptr %block, i32 %conv
  %sub = sub nsw i32 55, %conv
  %incdec.ptr = getelementptr i8, ptr %add.ptr, i32 1
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -128, ptr %add.ptr, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 55, i32 %conv)
  %cmp = icmp ugt i32 %conv, 55
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add2 = xor i32 %conv, 63
  %4 = call ptr @memset(ptr %incdec.ptr, i32 0, i32 %add2)
  %5 = ptrtoint ptr %block to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %block, align 4
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #6
  %8 = ptrtoint ptr %block to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %block, align 4
  %incdec.ptr.i.i = getelementptr %struct.shash_desc, ptr %desc, i32 3, i32 1
  %9 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %incdec.ptr.i.i, align 4
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #6
  %12 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %incdec.ptr.i.i, align 4
  %incdec.ptr.i.1.i = getelementptr %struct.shash_desc, ptr %desc, i32 4
  %13 = ptrtoint ptr %incdec.ptr.i.1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %incdec.ptr.i.1.i, align 4
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #6
  %16 = ptrtoint ptr %incdec.ptr.i.1.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %incdec.ptr.i.1.i, align 4
  %incdec.ptr.i.2.i = getelementptr %struct.shash_desc, ptr %desc, i32 4, i32 1
  %17 = ptrtoint ptr %incdec.ptr.i.2.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %incdec.ptr.i.2.i, align 4
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #6
  %20 = ptrtoint ptr %incdec.ptr.i.2.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %incdec.ptr.i.2.i, align 4
  %incdec.ptr.i.3.i = getelementptr %struct.shash_desc, ptr %desc, i32 5
  %21 = ptrtoint ptr %incdec.ptr.i.3.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %incdec.ptr.i.3.i, align 4
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #6
  %24 = ptrtoint ptr %incdec.ptr.i.3.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %incdec.ptr.i.3.i, align 4
  %incdec.ptr.i.4.i = getelementptr %struct.shash_desc, ptr %desc, i32 5, i32 1
  %25 = ptrtoint ptr %incdec.ptr.i.4.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %incdec.ptr.i.4.i, align 4
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #6
  %28 = ptrtoint ptr %incdec.ptr.i.4.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %incdec.ptr.i.4.i, align 4
  %incdec.ptr.i.5.i = getelementptr %struct.shash_desc, ptr %desc, i32 6
  %29 = ptrtoint ptr %incdec.ptr.i.5.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %incdec.ptr.i.5.i, align 4
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #6
  %32 = ptrtoint ptr %incdec.ptr.i.5.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %incdec.ptr.i.5.i, align 4
  %incdec.ptr.i.6.i = getelementptr %struct.shash_desc, ptr %desc, i32 6, i32 1
  %33 = ptrtoint ptr %incdec.ptr.i.6.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %incdec.ptr.i.6.i, align 4
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #6
  %36 = ptrtoint ptr %incdec.ptr.i.6.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %incdec.ptr.i.6.i, align 4
  %incdec.ptr.i.7.i = getelementptr %struct.shash_desc, ptr %desc, i32 7
  %37 = ptrtoint ptr %incdec.ptr.i.7.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %incdec.ptr.i.7.i, align 4
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #6
  %40 = ptrtoint ptr %incdec.ptr.i.7.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %incdec.ptr.i.7.i, align 4
  %incdec.ptr.i.8.i = getelementptr %struct.shash_desc, ptr %desc, i32 7, i32 1
  %41 = ptrtoint ptr %incdec.ptr.i.8.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %incdec.ptr.i.8.i, align 4
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #6
  %44 = ptrtoint ptr %incdec.ptr.i.8.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %incdec.ptr.i.8.i, align 4
  %incdec.ptr.i.9.i = getelementptr %struct.shash_desc, ptr %desc, i32 8
  %45 = ptrtoint ptr %incdec.ptr.i.9.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %incdec.ptr.i.9.i, align 4
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #6
  %48 = ptrtoint ptr %incdec.ptr.i.9.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %incdec.ptr.i.9.i, align 4
  %incdec.ptr.i.10.i = getelementptr %struct.shash_desc, ptr %desc, i32 8, i32 1
  %49 = ptrtoint ptr %incdec.ptr.i.10.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %incdec.ptr.i.10.i, align 4
  %51 = tail call i32 @llvm.bswap.i32(i32 %50) #6
  %52 = ptrtoint ptr %incdec.ptr.i.10.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %incdec.ptr.i.10.i, align 4
  %incdec.ptr.i.11.i = getelementptr %struct.shash_desc, ptr %desc, i32 9
  %53 = ptrtoint ptr %incdec.ptr.i.11.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %incdec.ptr.i.11.i, align 4
  %55 = tail call i32 @llvm.bswap.i32(i32 %54) #6
  %56 = ptrtoint ptr %incdec.ptr.i.11.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %incdec.ptr.i.11.i, align 4
  %incdec.ptr.i.12.i = getelementptr %struct.shash_desc, ptr %desc, i32 9, i32 1
  %57 = ptrtoint ptr %incdec.ptr.i.12.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %incdec.ptr.i.12.i, align 4
  %59 = tail call i32 @llvm.bswap.i32(i32 %58) #6
  %60 = ptrtoint ptr %incdec.ptr.i.12.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %incdec.ptr.i.12.i, align 4
  %incdec.ptr.i.13.i = getelementptr %struct.shash_desc, ptr %desc, i32 10
  %61 = ptrtoint ptr %incdec.ptr.i.13.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %incdec.ptr.i.13.i, align 4
  %63 = tail call i32 @llvm.bswap.i32(i32 %62) #6
  %64 = ptrtoint ptr %incdec.ptr.i.13.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %incdec.ptr.i.13.i, align 4
  %incdec.ptr.i.14.i = getelementptr %struct.shash_desc, ptr %desc, i32 10, i32 1
  %65 = ptrtoint ptr %incdec.ptr.i.14.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %incdec.ptr.i.14.i, align 4
  %67 = tail call i32 @llvm.bswap.i32(i32 %66) #6
  %68 = ptrtoint ptr %incdec.ptr.i.14.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %incdec.ptr.i.14.i, align 4
  tail call fastcc void @md4_transform(ptr noundef %__ctx.i, ptr noundef %block) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %p.0 = phi ptr [ %block, %if.then ], [ %incdec.ptr, %entry.if.end_crit_edge ]
  %padding.0 = phi i32 [ 56, %if.then ], [ %sub, %entry.if.end_crit_edge ]
  %69 = call ptr @memset(ptr %p.0, i32 0, i32 %padding.0)
  %70 = ptrtoint ptr %byte_count to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %byte_count, align 8
  %.tr = trunc i64 %71 to i32
  %conv6 = shl i32 %.tr, 3
  %arrayidx = getelementptr %struct.shash_desc, ptr %desc, i32 10
  %72 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %conv6, ptr %arrayidx, align 8
  %shr = lshr i64 %71, 29
  %conv9 = trunc i64 %shr to i32
  %arrayidx11 = getelementptr %struct.shash_desc, ptr %desc, i32 10, i32 1
  %73 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %conv9, ptr %arrayidx11, align 4
  %74 = ptrtoint ptr %block to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %block, align 4
  %76 = tail call i32 @llvm.bswap.i32(i32 %75) #6
  %77 = ptrtoint ptr %block to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %76, ptr %block, align 4
  %incdec.ptr.i = getelementptr %struct.shash_desc, ptr %desc, i32 3, i32 1
  %78 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %incdec.ptr.i, align 4
  %80 = tail call i32 @llvm.bswap.i32(i32 %79) #6
  %81 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %incdec.ptr.i, align 4
  %incdec.ptr.i.1 = getelementptr %struct.shash_desc, ptr %desc, i32 4
  %82 = ptrtoint ptr %incdec.ptr.i.1 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %incdec.ptr.i.1, align 4
  %84 = tail call i32 @llvm.bswap.i32(i32 %83) #6
  %85 = ptrtoint ptr %incdec.ptr.i.1 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %84, ptr %incdec.ptr.i.1, align 4
  %incdec.ptr.i.2 = getelementptr %struct.shash_desc, ptr %desc, i32 4, i32 1
  %86 = ptrtoint ptr %incdec.ptr.i.2 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %incdec.ptr.i.2, align 4
  %88 = tail call i32 @llvm.bswap.i32(i32 %87) #6
  %89 = ptrtoint ptr %incdec.ptr.i.2 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %88, ptr %incdec.ptr.i.2, align 4
  %incdec.ptr.i.3 = getelementptr %struct.shash_desc, ptr %desc, i32 5
  %90 = ptrtoint ptr %incdec.ptr.i.3 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %incdec.ptr.i.3, align 4
  %92 = tail call i32 @llvm.bswap.i32(i32 %91) #6
  %93 = ptrtoint ptr %incdec.ptr.i.3 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %92, ptr %incdec.ptr.i.3, align 4
  %incdec.ptr.i.4 = getelementptr %struct.shash_desc, ptr %desc, i32 5, i32 1
  %94 = ptrtoint ptr %incdec.ptr.i.4 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %incdec.ptr.i.4, align 4
  %96 = tail call i32 @llvm.bswap.i32(i32 %95) #6
  %97 = ptrtoint ptr %incdec.ptr.i.4 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %96, ptr %incdec.ptr.i.4, align 4
  %incdec.ptr.i.5 = getelementptr %struct.shash_desc, ptr %desc, i32 6
  %98 = ptrtoint ptr %incdec.ptr.i.5 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %incdec.ptr.i.5, align 4
  %100 = tail call i32 @llvm.bswap.i32(i32 %99) #6
  %101 = ptrtoint ptr %incdec.ptr.i.5 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %100, ptr %incdec.ptr.i.5, align 4
  %incdec.ptr.i.6 = getelementptr %struct.shash_desc, ptr %desc, i32 6, i32 1
  %102 = ptrtoint ptr %incdec.ptr.i.6 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %incdec.ptr.i.6, align 4
  %104 = tail call i32 @llvm.bswap.i32(i32 %103) #6
  %105 = ptrtoint ptr %incdec.ptr.i.6 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %104, ptr %incdec.ptr.i.6, align 4
  %incdec.ptr.i.7 = getelementptr %struct.shash_desc, ptr %desc, i32 7
  %106 = ptrtoint ptr %incdec.ptr.i.7 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %incdec.ptr.i.7, align 4
  %108 = tail call i32 @llvm.bswap.i32(i32 %107) #6
  %109 = ptrtoint ptr %incdec.ptr.i.7 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %108, ptr %incdec.ptr.i.7, align 4
  %incdec.ptr.i.8 = getelementptr %struct.shash_desc, ptr %desc, i32 7, i32 1
  %110 = ptrtoint ptr %incdec.ptr.i.8 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %incdec.ptr.i.8, align 4
  %112 = tail call i32 @llvm.bswap.i32(i32 %111) #6
  %113 = ptrtoint ptr %incdec.ptr.i.8 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %112, ptr %incdec.ptr.i.8, align 4
  %incdec.ptr.i.9 = getelementptr %struct.shash_desc, ptr %desc, i32 8
  %114 = ptrtoint ptr %incdec.ptr.i.9 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %incdec.ptr.i.9, align 4
  %116 = tail call i32 @llvm.bswap.i32(i32 %115) #6
  %117 = ptrtoint ptr %incdec.ptr.i.9 to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %116, ptr %incdec.ptr.i.9, align 4
  %incdec.ptr.i.10 = getelementptr %struct.shash_desc, ptr %desc, i32 8, i32 1
  %118 = ptrtoint ptr %incdec.ptr.i.10 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %incdec.ptr.i.10, align 4
  %120 = tail call i32 @llvm.bswap.i32(i32 %119) #6
  %121 = ptrtoint ptr %incdec.ptr.i.10 to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %120, ptr %incdec.ptr.i.10, align 4
  %incdec.ptr.i.11 = getelementptr %struct.shash_desc, ptr %desc, i32 9
  %122 = ptrtoint ptr %incdec.ptr.i.11 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %incdec.ptr.i.11, align 4
  %124 = tail call i32 @llvm.bswap.i32(i32 %123) #6
  %125 = ptrtoint ptr %incdec.ptr.i.11 to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %124, ptr %incdec.ptr.i.11, align 4
  %incdec.ptr.i.12 = getelementptr %struct.shash_desc, ptr %desc, i32 9, i32 1
  %126 = ptrtoint ptr %incdec.ptr.i.12 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %incdec.ptr.i.12, align 4
  %128 = tail call i32 @llvm.bswap.i32(i32 %127) #6
  %129 = ptrtoint ptr %incdec.ptr.i.12 to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %128, ptr %incdec.ptr.i.12, align 4
  tail call fastcc void @md4_transform(ptr noundef %__ctx.i, ptr noundef %block)
  %130 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %__ctx.i, align 4
  %132 = tail call i32 @llvm.bswap.i32(i32 %131) #6
  %133 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %132, ptr %__ctx.i, align 4
  %incdec.ptr.i39 = getelementptr %struct.shash_desc, ptr %desc, i32 1, i32 1
  %134 = ptrtoint ptr %incdec.ptr.i39 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %incdec.ptr.i39, align 4
  %136 = tail call i32 @llvm.bswap.i32(i32 %135) #6
  %137 = ptrtoint ptr %incdec.ptr.i39 to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %136, ptr %incdec.ptr.i39, align 4
  %incdec.ptr.1.i = getelementptr %struct.shash_desc, ptr %desc, i32 2
  %138 = ptrtoint ptr %incdec.ptr.1.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %incdec.ptr.1.i, align 4
  %140 = tail call i32 @llvm.bswap.i32(i32 %139) #6
  %141 = ptrtoint ptr %incdec.ptr.1.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %140, ptr %incdec.ptr.1.i, align 4
  %incdec.ptr.2.i = getelementptr %struct.shash_desc, ptr %desc, i32 2, i32 1
  %142 = ptrtoint ptr %incdec.ptr.2.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %incdec.ptr.2.i, align 4
  %144 = tail call i32 @llvm.bswap.i32(i32 %143) #6
  %145 = ptrtoint ptr %incdec.ptr.2.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 %144, ptr %incdec.ptr.2.i, align 4
  %146 = call ptr @memcpy(ptr %out, ptr %__ctx.i, i32 16)
  %147 = call ptr @memset(ptr %__ctx.i, i32 0, i32 88)
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @md4_transform(ptr nocapture noundef %hash, ptr nocapture noundef readonly %in) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hash to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hash, align 4
  %arrayidx1 = getelementptr i32, ptr %hash, i32 1
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx1, align 4
  %arrayidx2 = getelementptr i32, ptr %hash, i32 2
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx2, align 4
  %arrayidx3 = getelementptr i32, ptr %hash, i32 3
  %6 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx3, align 4
  %and.i = and i32 %5, %3
  %neg.i = xor i32 %3, -1
  %and1.i = and i32 %7, %neg.i
  %8 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %in, align 4
  %or.i = add i32 %and.i, %1
  %add = add i32 %or.i, %and1.i
  %add5 = add i32 %add, %9
  %or.i528 = tail call i32 @llvm.fshl.i32(i32 %add5, i32 %add5, i32 3)
  %and.i529 = and i32 %or.i528, %3
  %neg.i530 = xor i32 %or.i528, -1
  %and1.i531 = and i32 %5, %neg.i530
  %arrayidx9 = getelementptr i32, ptr %in, i32 1
  %10 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx9, align 4
  %or.i532 = add i32 %11, %7
  %add8 = add i32 %or.i532, %and.i529
  %add10 = add i32 %add8, %and1.i531
  %or.i535 = tail call i32 @llvm.fshl.i32(i32 %add10, i32 %add10, i32 7)
  %and.i536 = and i32 %or.i535, %or.i528
  %neg.i537 = xor i32 %or.i535, -1
  %and1.i538 = and i32 %3, %neg.i537
  %arrayidx14 = getelementptr i32, ptr %in, i32 2
  %12 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx14, align 4
  %or.i539 = add i32 %13, %5
  %add13 = add i32 %or.i539, %and.i536
  %add15 = add i32 %add13, %and1.i538
  %or.i542 = tail call i32 @llvm.fshl.i32(i32 %add15, i32 %add15, i32 11)
  %and.i543 = and i32 %or.i542, %or.i535
  %neg.i544 = xor i32 %or.i542, -1
  %and1.i545 = and i32 %or.i528, %neg.i544
  %arrayidx19 = getelementptr i32, ptr %in, i32 3
  %14 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx19, align 4
  %or.i546 = add i32 %15, %3
  %add18 = add i32 %or.i546, %and.i543
  %add20 = add i32 %add18, %and1.i545
  %or.i549 = tail call i32 @llvm.fshl.i32(i32 %add20, i32 %add20, i32 19)
  %and.i550 = and i32 %or.i549, %or.i542
  %neg.i551 = xor i32 %or.i549, -1
  %and1.i552 = and i32 %or.i535, %neg.i551
  %arrayidx24 = getelementptr i32, ptr %in, i32 4
  %16 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx24, align 4
  %or.i553 = add i32 %17, %or.i528
  %add23 = add i32 %or.i553, %and.i550
  %add25 = add i32 %add23, %and1.i552
  %or.i556 = tail call i32 @llvm.fshl.i32(i32 %add25, i32 %add25, i32 3)
  %and.i557 = and i32 %or.i556, %or.i549
  %neg.i558 = xor i32 %or.i556, -1
  %and1.i559 = and i32 %or.i542, %neg.i558
  %arrayidx29 = getelementptr i32, ptr %in, i32 5
  %18 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx29, align 4
  %or.i560 = add i32 %or.i535, %19
  %add28 = add i32 %or.i560, %and.i557
  %add30 = add i32 %add28, %and1.i559
  %or.i563 = tail call i32 @llvm.fshl.i32(i32 %add30, i32 %add30, i32 7)
  %and.i564 = and i32 %or.i563, %or.i556
  %neg.i565 = xor i32 %or.i563, -1
  %and1.i566 = and i32 %or.i549, %neg.i565
  %arrayidx34 = getelementptr i32, ptr %in, i32 6
  %20 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx34, align 4
  %or.i567 = add i32 %or.i542, %21
  %add33 = add i32 %or.i567, %and.i564
  %add35 = add i32 %add33, %and1.i566
  %or.i570 = tail call i32 @llvm.fshl.i32(i32 %add35, i32 %add35, i32 11)
  %and.i571 = and i32 %or.i570, %or.i563
  %neg.i572 = xor i32 %or.i570, -1
  %and1.i573 = and i32 %or.i556, %neg.i572
  %arrayidx39 = getelementptr i32, ptr %in, i32 7
  %22 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx39, align 4
  %or.i574 = add i32 %or.i549, %23
  %add38 = add i32 %or.i574, %and.i571
  %add40 = add i32 %add38, %and1.i573
  %or.i577 = tail call i32 @llvm.fshl.i32(i32 %add40, i32 %add40, i32 19)
  %and.i578 = and i32 %or.i577, %or.i570
  %neg.i579 = xor i32 %or.i577, -1
  %and1.i580 = and i32 %or.i563, %neg.i579
  %arrayidx44 = getelementptr i32, ptr %in, i32 8
  %24 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx44, align 4
  %or.i581 = add i32 %or.i556, %25
  %add43 = add i32 %or.i581, %and.i578
  %add45 = add i32 %add43, %and1.i580
  %or.i584 = tail call i32 @llvm.fshl.i32(i32 %add45, i32 %add45, i32 3)
  %and.i585 = and i32 %or.i584, %or.i577
  %neg.i586 = xor i32 %or.i584, -1
  %and1.i587 = and i32 %or.i570, %neg.i586
  %arrayidx49 = getelementptr i32, ptr %in, i32 9
  %26 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx49, align 4
  %or.i588 = add i32 %or.i563, %27
  %add48 = add i32 %or.i588, %and.i585
  %add50 = add i32 %add48, %and1.i587
  %or.i591 = tail call i32 @llvm.fshl.i32(i32 %add50, i32 %add50, i32 7)
  %and.i592 = and i32 %or.i591, %or.i584
  %neg.i593 = xor i32 %or.i591, -1
  %and1.i594 = and i32 %or.i577, %neg.i593
  %arrayidx54 = getelementptr i32, ptr %in, i32 10
  %28 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx54, align 4
  %or.i595 = add i32 %or.i570, %29
  %add53 = add i32 %or.i595, %and.i592
  %add55 = add i32 %add53, %and1.i594
  %or.i598 = tail call i32 @llvm.fshl.i32(i32 %add55, i32 %add55, i32 11)
  %and.i599 = and i32 %or.i598, %or.i591
  %neg.i600 = xor i32 %or.i598, -1
  %and1.i601 = and i32 %or.i584, %neg.i600
  %arrayidx59 = getelementptr i32, ptr %in, i32 11
  %30 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx59, align 4
  %or.i602 = add i32 %or.i577, %31
  %add58 = add i32 %or.i602, %and.i599
  %add60 = add i32 %add58, %and1.i601
  %or.i605 = tail call i32 @llvm.fshl.i32(i32 %add60, i32 %add60, i32 19)
  %and.i606 = and i32 %or.i605, %or.i598
  %neg.i607 = xor i32 %or.i605, -1
  %and1.i608 = and i32 %or.i591, %neg.i607
  %arrayidx64 = getelementptr i32, ptr %in, i32 12
  %32 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx64, align 4
  %or.i609 = add i32 %or.i584, %33
  %add63 = add i32 %or.i609, %and.i606
  %add65 = add i32 %add63, %and1.i608
  %or.i612 = tail call i32 @llvm.fshl.i32(i32 %add65, i32 %add65, i32 3)
  %and.i613 = and i32 %or.i612, %or.i605
  %neg.i614 = xor i32 %or.i612, -1
  %and1.i615 = and i32 %or.i598, %neg.i614
  %arrayidx69 = getelementptr i32, ptr %in, i32 13
  %34 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx69, align 4
  %or.i616 = add i32 %or.i591, %35
  %add68 = add i32 %or.i616, %and.i613
  %add70 = add i32 %add68, %and1.i615
  %or.i619 = tail call i32 @llvm.fshl.i32(i32 %add70, i32 %add70, i32 7)
  %and.i620 = and i32 %or.i619, %or.i612
  %neg.i621 = xor i32 %or.i619, -1
  %and1.i622 = and i32 %or.i605, %neg.i621
  %arrayidx74 = getelementptr i32, ptr %in, i32 14
  %36 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx74, align 4
  %or.i623 = add i32 %or.i598, %37
  %add73 = add i32 %or.i623, %and.i620
  %add75 = add i32 %add73, %and1.i622
  %or.i626 = tail call i32 @llvm.fshl.i32(i32 %add75, i32 %add75, i32 11)
  %and.i627 = and i32 %or.i626, %or.i619
  %neg.i628 = xor i32 %or.i626, -1
  %and1.i629 = and i32 %or.i612, %neg.i628
  %arrayidx79 = getelementptr i32, ptr %in, i32 15
  %38 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx79, align 4
  %or.i630 = add i32 %or.i605, %39
  %add78 = add i32 %or.i630, %and.i627
  %add80 = add i32 %add78, %and1.i629
  %or.i633 = tail call i32 @llvm.fshl.i32(i32 %add80, i32 %add80, i32 19)
  %and17.i = or i32 %or.i626, %or.i619
  %or.i634 = and i32 %or.i633, %and17.i
  %or3.i = or i32 %or.i634, %and.i627
  %add83 = add i32 %9, 1518500249
  %add85 = add i32 %add83, %or.i612
  %add86 = add i32 %add85, %or3.i
  %or.i637 = tail call i32 @llvm.fshl.i32(i32 %add86, i32 %add86, i32 3)
  %and17.i638 = or i32 %or.i633, %or.i626
  %or.i639 = and i32 %or.i637, %and17.i638
  %and2.i640 = and i32 %or.i633, %or.i626
  %or3.i641 = or i32 %or.i639, %and2.i640
  %add89 = add i32 %17, 1518500249
  %add91 = add i32 %add89, %or.i619
  %add92 = add i32 %add91, %or3.i641
  %or.i644 = tail call i32 @llvm.fshl.i32(i32 %add92, i32 %add92, i32 5)
  %and17.i645 = or i32 %or.i637, %or.i633
  %or.i646 = and i32 %or.i644, %and17.i645
  %and2.i647 = and i32 %or.i637, %or.i633
  %or3.i648 = or i32 %or.i646, %and2.i647
  %add95 = add i32 %25, 1518500249
  %add97 = add i32 %add95, %or.i626
  %add98 = add i32 %add97, %or3.i648
  %or.i651 = tail call i32 @llvm.fshl.i32(i32 %add98, i32 %add98, i32 9)
  %and17.i652 = or i32 %or.i644, %or.i637
  %or.i653 = and i32 %or.i651, %and17.i652
  %and2.i654 = and i32 %or.i644, %or.i637
  %or3.i655 = or i32 %or.i653, %and2.i654
  %add101 = add i32 %33, 1518500249
  %add103 = add i32 %add101, %or.i633
  %add104 = add i32 %add103, %or3.i655
  %or.i658 = tail call i32 @llvm.fshl.i32(i32 %add104, i32 %add104, i32 13)
  %and17.i659 = or i32 %or.i651, %or.i644
  %or.i660 = and i32 %or.i658, %and17.i659
  %and2.i661 = and i32 %or.i651, %or.i644
  %or3.i662 = or i32 %or.i660, %and2.i661
  %add107 = add i32 %11, 1518500249
  %add109 = add i32 %add107, %or.i637
  %add110 = add i32 %add109, %or3.i662
  %or.i665 = tail call i32 @llvm.fshl.i32(i32 %add110, i32 %add110, i32 3)
  %and17.i666 = or i32 %or.i658, %or.i651
  %or.i667 = and i32 %or.i665, %and17.i666
  %and2.i668 = and i32 %or.i658, %or.i651
  %or3.i669 = or i32 %or.i667, %and2.i668
  %add113 = add i32 %19, 1518500249
  %add115 = add i32 %add113, %or.i644
  %add116 = add i32 %add115, %or3.i669
  %or.i672 = tail call i32 @llvm.fshl.i32(i32 %add116, i32 %add116, i32 5)
  %and17.i673 = or i32 %or.i665, %or.i658
  %or.i674 = and i32 %or.i672, %and17.i673
  %and2.i675 = and i32 %or.i665, %or.i658
  %or3.i676 = or i32 %or.i674, %and2.i675
  %add119 = add i32 %27, 1518500249
  %add121 = add i32 %add119, %or.i651
  %add122 = add i32 %add121, %or3.i676
  %or.i679 = tail call i32 @llvm.fshl.i32(i32 %add122, i32 %add122, i32 9)
  %and17.i680 = or i32 %or.i672, %or.i665
  %or.i681 = and i32 %or.i679, %and17.i680
  %and2.i682 = and i32 %or.i672, %or.i665
  %or3.i683 = or i32 %or.i681, %and2.i682
  %add125 = add i32 %35, 1518500249
  %add127 = add i32 %add125, %or.i658
  %add128 = add i32 %add127, %or3.i683
  %or.i686 = tail call i32 @llvm.fshl.i32(i32 %add128, i32 %add128, i32 13)
  %and17.i687 = or i32 %or.i679, %or.i672
  %or.i688 = and i32 %or.i686, %and17.i687
  %and2.i689 = and i32 %or.i679, %or.i672
  %or3.i690 = or i32 %or.i688, %and2.i689
  %add131 = add i32 %13, 1518500249
  %add133 = add i32 %add131, %or.i665
  %add134 = add i32 %add133, %or3.i690
  %or.i693 = tail call i32 @llvm.fshl.i32(i32 %add134, i32 %add134, i32 3)
  %and17.i694 = or i32 %or.i686, %or.i679
  %or.i695 = and i32 %or.i693, %and17.i694
  %and2.i696 = and i32 %or.i686, %or.i679
  %or3.i697 = or i32 %or.i695, %and2.i696
  %add137 = add i32 %21, 1518500249
  %add139 = add i32 %add137, %or.i672
  %add140 = add i32 %add139, %or3.i697
  %or.i700 = tail call i32 @llvm.fshl.i32(i32 %add140, i32 %add140, i32 5)
  %and17.i701 = or i32 %or.i693, %or.i686
  %or.i702 = and i32 %or.i700, %and17.i701
  %and2.i703 = and i32 %or.i693, %or.i686
  %or3.i704 = or i32 %or.i702, %and2.i703
  %add143 = add i32 %29, 1518500249
  %add145 = add i32 %add143, %or.i679
  %add146 = add i32 %add145, %or3.i704
  %or.i707 = tail call i32 @llvm.fshl.i32(i32 %add146, i32 %add146, i32 9)
  %and17.i708 = or i32 %or.i700, %or.i693
  %or.i709 = and i32 %or.i707, %and17.i708
  %and2.i710 = and i32 %or.i700, %or.i693
  %or3.i711 = or i32 %or.i709, %and2.i710
  %add149 = add i32 %37, 1518500249
  %add151 = add i32 %add149, %or.i686
  %add152 = add i32 %add151, %or3.i711
  %or.i714 = tail call i32 @llvm.fshl.i32(i32 %add152, i32 %add152, i32 13)
  %and17.i715 = or i32 %or.i707, %or.i700
  %or.i716 = and i32 %or.i714, %and17.i715
  %and2.i717 = and i32 %or.i707, %or.i700
  %or3.i718 = or i32 %or.i716, %and2.i717
  %add155 = add i32 %15, 1518500249
  %add157 = add i32 %add155, %or.i693
  %add158 = add i32 %add157, %or3.i718
  %or.i721 = tail call i32 @llvm.fshl.i32(i32 %add158, i32 %add158, i32 3)
  %and17.i722 = or i32 %or.i714, %or.i707
  %or.i723 = and i32 %or.i721, %and17.i722
  %and2.i724 = and i32 %or.i714, %or.i707
  %or3.i725 = or i32 %or.i723, %and2.i724
  %add161 = add i32 %23, 1518500249
  %add163 = add i32 %add161, %or.i700
  %add164 = add i32 %add163, %or3.i725
  %or.i728 = tail call i32 @llvm.fshl.i32(i32 %add164, i32 %add164, i32 5)
  %and17.i729 = or i32 %or.i721, %or.i714
  %or.i730 = and i32 %or.i728, %and17.i729
  %and2.i731 = and i32 %or.i721, %or.i714
  %or3.i732 = or i32 %or.i730, %and2.i731
  %add167 = add i32 %31, 1518500249
  %add169 = add i32 %add167, %or.i707
  %add170 = add i32 %add169, %or3.i732
  %or.i735 = tail call i32 @llvm.fshl.i32(i32 %add170, i32 %add170, i32 9)
  %and17.i736 = or i32 %or.i728, %or.i721
  %or.i737 = and i32 %or.i735, %and17.i736
  %and2.i738 = and i32 %or.i728, %or.i721
  %or3.i739 = or i32 %or.i737, %and2.i738
  %add173 = add i32 %39, 1518500249
  %add175 = add i32 %add173, %or.i714
  %add176 = add i32 %add175, %or3.i739
  %or.i742 = tail call i32 @llvm.fshl.i32(i32 %add176, i32 %add176, i32 13)
  %xor.i = xor i32 %or.i742, %or.i735
  %xor1.i = xor i32 %xor.i, %or.i728
  %add179 = add i32 %9, 1859775393
  %add181 = add i32 %add179, %or.i721
  %add182 = add i32 %add181, %xor1.i
  %or.i745 = tail call i32 @llvm.fshl.i32(i32 %add182, i32 %add182, i32 3)
  %xor1.i747 = xor i32 %xor.i, %or.i745
  %add185 = add i32 %25, 1859775393
  %add187 = add i32 %add185, %or.i728
  %add188 = add i32 %add187, %xor1.i747
  %or.i750 = tail call i32 @llvm.fshl.i32(i32 %add188, i32 %add188, i32 9)
  %xor.i751 = xor i32 %or.i745, %or.i742
  %xor1.i752 = xor i32 %xor.i751, %or.i750
  %add191 = add i32 %17, 1859775393
  %add193 = add i32 %add191, %or.i735
  %add194 = add i32 %add193, %xor1.i752
  %or.i755 = tail call i32 @llvm.fshl.i32(i32 %add194, i32 %add194, i32 11)
  %xor.i756 = xor i32 %or.i750, %or.i745
  %xor1.i757 = xor i32 %xor.i756, %or.i755
  %add197 = add i32 %33, 1859775393
  %add199 = add i32 %add197, %or.i742
  %add200 = add i32 %add199, %xor1.i757
  %or.i760 = tail call i32 @llvm.fshl.i32(i32 %add200, i32 %add200, i32 15)
  %xor.i761 = xor i32 %or.i755, %or.i750
  %xor1.i762 = xor i32 %xor.i761, %or.i760
  %add203 = add i32 %13, 1859775393
  %add205 = add i32 %add203, %or.i745
  %add206 = add i32 %add205, %xor1.i762
  %or.i765 = tail call i32 @llvm.fshl.i32(i32 %add206, i32 %add206, i32 3)
  %xor.i766 = xor i32 %or.i760, %or.i755
  %xor1.i767 = xor i32 %xor.i766, %or.i765
  %add209 = add i32 %29, 1859775393
  %add211 = add i32 %add209, %or.i750
  %add212 = add i32 %add211, %xor1.i767
  %or.i770 = tail call i32 @llvm.fshl.i32(i32 %add212, i32 %add212, i32 9)
  %xor.i771 = xor i32 %or.i765, %or.i760
  %xor1.i772 = xor i32 %xor.i771, %or.i770
  %add215 = add i32 %21, 1859775393
  %add217 = add i32 %add215, %or.i755
  %add218 = add i32 %add217, %xor1.i772
  %or.i775 = tail call i32 @llvm.fshl.i32(i32 %add218, i32 %add218, i32 11)
  %xor.i776 = xor i32 %or.i770, %or.i765
  %xor1.i777 = xor i32 %xor.i776, %or.i775
  %add221 = add i32 %37, 1859775393
  %add223 = add i32 %add221, %or.i760
  %add224 = add i32 %add223, %xor1.i777
  %or.i780 = tail call i32 @llvm.fshl.i32(i32 %add224, i32 %add224, i32 15)
  %xor.i781 = xor i32 %or.i775, %or.i770
  %xor1.i782 = xor i32 %xor.i781, %or.i780
  %add227 = add i32 %11, 1859775393
  %add229 = add i32 %add227, %or.i765
  %add230 = add i32 %add229, %xor1.i782
  %or.i785 = tail call i32 @llvm.fshl.i32(i32 %add230, i32 %add230, i32 3)
  %xor.i786 = xor i32 %or.i780, %or.i775
  %xor1.i787 = xor i32 %xor.i786, %or.i785
  %add233 = add i32 %27, 1859775393
  %add235 = add i32 %add233, %or.i770
  %add236 = add i32 %add235, %xor1.i787
  %or.i790 = tail call i32 @llvm.fshl.i32(i32 %add236, i32 %add236, i32 9)
  %xor.i791 = xor i32 %or.i785, %or.i780
  %xor1.i792 = xor i32 %xor.i791, %or.i790
  %add239 = add i32 %19, 1859775393
  %add241 = add i32 %add239, %or.i775
  %add242 = add i32 %add241, %xor1.i792
  %or.i795 = tail call i32 @llvm.fshl.i32(i32 %add242, i32 %add242, i32 11)
  %xor.i796 = xor i32 %or.i790, %or.i785
  %xor1.i797 = xor i32 %xor.i796, %or.i795
  %add245 = add i32 %35, 1859775393
  %add247 = add i32 %add245, %or.i780
  %add248 = add i32 %add247, %xor1.i797
  %or.i800 = tail call i32 @llvm.fshl.i32(i32 %add248, i32 %add248, i32 15)
  %xor.i801 = xor i32 %or.i795, %or.i790
  %xor1.i802 = xor i32 %xor.i801, %or.i800
  %add251 = add i32 %15, 1859775393
  %add253 = add i32 %add251, %or.i785
  %add254 = add i32 %add253, %xor1.i802
  %or.i805 = tail call i32 @llvm.fshl.i32(i32 %add254, i32 %add254, i32 3)
  %xor.i806 = xor i32 %or.i800, %or.i795
  %xor1.i807 = xor i32 %xor.i806, %or.i805
  %add257 = add i32 %31, 1859775393
  %add259 = add i32 %add257, %or.i790
  %add260 = add i32 %add259, %xor1.i807
  %or.i810 = tail call i32 @llvm.fshl.i32(i32 %add260, i32 %add260, i32 9)
  %xor.i811 = xor i32 %or.i805, %or.i800
  %xor1.i812 = xor i32 %xor.i811, %or.i810
  %add263 = add i32 %23, 1859775393
  %add265 = add i32 %add263, %or.i795
  %add266 = add i32 %add265, %xor1.i812
  %or.i815 = tail call i32 @llvm.fshl.i32(i32 %add266, i32 %add266, i32 11)
  %xor.i816 = xor i32 %or.i810, %or.i805
  %xor1.i817 = xor i32 %xor.i816, %or.i815
  %add269 = add i32 %39, 1859775393
  %add271 = add i32 %add269, %or.i800
  %add272 = add i32 %add271, %xor1.i817
  %or.i820 = tail call i32 @llvm.fshl.i32(i32 %add272, i32 %add272, i32 15)
  %add275 = add i32 %or.i805, %1
  %40 = ptrtoint ptr %hash to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %add275, ptr %hash, align 4
  %add277 = add i32 %or.i820, %3
  %41 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %add277, ptr %arrayidx1, align 4
  %add279 = add i32 %or.i815, %5
  %42 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %add279, ptr %arrayidx2, align 4
  %add281 = add i32 %or.i810, %7
  %43 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %add281, ptr %arrayidx3, align 4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_shash(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !12}
!llvm.module.flags = !{!14, !15, !16, !17, !18, !19, !20, !21}
!llvm.ident = !{!22}

!0 = !{ptr @__initcall__kmod_md4__173_236_md4_mod_init4, !1, !"__initcall__kmod_md4__173_236_md4_mod_init4", i1 false, i1 false}
!1 = !{!"../crypto/md4.c", i32 236, i32 1}
!2 = !{ptr @__exitcall_md4_mod_fini, !3, !"__exitcall_md4_mod_fini", i1 false, i1 false}
!3 = !{!"../crypto/md4.c", i32 237, i32 1}
!4 = !{ptr @__UNIQUE_ID_file174, !5, !"__UNIQUE_ID_file174", i1 false, i1 false}
!5 = !{!"../crypto/md4.c", i32 239, i32 1}
!6 = !{ptr @__UNIQUE_ID_license175, !5, !"__UNIQUE_ID_license175", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_description176, !8, !"__UNIQUE_ID_description176", i1 false, i1 false}
!8 = !{!"../crypto/md4.c", i32 240, i32 1}
!9 = !{ptr @__UNIQUE_ID_alias_userspace177, !10, !"__UNIQUE_ID_alias_userspace177", i1 false, i1 false}
!10 = !{!"../crypto/md4.c", i32 241, i32 1}
!11 = !{ptr @__UNIQUE_ID_alias_crypto178, !10, !"__UNIQUE_ID_alias_crypto178", i1 false, i1 false}
!12 = !{ptr @alg, !13, !"alg", i1 false, i1 false}
!13 = !{!"../crypto/md4.c", i32 212, i32 25}
!14 = !{i32 1, !"wchar_size", i32 2}
!15 = !{i32 1, !"min_enum_size", i32 4}
!16 = !{i32 8, !"branch-target-enforcement", i32 0}
!17 = !{i32 8, !"sign-return-address", i32 0}
!18 = !{i32 8, !"sign-return-address-all", i32 0}
!19 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!20 = !{i32 7, !"uwtable", i32 1}
!21 = !{i32 7, !"frame-pointer", i32 2}
!22 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
