; ModuleID = '/llk/IR_all_yes/crypto/kdf_sp800108.c_pt.bc'
source_filename = "../crypto/kdf_sp800108.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+crypto_kdf108_ctr_generate\22, \22a\22\09"
module asm "\09.weak\09__crc_crypto_kdf108_ctr_generate\09\09\09\09"
module asm "\09.long\09__crc_crypto_kdf108_ctr_generate\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_kdf108_ctr_generate:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_kdf108_ctr_generate\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_kdf108_ctr_generate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+crypto_kdf108_setkey\22, \22a\22\09"
module asm "\09.weak\09__crc_crypto_kdf108_setkey\09\09\09\09"
module asm "\09.long\09__crc_crypto_kdf108_setkey\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_kdf108_setkey:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_kdf108_setkey\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_kdf108_setkey:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.kdf_testvec = type { ptr, i32, ptr, i32, %struct.kvec, ptr, i32 }
%struct.kvec = type { ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.crypto_shash = type { i32, [124 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }

@__kstrtab_crypto_kdf108_ctr_generate = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_kdf108_ctr_generate = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_kdf108_ctr_generate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_kdf108_ctr_generate to i32), ptr @__kstrtab_crypto_kdf108_ctr_generate, ptr @__kstrtabns_crypto_kdf108_ctr_generate }, section "___ksymtab+crypto_kdf108_ctr_generate", align 4
@__kstrtab_crypto_kdf108_setkey = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_kdf108_setkey = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_kdf108_setkey = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_kdf108_setkey to i32), ptr @__kstrtab_crypto_kdf108_setkey, ptr @__kstrtabns_crypto_kdf108_setkey }, section "___ksymtab+crypto_kdf108_setkey", align 4
@__initcall__kmod_kdf_sp800108__175_148_crypto_kdf108_init6 = internal global ptr @crypto_kdf108_init, section ".initcall6.init", align 4
@__exitcall_crypto_kdf108_exit = internal global ptr @crypto_kdf108_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file176 = internal constant [38 x i8] c"kdf_sp800108.file=crypto/kdf_sp800108\00", section ".modinfo", align 1
@__UNIQUE_ID_license177 = internal constant [28 x i8] c"kdf_sp800108.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author178 = internal constant [58 x i8] c"kdf_sp800108.author=Stephan Mueller <smueller@chronox.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description179 = internal constant [73 x i8] c"kdf_sp800108.description=Key Derivation Function conformant to SP800-108\00", section ".modinfo", align 1
@kdf_ctr_hmac_sha256_tv_template = internal constant { [1 x %struct.kdf_testvec], [32 x i8] } { [1 x %struct.kdf_testvec] [%struct.kdf_testvec { ptr @.str.14, i32 32, ptr null, i32 0, %struct.kvec { ptr @.str.15, i32 60 }, ptr @.str.16, i32 16 }], [32 x i8] zeroinitializer }, align 32
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"hmac(sha256)\00", [19 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"crypto/kdf_sp800108.c\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"alg: self-tests for CTR-KDF (hmac(sha256)) failed (rc=%d)\0A\00", [37 x i8] zeroinitializer }, align 32
@crypto_kdf108_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.1, i32 140, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\016alg: self-tests for CTR-KDF (hmac(sha256)) passed\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"crypto_kdf108_init\00", [45 x i8] zeroinitializer }, align 32
@crypto_kdf108_init._entry_ptr = internal global ptr @crypto_kdf108_init._entry, section ".printk_index", align 4
@kdf_test._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 43, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013alg: kdf: could not allocate hash handle for %s\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"kdf_test\00", [23 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"include/crypto/internal/kdf_selftest.h\00", [57 x i8] zeroinitializer }, align 32
@kdf_test._entry_ptr = internal global ptr @kdf_test._entry, section ".printk_index", align 4
@kdf_test._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.6, ptr @.str.7, i32 51, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013alg: kdf: could not set key derivation key\0A\00", [50 x i8] zeroinitializer }, align 32
@kdf_test._entry_ptr.10 = internal global ptr @kdf_test._entry.8, section ".printk_index", align 4
@kdf_test._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.6, ptr @.str.7, i32 57, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013alg: kdf: could not obtain key data\0A\00", [57 x i8] zeroinitializer }, align 32
@kdf_test._entry_ptr.13 = internal global ptr @kdf_test._entry.11, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.14 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\DD\1D\91\B7\D9\0B+\D3\13\853\CE\92\B2r\FB\F8\A3i1j\EF\E2B\E6Y\CC\0A\E28\AF\E0\00", [63 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\012+\96\B3\0A\CD\19yyDNF\8E\1C\\hY\BF\1B\1C\F9Q\B7\E7%0>#~F\B8d\A1E\FA\B2^Q{\08\F8h=\03\15\BB)\11\D8\0A\0E\8A\BA\17\F3\B4\13\FA\AC\00", [35 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\10b\13B\BF\B0\FD@\04l\0E)\F2\CF\DB\F0\00", [47 x i8] zeroinitializer }, align 32
@___asan_gen_.17 = private unnamed_addr constant [32 x i8] c"kdf_ctr_hmac_sha256_tv_template\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 100, i32 33 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 128, i32 58 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 136, i32 3 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 140, i32 3 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 42, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 51, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.60 = private unnamed_addr constant [42 x i8] c"../include/crypto/internal/kdf_selftest.h\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 57, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 102, i32 10 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 110, i32 16 }
@___asan_gen_.68 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.69 = private constant [25 x i8] c"../crypto/kdf_sp800108.c\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 120, i32 17 }
@llvm.compiler.used = appending global [31 x ptr] [ptr @__UNIQUE_ID_author178, ptr @__UNIQUE_ID_description179, ptr @__UNIQUE_ID_file176, ptr @__UNIQUE_ID_license177, ptr @__exitcall_crypto_kdf108_exit, ptr @__initcall__kmod_kdf_sp800108__175_148_crypto_kdf108_init6, ptr @__ksymtab_crypto_kdf108_ctr_generate, ptr @__ksymtab_crypto_kdf108_setkey, ptr @crypto_kdf108_exit, ptr @crypto_kdf108_init._entry, ptr @crypto_kdf108_init._entry_ptr, ptr @kdf_test._entry, ptr @kdf_test._entry.11, ptr @kdf_test._entry.8, ptr @kdf_test._entry_ptr, ptr @kdf_test._entry_ptr.10, ptr @kdf_test._entry_ptr.13, ptr @kdf_ctr_hmac_sha256_tv_template, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kdf_ctr_hmac_sha256_tv_template to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crypto_kdf108_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kdf_test._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kdf_test._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kdf_test._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @crypto_kdf108_ctr_generate(ptr noundef %kmd, ptr nocapture noundef readonly %info, i32 noundef %info_nvec, ptr noundef %dst, i32 noundef %dlen) #0 align 64 {
entry:
  %__desc_desc = alloca [376 x i8], align 8
  %counter = alloca i32, align 4
  %tmpbuffer = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 376, ptr nonnull %__desc_desc) #8
  %0 = call ptr @memset(ptr %__desc_desc, i32 255, i32 376)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %counter) #8
  %1 = ptrtoint ptr %counter to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %counter, align 4
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_shash, ptr %kmd, i32 0, i32 2, i32 3
  %2 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %__crt_alg.i.i, align 4
  %digestsize.i = getelementptr i8, ptr %3, i32 -128
  %4 = ptrtoint ptr %digestsize.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %digestsize.i, align 128
  %6 = ptrtoint ptr %__desc_desc to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %kmd, ptr %__desc_desc, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dlen)
  %tobool.not85 = icmp eq i32 %dlen, 0
  br i1 %tobool.not85, label %entry.if.end28_crit_edge, label %while.body.lr.ph

entry.if.end28_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

while.body.lr.ph:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %info_nvec)
  %cmp83.not = icmp eq i32 %info_nvec, 0
  br label %while.body

while.body:                                       ; preds = %if.end25.while.body_crit_edge, %while.body.lr.ph
  %dlen.addr.087 = phi i32 [ %dlen, %while.body.lr.ph ], [ %sub, %if.end25.while.body_crit_edge ]
  %dst.addr.086 = phi ptr [ %dst, %while.body.lr.ph ], [ %add.ptr, %if.end25.while.body_crit_edge ]
  %7 = ptrtoint ptr %__desc_desc to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %__desc_desc, align 8
  %base.i.i.i = getelementptr inbounds %struct.crypto_shash, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %base.i.i.i, align 128
  %and.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %crypto_shash_init.exit, label %while.body.if.then27_crit_edge

while.body.if.then27_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then27

crypto_shash_init.exit:                           ; preds = %while.body
  %__crt_alg.i.i64 = getelementptr inbounds %struct.crypto_shash, ptr %8, i32 0, i32 2, i32 3
  %11 = ptrtoint ptr %__crt_alg.i.i64 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %__crt_alg.i.i64, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %12, i32 -256
  %13 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr.i.i.i, align 128
  %call3.i = call i32 %14(ptr noundef nonnull %__desc_desc) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool2.not = icmp eq i32 %call3.i, 0
  br i1 %tobool2.not, label %if.end, label %crypto_shash_init.exit.if.then27_crit_edge

crypto_shash_init.exit.if.then27_crit_edge:       ; preds = %crypto_shash_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then27

if.end:                                           ; preds = %crypto_shash_init.exit
  %call3 = call i32 @crypto_shash_update(ptr noundef nonnull %__desc_desc, ptr noundef nonnull %counter, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %for.cond.preheader, label %if.end.if.then27_crit_edge

if.end.if.then27_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then27

for.cond.preheader:                               ; preds = %if.end
  br i1 %cmp83.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.084, 1
  %exitcond.not = icmp eq i32 %inc, %info_nvec
  br i1 %exitcond.not, label %for.cond.for.end_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.084 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.kvec, ptr %info, i32 %i.084
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx, align 4
  %iov_len = getelementptr %struct.kvec, ptr %info, i32 %i.084, i32 1
  %17 = ptrtoint ptr %iov_len to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %iov_len, align 4
  %call8 = call i32 @crypto_shash_update(ptr noundef nonnull %__desc_desc, ptr noundef %16, i32 noundef %18) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %for.cond, label %for.body.if.then27_crit_edge

for.body.if.then27_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then27

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %dlen.addr.087, i32 %5)
  %cmp12 = icmp ult i32 %dlen.addr.087, %5
  br i1 %cmp12, label %if.then13, label %if.end21

if.then13:                                        ; preds = %for.end
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %tmpbuffer) #8
  %19 = call ptr @memset(ptr %tmpbuffer, i32 255, i32 64)
  %call15 = call i32 @crypto_shash_final(ptr noundef nonnull %__desc_desc, ptr noundef nonnull %tmpbuffer) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %out.thread74, label %out

out.thread74:                                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  %20 = call ptr @memcpy(ptr %dst.addr.086, ptr %tmpbuffer, i32 %dlen.addr.087)
  %21 = call ptr @memset(ptr %tmpbuffer, i32 0, i32 %5)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %tmpbuffer) #8, !srcloc !56
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %tmpbuffer) #8
  br label %if.end28

if.end21:                                         ; preds = %for.end
  %call22 = call i32 @crypto_shash_final(ptr noundef nonnull %__desc_desc, ptr noundef %dst.addr.086) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %if.end21.if.then27_crit_edge

if.end21.if.then27_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then27

if.end25:                                         ; preds = %if.end21
  %sub = sub i32 %dlen.addr.087, %5
  %add.ptr = getelementptr i8, ptr %dst.addr.086, i32 %5
  %22 = ptrtoint ptr %counter to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %counter, align 4
  %add = add i32 %23, 1
  store i32 %add, ptr %counter, align 4
  %tobool.not = icmp eq i32 %sub, 0
  br i1 %tobool.not, label %if.end25.if.end28_crit_edge, label %if.end25.while.body_crit_edge

if.end25.while.body_crit_edge:                    ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

if.end25.if.end28_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

out:                                              ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %tmpbuffer) #8
  br label %if.then27

if.then27:                                        ; preds = %out, %if.end21.if.then27_crit_edge, %for.body.if.then27_crit_edge, %if.end.if.then27_crit_edge, %crypto_shash_init.exit.if.then27_crit_edge, %while.body.if.then27_crit_edge
  %err.169 = phi i32 [ %call15, %out ], [ %call8, %for.body.if.then27_crit_edge ], [ -126, %while.body.if.then27_crit_edge ], [ %call3.i, %crypto_shash_init.exit.if.then27_crit_edge ], [ %call3, %if.end.if.then27_crit_edge ], [ %call22, %if.end21.if.then27_crit_edge ]
  %24 = call ptr @memset(ptr %dst, i32 0, i32 %dlen)
  call void asm sideeffect "", "r,~{memory}"(ptr %dst) #8, !srcloc !56
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %if.end25.if.end28_crit_edge, %out.thread74, %entry.if.end28_crit_edge
  %err.170 = phi i32 [ %err.169, %if.then27 ], [ 0, %out.thread74 ], [ 0, %entry.if.end28_crit_edge ], [ 0, %if.end25.if.end28_crit_edge ]
  %25 = ptrtoint ptr %__desc_desc to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %__desc_desc, align 8
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 128
  %add.i = add i32 %28, 8
  %29 = call ptr @memset(ptr %__desc_desc, i32 0, i32 %add.i)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %__desc_desc) #8, !srcloc !56
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %counter) #8
  call void @llvm.lifetime.end.p0(i64 376, ptr nonnull %__desc_desc) #8
  ret i32 %err.170
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_update(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_final(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @crypto_kdf108_setkey(ptr noundef %kmd, ptr noundef %key, i32 noundef %keylen, ptr noundef readnone %ikm, i32 noundef %ikmlen) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_shash, ptr %kmd, i32 0, i32 2, i32 3
  %0 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_alg.i.i, align 4
  %digestsize.i = getelementptr i8, ptr %1, i32 -128
  %2 = ptrtoint ptr %digestsize.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %digestsize.i, align 128
  %tobool.not = icmp ne ptr %ikm, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ikmlen)
  %tobool1.not = icmp ne i32 %ikmlen, 0
  %or.cond.not = or i1 %tobool.not, %tobool1.not
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %keylen)
  %cmp = icmp ugt i32 %3, %keylen
  %or.cond7 = select i1 %or.cond.not, i1 true, i1 %cmp
  br i1 %or.cond7, label %entry.cleanup_crit_edge, label %if.end3

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call4 = tail call i32 @crypto_shash_setkey(ptr noundef %kmd, ptr noundef %key, i32 noundef %keylen) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end3 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @crypto_kdf108_exit() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @crypto_kdf108_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 16) #11
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.do.end_crit_edge, label %if.end.i

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end.i:                                         ; preds = %entry
  %call1.i = tail call ptr @crypto_alloc_shash(ptr noundef nonnull @.str, i32 noundef 0, i32 noundef 0) #8
  %cmp.i.i = icmp ugt ptr %call1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %kdf_test.exit.thread30, label %if.end5.i

kdf_test.exit.thread30:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str) #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #8
  br label %do.end

if.end5.i:                                        ; preds = %if.end.i
  %__crt_alg.i.i.i.i = getelementptr inbounds %struct.crypto_shash, ptr %call1.i, i32 0, i32 2, i32 3
  %1 = ptrtoint ptr %__crt_alg.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %__crt_alg.i.i.i.i, align 4
  %digestsize.i.i.i = getelementptr i8, ptr %2, i32 -128
  %3 = ptrtoint ptr %digestsize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %digestsize.i.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %4)
  %cmp.i1.i = icmp ugt i32 %4, 32
  br i1 %cmp.i1.i, label %if.end5.i.kdf_test.exit.sink.split_crit_edge, label %crypto_kdf108_setkey.exit.i

if.end5.i.kdf_test.exit.sink.split_crit_edge:     ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %kdf_test.exit.sink.split

crypto_kdf108_setkey.exit.i:                      ; preds = %if.end5.i
  %call4.i.i = tail call i32 @crypto_shash_setkey(ptr noundef %call1.i, ptr noundef nonnull @.str.14, i32 noundef 32) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool7.not.i = icmp eq i32 %call4.i.i, 0
  br i1 %tobool7.not.i, label %if.end14.i, label %crypto_kdf108_setkey.exit.i.kdf_test.exit.sink.split_crit_edge

crypto_kdf108_setkey.exit.i.kdf_test.exit.sink.split_crit_edge: ; preds = %crypto_kdf108_setkey.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %kdf_test.exit.sink.split

if.end14.i:                                       ; preds = %crypto_kdf108_setkey.exit.i
  %call16.i = tail call i32 @crypto_kdf108_ctr_generate(ptr noundef %call1.i, ptr noundef getelementptr inbounds ([1 x %struct.kdf_testvec], ptr @kdf_ctr_hmac_sha256_tv_template, i32 0, i32 0, i32 4), i32 noundef 1, ptr noundef nonnull %call7.i.i.i, i32 noundef 16) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i, label %if.end24.i, label %if.end14.i.kdf_test.exit.sink.split_crit_edge

if.end14.i.kdf_test.exit.sink.split_crit_edge:    ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %kdf_test.exit.sink.split

if.end24.i:                                       ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  %bcmp.i = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(16) @.str.16, ptr noundef nonnull dereferenceable(16) %call7.i.i.i, i32 16) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool27.not.i = icmp eq i32 %bcmp.i, 0
  %spec.select = select i1 %tobool27.not.i, i32 0, i32 -22
  br label %kdf_test.exit

kdf_test.exit.sink.split:                         ; preds = %if.end14.i.kdf_test.exit.sink.split_crit_edge, %crypto_kdf108_setkey.exit.i.kdf_test.exit.sink.split_crit_edge, %if.end5.i.kdf_test.exit.sink.split_crit_edge
  %.str.9.sink = phi ptr [ @.str.9, %crypto_kdf108_setkey.exit.i.kdf_test.exit.sink.split_crit_edge ], [ @.str.9, %if.end5.i.kdf_test.exit.sink.split_crit_edge ], [ @.str.12, %if.end14.i.kdf_test.exit.sink.split_crit_edge ]
  %ret.0.i.ph = phi i32 [ %call4.i.i, %crypto_kdf108_setkey.exit.i.kdf_test.exit.sink.split_crit_edge ], [ -22, %if.end5.i.kdf_test.exit.sink.split_crit_edge ], [ %call16.i, %if.end14.i.kdf_test.exit.sink.split_crit_edge ]
  %call13.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.9.sink) #12
  br label %kdf_test.exit

kdf_test.exit:                                    ; preds = %kdf_test.exit.sink.split, %if.end24.i
  %ret.0.i = phi i32 [ %spec.select, %if.end24.i ], [ %ret.0.i.ph, %kdf_test.exit.sink.split ]
  %base.i.i.i = getelementptr inbounds %struct.crypto_shash, ptr %call1.i, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %call1.i, ptr noundef %base.i.i.i) #8
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %tobool.not = icmp eq i32 %ret.0.i, 0
  br i1 %tobool.not, label %do.end19, label %kdf_test.exit.do.end_crit_edge

kdf_test.exit.do.end_crit_edge:                   ; preds = %kdf_test.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %kdf_test.exit.do.end_crit_edge, %kdf_test.exit.thread30, %entry.do.end_crit_edge
  %retval.0.i29 = phi i32 [ %ret.0.i, %kdf_test.exit.do.end_crit_edge ], [ -12, %kdf_test.exit.thread30 ], [ -12, %entry.do.end_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 138, i32 noundef 9, ptr noundef nonnull @.str.2, i32 noundef %retval.0.i29) #8
  br label %if.end22

do.end19:                                         ; preds = %kdf_test.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #12
  br label %if.end22

if.end22:                                         ; preds = %do.end19, %do.end
  %retval.0.i28 = phi i32 [ 0, %do.end19 ], [ %retval.0.i29, %do.end ]
  ret i32 %retval.0.i28
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_shash(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind readonly willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }
attributes #13 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !19, !20, !22, !23, !24, !25, !27, !28, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !43, !45}
!llvm.module.flags = !{!47, !48, !49, !50, !51, !52, !53, !54}
!llvm.ident = !{!55}

!0 = !{ptr @__ksymtab_crypto_kdf108_ctr_generate, !1, !"__ksymtab_crypto_kdf108_ctr_generate", i1 false, i1 false}
!1 = !{!"../crypto/kdf_sp800108.c", i32 72, i32 1}
!2 = !{ptr @__ksymtab_crypto_kdf108_setkey, !3, !"__ksymtab_crypto_kdf108_setkey", i1 false, i1 false}
!3 = !{!"../crypto/kdf_sp800108.c", i32 94, i32 1}
!4 = !{ptr @__initcall__kmod_kdf_sp800108__175_148_crypto_kdf108_init6, !5, !"__initcall__kmod_kdf_sp800108__175_148_crypto_kdf108_init6", i1 false, i1 false}
!5 = !{!"../crypto/kdf_sp800108.c", i32 148, i32 1}
!6 = !{ptr @__exitcall_crypto_kdf108_exit, !7, !"__exitcall_crypto_kdf108_exit", i1 false, i1 false}
!7 = !{!"../crypto/kdf_sp800108.c", i32 149, i32 1}
!8 = !{ptr @__UNIQUE_ID_file176, !9, !"__UNIQUE_ID_file176", i1 false, i1 false}
!9 = !{!"../crypto/kdf_sp800108.c", i32 151, i32 1}
!10 = !{ptr @__UNIQUE_ID_license177, !9, !"__UNIQUE_ID_license177", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_author178, !12, !"__UNIQUE_ID_author178", i1 false, i1 false}
!12 = !{!"../crypto/kdf_sp800108.c", i32 152, i32 1}
!13 = !{ptr @__UNIQUE_ID_description179, !14, !"__UNIQUE_ID_description179", i1 false, i1 false}
!14 = !{!"../crypto/kdf_sp800108.c", i32 153, i32 1}
!15 = !{ptr @.str, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../crypto/kdf_sp800108.c", i32 128, i32 58}
!17 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../crypto/kdf_sp800108.c", i32 136, i32 3}
!19 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../crypto/kdf_sp800108.c", i32 140, i32 3}
!22 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @crypto_kdf108_init._entry, !21, !"_entry", i1 false, i1 false}
!24 = !{ptr @crypto_kdf108_init._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../include/crypto/internal/kdf_selftest.h", i32 42, i32 3}
!27 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @kdf_test._entry, !26, !"_entry", i1 false, i1 false}
!30 = !{ptr @kdf_test._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../include/crypto/internal/kdf_selftest.h", i32 51, i32 3}
!33 = !{ptr @kdf_test._entry.8, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @kdf_test._entry_ptr.10, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../include/crypto/internal/kdf_selftest.h", i32 57, i32 3}
!37 = !{ptr @kdf_test._entry.11, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @kdf_test._entry_ptr.13, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../crypto/kdf_sp800108.c", i32 102, i32 10}
!41 = !{ptr @.str.15, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../crypto/kdf_sp800108.c", i32 110, i32 16}
!43 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../crypto/kdf_sp800108.c", i32 120, i32 17}
!45 = !{ptr @kdf_ctr_hmac_sha256_tv_template, !46, !"kdf_ctr_hmac_sha256_tv_template", i1 false, i1 false}
!46 = !{!"../crypto/kdf_sp800108.c", i32 100, i32 33}
!47 = !{i32 1, !"wchar_size", i32 2}
!48 = !{i32 1, !"min_enum_size", i32 4}
!49 = !{i32 8, !"branch-target-enforcement", i32 0}
!50 = !{i32 8, !"sign-return-address", i32 0}
!51 = !{i32 8, !"sign-return-address-all", i32 0}
!52 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!53 = !{i32 7, !"uwtable", i32 1}
!54 = !{i32 7, !"frame-pointer", i32 2}
!55 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!56 = !{i64 2149012734}
