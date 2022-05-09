; ModuleID = '/llk/IR_all_yes/crypto/md5.c_pt.bc'
source_filename = "../crypto/md5.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+md5_zero_message_hash\22, \22a\22\09"
module asm "\09.weak\09__crc_md5_zero_message_hash\09\09\09\09"
module asm "\09.long\09__crc_md5_zero_message_hash\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_md5_zero_message_hash:\09\09\09\09\09"
module asm "\09.asciz \09\22md5_zero_message_hash\22\09\09\09\09\09"
module asm "__kstrtabns_md5_zero_message_hash:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
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

@md5_zero_message_hash = dso_local constant { [16 x i8], [16 x i8] } { [16 x i8] c"\D4\1D\8C\D9\8F\00\B2\04\E9\80\09\98\EC\F8B~", [16 x i8] zeroinitializer }, align 32
@__kstrtab_md5_zero_message_hash = external dso_local constant [0 x i8], align 1
@__kstrtabns_md5_zero_message_hash = external dso_local constant [0 x i8], align 1
@__ksymtab_md5_zero_message_hash = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @md5_zero_message_hash to i32), ptr @__kstrtab_md5_zero_message_hash, ptr @__kstrtabns_md5_zero_message_hash }, section "___ksymtab_gpl+md5_zero_message_hash", align 4
@alg = internal global %struct.shash_alg { ptr @md5_init, ptr @md5_update, ptr @md5_final, ptr null, ptr null, ptr @md5_export, ptr @md5_import, ptr null, ptr null, ptr null, i32 88, [84 x i8] undef, i32 16, i32 88, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 64, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"md5\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"md5-generic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.44 zeroinitializer, [120 x i8] undef } }, align 128
@__initcall__kmod_md5__173_245_md5_mod_init4 = internal global ptr @md5_mod_init, section ".initcall4.init", align 4
@__exitcall_md5_mod_fini = internal global ptr @md5_mod_fini, section ".exitcall.exit", align 4
@__UNIQUE_ID_file174 = internal constant [20 x i8] c"md5.file=crypto/md5\00", section ".modinfo", align 1
@__UNIQUE_ID_license175 = internal constant [16 x i8] c"md5.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description176 = internal constant [45 x i8] c"md5.description=MD5 Message Digest Algorithm\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace177 = internal constant [14 x i8] c"md5.alias=md5\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto178 = internal constant [21 x i8] c"md5.alias=crypto-md5\00", section ".modinfo", align 1
@___asan_gen_.1 = private unnamed_addr constant [22 x i8] c"md5_zero_message_hash\00", align 1
@___asan_gen_.2 = private constant [16 x i8] c"../crypto/md5.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 26, i32 10 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @__UNIQUE_ID_alias_crypto178, ptr @__UNIQUE_ID_alias_userspace177, ptr @__UNIQUE_ID_description176, ptr @__UNIQUE_ID_file174, ptr @__UNIQUE_ID_license175, ptr @__exitcall_md5_mod_fini, ptr @__initcall__kmod_md5__173_245_md5_mod_init4, ptr @__ksymtab_md5_zero_message_hash, ptr @md5_mod_fini, ptr @md5_zero_message_hash], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @md5_zero_message_hash to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @md5_mod_fini() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @crypto_unregister_shash(ptr noundef nonnull @alg) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_shash(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @md5_mod_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @crypto_register_shash(ptr noundef nonnull @alg) #6
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @md5_init(ptr nocapture noundef writeonly %desc) #2 align 64 {
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
define internal i32 @md5_update(ptr noundef %desc, ptr nocapture noundef readonly %data, i32 noundef %len) #3 align 64 {
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
  tail call fastcc void @md5_transform(ptr noundef %__ctx.i, ptr noundef %block) #6
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
  tail call fastcc void @md5_transform(ptr noundef %__ctx.i, ptr noundef %block) #6
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
define internal i32 @md5_final(ptr noundef %desc, ptr nocapture noundef writeonly %out) #3 align 64 {
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
  tail call fastcc void @md5_transform(ptr noundef %__ctx.i, ptr noundef %block) #6
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
  tail call fastcc void @md5_transform(ptr noundef %__ctx.i, ptr noundef %block)
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

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @md5_export(ptr nocapture noundef readonly %desc, ptr nocapture noundef writeonly %out) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 0, i32 2
  %0 = call ptr @memcpy(ptr %out, ptr %__ctx.i, i32 88)
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @md5_import(ptr nocapture noundef writeonly %desc, ptr nocapture noundef readonly %in) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 0, i32 2
  %0 = call ptr @memcpy(ptr %__ctx.i, ptr %in, i32 88)
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @md5_transform(ptr nocapture noundef %hash, ptr nocapture noundef readonly %in) unnamed_addr #4 align 64 {
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
  %xor = xor i32 %7, %5
  %and = and i32 %xor, %3
  %xor4 = xor i32 %and, %7
  %8 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %in, align 4
  %add = add i32 %1, -680876936
  %add6 = add i32 %add, %9
  %add7 = add i32 %add6, %xor4
  %or = tail call i32 @llvm.fshl.i32(i32 %add7, i32 %add7, i32 7)
  %add8 = add i32 %or, %3
  %xor9 = xor i32 %5, %3
  %and10 = and i32 %add8, %xor9
  %xor11 = xor i32 %and10, %5
  %arrayidx12 = getelementptr i32, ptr %in, i32 1
  %10 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx12, align 4
  %add13 = add i32 %7, -389564586
  %add14 = add i32 %add13, %11
  %add15 = add i32 %add14, %xor11
  %or18 = tail call i32 @llvm.fshl.i32(i32 %add15, i32 %add15, i32 12)
  %add19 = add i32 %or18, %add8
  %xor20 = xor i32 %add8, %3
  %and21 = and i32 %add19, %xor20
  %xor22 = xor i32 %and21, %3
  %arrayidx23 = getelementptr i32, ptr %in, i32 2
  %12 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx23, align 4
  %add24 = add i32 %5, 606105819
  %add25 = add i32 %add24, %13
  %add26 = add i32 %add25, %xor22
  %or29 = tail call i32 @llvm.fshl.i32(i32 %add26, i32 %add26, i32 17)
  %add30 = add i32 %or29, %add19
  %xor31 = xor i32 %add19, %add8
  %and32 = and i32 %add30, %xor31
  %xor33 = xor i32 %and32, %add8
  %arrayidx34 = getelementptr i32, ptr %in, i32 3
  %14 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx34, align 4
  %add35 = add i32 %3, -1044525330
  %add36 = add i32 %add35, %15
  %add37 = add i32 %add36, %xor33
  %or40 = tail call i32 @llvm.fshl.i32(i32 %add37, i32 %add37, i32 22)
  %add41 = add i32 %or40, %add30
  %xor42 = xor i32 %add30, %add19
  %and43 = and i32 %add41, %xor42
  %xor44 = xor i32 %and43, %add19
  %arrayidx45 = getelementptr i32, ptr %in, i32 4
  %16 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx45, align 4
  %add46 = add i32 %17, -176418897
  %add47 = add i32 %add46, %add8
  %add48 = add i32 %add47, %xor44
  %or51 = tail call i32 @llvm.fshl.i32(i32 %add48, i32 %add48, i32 7)
  %add52 = add i32 %or51, %add41
  %xor53 = xor i32 %add41, %add30
  %and54 = and i32 %add52, %xor53
  %xor55 = xor i32 %and54, %add30
  %arrayidx56 = getelementptr i32, ptr %in, i32 5
  %18 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx56, align 4
  %add57 = add i32 %19, 1200080426
  %add58 = add i32 %add57, %add19
  %add59 = add i32 %add58, %xor55
  %or62 = tail call i32 @llvm.fshl.i32(i32 %add59, i32 %add59, i32 12)
  %add63 = add i32 %or62, %add52
  %xor64 = xor i32 %add52, %add41
  %and65 = and i32 %add63, %xor64
  %xor66 = xor i32 %and65, %add41
  %arrayidx67 = getelementptr i32, ptr %in, i32 6
  %20 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx67, align 4
  %add68 = add i32 %21, -1473231341
  %add69 = add i32 %add68, %add30
  %add70 = add i32 %add69, %xor66
  %or73 = tail call i32 @llvm.fshl.i32(i32 %add70, i32 %add70, i32 17)
  %add74 = add i32 %or73, %add63
  %xor75 = xor i32 %add63, %add52
  %and76 = and i32 %add74, %xor75
  %xor77 = xor i32 %and76, %add52
  %arrayidx78 = getelementptr i32, ptr %in, i32 7
  %22 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx78, align 4
  %add79 = add i32 %23, -45705983
  %add80 = add i32 %add79, %add41
  %add81 = add i32 %add80, %xor77
  %or84 = tail call i32 @llvm.fshl.i32(i32 %add81, i32 %add81, i32 22)
  %add85 = add i32 %or84, %add74
  %xor86 = xor i32 %add74, %add63
  %and87 = and i32 %add85, %xor86
  %xor88 = xor i32 %and87, %add63
  %arrayidx89 = getelementptr i32, ptr %in, i32 8
  %24 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx89, align 4
  %add90 = add i32 %25, 1770035416
  %add91 = add i32 %add90, %add52
  %add92 = add i32 %add91, %xor88
  %or95 = tail call i32 @llvm.fshl.i32(i32 %add92, i32 %add92, i32 7)
  %add96 = add i32 %or95, %add85
  %xor97 = xor i32 %add85, %add74
  %and98 = and i32 %add96, %xor97
  %xor99 = xor i32 %and98, %add74
  %arrayidx100 = getelementptr i32, ptr %in, i32 9
  %26 = ptrtoint ptr %arrayidx100 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx100, align 4
  %add101 = add i32 %27, -1958414417
  %add102 = add i32 %add101, %add63
  %add103 = add i32 %add102, %xor99
  %or106 = tail call i32 @llvm.fshl.i32(i32 %add103, i32 %add103, i32 12)
  %add107 = add i32 %or106, %add96
  %xor108 = xor i32 %add96, %add85
  %and109 = and i32 %add107, %xor108
  %xor110 = xor i32 %and109, %add85
  %arrayidx111 = getelementptr i32, ptr %in, i32 10
  %28 = ptrtoint ptr %arrayidx111 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx111, align 4
  %add112 = add i32 %29, -42063
  %add113 = add i32 %add112, %add74
  %add114 = add i32 %add113, %xor110
  %or117 = tail call i32 @llvm.fshl.i32(i32 %add114, i32 %add114, i32 17)
  %add118 = add i32 %or117, %add107
  %xor119 = xor i32 %add107, %add96
  %and120 = and i32 %add118, %xor119
  %xor121 = xor i32 %and120, %add96
  %arrayidx122 = getelementptr i32, ptr %in, i32 11
  %30 = ptrtoint ptr %arrayidx122 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx122, align 4
  %add123 = add i32 %31, -1990404162
  %add124 = add i32 %add123, %add85
  %add125 = add i32 %add124, %xor121
  %or128 = tail call i32 @llvm.fshl.i32(i32 %add125, i32 %add125, i32 22)
  %add129 = add i32 %or128, %add118
  %xor130 = xor i32 %add118, %add107
  %and131 = and i32 %add129, %xor130
  %xor132 = xor i32 %and131, %add107
  %arrayidx133 = getelementptr i32, ptr %in, i32 12
  %32 = ptrtoint ptr %arrayidx133 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx133, align 4
  %add134 = add i32 %33, 1804603682
  %add135 = add i32 %add134, %add96
  %add136 = add i32 %add135, %xor132
  %or139 = tail call i32 @llvm.fshl.i32(i32 %add136, i32 %add136, i32 7)
  %add140 = add i32 %or139, %add129
  %xor141 = xor i32 %add129, %add118
  %and142 = and i32 %add140, %xor141
  %xor143 = xor i32 %and142, %add118
  %arrayidx144 = getelementptr i32, ptr %in, i32 13
  %34 = ptrtoint ptr %arrayidx144 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx144, align 4
  %add145 = add i32 %35, -40341101
  %add146 = add i32 %add145, %add107
  %add147 = add i32 %add146, %xor143
  %or150 = tail call i32 @llvm.fshl.i32(i32 %add147, i32 %add147, i32 12)
  %add151 = add i32 %or150, %add140
  %xor152 = xor i32 %add140, %add129
  %and153 = and i32 %add151, %xor152
  %xor154 = xor i32 %and153, %add129
  %arrayidx155 = getelementptr i32, ptr %in, i32 14
  %36 = ptrtoint ptr %arrayidx155 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx155, align 4
  %add156 = add i32 %37, -1502002290
  %add157 = add i32 %add156, %add118
  %add158 = add i32 %add157, %xor154
  %or161 = tail call i32 @llvm.fshl.i32(i32 %add158, i32 %add158, i32 17)
  %add162 = add i32 %or161, %add151
  %xor163 = xor i32 %add151, %add140
  %and164 = and i32 %add162, %xor163
  %xor165 = xor i32 %and164, %add140
  %arrayidx166 = getelementptr i32, ptr %in, i32 15
  %38 = ptrtoint ptr %arrayidx166 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx166, align 4
  %add167 = add i32 %39, 1236535329
  %add168 = add i32 %add167, %add129
  %add169 = add i32 %add168, %xor165
  %or172 = tail call i32 @llvm.fshl.i32(i32 %add169, i32 %add169, i32 22)
  %add173 = add i32 %or172, %add162
  %xor174 = xor i32 %add173, %add162
  %and175 = and i32 %xor174, %add151
  %xor176 = xor i32 %and175, %add162
  %add178 = add i32 %11, -165796510
  %add179 = add i32 %add178, %add140
  %add180 = add i32 %add179, %xor176
  %or183 = tail call i32 @llvm.fshl.i32(i32 %add180, i32 %add180, i32 5)
  %add184 = add i32 %or183, %add173
  %xor185 = xor i32 %add184, %add173
  %and186 = and i32 %xor185, %add162
  %xor187 = xor i32 %and186, %add173
  %add189 = add i32 %21, -1069501632
  %add190 = add i32 %add189, %add151
  %add191 = add i32 %add190, %xor187
  %or194 = tail call i32 @llvm.fshl.i32(i32 %add191, i32 %add191, i32 9)
  %add195 = add i32 %or194, %add184
  %xor196 = xor i32 %add195, %add184
  %and197 = and i32 %xor196, %add173
  %xor198 = xor i32 %and197, %add184
  %add200 = add i32 %31, 643717713
  %add201 = add i32 %add200, %add162
  %add202 = add i32 %add201, %xor198
  %or205 = tail call i32 @llvm.fshl.i32(i32 %add202, i32 %add202, i32 14)
  %add206 = add i32 %or205, %add195
  %xor207 = xor i32 %add206, %add195
  %and208 = and i32 %xor207, %add184
  %xor209 = xor i32 %and208, %add195
  %add211 = add i32 %9, -373897302
  %add212 = add i32 %add211, %add173
  %add213 = add i32 %add212, %xor209
  %or216 = tail call i32 @llvm.fshl.i32(i32 %add213, i32 %add213, i32 20)
  %add217 = add i32 %or216, %add206
  %xor218 = xor i32 %add217, %add206
  %and219 = and i32 %xor218, %add195
  %xor220 = xor i32 %and219, %add206
  %add222 = add i32 %19, -701558691
  %add223 = add i32 %add222, %add184
  %add224 = add i32 %add223, %xor220
  %or227 = tail call i32 @llvm.fshl.i32(i32 %add224, i32 %add224, i32 5)
  %add228 = add i32 %or227, %add217
  %xor229 = xor i32 %add228, %add217
  %and230 = and i32 %xor229, %add206
  %xor231 = xor i32 %and230, %add217
  %add233 = add i32 %29, 38016083
  %add234 = add i32 %add233, %add195
  %add235 = add i32 %add234, %xor231
  %or238 = tail call i32 @llvm.fshl.i32(i32 %add235, i32 %add235, i32 9)
  %add239 = add i32 %or238, %add228
  %xor240 = xor i32 %add239, %add228
  %and241 = and i32 %xor240, %add217
  %xor242 = xor i32 %and241, %add228
  %add244 = add i32 %39, -660478335
  %add245 = add i32 %add244, %add206
  %add246 = add i32 %add245, %xor242
  %or249 = tail call i32 @llvm.fshl.i32(i32 %add246, i32 %add246, i32 14)
  %add250 = add i32 %or249, %add239
  %xor251 = xor i32 %add250, %add239
  %and252 = and i32 %xor251, %add228
  %xor253 = xor i32 %and252, %add239
  %add255 = add i32 %17, -405537848
  %add256 = add i32 %add255, %add217
  %add257 = add i32 %add256, %xor253
  %or260 = tail call i32 @llvm.fshl.i32(i32 %add257, i32 %add257, i32 20)
  %add261 = add i32 %or260, %add250
  %xor262 = xor i32 %add261, %add250
  %and263 = and i32 %xor262, %add239
  %xor264 = xor i32 %and263, %add250
  %add266 = add i32 %27, 568446438
  %add267 = add i32 %add266, %add228
  %add268 = add i32 %add267, %xor264
  %or271 = tail call i32 @llvm.fshl.i32(i32 %add268, i32 %add268, i32 5)
  %add272 = add i32 %or271, %add261
  %xor273 = xor i32 %add272, %add261
  %and274 = and i32 %xor273, %add250
  %xor275 = xor i32 %and274, %add261
  %add277 = add i32 %37, -1019803690
  %add278 = add i32 %add277, %add239
  %add279 = add i32 %add278, %xor275
  %or282 = tail call i32 @llvm.fshl.i32(i32 %add279, i32 %add279, i32 9)
  %add283 = add i32 %or282, %add272
  %xor284 = xor i32 %add283, %add272
  %and285 = and i32 %xor284, %add261
  %xor286 = xor i32 %and285, %add272
  %add288 = add i32 %15, -187363961
  %add289 = add i32 %add288, %add250
  %add290 = add i32 %add289, %xor286
  %or293 = tail call i32 @llvm.fshl.i32(i32 %add290, i32 %add290, i32 14)
  %add294 = add i32 %or293, %add283
  %xor295 = xor i32 %add294, %add283
  %and296 = and i32 %xor295, %add272
  %xor297 = xor i32 %and296, %add283
  %add299 = add i32 %25, 1163531501
  %add300 = add i32 %add299, %add261
  %add301 = add i32 %add300, %xor297
  %or304 = tail call i32 @llvm.fshl.i32(i32 %add301, i32 %add301, i32 20)
  %add305 = add i32 %or304, %add294
  %xor306 = xor i32 %add305, %add294
  %and307 = and i32 %xor306, %add283
  %xor308 = xor i32 %and307, %add294
  %add310 = add i32 %35, -1444681467
  %add311 = add i32 %add310, %add272
  %add312 = add i32 %add311, %xor308
  %or315 = tail call i32 @llvm.fshl.i32(i32 %add312, i32 %add312, i32 5)
  %add316 = add i32 %or315, %add305
  %xor317 = xor i32 %add316, %add305
  %and318 = and i32 %xor317, %add294
  %xor319 = xor i32 %and318, %add305
  %add321 = add i32 %13, -51403784
  %add322 = add i32 %add321, %add283
  %add323 = add i32 %add322, %xor319
  %or326 = tail call i32 @llvm.fshl.i32(i32 %add323, i32 %add323, i32 9)
  %add327 = add i32 %or326, %add316
  %xor328 = xor i32 %add327, %add316
  %and329 = and i32 %xor328, %add305
  %xor330 = xor i32 %and329, %add316
  %add332 = add i32 %23, 1735328473
  %add333 = add i32 %add332, %add294
  %add334 = add i32 %add333, %xor330
  %or337 = tail call i32 @llvm.fshl.i32(i32 %add334, i32 %add334, i32 14)
  %add338 = add i32 %or337, %add327
  %xor339 = xor i32 %add338, %add327
  %and340 = and i32 %xor339, %add316
  %xor341 = xor i32 %and340, %add327
  %add343 = add i32 %33, -1926607734
  %add344 = add i32 %add343, %add305
  %add345 = add i32 %add344, %xor341
  %or348 = tail call i32 @llvm.fshl.i32(i32 %add345, i32 %add345, i32 20)
  %add349 = add i32 %or348, %add338
  %xor351 = xor i32 %xor339, %add349
  %add353 = add i32 %19, -378558
  %add354 = add i32 %add353, %add316
  %add355 = add i32 %add354, %xor351
  %or358 = tail call i32 @llvm.fshl.i32(i32 %add355, i32 %add355, i32 4)
  %add359 = add i32 %or358, %add349
  %xor360 = xor i32 %add349, %add338
  %xor361 = xor i32 %xor360, %add359
  %add363 = add i32 %25, -2022574463
  %add364 = add i32 %add363, %add327
  %add365 = add i32 %add364, %xor361
  %or368 = tail call i32 @llvm.fshl.i32(i32 %add365, i32 %add365, i32 11)
  %add369 = add i32 %or368, %add359
  %xor370 = xor i32 %add359, %add349
  %xor371 = xor i32 %xor370, %add369
  %add373 = add i32 %31, 1839030562
  %add374 = add i32 %add373, %add338
  %add375 = add i32 %add374, %xor371
  %or378 = tail call i32 @llvm.fshl.i32(i32 %add375, i32 %add375, i32 16)
  %add379 = add i32 %or378, %add369
  %xor380 = xor i32 %add369, %add359
  %xor381 = xor i32 %xor380, %add379
  %add383 = add i32 %37, -35309556
  %add384 = add i32 %add383, %add349
  %add385 = add i32 %add384, %xor381
  %or388 = tail call i32 @llvm.fshl.i32(i32 %add385, i32 %add385, i32 23)
  %add389 = add i32 %or388, %add379
  %xor390 = xor i32 %add379, %add369
  %xor391 = xor i32 %xor390, %add389
  %add393 = add i32 %11, -1530992060
  %add394 = add i32 %add393, %add359
  %add395 = add i32 %add394, %xor391
  %or398 = tail call i32 @llvm.fshl.i32(i32 %add395, i32 %add395, i32 4)
  %add399 = add i32 %or398, %add389
  %xor400 = xor i32 %add389, %add379
  %xor401 = xor i32 %xor400, %add399
  %add403 = add i32 %17, 1272893353
  %add404 = add i32 %add403, %add369
  %add405 = add i32 %add404, %xor401
  %or408 = tail call i32 @llvm.fshl.i32(i32 %add405, i32 %add405, i32 11)
  %add409 = add i32 %or408, %add399
  %xor410 = xor i32 %add399, %add389
  %xor411 = xor i32 %xor410, %add409
  %add413 = add i32 %23, -155497632
  %add414 = add i32 %add413, %add379
  %add415 = add i32 %add414, %xor411
  %or418 = tail call i32 @llvm.fshl.i32(i32 %add415, i32 %add415, i32 16)
  %add419 = add i32 %or418, %add409
  %xor420 = xor i32 %add409, %add399
  %xor421 = xor i32 %xor420, %add419
  %add423 = add i32 %29, -1094730640
  %add424 = add i32 %add423, %add389
  %add425 = add i32 %add424, %xor421
  %or428 = tail call i32 @llvm.fshl.i32(i32 %add425, i32 %add425, i32 23)
  %add429 = add i32 %or428, %add419
  %xor430 = xor i32 %add419, %add409
  %xor431 = xor i32 %xor430, %add429
  %add433 = add i32 %35, 681279174
  %add434 = add i32 %add433, %add399
  %add435 = add i32 %add434, %xor431
  %or438 = tail call i32 @llvm.fshl.i32(i32 %add435, i32 %add435, i32 4)
  %add439 = add i32 %or438, %add429
  %xor440 = xor i32 %add429, %add419
  %xor441 = xor i32 %xor440, %add439
  %add443 = add i32 %9, -358537222
  %add444 = add i32 %add443, %add409
  %add445 = add i32 %add444, %xor441
  %or448 = tail call i32 @llvm.fshl.i32(i32 %add445, i32 %add445, i32 11)
  %add449 = add i32 %or448, %add439
  %xor450 = xor i32 %add439, %add429
  %xor451 = xor i32 %xor450, %add449
  %add453 = add i32 %15, -722521979
  %add454 = add i32 %add453, %add419
  %add455 = add i32 %add454, %xor451
  %or458 = tail call i32 @llvm.fshl.i32(i32 %add455, i32 %add455, i32 16)
  %add459 = add i32 %or458, %add449
  %xor460 = xor i32 %add449, %add439
  %xor461 = xor i32 %xor460, %add459
  %add463 = add i32 %21, 76029189
  %add464 = add i32 %add463, %add429
  %add465 = add i32 %add464, %xor461
  %or468 = tail call i32 @llvm.fshl.i32(i32 %add465, i32 %add465, i32 23)
  %add469 = add i32 %or468, %add459
  %xor470 = xor i32 %add459, %add449
  %xor471 = xor i32 %xor470, %add469
  %add473 = add i32 %27, -640364487
  %add474 = add i32 %add473, %add439
  %add475 = add i32 %add474, %xor471
  %or478 = tail call i32 @llvm.fshl.i32(i32 %add475, i32 %add475, i32 4)
  %add479 = add i32 %or478, %add469
  %xor480 = xor i32 %add469, %add459
  %xor481 = xor i32 %xor480, %add479
  %add483 = add i32 %33, -421815835
  %add484 = add i32 %add483, %add449
  %add485 = add i32 %add484, %xor481
  %or488 = tail call i32 @llvm.fshl.i32(i32 %add485, i32 %add485, i32 11)
  %add489 = add i32 %or488, %add479
  %xor490 = xor i32 %add479, %add469
  %xor491 = xor i32 %xor490, %add489
  %add493 = add i32 %39, 530742520
  %add494 = add i32 %add493, %add459
  %add495 = add i32 %add494, %xor491
  %or498 = tail call i32 @llvm.fshl.i32(i32 %add495, i32 %add495, i32 16)
  %add499 = add i32 %or498, %add489
  %xor500 = xor i32 %add489, %add479
  %xor501 = xor i32 %xor500, %add499
  %add503 = add i32 %13, -995338651
  %add504 = add i32 %add503, %add469
  %add505 = add i32 %add504, %xor501
  %or508 = tail call i32 @llvm.fshl.i32(i32 %add505, i32 %add505, i32 23)
  %add509 = add i32 %or508, %add499
  %neg = xor i32 %add489, -1
  %or510 = or i32 %add509, %neg
  %xor511 = xor i32 %or510, %add499
  %add513 = add i32 %9, -198630844
  %add514 = add i32 %add513, %add479
  %add515 = add i32 %add514, %xor511
  %or518 = tail call i32 @llvm.fshl.i32(i32 %add515, i32 %add515, i32 6)
  %add519 = add i32 %or518, %add509
  %neg520 = xor i32 %add499, -1
  %or521 = or i32 %add519, %neg520
  %xor522 = xor i32 %or521, %add509
  %add524 = add i32 %23, 1126891415
  %add525 = add i32 %add524, %add489
  %add526 = add i32 %add525, %xor522
  %or529 = tail call i32 @llvm.fshl.i32(i32 %add526, i32 %add526, i32 10)
  %add530 = add i32 %or529, %add519
  %neg531 = xor i32 %add509, -1
  %or532 = or i32 %add530, %neg531
  %xor533 = xor i32 %or532, %add519
  %add535 = add i32 %37, -1416354905
  %add536 = add i32 %add535, %add499
  %add537 = add i32 %add536, %xor533
  %or540 = tail call i32 @llvm.fshl.i32(i32 %add537, i32 %add537, i32 15)
  %add541 = add i32 %or540, %add530
  %neg542 = xor i32 %add519, -1
  %or543 = or i32 %add541, %neg542
  %xor544 = xor i32 %or543, %add530
  %add546 = add i32 %19, -57434055
  %add547 = add i32 %add546, %add509
  %add548 = add i32 %add547, %xor544
  %or551 = tail call i32 @llvm.fshl.i32(i32 %add548, i32 %add548, i32 21)
  %add552 = add i32 %or551, %add541
  %neg553 = xor i32 %add530, -1
  %or554 = or i32 %add552, %neg553
  %xor555 = xor i32 %or554, %add541
  %add557 = add i32 %33, 1700485571
  %add558 = add i32 %add557, %add519
  %add559 = add i32 %add558, %xor555
  %or562 = tail call i32 @llvm.fshl.i32(i32 %add559, i32 %add559, i32 6)
  %add563 = add i32 %or562, %add552
  %neg564 = xor i32 %add541, -1
  %or565 = or i32 %add563, %neg564
  %xor566 = xor i32 %or565, %add552
  %add568 = add i32 %15, -1894986606
  %add569 = add i32 %add568, %add530
  %add570 = add i32 %add569, %xor566
  %or573 = tail call i32 @llvm.fshl.i32(i32 %add570, i32 %add570, i32 10)
  %add574 = add i32 %or573, %add563
  %neg575 = xor i32 %add552, -1
  %or576 = or i32 %add574, %neg575
  %xor577 = xor i32 %or576, %add563
  %add579 = add i32 %29, -1051523
  %add580 = add i32 %add579, %add541
  %add581 = add i32 %add580, %xor577
  %or584 = tail call i32 @llvm.fshl.i32(i32 %add581, i32 %add581, i32 15)
  %add585 = add i32 %or584, %add574
  %neg586 = xor i32 %add563, -1
  %or587 = or i32 %add585, %neg586
  %xor588 = xor i32 %or587, %add574
  %add590 = add i32 %11, -2054922799
  %add591 = add i32 %add590, %add552
  %add592 = add i32 %add591, %xor588
  %or595 = tail call i32 @llvm.fshl.i32(i32 %add592, i32 %add592, i32 21)
  %add596 = add i32 %or595, %add585
  %neg597 = xor i32 %add574, -1
  %or598 = or i32 %add596, %neg597
  %xor599 = xor i32 %or598, %add585
  %add601 = add i32 %25, 1873313359
  %add602 = add i32 %add601, %add563
  %add603 = add i32 %add602, %xor599
  %or606 = tail call i32 @llvm.fshl.i32(i32 %add603, i32 %add603, i32 6)
  %add607 = add i32 %or606, %add596
  %neg608 = xor i32 %add585, -1
  %or609 = or i32 %add607, %neg608
  %xor610 = xor i32 %or609, %add596
  %add612 = add i32 %39, -30611744
  %add613 = add i32 %add612, %add574
  %add614 = add i32 %add613, %xor610
  %or617 = tail call i32 @llvm.fshl.i32(i32 %add614, i32 %add614, i32 10)
  %add618 = add i32 %or617, %add607
  %neg619 = xor i32 %add596, -1
  %or620 = or i32 %add618, %neg619
  %xor621 = xor i32 %or620, %add607
  %add623 = add i32 %21, -1560198380
  %add624 = add i32 %add623, %add585
  %add625 = add i32 %add624, %xor621
  %or628 = tail call i32 @llvm.fshl.i32(i32 %add625, i32 %add625, i32 15)
  %add629 = add i32 %or628, %add618
  %neg630 = xor i32 %add607, -1
  %or631 = or i32 %add629, %neg630
  %xor632 = xor i32 %or631, %add618
  %add634 = add i32 %35, 1309151649
  %add635 = add i32 %add634, %add596
  %add636 = add i32 %add635, %xor632
  %or639 = tail call i32 @llvm.fshl.i32(i32 %add636, i32 %add636, i32 21)
  %add640 = add i32 %or639, %add629
  %neg641 = xor i32 %add618, -1
  %or642 = or i32 %add640, %neg641
  %xor643 = xor i32 %or642, %add629
  %add645 = add i32 %17, -145523070
  %add646 = add i32 %add645, %add607
  %add647 = add i32 %add646, %xor643
  %or650 = tail call i32 @llvm.fshl.i32(i32 %add647, i32 %add647, i32 6)
  %add651 = add i32 %or650, %add640
  %neg652 = xor i32 %add629, -1
  %or653 = or i32 %add651, %neg652
  %xor654 = xor i32 %or653, %add640
  %add656 = add i32 %31, -1120210379
  %add657 = add i32 %add656, %add618
  %add658 = add i32 %add657, %xor654
  %or661 = tail call i32 @llvm.fshl.i32(i32 %add658, i32 %add658, i32 10)
  %add662 = add i32 %or661, %add651
  %neg663 = xor i32 %add640, -1
  %or664 = or i32 %add662, %neg663
  %xor665 = xor i32 %or664, %add651
  %add667 = add i32 %13, 718787259
  %add668 = add i32 %add667, %add629
  %add669 = add i32 %add668, %xor665
  %or672 = tail call i32 @llvm.fshl.i32(i32 %add669, i32 %add669, i32 15)
  %add673 = add i32 %or672, %add662
  %neg674 = xor i32 %add651, -1
  %or675 = or i32 %add673, %neg674
  %xor676 = xor i32 %or675, %add662
  %add678 = add i32 %27, -343485551
  %add679 = add i32 %add678, %add640
  %add680 = add i32 %add679, %xor676
  %or683 = tail call i32 @llvm.fshl.i32(i32 %add680, i32 %add680, i32 21)
  %add686 = add i32 %add651, %1
  %40 = ptrtoint ptr %hash to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %add686, ptr %hash, align 4
  %add684 = add i32 %add673, %3
  %add688 = add i32 %add684, %or683
  %41 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %add688, ptr %arrayidx1, align 4
  %add690 = add i32 %add673, %5
  %42 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %add690, ptr %arrayidx2, align 4
  %add692 = add i32 %add662, %7
  %43 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %add692, ptr %arrayidx3, align 4
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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !16}
!llvm.module.flags = !{!18, !19, !20, !21, !22, !23, !24, !25}
!llvm.ident = !{!26}

!0 = !{ptr @md5_zero_message_hash, !1, !"md5_zero_message_hash", i1 false, i1 false}
!1 = !{!"../crypto/md5.c", i32 26, i32 10}
!2 = !{ptr @__ksymtab_md5_zero_message_hash, !3, !"__ksymtab_md5_zero_message_hash", i1 false, i1 false}
!3 = !{!"../crypto/md5.c", i32 30, i32 1}
!4 = !{ptr @__initcall__kmod_md5__173_245_md5_mod_init4, !5, !"__initcall__kmod_md5__173_245_md5_mod_init4", i1 false, i1 false}
!5 = !{!"../crypto/md5.c", i32 245, i32 1}
!6 = !{ptr @__exitcall_md5_mod_fini, !7, !"__exitcall_md5_mod_fini", i1 false, i1 false}
!7 = !{!"../crypto/md5.c", i32 246, i32 1}
!8 = !{ptr @__UNIQUE_ID_file174, !9, !"__UNIQUE_ID_file174", i1 false, i1 false}
!9 = !{!"../crypto/md5.c", i32 248, i32 1}
!10 = !{ptr @__UNIQUE_ID_license175, !9, !"__UNIQUE_ID_license175", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_description176, !12, !"__UNIQUE_ID_description176", i1 false, i1 false}
!12 = !{!"../crypto/md5.c", i32 249, i32 1}
!13 = !{ptr @__UNIQUE_ID_alias_userspace177, !14, !"__UNIQUE_ID_alias_userspace177", i1 false, i1 false}
!14 = !{!"../crypto/md5.c", i32 250, i32 1}
!15 = !{ptr @__UNIQUE_ID_alias_crypto178, !14, !"__UNIQUE_ID_alias_crypto178", i1 false, i1 false}
!16 = !{ptr @alg, !17, !"alg", i1 false, i1 false}
!17 = !{!"../crypto/md5.c", i32 218, i32 25}
!18 = !{i32 1, !"wchar_size", i32 2}
!19 = !{i32 1, !"min_enum_size", i32 4}
!20 = !{i32 8, !"branch-target-enforcement", i32 0}
!21 = !{i32 8, !"sign-return-address", i32 0}
!22 = !{i32 8, !"sign-return-address-all", i32 0}
!23 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!24 = !{i32 7, !"uwtable", i32 1}
!25 = !{i32 7, !"frame-pointer", i32 2}
!26 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
