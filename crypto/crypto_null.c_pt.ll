; ModuleID = '/llk/IR_all_yes/crypto/crypto_null.c_pt.bc'
source_filename = "../crypto/crypto_null.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+crypto_get_default_null_skcipher\22, \22a\22\09"
module asm "\09.weak\09__crc_crypto_get_default_null_skcipher\09\09\09\09"
module asm "\09.long\09__crc_crypto_get_default_null_skcipher\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_get_default_null_skcipher:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_get_default_null_skcipher\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_get_default_null_skcipher:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+crypto_put_default_null_skcipher\22, \22a\22\09"
module asm "\09.weak\09__crc_crypto_put_default_null_skcipher\09\09\09\09"
module asm "\09.long\09__crc_crypto_put_default_null_skcipher\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_put_default_null_skcipher:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_put_default_null_skcipher\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_put_default_null_skcipher:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.shash_alg = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [84 x i8], i32, i32, [120 x i8], %struct.crypto_alg }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon, ptr, ptr, ptr, ptr, %union.anon.68, [120 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%union.anon.68 = type { %struct.crypto_istat_akcipher }
%struct.crypto_istat_akcipher = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.skcipher_alg = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [88 x i8], %struct.crypto_alg }
%struct.compress_alg = type { ptr, ptr }
%struct.crypto_skcipher = type { i32, [124 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.skcipher_walk = type { %union.anon.75, %union.anon.75, %struct.scatter_walk, i32, %struct.scatter_walk, i32, %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32 }
%union.anon.75 = type { %struct.anon.76 }
%struct.anon.76 = type { ptr, i32 }
%struct.scatter_walk = type { ptr, i32 }
%struct.anon.77 = type { ptr, ptr }

@__UNIQUE_ID_alias_userspace226 = internal constant [32 x i8] c"crypto_null.alias=compress_null\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto227 = internal constant [39 x i8] c"crypto_null.alias=crypto-compress_null\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace228 = internal constant [30 x i8] c"crypto_null.alias=digest_null\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto229 = internal constant [37 x i8] c"crypto_null.alias=crypto-digest_null\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace230 = internal constant [30 x i8] c"crypto_null.alias=cipher_null\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto231 = internal constant [37 x i8] c"crypto_null.alias=crypto-cipher_null\00", section ".modinfo", align 1
@crypto_default_null_skcipher_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @crypto_default_null_skcipher_lock, i64 52), ptr getelementptr (i8, ptr @crypto_default_null_skcipher_lock, i64 52) }, ptr @crypto_default_null_skcipher_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.2, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@crypto_default_null_skcipher = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ecb(cipher_null)\00", [47 x i8] zeroinitializer }, align 32
@crypto_default_null_skcipher_refcnt = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__kstrtab_crypto_get_default_null_skcipher = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_get_default_null_skcipher = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_get_default_null_skcipher = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_get_default_null_skcipher to i32), ptr @__kstrtab_crypto_get_default_null_skcipher, ptr @__kstrtabns_crypto_get_default_null_skcipher }, section "___ksymtab_gpl+crypto_get_default_null_skcipher", align 4
@__kstrtab_crypto_put_default_null_skcipher = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_put_default_null_skcipher = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_put_default_null_skcipher = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_put_default_null_skcipher to i32), ptr @__kstrtab_crypto_put_default_null_skcipher, ptr @__kstrtabns_crypto_put_default_null_skcipher }, section "___ksymtab_gpl+crypto_put_default_null_skcipher", align 4
@digest_null = internal global %struct.shash_alg { ptr @null_init, ptr @null_update, ptr @null_final, ptr @null_digest, ptr @null_digest, ptr null, ptr null, ptr @null_hash_setkey, ptr null, ptr null, i32 0, [84 x i8] undef, i32 0, i32 0, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 1, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"digest_null\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"digest_null-generic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.68 zeroinitializer, [120 x i8] undef } }, align 128
@skcipher_null = internal global %struct.skcipher_alg { ptr @null_skcipher_setkey, ptr @null_skcipher_crypt, ptr @null_skcipher_crypt, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 1, i32 0, i32 0, i32 100, %struct.refcount_struct zeroinitializer, [128 x i8] c"ecb(cipher_null)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"ecb-cipher_null\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.68 zeroinitializer, [120 x i8] undef } }, align 128
@__initcall__kmod_crypto_null__232_221_crypto_null_mod_init4 = internal global ptr @crypto_null_mod_init, section ".initcall4.init", align 4
@__exitcall_crypto_null_mod_fini = internal global ptr @crypto_null_mod_fini, section ".exitcall.exit", align 4
@__UNIQUE_ID_file233 = internal constant [36 x i8] c"crypto_null.file=crypto/crypto_null\00", section ".modinfo", align 1
@__UNIQUE_ID_license234 = internal constant [24 x i8] c"crypto_null.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description235 = internal constant [54 x i8] c"crypto_null.description=Null Cryptographic Algorithms\00", section ".modinfo", align 1
@.str.1 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"crypto_default_null_skcipher_lock.wait_lock\00", [52 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"crypto_default_null_skcipher_lock\00", [62 x i8] zeroinitializer }, align 32
@null_algs = internal global <{ %struct.crypto_alg, { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, { %struct.compress_alg, [12 x i8] }, ptr, ptr, ptr, ptr, %union.anon.68, [120 x i8] } }> <{ %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 1, i32 1, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"cipher_null\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"cipher_null-generic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon { %struct.cipher_alg { i32 0, i32 0, ptr @null_setkey, ptr @null_crypt, ptr @null_crypt } }, ptr null, ptr null, ptr null, ptr null, %union.anon.68 zeroinitializer, [120 x i8] undef }, { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, { %struct.compress_alg, [12 x i8] }, ptr, ptr, ptr, ptr, %union.anon.68, [120 x i8] } { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 2, i32 1, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"compress_null\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"compress_null-generic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, { %struct.compress_alg, [12 x i8] } { %struct.compress_alg { ptr @null_compress, ptr @null_compress }, [12 x i8] undef }, ptr null, ptr null, ptr null, ptr null, %union.anon.68 zeroinitializer, [120 x i8] undef } }>, align 128
@___asan_gen_.4 = private unnamed_addr constant [34 x i8] c"crypto_default_null_skcipher_lock\00", align 1
@___asan_gen_.7 = private unnamed_addr constant [29 x i8] c"crypto_default_null_skcipher\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 24, i32 37 }
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 161, i32 36 }
@___asan_gen_.13 = private unnamed_addr constant [36 x i8] c"crypto_default_null_skcipher_refcnt\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 25, i32 12 }
@___asan_gen_.19 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.20 = private constant [24 x i8] c"../crypto/crypto_null.c\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 23, i32 8 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @__UNIQUE_ID_alias_crypto227, ptr @__UNIQUE_ID_alias_crypto229, ptr @__UNIQUE_ID_alias_crypto231, ptr @__UNIQUE_ID_alias_userspace226, ptr @__UNIQUE_ID_alias_userspace228, ptr @__UNIQUE_ID_alias_userspace230, ptr @__UNIQUE_ID_description235, ptr @__UNIQUE_ID_file233, ptr @__UNIQUE_ID_license234, ptr @__exitcall_crypto_null_mod_fini, ptr @__initcall__kmod_crypto_null__232_221_crypto_null_mod_init4, ptr @__ksymtab_crypto_get_default_null_skcipher, ptr @__ksymtab_crypto_put_default_null_skcipher, ptr @crypto_null_mod_fini, ptr @crypto_default_null_skcipher_lock, ptr @crypto_default_null_skcipher, ptr @.str, ptr @crypto_default_null_skcipher_refcnt, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crypto_default_null_skcipher_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crypto_default_null_skcipher to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crypto_default_null_skcipher_refcnt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @crypto_get_default_null_skcipher() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @crypto_default_null_skcipher_lock, i32 noundef 0) #7
  %0 = load ptr, ptr @crypto_default_null_skcipher, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.then, label %entry.if.end3_crit_edge

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

if.then:                                          ; preds = %entry
  %call = tail call ptr @crypto_alloc_sync_skcipher(ptr noundef nonnull @.str, i32 noundef 0, i32 noundef 0) #7
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then.unlock_crit_edge, label %if.end

if.then.unlock_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  store ptr %call, ptr @crypto_default_null_skcipher, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.end, %entry.if.end3_crit_edge
  %tfm.0 = phi ptr [ %0, %entry.if.end3_crit_edge ], [ %call, %if.end ]
  %1 = load i32, ptr @crypto_default_null_skcipher_refcnt, align 4
  %inc = add i32 %1, 1
  store i32 %inc, ptr @crypto_default_null_skcipher_refcnt, align 4
  br label %unlock

unlock:                                           ; preds = %if.end3, %if.then.unlock_crit_edge
  %tfm.1 = phi ptr [ %tfm.0, %if.end3 ], [ %call, %if.then.unlock_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @crypto_default_null_skcipher_lock) #7
  ret ptr %tfm.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_sync_skcipher(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @crypto_put_default_null_skcipher() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @crypto_default_null_skcipher_lock, i32 noundef 0) #7
  %0 = load i32, ptr @crypto_default_null_skcipher_refcnt, align 4
  %dec = add i32 %0, -1
  store i32 %dec, ptr @crypto_default_null_skcipher_refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %1 = load ptr, ptr @crypto_default_null_skcipher, align 4
  %base.i.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %1, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %1, ptr noundef %base.i.i.i) #7
  store ptr null, ptr @crypto_default_null_skcipher, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @crypto_default_null_skcipher_lock) #7
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @crypto_null_mod_fini() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @crypto_unregister_algs(ptr noundef nonnull @null_algs, i32 noundef 2) #7
  tail call void @crypto_unregister_shash(ptr noundef nonnull @digest_null) #7
  tail call void @crypto_unregister_skcipher(ptr noundef nonnull @skcipher_null) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_algs(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_shash(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_skcipher(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @crypto_null_mod_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @crypto_register_algs(ptr noundef nonnull @null_algs, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @crypto_register_shash(ptr noundef nonnull @digest_null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.end.out_unregister_algs_crit_edge, label %if.end4

if.end.out_unregister_algs_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unregister_algs

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @crypto_register_skcipher(ptr noundef nonnull @skcipher_null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %out_unregister_shash, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

out_unregister_shash:                             ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @crypto_unregister_shash(ptr noundef nonnull @digest_null) #7
  br label %out_unregister_algs

out_unregister_algs:                              ; preds = %out_unregister_shash, %if.end.out_unregister_algs_crit_edge
  %ret.0 = phi i32 [ %call1, %if.end.out_unregister_algs_crit_edge ], [ %call5, %out_unregister_shash ]
  tail call void @crypto_unregister_algs(ptr noundef nonnull @null_algs, i32 noundef 2) #7
  br label %cleanup

cleanup:                                          ; preds = %out_unregister_algs, %if.end4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4.cleanup_crit_edge ], [ %call, %entry.cleanup_crit_edge ], [ %ret.0, %out_unregister_algs ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @null_setkey(ptr nocapture noundef readnone %tfm, ptr nocapture noundef readnone %key, i32 noundef %keylen) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @null_crypt(ptr nocapture noundef readnone %tfm, ptr nocapture noundef writeonly %dst, ptr nocapture noundef readonly %src) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %src to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %src, align 1
  %2 = ptrtoint ptr %dst to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %1, ptr %dst, align 1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @null_compress(ptr nocapture noundef readnone %tfm, ptr nocapture noundef readonly %src, i32 noundef %slen, ptr nocapture noundef writeonly %dst, ptr nocapture noundef %dlen) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dlen to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dlen, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %slen)
  %cmp = icmp ult i32 %1, %slen
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = call ptr @memcpy(ptr %dst, ptr %src, i32 %slen)
  %3 = ptrtoint ptr %dlen to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %slen, ptr %dlen, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @null_init(ptr nocapture noundef readnone %desc) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @null_update(ptr nocapture noundef readnone %desc, ptr nocapture noundef readnone %data, i32 noundef %len) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @null_final(ptr nocapture noundef readnone %desc, ptr nocapture noundef readnone %out) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @null_digest(ptr nocapture noundef readnone %desc, ptr nocapture noundef readnone %data, i32 noundef %len, ptr nocapture noundef readnone %out) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @null_hash_setkey(ptr nocapture noundef readnone %tfm, ptr nocapture noundef readnone %key, i32 noundef %keylen) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @null_skcipher_setkey(ptr nocapture noundef readnone %tfm, ptr nocapture noundef readnone %key, i32 noundef %keylen) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @null_skcipher_crypt(ptr noundef %req) #0 align 64 {
entry:
  %walk = alloca %struct.skcipher_walk, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 84, ptr nonnull %walk) #7
  %0 = call ptr @memset(ptr %walk, i32 255, i32 84)
  %call = call i32 @skcipher_walk_virt(ptr noundef nonnull %walk, ptr noundef %req, i1 noundef zeroext false) #7
  %nbytes = getelementptr inbounds %struct.skcipher_walk, ptr %walk, i32 0, i32 3
  %1 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %nbytes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not10 = icmp eq i32 %2, 0
  br i1 %tobool.not10, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %addr = getelementptr inbounds %struct.anon.77, ptr %walk, i32 0, i32 1
  %addr1 = getelementptr inbounds %struct.skcipher_walk, ptr %walk, i32 0, i32 1, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %while.body.lr.ph
  %3 = phi i32 [ %2, %while.body.lr.ph ], [ %10, %if.end.while.body_crit_edge ]
  %4 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %addr, align 4
  %6 = ptrtoint ptr %addr1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %addr1, align 4
  %cmp.not = icmp eq ptr %5, %7
  br i1 %cmp.not, label %while.body.if.end_crit_edge, label %if.then

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  %8 = call ptr @memcpy(ptr %7, ptr %5, i32 %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body.if.end_crit_edge
  %call7 = call i32 @skcipher_walk_done(ptr noundef nonnull %walk, i32 noundef 0) #7
  %9 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nbytes, align 4
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %entry.while.end_crit_edge
  %err.0.lcssa = phi i32 [ %call, %entry.while.end_crit_edge ], [ %call7, %if.end.while.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %walk) #7
  ret i32 %err.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skcipher_walk_virt(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skcipher_walk_done(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_algs(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_shash(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_skcipher(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !11, !13, !15, !17, !19, !21, !22, !24, !26, !28, !30, !31, !32, !34, !36}
!llvm.module.flags = !{!38, !39, !40, !41, !42, !43, !44, !45}
!llvm.ident = !{!46}

!0 = !{ptr @__UNIQUE_ID_alias_userspace226, !1, !"__UNIQUE_ID_alias_userspace226", i1 false, i1 false}
!1 = !{!"../crypto/crypto_null.c", i32 149, i32 1}
!2 = !{ptr @__UNIQUE_ID_alias_crypto227, !1, !"__UNIQUE_ID_alias_crypto227", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_alias_userspace228, !4, !"__UNIQUE_ID_alias_userspace228", i1 false, i1 false}
!4 = !{!"../crypto/crypto_null.c", i32 150, i32 1}
!5 = !{ptr @__UNIQUE_ID_alias_crypto229, !4, !"__UNIQUE_ID_alias_crypto229", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_alias_userspace230, !7, !"__UNIQUE_ID_alias_userspace230", i1 false, i1 false}
!7 = !{!"../crypto/crypto_null.c", i32 151, i32 1}
!8 = !{ptr @__UNIQUE_ID_alias_crypto231, !7, !"__UNIQUE_ID_alias_crypto231", i1 false, i1 false}
!9 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../crypto/crypto_null.c", i32 161, i32 36}
!11 = !{ptr @__ksymtab_crypto_get_default_null_skcipher, !12, !"__ksymtab_crypto_get_default_null_skcipher", i1 false, i1 false}
!12 = !{!"../crypto/crypto_null.c", i32 175, i32 1}
!13 = !{ptr @__ksymtab_crypto_put_default_null_skcipher, !14, !"__ksymtab_crypto_put_default_null_skcipher", i1 false, i1 false}
!14 = !{!"../crypto/crypto_null.c", i32 186, i32 1}
!15 = !{ptr @__initcall__kmod_crypto_null__232_221_crypto_null_mod_init4, !16, !"__initcall__kmod_crypto_null__232_221_crypto_null_mod_init4", i1 false, i1 false}
!16 = !{!"../crypto/crypto_null.c", i32 221, i32 1}
!17 = !{ptr @__exitcall_crypto_null_mod_fini, !18, !"__exitcall_crypto_null_mod_fini", i1 false, i1 false}
!18 = !{!"../crypto/crypto_null.c", i32 222, i32 1}
!19 = !{ptr @__UNIQUE_ID_file233, !20, !"__UNIQUE_ID_file233", i1 false, i1 false}
!20 = !{!"../crypto/crypto_null.c", i32 224, i32 1}
!21 = !{ptr @__UNIQUE_ID_license234, !20, !"__UNIQUE_ID_license234", i1 false, i1 false}
!22 = !{ptr @__UNIQUE_ID_description235, !23, !"__UNIQUE_ID_description235", i1 false, i1 false}
!23 = !{!"../crypto/crypto_null.c", i32 225, i32 1}
!24 = !{ptr @crypto_default_null_skcipher, !25, !"crypto_default_null_skcipher", i1 false, i1 false}
!25 = !{!"../crypto/crypto_null.c", i32 24, i32 37}
!26 = !{ptr @crypto_default_null_skcipher_refcnt, !27, !"crypto_default_null_skcipher_refcnt", i1 false, i1 false}
!27 = !{!"../crypto/crypto_null.c", i32 25, i32 12}
!28 = !{ptr @.str.1, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../crypto/crypto_null.c", i32 23, i32 8}
!30 = !{ptr @.str.2, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @crypto_default_null_skcipher_lock, !29, !"crypto_default_null_skcipher_lock", i1 false, i1 false}
!32 = !{ptr @null_algs, !33, !"null_algs", i1 false, i1 false}
!33 = !{!"../crypto/crypto_null.c", i32 124, i32 26}
!34 = !{ptr @digest_null, !35, !"digest_null", i1 false, i1 false}
!35 = !{!"../crypto/crypto_null.c", i32 93, i32 25}
!36 = !{ptr @skcipher_null, !37, !"skcipher_null", i1 false, i1 false}
!37 = !{!"../crypto/crypto_null.c", i32 109, i32 28}
!38 = !{i32 1, !"wchar_size", i32 2}
!39 = !{i32 1, !"min_enum_size", i32 4}
!40 = !{i32 8, !"branch-target-enforcement", i32 0}
!41 = !{i32 8, !"sign-return-address", i32 0}
!42 = !{i32 8, !"sign-return-address-all", i32 0}
!43 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!44 = !{i32 7, !"uwtable", i32 1}
!45 = !{i32 7, !"frame-pointer", i32 2}
!46 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
