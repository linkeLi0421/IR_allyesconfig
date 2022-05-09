; ModuleID = '/llk/IR_all_yes/lib/crypto/chacha20poly1305.c_pt.bc'
source_filename = "../lib/crypto/chacha20poly1305.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+chacha20poly1305_encrypt\22, \22a\22\09"
module asm "\09.weak\09__crc_chacha20poly1305_encrypt\09\09\09\09"
module asm "\09.long\09__crc_chacha20poly1305_encrypt\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_chacha20poly1305_encrypt:\09\09\09\09\09"
module asm "\09.asciz \09\22chacha20poly1305_encrypt\22\09\09\09\09\09"
module asm "__kstrtabns_chacha20poly1305_encrypt:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+xchacha20poly1305_encrypt\22, \22a\22\09"
module asm "\09.weak\09__crc_xchacha20poly1305_encrypt\09\09\09\09"
module asm "\09.long\09__crc_xchacha20poly1305_encrypt\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xchacha20poly1305_encrypt:\09\09\09\09\09"
module asm "\09.asciz \09\22xchacha20poly1305_encrypt\22\09\09\09\09\09"
module asm "__kstrtabns_xchacha20poly1305_encrypt:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+chacha20poly1305_decrypt\22, \22a\22\09"
module asm "\09.weak\09__crc_chacha20poly1305_decrypt\09\09\09\09"
module asm "\09.long\09__crc_chacha20poly1305_decrypt\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_chacha20poly1305_decrypt:\09\09\09\09\09"
module asm "\09.asciz \09\22chacha20poly1305_decrypt\22\09\09\09\09\09"
module asm "__kstrtabns_chacha20poly1305_decrypt:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+xchacha20poly1305_decrypt\22, \22a\22\09"
module asm "\09.weak\09__crc_xchacha20poly1305_decrypt\09\09\09\09"
module asm "\09.long\09__crc_xchacha20poly1305_decrypt\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xchacha20poly1305_decrypt:\09\09\09\09\09"
module asm "\09.asciz \09\22xchacha20poly1305_decrypt\22\09\09\09\09\09"
module asm "__kstrtabns_xchacha20poly1305_decrypt:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+chacha20poly1305_encrypt_sg_inplace\22, \22a\22\09"
module asm "\09.weak\09__crc_chacha20poly1305_encrypt_sg_inplace\09\09\09\09"
module asm "\09.long\09__crc_chacha20poly1305_encrypt_sg_inplace\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_chacha20poly1305_encrypt_sg_inplace:\09\09\09\09\09"
module asm "\09.asciz \09\22chacha20poly1305_encrypt_sg_inplace\22\09\09\09\09\09"
module asm "__kstrtabns_chacha20poly1305_encrypt_sg_inplace:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+chacha20poly1305_decrypt_sg_inplace\22, \22a\22\09"
module asm "\09.weak\09__crc_chacha20poly1305_decrypt_sg_inplace\09\09\09\09"
module asm "\09.long\09__crc_chacha20poly1305_decrypt_sg_inplace\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_chacha20poly1305_decrypt_sg_inplace:\09\09\09\09\09"
module asm "\09.asciz \09\22chacha20poly1305_decrypt_sg_inplace\22\09\09\09\09\09"
module asm "__kstrtabns_chacha20poly1305_decrypt_sg_inplace:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.poly1305_desc_ctx = type { [16 x i8], i32, i16, i8, [4 x i32], %struct.poly1305_state, %union.anon.73 }
%struct.poly1305_state = type { %union.anon.72 }
%union.anon.72 = type { [3 x i64] }
%union.anon.73 = type { [9 x %struct.poly1305_key] }
%struct.poly1305_key = type { %union.anon.74 }
%union.anon.74 = type { [3 x i64] }
%union.anon.75 = type { [2 x i64], [16 x i8] }
%union.anon.76 = type { [2 x i64], [16 x i8] }
%struct.sg_mapping_iter = type { ptr, ptr, i32, i32, %struct.sg_page_iter, i32, i32, i32 }
%struct.sg_page_iter = type { ptr, i32, i32, i32 }
%union.anon.77 = type { %struct.anon.78, [16 x i8] }
%struct.anon.78 = type { [8 x i32], [2 x i64] }

@__kstrtab_chacha20poly1305_encrypt = external dso_local constant [0 x i8], align 1
@__kstrtabns_chacha20poly1305_encrypt = external dso_local constant [0 x i8], align 1
@__ksymtab_chacha20poly1305_encrypt = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @chacha20poly1305_encrypt to i32), ptr @__kstrtab_chacha20poly1305_encrypt, ptr @__kstrtabns_chacha20poly1305_encrypt }, section "___ksymtab+chacha20poly1305_encrypt", align 4
@__kstrtab_xchacha20poly1305_encrypt = external dso_local constant [0 x i8], align 1
@__kstrtabns_xchacha20poly1305_encrypt = external dso_local constant [0 x i8], align 1
@__ksymtab_xchacha20poly1305_encrypt = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xchacha20poly1305_encrypt to i32), ptr @__kstrtab_xchacha20poly1305_encrypt, ptr @__kstrtabns_xchacha20poly1305_encrypt }, section "___ksymtab+xchacha20poly1305_encrypt", align 4
@__kstrtab_chacha20poly1305_decrypt = external dso_local constant [0 x i8], align 1
@__kstrtabns_chacha20poly1305_decrypt = external dso_local constant [0 x i8], align 1
@__ksymtab_chacha20poly1305_decrypt = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @chacha20poly1305_decrypt to i32), ptr @__kstrtab_chacha20poly1305_decrypt, ptr @__kstrtabns_chacha20poly1305_decrypt }, section "___ksymtab+chacha20poly1305_decrypt", align 4
@__kstrtab_xchacha20poly1305_decrypt = external dso_local constant [0 x i8], align 1
@__kstrtabns_xchacha20poly1305_decrypt = external dso_local constant [0 x i8], align 1
@__ksymtab_xchacha20poly1305_decrypt = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xchacha20poly1305_decrypt to i32), ptr @__kstrtab_xchacha20poly1305_decrypt, ptr @__kstrtabns_xchacha20poly1305_decrypt }, section "___ksymtab+xchacha20poly1305_decrypt", align 4
@__kstrtab_chacha20poly1305_encrypt_sg_inplace = external dso_local constant [0 x i8], align 1
@__kstrtabns_chacha20poly1305_encrypt_sg_inplace = external dso_local constant [0 x i8], align 1
@__ksymtab_chacha20poly1305_encrypt_sg_inplace = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @chacha20poly1305_encrypt_sg_inplace to i32), ptr @__kstrtab_chacha20poly1305_encrypt_sg_inplace, ptr @__kstrtabns_chacha20poly1305_encrypt_sg_inplace }, section "___ksymtab+chacha20poly1305_encrypt_sg_inplace", align 4
@__kstrtab_chacha20poly1305_decrypt_sg_inplace = external dso_local constant [0 x i8], align 1
@__kstrtabns_chacha20poly1305_decrypt_sg_inplace = external dso_local constant [0 x i8], align 1
@__ksymtab_chacha20poly1305_decrypt_sg_inplace = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @chacha20poly1305_decrypt_sg_inplace to i32), ptr @__kstrtab_chacha20poly1305_decrypt_sg_inplace, ptr @__kstrtabns_chacha20poly1305_decrypt_sg_inplace }, section "___ksymtab+chacha20poly1305_decrypt_sg_inplace", align 4
@__initcall__kmod_libchacha20poly1305__245_369_chacha20poly1305_init6 = internal global ptr @chacha20poly1305_init, section ".initcall6.init", align 4
@__exitcall_chacha20poly1305_exit = internal global ptr @chacha20poly1305_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file246 = internal constant [56 x i8] c"libchacha20poly1305.file=lib/crypto/libchacha20poly1305\00", section ".modinfo", align 1
@__UNIQUE_ID_license247 = internal constant [35 x i8] c"libchacha20poly1305.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description248 = internal constant [67 x i8] c"libchacha20poly1305.description=ChaCha20Poly1305 AEAD construction\00", section ".modinfo", align 1
@__UNIQUE_ID_author249 = internal constant [64 x i8] c"libchacha20poly1305.author=Jason A. Donenfeld <Jason@zx2c4.com>\00", section ".modinfo", align 1
@empty_zero_page = external dso_local local_unnamed_addr global ptr, align 4
@.str = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"lib/crypto/chacha20poly1305.c\00", [34 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.2 = private constant [33 x i8] c"../lib/crypto/chacha20poly1305.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 236, i32 6 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @__UNIQUE_ID_author249, ptr @__UNIQUE_ID_description248, ptr @__UNIQUE_ID_file246, ptr @__UNIQUE_ID_license247, ptr @__exitcall_chacha20poly1305_exit, ptr @__initcall__kmod_libchacha20poly1305__245_369_chacha20poly1305_init6, ptr @__ksymtab_chacha20poly1305_decrypt, ptr @__ksymtab_chacha20poly1305_decrypt_sg_inplace, ptr @__ksymtab_chacha20poly1305_encrypt, ptr @__ksymtab_chacha20poly1305_encrypt_sg_inplace, ptr @__ksymtab_xchacha20poly1305_decrypt, ptr @__ksymtab_xchacha20poly1305_encrypt, ptr @chacha20poly1305_exit, ptr @.str], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @chacha20poly1305_encrypt(ptr noundef %dst, ptr noundef %src, i32 noundef %src_len, ptr noundef %ad, i32 noundef %ad_len, i64 noundef %nonce, ptr nocapture noundef readonly %key) #0 align 64 {
entry:
  %chacha_state = alloca [16 x i32], align 4
  %k = alloca [8 x i32], align 4
  %iv = alloca [2 x i64], align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %chacha_state) #5
  %0 = call ptr @memset(ptr %chacha_state, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %k) #5
  %1 = getelementptr inbounds [8 x i32], ptr %k, i32 0, i32 1
  %2 = getelementptr inbounds [8 x i32], ptr %k, i32 0, i32 2
  %3 = getelementptr inbounds [8 x i32], ptr %k, i32 0, i32 3
  %4 = getelementptr inbounds [8 x i32], ptr %k, i32 0, i32 4
  %5 = getelementptr inbounds [8 x i32], ptr %k, i32 0, i32 5
  %6 = getelementptr inbounds [8 x i32], ptr %k, i32 0, i32 6
  %7 = getelementptr inbounds [8 x i32], ptr %k, i32 0, i32 7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %iv) #5
  %8 = getelementptr inbounds [2 x i64], ptr %iv, i32 0, i32 1
  %9 = ptrtoint ptr %key to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %key, align 1
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #5
  %12 = ptrtoint ptr %k to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %k, align 4
  %add.ptr.i = getelementptr i8, ptr %key, i32 4
  %13 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %13, i32 4)
  %14 = load i32, ptr %add.ptr.i, align 1
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #5
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %1, align 4
  %add.ptr3.i = getelementptr i8, ptr %key, i32 8
  %17 = ptrtoint ptr %add.ptr3.i to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %18 = load i32, ptr %add.ptr3.i, align 1
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #5
  %20 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %2, align 4
  %add.ptr6.i = getelementptr i8, ptr %key, i32 12
  %21 = ptrtoint ptr %add.ptr6.i to i32
  call void @__asan_loadN_noabort(i32 %21, i32 4)
  %22 = load i32, ptr %add.ptr6.i, align 1
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #5
  %24 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %3, align 4
  %add.ptr9.i = getelementptr i8, ptr %key, i32 16
  %25 = ptrtoint ptr %add.ptr9.i to i32
  call void @__asan_loadN_noabort(i32 %25, i32 4)
  %26 = load i32, ptr %add.ptr9.i, align 1
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #5
  %28 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %4, align 4
  %add.ptr12.i = getelementptr i8, ptr %key, i32 20
  %29 = ptrtoint ptr %add.ptr12.i to i32
  call void @__asan_loadN_noabort(i32 %29, i32 4)
  %30 = load i32, ptr %add.ptr12.i, align 1
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #5
  %32 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %5, align 4
  %add.ptr15.i = getelementptr i8, ptr %key, i32 24
  %33 = ptrtoint ptr %add.ptr15.i to i32
  call void @__asan_loadN_noabort(i32 %33, i32 4)
  %34 = load i32, ptr %add.ptr15.i, align 1
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #5
  %36 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %6, align 4
  %add.ptr18.i = getelementptr i8, ptr %key, i32 28
  %37 = ptrtoint ptr %add.ptr18.i to i32
  call void @__asan_loadN_noabort(i32 %37, i32 4)
  %38 = load i32, ptr %add.ptr18.i, align 1
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #5
  %40 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %7, align 4
  %41 = ptrtoint ptr %iv to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 0, ptr %iv, align 8
  %42 = tail call i64 @llvm.bswap.i64(i64 %nonce)
  %43 = ptrtoint ptr %8 to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %42, ptr %8, align 8
  call void @chacha_init_arch(ptr noundef nonnull %chacha_state, ptr noundef nonnull %k, ptr noundef nonnull %iv) #5
  call fastcc void @__chacha20poly1305_encrypt(ptr noundef %dst, ptr noundef %src, i32 noundef %src_len, ptr noundef %ad, i32 noundef %ad_len, ptr noundef nonnull %chacha_state)
  %44 = call ptr @memset(ptr %iv, i32 0, i32 16)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %iv) #5, !srcloc !34
  %45 = call ptr @memset(ptr %k, i32 0, i32 32)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %k) #5, !srcloc !34
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %iv) #5
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %k) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %chacha_state) #5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__chacha20poly1305_encrypt(ptr noundef %dst, ptr noundef %src, i32 noundef %src_len, ptr noundef %ad, i32 noundef %ad_len, ptr noundef %chacha_state) unnamed_addr #0 align 64 {
entry:
  %poly1305_state = alloca %struct.poly1305_desc_ctx, align 8
  %b = alloca %union.anon.75, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @empty_zero_page to i32))
  %0 = load ptr, ptr @empty_zero_page, align 4
  %call = tail call ptr @page_address(ptr noundef %0) #5
  call void @llvm.lifetime.start.p0(i64 280, ptr nonnull %poly1305_state) #5
  %1 = call ptr @memset(ptr %poly1305_state, i32 255, i32 280)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %b) #5
  %2 = call ptr @memset(ptr %b, i32 255, i32 32)
  call void @chacha_crypt_arch(ptr noundef %chacha_state, ptr noundef nonnull %b, ptr noundef %call, i32 noundef 32, i32 noundef 20) #5
  call void @poly1305_init_arch(ptr noundef nonnull %poly1305_state, ptr noundef nonnull %b) #5
  call void @poly1305_update_arch(ptr noundef nonnull %poly1305_state, ptr noundef %ad, i32 noundef %ad_len) #5
  %and = and i32 %ad_len, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %sub = sub nuw nsw i32 16, %and
  call void @poly1305_update_arch(ptr noundef nonnull %poly1305_state, ptr noundef %call, i32 noundef %sub) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @chacha_crypt_arch(ptr noundef %chacha_state, ptr noundef %dst, ptr noundef %src, i32 noundef %src_len, i32 noundef 20) #5
  call void @poly1305_update_arch(ptr noundef nonnull %poly1305_state, ptr noundef %dst, i32 noundef %src_len) #5
  %and3 = and i32 %src_len, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.end.if.end8_crit_edge, label %if.then5

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %sub7 = sub nuw nsw i32 16, %and3
  call void @poly1305_update_arch(ptr noundef nonnull %poly1305_state, ptr noundef %call, i32 noundef %sub7) #5
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.end.if.end8_crit_edge
  %3 = getelementptr inbounds [2 x i64], ptr %b, i32 0, i32 1
  %conv = zext i32 %ad_len to i64
  %4 = call i64 @llvm.bswap.i64(i64 %conv)
  %5 = ptrtoint ptr %b to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %4, ptr %b, align 8
  %conv9 = zext i32 %src_len to i64
  %6 = call i64 @llvm.bswap.i64(i64 %conv9)
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %6, ptr %3, align 8
  call void @poly1305_update_arch(ptr noundef nonnull %poly1305_state, ptr noundef nonnull %b, i32 noundef 16) #5
  %add.ptr = getelementptr i8, ptr %dst, i32 %src_len
  call void @poly1305_final_arch(ptr noundef nonnull %poly1305_state, ptr noundef %add.ptr) #5
  %8 = call ptr @memset(ptr %chacha_state, i32 0, i32 64)
  call void asm sideeffect "", "r,~{memory}"(ptr %chacha_state) #5, !srcloc !34
  %9 = call ptr @memset(ptr %b, i32 0, i32 32)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %b) #5, !srcloc !34
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %b) #5
  call void @llvm.lifetime.end.p0(i64 280, ptr nonnull %poly1305_state) #5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xchacha20poly1305_encrypt(ptr noundef %dst, ptr noundef %src, i32 noundef %src_len, ptr noundef %ad, i32 noundef %ad_len, ptr noundef %nonce, ptr nocapture noundef readonly %key) #0 align 64 {
entry:
  %k.i = alloca [8 x i32], align 4
  %iv.i = alloca [16 x i8], align 8
  %chacha_state = alloca [16 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %chacha_state) #5
  %0 = call ptr @memset(ptr %chacha_state, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %k.i) #5
  %1 = getelementptr inbounds [8 x i32], ptr %k.i, i32 0, i32 1
  %2 = getelementptr inbounds [8 x i32], ptr %k.i, i32 0, i32 2
  %3 = getelementptr inbounds [8 x i32], ptr %k.i, i32 0, i32 3
  %4 = getelementptr inbounds [8 x i32], ptr %k.i, i32 0, i32 4
  %5 = getelementptr inbounds [8 x i32], ptr %k.i, i32 0, i32 5
  %6 = getelementptr inbounds [8 x i32], ptr %k.i, i32 0, i32 6
  %7 = getelementptr inbounds [8 x i32], ptr %k.i, i32 0, i32 7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %iv.i) #5
  %8 = getelementptr inbounds [16 x i8], ptr %iv.i, i32 0, i32 8
  %9 = ptrtoint ptr %iv.i to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 0, ptr %iv.i, align 8
  %add.ptr2.i = getelementptr i8, ptr %nonce, i32 16
  %10 = ptrtoint ptr %add.ptr2.i to i32
  call void @__asan_loadN_noabort(i32 %10, i32 8)
  %11 = load i64, ptr %add.ptr2.i, align 1
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %11, ptr %8, align 8
  %13 = ptrtoint ptr %key to i32
  call void @__asan_loadN_noabort(i32 %13, i32 4)
  %14 = load i32, ptr %key, align 1
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #5
  %16 = ptrtoint ptr %k.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %k.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %key, i32 4
  %17 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %18 = load i32, ptr %add.ptr.i.i, align 1
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #5
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %1, align 4
  %add.ptr3.i.i = getelementptr i8, ptr %key, i32 8
  %21 = ptrtoint ptr %add.ptr3.i.i to i32
  call void @__asan_loadN_noabort(i32 %21, i32 4)
  %22 = load i32, ptr %add.ptr3.i.i, align 1
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #5
  %24 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %2, align 4
  %add.ptr6.i.i = getelementptr i8, ptr %key, i32 12
  %25 = ptrtoint ptr %add.ptr6.i.i to i32
  call void @__asan_loadN_noabort(i32 %25, i32 4)
  %26 = load i32, ptr %add.ptr6.i.i, align 1
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #5
  %28 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %3, align 4
  %add.ptr9.i.i = getelementptr i8, ptr %key, i32 16
  %29 = ptrtoint ptr %add.ptr9.i.i to i32
  call void @__asan_loadN_noabort(i32 %29, i32 4)
  %30 = load i32, ptr %add.ptr9.i.i, align 1
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #5
  %32 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %4, align 4
  %add.ptr12.i.i = getelementptr i8, ptr %key, i32 20
  %33 = ptrtoint ptr %add.ptr12.i.i to i32
  call void @__asan_loadN_noabort(i32 %33, i32 4)
  %34 = load i32, ptr %add.ptr12.i.i, align 1
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #5
  %36 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %5, align 4
  %add.ptr15.i.i = getelementptr i8, ptr %key, i32 24
  %37 = ptrtoint ptr %add.ptr15.i.i to i32
  call void @__asan_loadN_noabort(i32 %37, i32 4)
  %38 = load i32, ptr %add.ptr15.i.i, align 1
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #5
  %40 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %6, align 4
  %add.ptr18.i.i = getelementptr i8, ptr %key, i32 28
  %41 = ptrtoint ptr %add.ptr18.i.i to i32
  call void @__asan_loadN_noabort(i32 %41, i32 4)
  %42 = load i32, ptr %add.ptr18.i.i, align 1
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #5
  %44 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %7, align 4
  call void @chacha_init_arch(ptr noundef nonnull %chacha_state, ptr noundef nonnull %k.i, ptr noundef %nonce) #5
  call void @hchacha_block_arch(ptr noundef nonnull %chacha_state, ptr noundef nonnull %k.i, i32 noundef 20) #5
  call void @chacha_init_arch(ptr noundef nonnull %chacha_state, ptr noundef nonnull %k.i, ptr noundef nonnull %iv.i) #5
  %45 = call ptr @memset(ptr %k.i, i32 0, i32 32)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %k.i) #5, !srcloc !34
  %46 = call ptr @memset(ptr %iv.i, i32 0, i32 16)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %iv.i) #5, !srcloc !34
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %iv.i) #5
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %k.i) #5
  call fastcc void @__chacha20poly1305_encrypt(ptr noundef %dst, ptr noundef %src, i32 noundef %src_len, ptr noundef %ad, i32 noundef %ad_len, ptr noundef nonnull %chacha_state)
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %chacha_state) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @chacha20poly1305_decrypt(ptr noundef %dst, ptr noundef %src, i32 noundef %src_len, ptr noundef %ad, i32 noundef %ad_len, i64 noundef %nonce, ptr nocapture noundef readonly %key) #0 align 64 {
entry:
  %chacha_state = alloca [16 x i32], align 4
  %k = alloca [8 x i32], align 4
  %iv = alloca [2 x i64], align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %chacha_state) #5
  %0 = call ptr @memset(ptr %chacha_state, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %k) #5
  %1 = getelementptr inbounds [8 x i32], ptr %k, i32 0, i32 1
  %2 = getelementptr inbounds [8 x i32], ptr %k, i32 0, i32 2
  %3 = getelementptr inbounds [8 x i32], ptr %k, i32 0, i32 3
  %4 = getelementptr inbounds [8 x i32], ptr %k, i32 0, i32 4
  %5 = getelementptr inbounds [8 x i32], ptr %k, i32 0, i32 5
  %6 = getelementptr inbounds [8 x i32], ptr %k, i32 0, i32 6
  %7 = getelementptr inbounds [8 x i32], ptr %k, i32 0, i32 7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %iv) #5
  %8 = getelementptr inbounds [2 x i64], ptr %iv, i32 0, i32 1
  %9 = ptrtoint ptr %key to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %key, align 1
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #5
  %12 = ptrtoint ptr %k to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %k, align 4
  %add.ptr.i = getelementptr i8, ptr %key, i32 4
  %13 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %13, i32 4)
  %14 = load i32, ptr %add.ptr.i, align 1
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #5
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %1, align 4
  %add.ptr3.i = getelementptr i8, ptr %key, i32 8
  %17 = ptrtoint ptr %add.ptr3.i to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %18 = load i32, ptr %add.ptr3.i, align 1
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #5
  %20 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %2, align 4
  %add.ptr6.i = getelementptr i8, ptr %key, i32 12
  %21 = ptrtoint ptr %add.ptr6.i to i32
  call void @__asan_loadN_noabort(i32 %21, i32 4)
  %22 = load i32, ptr %add.ptr6.i, align 1
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #5
  %24 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %3, align 4
  %add.ptr9.i = getelementptr i8, ptr %key, i32 16
  %25 = ptrtoint ptr %add.ptr9.i to i32
  call void @__asan_loadN_noabort(i32 %25, i32 4)
  %26 = load i32, ptr %add.ptr9.i, align 1
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #5
  %28 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %4, align 4
  %add.ptr12.i = getelementptr i8, ptr %key, i32 20
  %29 = ptrtoint ptr %add.ptr12.i to i32
  call void @__asan_loadN_noabort(i32 %29, i32 4)
  %30 = load i32, ptr %add.ptr12.i, align 1
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #5
  %32 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %5, align 4
  %add.ptr15.i = getelementptr i8, ptr %key, i32 24
  %33 = ptrtoint ptr %add.ptr15.i to i32
  call void @__asan_loadN_noabort(i32 %33, i32 4)
  %34 = load i32, ptr %add.ptr15.i, align 1
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #5
  %36 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %6, align 4
  %add.ptr18.i = getelementptr i8, ptr %key, i32 28
  %37 = ptrtoint ptr %add.ptr18.i to i32
  call void @__asan_loadN_noabort(i32 %37, i32 4)
  %38 = load i32, ptr %add.ptr18.i, align 1
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #5
  %40 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %7, align 4
  %41 = ptrtoint ptr %iv to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 0, ptr %iv, align 8
  %42 = tail call i64 @llvm.bswap.i64(i64 %nonce)
  %43 = ptrtoint ptr %8 to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %42, ptr %8, align 8
  call void @chacha_init_arch(ptr noundef nonnull %chacha_state, ptr noundef nonnull %k, ptr noundef nonnull %iv) #5
  %call = call fastcc zeroext i1 @__chacha20poly1305_decrypt(ptr noundef %dst, ptr noundef %src, i32 noundef %src_len, ptr noundef %ad, i32 noundef %ad_len, ptr noundef nonnull %chacha_state)
  %44 = call ptr @memset(ptr %chacha_state, i32 0, i32 64)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %chacha_state) #5, !srcloc !34
  %45 = call ptr @memset(ptr %iv, i32 0, i32 16)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %iv) #5, !srcloc !34
  %46 = call ptr @memset(ptr %k, i32 0, i32 32)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %k) #5, !srcloc !34
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %iv) #5
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %k) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %chacha_state) #5
  ret i1 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @__chacha20poly1305_decrypt(ptr noundef %dst, ptr noundef %src, i32 noundef %src_len, ptr noundef %ad, i32 noundef %ad_len, ptr noundef %chacha_state) unnamed_addr #0 align 64 {
entry:
  %poly1305_state = alloca %struct.poly1305_desc_ctx, align 8
  %b = alloca %union.anon.76, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @empty_zero_page to i32))
  %0 = load ptr, ptr @empty_zero_page, align 4
  %call = tail call ptr @page_address(ptr noundef %0) #5
  call void @llvm.lifetime.start.p0(i64 280, ptr nonnull %poly1305_state) #5
  %1 = call ptr @memset(ptr %poly1305_state, i32 255, i32 280)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %b) #5
  %2 = getelementptr inbounds [2 x i64], ptr %b, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %src_len)
  %cmp = icmp ult i32 %src_len, 16
  %3 = call ptr @memset(ptr %b, i32 255, i32 32)
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end, !prof !35

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @chacha_crypt_arch(ptr noundef %chacha_state, ptr noundef nonnull %b, ptr noundef %call, i32 noundef 32, i32 noundef 20) #5
  call void @poly1305_init_arch(ptr noundef nonnull %poly1305_state, ptr noundef nonnull %b) #5
  call void @poly1305_update_arch(ptr noundef nonnull %poly1305_state, ptr noundef %ad, i32 noundef %ad_len) #5
  %and = and i32 %ad_len, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.end.if.end6_crit_edge, label %if.then4

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %sub = sub nuw nsw i32 16, %and
  call void @poly1305_update_arch(ptr noundef nonnull %poly1305_state, ptr noundef %call, i32 noundef %sub) #5
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  %sub7 = add i32 %src_len, -16
  call void @poly1305_update_arch(ptr noundef nonnull %poly1305_state, ptr noundef %src, i32 noundef %sub7) #5
  %and8 = and i32 %src_len, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.end6.if.end13_crit_edge, label %if.then10

if.end6.if.end13_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

if.then10:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  %sub12 = sub nuw nsw i32 16, %and8
  call void @poly1305_update_arch(ptr noundef nonnull %poly1305_state, ptr noundef %call, i32 noundef %sub12) #5
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.end6.if.end13_crit_edge
  %conv = zext i32 %ad_len to i64
  %4 = call i64 @llvm.bswap.i64(i64 %conv)
  %5 = ptrtoint ptr %b to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %4, ptr %b, align 8
  %conv14 = zext i32 %sub7 to i64
  %6 = call i64 @llvm.bswap.i64(i64 %conv14)
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %6, ptr %2, align 8
  call void @poly1305_update_arch(ptr noundef nonnull %poly1305_state, ptr noundef nonnull %b, i32 noundef 16) #5
  call void @poly1305_final_arch(ptr noundef nonnull %poly1305_state, ptr noundef nonnull %b) #5
  %add.ptr = getelementptr i8, ptr %src, i32 %sub7
  %call.i = call i32 @__crypto_memneq(ptr noundef nonnull %b, ptr noundef %add.ptr, i32 noundef 16) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not.i.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not.i.not, label %if.then29, label %if.end13.if.end30_crit_edge, !prof !36

if.end13.if.end30_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30

if.then29:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  call void @chacha_crypt_arch(ptr noundef %chacha_state, ptr noundef %dst, ptr noundef %src, i32 noundef %sub7, i32 noundef 20) #5
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %if.end13.if.end30_crit_edge
  %8 = call ptr @memset(ptr %b, i32 0, i32 32)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %b) #5, !srcloc !34
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %cmp.not.i.not, %if.end30 ], [ false, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %b) #5
  call void @llvm.lifetime.end.p0(i64 280, ptr nonnull %poly1305_state) #5
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @xchacha20poly1305_decrypt(ptr noundef %dst, ptr noundef %src, i32 noundef %src_len, ptr noundef %ad, i32 noundef %ad_len, ptr noundef %nonce, ptr nocapture noundef readonly %key) #0 align 64 {
entry:
  %k.i = alloca [8 x i32], align 4
  %iv.i = alloca [16 x i8], align 8
  %chacha_state = alloca [16 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %chacha_state) #5
  %0 = call ptr @memset(ptr %chacha_state, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %k.i) #5
  %1 = getelementptr inbounds [8 x i32], ptr %k.i, i32 0, i32 1
  %2 = getelementptr inbounds [8 x i32], ptr %k.i, i32 0, i32 2
  %3 = getelementptr inbounds [8 x i32], ptr %k.i, i32 0, i32 3
  %4 = getelementptr inbounds [8 x i32], ptr %k.i, i32 0, i32 4
  %5 = getelementptr inbounds [8 x i32], ptr %k.i, i32 0, i32 5
  %6 = getelementptr inbounds [8 x i32], ptr %k.i, i32 0, i32 6
  %7 = getelementptr inbounds [8 x i32], ptr %k.i, i32 0, i32 7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %iv.i) #5
  %8 = getelementptr inbounds [16 x i8], ptr %iv.i, i32 0, i32 8
  %9 = ptrtoint ptr %iv.i to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 0, ptr %iv.i, align 8
  %add.ptr2.i = getelementptr i8, ptr %nonce, i32 16
  %10 = ptrtoint ptr %add.ptr2.i to i32
  call void @__asan_loadN_noabort(i32 %10, i32 8)
  %11 = load i64, ptr %add.ptr2.i, align 1
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %11, ptr %8, align 8
  %13 = ptrtoint ptr %key to i32
  call void @__asan_loadN_noabort(i32 %13, i32 4)
  %14 = load i32, ptr %key, align 1
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #5
  %16 = ptrtoint ptr %k.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %k.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %key, i32 4
  %17 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %18 = load i32, ptr %add.ptr.i.i, align 1
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #5
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %1, align 4
  %add.ptr3.i.i = getelementptr i8, ptr %key, i32 8
  %21 = ptrtoint ptr %add.ptr3.i.i to i32
  call void @__asan_loadN_noabort(i32 %21, i32 4)
  %22 = load i32, ptr %add.ptr3.i.i, align 1
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #5
  %24 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %2, align 4
  %add.ptr6.i.i = getelementptr i8, ptr %key, i32 12
  %25 = ptrtoint ptr %add.ptr6.i.i to i32
  call void @__asan_loadN_noabort(i32 %25, i32 4)
  %26 = load i32, ptr %add.ptr6.i.i, align 1
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #5
  %28 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %3, align 4
  %add.ptr9.i.i = getelementptr i8, ptr %key, i32 16
  %29 = ptrtoint ptr %add.ptr9.i.i to i32
  call void @__asan_loadN_noabort(i32 %29, i32 4)
  %30 = load i32, ptr %add.ptr9.i.i, align 1
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #5
  %32 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %4, align 4
  %add.ptr12.i.i = getelementptr i8, ptr %key, i32 20
  %33 = ptrtoint ptr %add.ptr12.i.i to i32
  call void @__asan_loadN_noabort(i32 %33, i32 4)
  %34 = load i32, ptr %add.ptr12.i.i, align 1
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #5
  %36 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %5, align 4
  %add.ptr15.i.i = getelementptr i8, ptr %key, i32 24
  %37 = ptrtoint ptr %add.ptr15.i.i to i32
  call void @__asan_loadN_noabort(i32 %37, i32 4)
  %38 = load i32, ptr %add.ptr15.i.i, align 1
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #5
  %40 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %6, align 4
  %add.ptr18.i.i = getelementptr i8, ptr %key, i32 28
  %41 = ptrtoint ptr %add.ptr18.i.i to i32
  call void @__asan_loadN_noabort(i32 %41, i32 4)
  %42 = load i32, ptr %add.ptr18.i.i, align 1
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #5
  %44 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %7, align 4
  call void @chacha_init_arch(ptr noundef nonnull %chacha_state, ptr noundef nonnull %k.i, ptr noundef %nonce) #5
  call void @hchacha_block_arch(ptr noundef nonnull %chacha_state, ptr noundef nonnull %k.i, i32 noundef 20) #5
  call void @chacha_init_arch(ptr noundef nonnull %chacha_state, ptr noundef nonnull %k.i, ptr noundef nonnull %iv.i) #5
  %45 = call ptr @memset(ptr %k.i, i32 0, i32 32)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %k.i) #5, !srcloc !34
  %46 = call ptr @memset(ptr %iv.i, i32 0, i32 16)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %iv.i) #5, !srcloc !34
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %iv.i) #5
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %k.i) #5
  %call = call fastcc zeroext i1 @__chacha20poly1305_decrypt(ptr noundef %dst, ptr noundef %src, i32 noundef %src_len, ptr noundef %ad, i32 noundef %ad_len, ptr noundef nonnull %chacha_state)
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %chacha_state) #5
  ret i1 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @chacha20poly1305_encrypt_sg_inplace(ptr noundef %src, i32 noundef %src_len, ptr noundef %ad, i32 noundef %ad_len, i64 noundef %nonce, ptr nocapture noundef readonly %key) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc zeroext i1 @chacha20poly1305_crypt_sg_inplace(ptr noundef %src, i32 noundef %src_len, ptr noundef %ad, i32 noundef %ad_len, i64 noundef %nonce, ptr noundef %key, i32 noundef 1)
  ret i1 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @chacha20poly1305_crypt_sg_inplace(ptr noundef %src, i32 noundef %src_len, ptr noundef %ad, i32 noundef %ad_len, i64 noundef %nonce, ptr nocapture noundef readonly %key, i32 noundef %encrypt) unnamed_addr #0 align 64 {
entry:
  %poly1305_state = alloca %struct.poly1305_desc_ctx, align 8
  %chacha_state = alloca [16 x i32], align 4
  %miter = alloca %struct.sg_mapping_iter, align 4
  %b = alloca %union.anon.77, align 16
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @empty_zero_page to i32))
  %0 = load ptr, ptr @empty_zero_page, align 4
  %call = tail call ptr @page_address(ptr noundef %0) #5
  call void @llvm.lifetime.start.p0(i64 280, ptr nonnull %poly1305_state) #5
  %1 = call ptr @memset(ptr %poly1305_state, i32 255, i32 280)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %chacha_state) #5
  %2 = call ptr @memset(ptr %chacha_state, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %miter) #5
  %3 = call ptr @memset(ptr %miter, i32 255, i32 44)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %b) #5
  %4 = getelementptr inbounds i8, ptr %b, i32 48
  %5 = call ptr @memset(ptr %4, i32 255, i32 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %src_len)
  %cmp = icmp slt i32 %src_len, 0
  br i1 %cmp, label %do.end, label %if.end21, !prof !35

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 236, i32 noundef 9, ptr noundef null) #5
  br label %cleanup

if.end21:                                         ; preds = %entry
  %6 = ptrtoint ptr %key to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %key, align 1
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #5
  %9 = ptrtoint ptr %b to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %b, align 16
  %add.ptr.i = getelementptr i8, ptr %key, i32 4
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %add.ptr.i, align 1
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #5
  %arrayidx2.i = getelementptr inbounds i32, ptr %b, i32 1
  %13 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %arrayidx2.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %key, i32 8
  %14 = ptrtoint ptr %add.ptr3.i to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %add.ptr3.i, align 1
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #5
  %arrayidx5.i = getelementptr inbounds i32, ptr %b, i32 2
  %17 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %arrayidx5.i, align 8
  %add.ptr6.i = getelementptr i8, ptr %key, i32 12
  %18 = ptrtoint ptr %add.ptr6.i to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load i32, ptr %add.ptr6.i, align 1
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #5
  %arrayidx8.i = getelementptr inbounds i32, ptr %b, i32 3
  %21 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %arrayidx8.i, align 4
  %add.ptr9.i = getelementptr i8, ptr %key, i32 16
  %22 = ptrtoint ptr %add.ptr9.i to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %add.ptr9.i, align 1
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #5
  %arrayidx11.i = getelementptr inbounds i32, ptr %b, i32 4
  %25 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx11.i, align 16
  %add.ptr12.i = getelementptr i8, ptr %key, i32 20
  %26 = ptrtoint ptr %add.ptr12.i to i32
  call void @__asan_loadN_noabort(i32 %26, i32 4)
  %27 = load i32, ptr %add.ptr12.i, align 1
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #5
  %arrayidx14.i = getelementptr inbounds i32, ptr %b, i32 5
  %29 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %arrayidx14.i, align 4
  %add.ptr15.i = getelementptr i8, ptr %key, i32 24
  %30 = ptrtoint ptr %add.ptr15.i to i32
  call void @__asan_loadN_noabort(i32 %30, i32 4)
  %31 = load i32, ptr %add.ptr15.i, align 1
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #5
  %arrayidx17.i = getelementptr inbounds i32, ptr %b, i32 6
  %33 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %arrayidx17.i, align 8
  %add.ptr18.i = getelementptr i8, ptr %key, i32 28
  %34 = ptrtoint ptr %add.ptr18.i to i32
  call void @__asan_loadN_noabort(i32 %34, i32 4)
  %35 = load i32, ptr %add.ptr18.i, align 1
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #5
  %arrayidx20.i = getelementptr inbounds i32, ptr %b, i32 7
  %37 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %arrayidx20.i, align 4
  %iv = getelementptr inbounds %struct.anon.78, ptr %b, i32 0, i32 1
  %38 = ptrtoint ptr %iv to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 0, ptr %iv, align 16
  %39 = tail call i64 @llvm.bswap.i64(i64 %nonce)
  %arrayidx23 = getelementptr inbounds %struct.anon.78, ptr %b, i32 0, i32 1, i32 1
  %40 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %39, ptr %arrayidx23, align 8
  call void @chacha_init_arch(ptr noundef nonnull %chacha_state, ptr noundef nonnull %b, ptr noundef %iv) #5
  call void @chacha_crypt_arch(ptr noundef nonnull %chacha_state, ptr noundef nonnull %b, ptr noundef %call, i32 noundef 32, i32 noundef 20) #5
  call void @poly1305_init_arch(ptr noundef nonnull %poly1305_state, ptr noundef nonnull %b) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ad_len)
  %tobool32.not = icmp eq i32 %ad_len, 0
  br i1 %tobool32.not, label %if.end21.if.end44_crit_edge, label %if.then39, !prof !36

if.end21.if.end44_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end44

if.then39:                                        ; preds = %if.end21
  call void @poly1305_update_arch(ptr noundef nonnull %poly1305_state, ptr noundef %ad, i32 noundef %ad_len) #5
  %and = and i32 %ad_len, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool40.not = icmp eq i32 %and, 0
  br i1 %tobool40.not, label %if.then39.if.end44_crit_edge, label %if.then41

if.then39.if.end44_crit_edge:                     ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end44

if.then41:                                        ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #7
  %sub = sub nuw nsw i32 16, %and
  call void @poly1305_update_arch(ptr noundef nonnull %poly1305_state, ptr noundef %call, i32 noundef %sub) #5
  br label %if.end44

if.end44:                                         ; preds = %if.then41, %if.then39.if.end44_crit_edge, %if.end21.if.end44_crit_edge
  %call45 = call i32 @sg_nents(ptr noundef %src) #5
  call void @sg_miter_start(ptr noundef nonnull %miter, ptr noundef %src, i32 noundef %call45, i32 noundef 3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %src_len)
  %cmp46289.not = icmp eq i32 %src_len, 0
  br i1 %cmp46289.not, label %if.end44.if.end129_crit_edge, label %land.rhs.lr.ph

if.end44.if.end129_crit_edge:                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end129

land.rhs.lr.ph:                                   ; preds = %if.end44
  %addr48 = getelementptr inbounds %struct.sg_mapping_iter, ptr %miter, i32 0, i32 1
  %length49 = getelementptr inbounds %struct.sg_mapping_iter, ptr %miter, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %encrypt)
  %tobool52.not = icmp eq i32 %encrypt, 0
  br label %land.rhs

land.rhs:                                         ; preds = %if.end121.land.rhs_crit_edge, %land.rhs.lr.ph
  %partial.0292 = phi i32 [ 0, %land.rhs.lr.ph ], [ %partial.2, %if.end121.land.rhs_crit_edge ]
  %sl.0290 = phi i32 [ %src_len, %land.rhs.lr.ph ], [ %sub123, %if.end121.land.rhs_crit_edge ]
  %call47 = call zeroext i1 @sg_miter_next(ptr noundef nonnull %miter) #5
  br i1 %call47, label %for.body, label %land.rhs.for.end_crit_edge

land.rhs.for.end_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %land.rhs
  %41 = ptrtoint ptr %addr48 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %addr48, align 4
  %43 = ptrtoint ptr %length49 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %length49, align 4
  %45 = call i32 @llvm.umin.i32(i32 %sl.0290, i32 %44)
  br i1 %tobool52.not, label %if.then53, label %for.body.if.end54_crit_edge

for.body.if.end54_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end54

if.then53:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  call void @poly1305_update_arch(ptr noundef nonnull %poly1305_state, ptr noundef %42, i32 noundef %45) #5
  br label %if.end54

if.end54:                                         ; preds = %if.then53, %for.body.if.end54_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %partial.0292)
  %tobool55.not = icmp eq i32 %partial.0292, 0
  br i1 %tobool55.not, label %if.end54.if.end74_crit_edge, label %if.then62, !prof !36

if.end54.if.end74_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end74

if.then62:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #7
  %sub63 = sub i32 64, %partial.0292
  %46 = call i32 @llvm.umin.i32(i32 %45, i32 %sub63)
  %add.ptr = getelementptr i8, ptr %b, i32 %partial.0292
  call void @__crypto_xor(ptr noundef %42, ptr noundef %42, ptr noundef %add.ptr, i32 noundef %46) #5
  %add = add i32 %46, %partial.0292
  %and71 = and i32 %add, 63
  %add.ptr72 = getelementptr i8, ptr %42, i32 %46
  %sub73 = sub i32 %45, %46
  br label %if.end74

if.end74:                                         ; preds = %if.then62, %if.end54.if.end74_crit_edge
  %addr.0 = phi ptr [ %add.ptr72, %if.then62 ], [ %42, %if.end54.if.end74_crit_edge ]
  %length.0 = phi i32 [ %sub73, %if.then62 ], [ %45, %if.end54.if.end74_crit_edge ]
  %partial.1 = phi i32 [ %and71, %if.then62 ], [ 0, %if.end54.if.end74_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %length.0)
  %cmp75 = icmp ugt i32 %length.0, 63
  call void @__sanitizer_cov_trace_cmp4(i32 %length.0, i32 %sl.0290)
  %cmp76 = icmp eq i32 %length.0, %sl.0290
  %spec.select = select i1 %cmp75, i1 true, i1 %cmp76
  br i1 %spec.select, label %if.then83, label %if.end74.if.end98_crit_edge, !prof !36

if.end74.if.end98_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end98

if.then83:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_cmp4(i32 %length.0, i32 %sl.0290)
  %cmp85 = icmp ult i32 %length.0, %sl.0290
  br i1 %cmp85, label %if.then92, label %if.then83.if.end94_crit_edge, !prof !35

if.then83.if.end94_crit_edge:                     ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end94

if.then92:                                        ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #7
  %and93 = and i32 %length.0, -64
  br label %if.end94

if.end94:                                         ; preds = %if.then92, %if.then83.if.end94_crit_edge
  %l84.0 = phi i32 [ %and93, %if.then92 ], [ %length.0, %if.then83.if.end94_crit_edge ]
  call void @chacha_crypt_arch(ptr noundef nonnull %chacha_state, ptr noundef %addr.0, ptr noundef %addr.0, i32 noundef %l84.0, i32 noundef 20) #5
  %add.ptr96 = getelementptr i8, ptr %addr.0, i32 %l84.0
  %sub97 = sub i32 %length.0, %l84.0
  br label %if.end98

if.end98:                                         ; preds = %if.end94, %if.end74.if.end98_crit_edge
  %addr.1 = phi ptr [ %add.ptr96, %if.end94 ], [ %addr.0, %if.end74.if.end98_crit_edge ]
  %length.1 = phi i32 [ %sub97, %if.end94 ], [ %length.0, %if.end74.if.end98_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %length.1)
  %cmp99.not = icmp eq i32 %length.1, 0
  br i1 %cmp99.not, label %if.end98.if.end110_crit_edge, label %if.then106, !prof !36

if.end98.if.end110_crit_edge:                     ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end110

if.then106:                                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #7
  call void @chacha_crypt_arch(ptr noundef nonnull %chacha_state, ptr noundef nonnull %b, ptr noundef %call, i32 noundef 64, i32 noundef 20) #5
  call void @__crypto_xor(ptr noundef %addr.1, ptr noundef %addr.1, ptr noundef nonnull %b, i32 noundef %length.1) #5
  br label %if.end110

if.end110:                                        ; preds = %if.then106, %if.end98.if.end110_crit_edge
  %partial.2 = phi i32 [ %partial.1, %if.end98.if.end110_crit_edge ], [ %length.1, %if.then106 ]
  br i1 %tobool52.not, label %if.end110.if.end121_crit_edge, label %if.then112

if.end110.if.end121_crit_edge:                    ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end121

if.then112:                                       ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #7
  %47 = ptrtoint ptr %addr48 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %addr48, align 4
  %49 = ptrtoint ptr %length49 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %length49, align 4
  %51 = call i32 @llvm.umin.i32(i32 %sl.0290, i32 %50)
  call void @poly1305_update_arch(ptr noundef nonnull %poly1305_state, ptr noundef %48, i32 noundef %51) #5
  br label %if.end121

if.end121:                                        ; preds = %if.then112, %if.end110.if.end121_crit_edge
  %52 = ptrtoint ptr %length49 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %length49, align 4
  %sub123 = sub i32 %sl.0290, %53
  %cmp46 = icmp sgt i32 %sub123, 0
  br i1 %cmp46, label %if.end121.land.rhs_crit_edge, label %if.end121.for.end_crit_edge

if.end121.for.end_crit_edge:                      ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end121.land.rhs_crit_edge:                     ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs

for.end:                                          ; preds = %if.end121.for.end_crit_edge, %land.rhs.for.end_crit_edge
  %sl.0.lcssa = phi i32 [ %sl.0290, %land.rhs.for.end_crit_edge ], [ %sub123, %if.end121.for.end_crit_edge ]
  %and124 = and i32 %src_len, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and124)
  %tobool125.not = icmp eq i32 %and124, 0
  br i1 %tobool125.not, label %for.end.if.end129_crit_edge, label %if.then126

for.end.if.end129_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end129

if.then126:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %sub128 = sub nuw nsw i32 16, %and124
  call void @poly1305_update_arch(ptr noundef nonnull %poly1305_state, ptr noundef %call, i32 noundef %sub128) #5
  br label %if.end129

if.end129:                                        ; preds = %if.then126, %for.end.if.end129_crit_edge, %if.end44.if.end129_crit_edge
  %sl.0.lcssa297 = phi i32 [ %sl.0.lcssa, %if.then126 ], [ %sl.0.lcssa, %for.end.if.end129_crit_edge ], [ 0, %if.end44.if.end129_crit_edge ]
  %conv = zext i32 %ad_len to i64
  %54 = call i64 @llvm.bswap.i64(i64 %conv)
  %55 = ptrtoint ptr %b to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 %54, ptr %b, align 16
  %conv131 = zext i32 %src_len to i64
  %56 = call i64 @llvm.bswap.i64(i64 %conv131)
  %57 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 %56, ptr %arrayidx5.i, align 8
  call void @poly1305_update_arch(ptr noundef nonnull %poly1305_state, ptr noundef nonnull %b, i32 noundef 16) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -15, i32 %sl.0.lcssa297)
  %cmp134 = icmp slt i32 %sl.0.lcssa297, -15
  br i1 %cmp134, label %if.then142, label %if.then172, !prof !36

if.then142:                                       ; preds = %if.end129
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %encrypt)
  %tobool143.not = icmp eq i32 %encrypt, 0
  br i1 %tobool143.not, label %if.else, label %if.then144

if.then144:                                       ; preds = %if.then142
  call void @__sanitizer_cov_trace_pc() #7
  %addr145 = getelementptr inbounds %struct.sg_mapping_iter, ptr %miter, i32 0, i32 1
  %58 = ptrtoint ptr %addr145 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %addr145, align 4
  %length146 = getelementptr inbounds %struct.sg_mapping_iter, ptr %miter, i32 0, i32 2
  %60 = ptrtoint ptr %length146 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %length146, align 4
  %add.ptr147 = getelementptr i8, ptr %59, i32 %61
  %add.ptr148 = getelementptr i8, ptr %add.ptr147, i32 %sl.0.lcssa297
  call void @poly1305_final_arch(ptr noundef nonnull %poly1305_state, ptr noundef %add.ptr148) #5
  br label %if.end163.thread

if.else:                                          ; preds = %if.then142
  call void @__sanitizer_cov_trace_pc() #7
  call void @poly1305_final_arch(ptr noundef nonnull %poly1305_state, ptr noundef nonnull %b) #5
  %addr154 = getelementptr inbounds %struct.sg_mapping_iter, ptr %miter, i32 0, i32 1
  %62 = ptrtoint ptr %addr154 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %addr154, align 4
  %length155 = getelementptr inbounds %struct.sg_mapping_iter, ptr %miter, i32 0, i32 2
  %64 = ptrtoint ptr %length155 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %length155, align 4
  %add.ptr156 = getelementptr i8, ptr %63, i32 %65
  %add.ptr157 = getelementptr i8, ptr %add.ptr156, i32 %sl.0.lcssa297
  %call.i = call i32 @__crypto_memneq(ptr noundef nonnull %b, ptr noundef %add.ptr157, i32 noundef 16) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not.i.not = icmp eq i32 %call.i, 0
  br label %if.end163.thread

if.end163.thread:                                 ; preds = %if.else, %if.then144
  %ret.0.off0.ph = phi i1 [ %cmp.not.i.not, %if.else ], [ true, %if.then144 ]
  call void @sg_miter_stop(ptr noundef nonnull %miter) #5
  br label %if.end193

if.then172:                                       ; preds = %if.end129
  call void @sg_miter_stop(ptr noundef nonnull %miter) #5
  call void @poly1305_final_arch(ptr noundef nonnull %poly1305_state, ptr noundef %arrayidx11.i) #5
  %arrayidx177 = getelementptr [2 x [16 x i8]], ptr %b, i32 0, i32 %encrypt
  call void @scatterwalk_map_and_copy(ptr noundef %arrayidx177, ptr noundef %src, i32 noundef %src_len, i32 noundef 16, i32 noundef %encrypt) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %encrypt)
  %tobool179.not = icmp eq i32 %encrypt, 0
  br i1 %tobool179.not, label %lor.rhs180, label %if.then172.if.end193_crit_edge

if.then172.if.end193_crit_edge:                   ; preds = %if.then172
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end193

lor.rhs180:                                       ; preds = %if.then172
  call void @__sanitizer_cov_trace_pc() #7
  %call.i284 = call i32 @__crypto_memneq(ptr noundef nonnull %b, ptr noundef %arrayidx11.i, i32 noundef 16) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i284)
  %cmp.not.i285.not = icmp eq i32 %call.i284, 0
  br label %if.end193

if.end193:                                        ; preds = %lor.rhs180, %if.then172.if.end193_crit_edge, %if.end163.thread
  %ret.1.off0 = phi i1 [ true, %if.then172.if.end193_crit_edge ], [ %cmp.not.i285.not, %lor.rhs180 ], [ %ret.0.off0.ph, %if.end163.thread ]
  %66 = call ptr @memset(ptr %chacha_state, i32 0, i32 64)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %chacha_state) #5, !srcloc !34
  %67 = call ptr @memset(ptr %b, i32 0, i32 64)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %b) #5, !srcloc !34
  br label %cleanup

cleanup:                                          ; preds = %if.end193, %do.end
  %retval.0 = phi i1 [ false, %do.end ], [ %ret.1.off0, %if.end193 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %b) #5
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %miter) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %chacha_state) #5
  call void @llvm.lifetime.end.p0(i64 280, ptr nonnull %poly1305_state) #5
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @chacha20poly1305_decrypt_sg_inplace(ptr noundef %src, i32 noundef %src_len, ptr noundef %ad, i32 noundef %ad_len, i64 noundef %nonce, ptr nocapture noundef readonly %key) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %src_len)
  %cmp = icmp ult i32 %src_len, 16
  br i1 %cmp, label %entry.return_crit_edge, label %if.end, !prof !35

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %sub = add i32 %src_len, -16
  %call = tail call fastcc zeroext i1 @chacha20poly1305_crypt_sg_inplace(ptr noundef %src, i32 noundef %sub, ptr noundef %ad, i32 noundef %ad_len, i64 noundef %nonce, ptr noundef %key, i32 noundef 0)
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i1 [ %call, %if.end ], [ false, %entry.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @chacha20poly1305_exit() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @chacha20poly1305_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @chacha_init_arch(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @chacha_crypt_arch(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @poly1305_init_arch(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @poly1305_update_arch(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @poly1305_final_arch(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @hchacha_block_arch(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__crypto_memneq(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_miter_start(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_nents(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sg_miter_next(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_miter_stop(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @scatterwalk_map_and_copy(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__crypto_xor(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !19, !21, !23}
!llvm.module.flags = !{!25, !26, !27, !28, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{ptr @__ksymtab_chacha20poly1305_encrypt, !1, !"__ksymtab_chacha20poly1305_encrypt", i1 false, i1 false}
!1 = !{!"../lib/crypto/chacha20poly1305.c", i32 110, i32 1}
!2 = !{ptr @__ksymtab_xchacha20poly1305_encrypt, !3, !"__ksymtab_xchacha20poly1305_encrypt", i1 false, i1 false}
!3 = !{!"../lib/crypto/chacha20poly1305.c", i32 122, i32 1}
!4 = !{ptr @__ksymtab_chacha20poly1305_decrypt, !5, !"__ksymtab_chacha20poly1305_decrypt", i1 false, i1 false}
!5 = !{!"../lib/crypto/chacha20poly1305.c", i32 192, i32 1}
!6 = !{ptr @__ksymtab_xchacha20poly1305_decrypt, !7, !"__ksymtab_xchacha20poly1305_decrypt", i1 false, i1 false}
!7 = !{!"../lib/crypto/chacha20poly1305.c", i32 205, i32 1}
!8 = !{ptr @__ksymtab_chacha20poly1305_encrypt_sg_inplace, !9, !"__ksymtab_chacha20poly1305_encrypt_sg_inplace", i1 false, i1 false}
!9 = !{!"../lib/crypto/chacha20poly1305.c", i32 341, i32 1}
!10 = !{ptr @__ksymtab_chacha20poly1305_decrypt_sg_inplace, !11, !"__ksymtab_chacha20poly1305_decrypt_sg_inplace", i1 false, i1 false}
!11 = !{!"../lib/crypto/chacha20poly1305.c", i32 355, i32 1}
!12 = !{ptr @__initcall__kmod_libchacha20poly1305__245_369_chacha20poly1305_init6, !13, !"__initcall__kmod_libchacha20poly1305__245_369_chacha20poly1305_init6", i1 false, i1 false}
!13 = !{!"../lib/crypto/chacha20poly1305.c", i32 369, i32 1}
!14 = !{ptr @__exitcall_chacha20poly1305_exit, !15, !"__exitcall_chacha20poly1305_exit", i1 false, i1 false}
!15 = !{!"../lib/crypto/chacha20poly1305.c", i32 370, i32 1}
!16 = !{ptr @__UNIQUE_ID_file246, !17, !"__UNIQUE_ID_file246", i1 false, i1 false}
!17 = !{!"../lib/crypto/chacha20poly1305.c", i32 371, i32 1}
!18 = !{ptr @__UNIQUE_ID_license247, !17, !"__UNIQUE_ID_license247", i1 false, i1 false}
!19 = !{ptr @__UNIQUE_ID_description248, !20, !"__UNIQUE_ID_description248", i1 false, i1 false}
!20 = !{!"../lib/crypto/chacha20poly1305.c", i32 372, i32 1}
!21 = !{ptr @__UNIQUE_ID_author249, !22, !"__UNIQUE_ID_author249", i1 false, i1 false}
!22 = !{!"../lib/crypto/chacha20poly1305.c", i32 373, i32 1}
!23 = !{ptr @.str, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../lib/crypto/chacha20poly1305.c", i32 236, i32 6}
!25 = !{i32 1, !"wchar_size", i32 2}
!26 = !{i32 1, !"min_enum_size", i32 4}
!27 = !{i32 8, !"branch-target-enforcement", i32 0}
!28 = !{i32 8, !"sign-return-address", i32 0}
!29 = !{i32 8, !"sign-return-address-all", i32 0}
!30 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!31 = !{i32 7, !"uwtable", i32 1}
!32 = !{i32 7, !"frame-pointer", i32 2}
!33 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!34 = !{i64 2149223967}
!35 = !{!"branch_weights", i32 1, i32 2000}
!36 = !{!"branch_weights", i32 2000, i32 1}
