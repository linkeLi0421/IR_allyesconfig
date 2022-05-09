; ModuleID = '/llk/IR_all_yes/crypto/asymmetric_keys/public_key.c_pt.bc'
source_filename = "../crypto/asymmetric_keys/public_key.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+public_key_free\22, \22a\22\09"
module asm "\09.weak\09__crc_public_key_free\09\09\09\09"
module asm "\09.long\09__crc_public_key_free\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_public_key_free:\09\09\09\09\09"
module asm "\09.asciz \09\22public_key_free\22\09\09\09\09\09"
module asm "__kstrtabns_public_key_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+public_key_verify_signature\22, \22a\22\09"
module asm "\09.weak\09__crc_public_key_verify_signature\09\09\09\09"
module asm "\09.long\09__crc_public_key_verify_signature\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_public_key_verify_signature:\09\09\09\09\09"
module asm "\09.asciz \09\22public_key_verify_signature\22\09\09\09\09\09"
module asm "__kstrtabns_public_key_verify_signature:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+public_key_subtype\22, \22a\22\09"
module asm "\09.weak\09__crc_public_key_subtype\09\09\09\09"
module asm "\09.long\09__crc_public_key_subtype\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_public_key_subtype:\09\09\09\09\09"
module asm "\09.asciz \09\22public_key_subtype\22\09\09\09\09\09"
module asm "__kstrtabns_public_key_subtype:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.asymmetric_key_subtype = type { ptr, ptr, i16, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.public_key = type { ptr, i32, i32, ptr, i32, i8, ptr, ptr }
%struct.crypto_wait = type { %struct.completion, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.public_key_signature = type { [3 x ptr], ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, i32 }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.page = type { i32, %union.anon.5, %union.anon.57, %struct.atomic_t, i32 }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.57 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.akcipher_request = type { %struct.crypto_async_request, ptr, ptr, i32, i32, [88 x i8], [0 x ptr] }
%struct.crypto_shash = type { i32, [124 x i8], %struct.crypto_tfm }
%struct.key = type { %struct.refcount_struct, i32, %union.anon.25, ptr, %struct.rw_semaphore, ptr, ptr, %union.anon.26, i64, %struct.kuid_t, %struct.kgid_t, i32, i16, i16, i16, i32, %union.anon.27, %union.anon.32, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.25 = type { %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%union.anon.26 = type { i64 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.27 = type { %struct.keyring_index_key }
%struct.keyring_index_key = type { i32, %union.anon.28, ptr, ptr, ptr }
%union.anon.28 = type { i32 }
%union.anon.32 = type { %union.key_payload }
%union.key_payload = type { [4 x ptr] }
%struct.kernel_pkey_params = type { ptr, ptr, ptr, ptr, i32, %union.anon.30, i8 }
%union.anon.30 = type { i32 }
%struct.kernel_pkey_query = type { i32, i32, i16, i16, i16, i16 }

@__UNIQUE_ID_description226 = internal constant [65 x i8] c"public_key.description=In-software asymmetric public-key subtype\00", section ".modinfo", align 1
@__UNIQUE_ID_author227 = internal constant [32 x i8] c"public_key.author=Red Hat, Inc.\00", section ".modinfo", align 1
@__UNIQUE_ID_file228 = internal constant [50 x i8] c"public_key.file=crypto/asymmetric_keys/public_key\00", section ".modinfo", align 1
@__UNIQUE_ID_license229 = internal constant [23 x i8] c"public_key.license=GPL\00", section ".modinfo", align 1
@__kstrtab_public_key_free = external dso_local constant [0 x i8], align 1
@__kstrtabns_public_key_free = external dso_local constant [0 x i8], align 1
@__ksymtab_public_key_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @public_key_free to i32), ptr @__kstrtab_public_key_free, ptr @__kstrtabns_public_key_free }, section "___ksymtab_gpl+public_key_free", align 4
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sm2\00", [28 x i8] zeroinitializer }, align 32
@public_key_verify_signature.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"crypto/asymmetric_keys/public_key.c\00", [60 x i8] zeroinitializer }, align 32
@__kstrtab_public_key_verify_signature = external dso_local constant [0 x i8], align 1
@__kstrtabns_public_key_verify_signature = external dso_local constant [0 x i8], align 1
@__ksymtab_public_key_verify_signature = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @public_key_verify_signature to i32), ptr @__kstrtab_public_key_verify_signature, ptr @__kstrtabns_public_key_verify_signature }, section "___ksymtab_gpl+public_key_verify_signature", align 4
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"public_key\00", [21 x i8] zeroinitializer }, align 32
@public_key_subtype = dso_local global { %struct.asymmetric_key_subtype, [32 x i8] } { %struct.asymmetric_key_subtype { ptr null, ptr @.str.2, i16 10, ptr @public_key_describe, ptr @public_key_destroy, ptr @software_key_query, ptr @software_key_eds_op, ptr @public_key_verify_signature_2 }, [32 x i8] zeroinitializer }, align 32
@__kstrtab_public_key_subtype = external dso_local constant [0 x i8], align 1
@__kstrtabns_public_key_subtype = external dso_local constant [0 x i8], align 1
@__ksymtab_public_key_subtype = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @public_key_subtype to i32), ptr @__kstrtab_public_key_subtype, ptr @__kstrtabns_public_key_subtype }, section "___ksymtab_gpl+public_key_subtype", align 4
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pkcs1\00", [26 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pkcs1pad(%s)\00", [19 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pkcs1pad(%s,%s)\00", [16 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"raw\00", [28 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"x962\00", [27 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"1234567812345678\00", [47 x i8] zeroinitializer }, align 32
@high_memory = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s.%s\00", [26 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4294967181, i64 4294967280]
@__sancov_gen_cov_switch_values.11 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.12 = internal global [4 x i64] [i64 2, i64 32, i64 4294967181, i64 4294967280]
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 361, i32 47 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 386, i32 6 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 404, i32 12 }
@___asan_gen_.22 = private unnamed_addr constant [19 x i8] c"public_key_subtype\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 402, i32 31 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 73, i32 23 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 80, i32 10 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 84, i32 10 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 89, i32 23 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 90, i32 23 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 265, i32 39 }
@___asan_gen_.43 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.47 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 87, i32 2 }
@___asan_gen_.49 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.50 = private constant [39 x i8] c"../crypto/asymmetric_keys/public_key.c\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 37, i32 17 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @__UNIQUE_ID_author227, ptr @__UNIQUE_ID_description226, ptr @__UNIQUE_ID_file228, ptr @__UNIQUE_ID_license229, ptr @__ksymtab_public_key_free, ptr @__ksymtab_public_key_subtype, ptr @__ksymtab_public_key_verify_signature, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @public_key_subtype, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @init_completion.__key, ptr @.str.9, ptr @.str.10], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @public_key_subtype to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @public_key_free(ptr noundef %key) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %key, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %key, align 4
  tail call void @kfree(ptr noundef %1) #9
  %params = getelementptr inbounds %struct.public_key, ptr %key, i32 0, i32 3
  %2 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %params, align 4
  tail call void @kfree(ptr noundef %3) #9
  tail call void @kfree(ptr noundef nonnull %key) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @public_key_verify_signature(ptr noundef readonly %pkey, ptr noundef readonly %sig) #0 align 64 {
entry:
  %cwait = alloca %struct.crypto_wait, align 4
  %src_sg = alloca [2 x %struct.scatterlist], align 4
  %alg_name = alloca [128 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %cwait) #9
  %0 = call ptr @memset(ptr %cwait, i32 255, i32 60)
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %src_sg) #9
  %1 = call ptr @memset(ptr %src_sg, i32 255, i32 40)
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %alg_name) #9
  %2 = call ptr @memset(ptr %alg_name, i32 255, i32 128)
  %tobool.not = icmp eq ptr %pkey, null
  br i1 %tobool.not, label %do.body4, label %do.body10, !prof !48

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22crypto/asymmetric_keys/public_key.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 324, 0\0A.popsection", ""() #9, !srcloc !49
  unreachable

do.body10:                                        ; preds = %entry
  %tobool11.not = icmp eq ptr %sig, null
  br i1 %tobool11.not, label %do.body21, label %do.body30, !prof !48

do.body21:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22crypto/asymmetric_keys/public_key.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 325, 0\0A.popsection", ""() #9, !srcloc !50
  unreachable

do.body30:                                        ; preds = %do.body10
  %s = getelementptr inbounds %struct.public_key_signature, ptr %sig, i32 0, i32 1
  %3 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %s, align 4
  %tobool31.not = icmp eq ptr %4, null
  br i1 %tobool31.not, label %do.body41, label %do.end49, !prof !48

do.body41:                                        ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22crypto/asymmetric_keys/public_key.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 326, 0\0A.popsection", ""() #9, !srcloc !51
  unreachable

do.end49:                                         ; preds = %do.body30
  %encoding = getelementptr inbounds %struct.public_key_signature, ptr %sig, i32 0, i32 7
  %5 = ptrtoint ptr %encoding to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %encoding, align 4
  %hash_algo = getelementptr inbounds %struct.public_key_signature, ptr %sig, i32 0, i32 6
  %7 = ptrtoint ptr %hash_algo to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hash_algo, align 4
  %call = call fastcc i32 @software_key_determine_akcipher(ptr noundef %6, ptr noundef %8, ptr noundef nonnull %pkey, ptr noundef nonnull %alg_name)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end49.cleanup_crit_edge, label %if.end51

do.end49.cleanup_crit_edge:                       ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end51:                                         ; preds = %do.end49
  %call53 = call ptr @crypto_alloc_akcipher(ptr noundef nonnull %alg_name, i32 noundef 0, i32 noundef 0) #9
  %cmp.i215 = icmp ugt ptr %call53, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i215, label %if.then55, label %if.end57

if.then55:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %call53 to i32
  br label %cleanup

if.end57:                                         ; preds = %if.end51
  %__crt_alg.i.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %call53, i32 0, i32 3
  %10 = ptrtoint ptr %__crt_alg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %__crt_alg.i.i.i, align 4
  %reqsize.i.i = getelementptr i8, ptr %11, i32 -92
  %12 = ptrtoint ptr %reqsize.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %reqsize.i.i, align 4
  %add.i = add i32 %13, 128
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 3264) #12
  %tobool.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not.i, label %error_free_tfm.thread, label %if.end61, !prof !48

error_free_tfm.thread:                            ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #11
  call void @crypto_destroy_tfm(ptr noundef %call53, ptr noundef %call53) #9
  br label %cleanup

if.end61:                                         ; preds = %if.end57
  %tfm1.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %call9.i.i, i32 0, i32 3
  %14 = ptrtoint ptr %tfm1.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call53, ptr %tfm1.i.i, align 16
  %keylen = getelementptr inbounds %struct.public_key, ptr %pkey, i32 0, i32 1
  %paramlen = getelementptr inbounds %struct.public_key, ptr %pkey, i32 0, i32 4
  %15 = ptrtoint ptr %keylen to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %keylen, align 4
  %add = add i32 %16, 8
  %17 = ptrtoint ptr %paramlen to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %paramlen, align 4
  %add62 = add i32 %add, %18
  %call9.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add62, i32 noundef 3264) #12
  %tobool64.not = icmp eq ptr %call9.i, null
  br i1 %tobool64.not, label %if.end61.error_free_tfm_crit_edge, label %if.end66

if.end61.error_free_tfm_crit_edge:                ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  br label %error_free_tfm

if.end66:                                         ; preds = %if.end61
  %19 = ptrtoint ptr %pkey to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pkey, align 4
  %21 = ptrtoint ptr %keylen to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %keylen, align 4
  %23 = call ptr @memcpy(ptr %call9.i, ptr %20, i32 %22)
  %add.ptr = getelementptr i8, ptr %call9.i, i32 %22
  %algo = getelementptr inbounds %struct.public_key, ptr %pkey, i32 0, i32 2
  %24 = ptrtoint ptr %algo to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %algo, align 4
  %26 = ptrtoint ptr %add.ptr to i32
  call void @__asan_storeN_noabort(i32 %26, i32 4)
  store i32 %25, ptr %add.ptr, align 1
  %add.ptr.i = getelementptr i8, ptr %add.ptr, i32 4
  %27 = ptrtoint ptr %paramlen to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %paramlen, align 4
  %29 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_storeN_noabort(i32 %29, i32 4)
  store i32 %28, ptr %add.ptr.i, align 1
  %add.ptr.i221 = getelementptr i8, ptr %add.ptr.i, i32 4
  %params = getelementptr inbounds %struct.public_key, ptr %pkey, i32 0, i32 3
  %30 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %params, align 4
  %32 = call ptr @memcpy(ptr %add.ptr.i221, ptr %31, i32 %28)
  %key_is_private = getelementptr inbounds %struct.public_key, ptr %pkey, i32 0, i32 5
  %33 = ptrtoint ptr %key_is_private to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %key_is_private, align 4, !range !52
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool74.not = icmp eq i8 %34, 0
  %35 = ptrtoint ptr %keylen to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %keylen, align 4
  %37 = ptrtoint ptr %__crt_alg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %__crt_alg.i.i.i, align 4
  %. = select i1 %tobool74.not, i32 -112, i32 -108
  %set_pub_key.i = getelementptr i8, ptr %38, i32 %.
  %39 = ptrtoint ptr %set_pub_key.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %.sink = load ptr, ptr %set_pub_key.i, align 4
  %call1.i223 = call i32 %.sink(ptr noundef %call53, ptr noundef nonnull %call9.i, i32 noundef %36) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i223)
  %tobool81.not = icmp eq i32 %call1.i223, 0
  br i1 %tobool81.not, label %if.end83, label %if.end66.error_free_key_crit_edge

if.end66.error_free_key_crit_edge:                ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #11
  br label %error_free_key

if.end83:                                         ; preds = %if.end66
  %pkey_algo = getelementptr inbounds %struct.public_key_signature, ptr %sig, i32 0, i32 5
  %40 = ptrtoint ptr %pkey_algo to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pkey_algo, align 4
  %tobool84.not = icmp eq ptr %41, null
  br i1 %tobool84.not, label %if.end83.if.end95_crit_edge, label %land.lhs.true

if.end83.if.end95_crit_edge:                      ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end95

land.lhs.true:                                    ; preds = %if.end83
  %call86 = call i32 @strcmp(ptr noundef nonnull %41, ptr noundef nonnull dereferenceable(4) @.str) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %cmp87 = icmp eq i32 %call86, 0
  br i1 %cmp87, label %land.lhs.true88, label %land.lhs.true.if.end95_crit_edge

land.lhs.true.if.end95_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end95

land.lhs.true88:                                  ; preds = %land.lhs.true
  %data_size = getelementptr inbounds %struct.public_key_signature, ptr %sig, i32 0, i32 9
  %42 = ptrtoint ptr %data_size to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %data_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool89.not = icmp eq i32 %43, 0
  br i1 %tobool89.not, label %land.lhs.true88.if.end95_crit_edge, label %if.then90

land.lhs.true88.if.end95_crit_edge:               ; preds = %land.lhs.true88
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end95

if.then90:                                        ; preds = %land.lhs.true88
  %call91 = call fastcc i32 @cert_sig_digest_update(ptr noundef nonnull %sig, ptr noundef %call53)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %if.then90.if.end95_crit_edge, label %if.then90.error_free_key_crit_edge

if.then90.error_free_key_crit_edge:               ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #11
  br label %error_free_key

if.then90.if.end95_crit_edge:                     ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end95

if.end95:                                         ; preds = %if.then90.if.end95_crit_edge, %land.lhs.true88.if.end95_crit_edge, %land.lhs.true.if.end95_crit_edge, %if.end83.if.end95_crit_edge
  call void @sg_init_table(ptr noundef nonnull %src_sg, i32 noundef 2) #9
  %44 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %s, align 4
  %s_size = getelementptr inbounds %struct.public_key_signature, ptr %sig, i32 0, i32 3
  %46 = ptrtoint ptr %s_size to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %s_size, align 4
  %48 = ptrtoint ptr %45 to i32
  %cmp.i224 = icmp ugt ptr %45, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp.i224, label %land.lhs.true.i, label %if.end95.do.body5.i_crit_edge, !prof !53

if.end95.do.body5.i_crit_edge:                    ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5.i

land.lhs.true.i:                                  ; preds = %if.end95
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %49 = load ptr, ptr @high_memory, align 4
  %cmp1.i = icmp ugt ptr %49, %45
  br i1 %cmp1.i, label %land.rhs.i, label %land.lhs.true.i.do.body5.i_crit_edge, !prof !53

land.lhs.true.i.do.body5.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5.i

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %sub.i = add i32 %48, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %50 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i225 = add i32 %50, %shr.i
  %call.i = call i32 @pfn_valid(i32 noundef %add.i225) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.i = icmp eq i32 %call.i, 0
  br i1 %tobool.i, label %land.rhs.i.do.body5.i_crit_edge, label %do.end8.i, !prof !48

land.rhs.i.do.body5.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5.i

do.body5.i:                                       ; preds = %land.rhs.i.do.body5.i_crit_edge, %land.lhs.true.i.do.body5.i_crit_edge, %if.end95.do.body5.i_crit_edge
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #9, !srcloc !54
  unreachable

do.end8.i:                                        ; preds = %land.rhs.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %51 = load ptr, ptr @mem_map, align 4
  %add.ptr.i226 = getelementptr %struct.page, ptr %51, i32 %shr.i
  %52 = ptrtoint ptr %src_sg to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %src_sg, align 4
  %54 = ptrtoint ptr %add.ptr.i226 to i32
  %and2.i.i.i = and i32 %54, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool.not.i.i.i227 = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool.not.i.i.i227, label %do.body11.i.i.i, label %do.body5.i.i.i, !prof !53

do.body5.i.i.i:                                   ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #9, !srcloc !55
  unreachable

do.body11.i.i.i:                                  ; preds = %do.end8.i
  %and.i.i.i.i = and i32 %53, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %sg_set_buf.exit, label %do.body19.i.i.i, !prof !53

do.body19.i.i.i:                                  ; preds = %do.body11.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #9, !srcloc !56
  unreachable

sg_set_buf.exit:                                  ; preds = %do.body11.i.i.i
  %and.i = and i32 %48, 4095
  %and.i.i.i = and i32 %53, 3
  %or.i.i.i = or i32 %and.i.i.i, %54
  %55 = ptrtoint ptr %src_sg to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %or.i.i.i, ptr %src_sg, align 4
  %offset1.i.i = getelementptr inbounds %struct.scatterlist, ptr %src_sg, i32 0, i32 1
  %56 = ptrtoint ptr %offset1.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %and.i, ptr %offset1.i.i, align 4
  %length.i.i = getelementptr inbounds %struct.scatterlist, ptr %src_sg, i32 0, i32 2
  %57 = ptrtoint ptr %length.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %47, ptr %length.i.i, align 4
  %arrayidx98 = getelementptr inbounds [2 x %struct.scatterlist], ptr %src_sg, i32 0, i32 1
  %digest = getelementptr inbounds %struct.public_key_signature, ptr %sig, i32 0, i32 2
  %58 = ptrtoint ptr %digest to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %digest, align 4
  %digest_size = getelementptr inbounds %struct.public_key_signature, ptr %sig, i32 0, i32 4
  %60 = ptrtoint ptr %digest_size to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %digest_size, align 4
  %62 = ptrtoint ptr %59 to i32
  %cmp.i228 = icmp ugt ptr %59, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp.i228, label %land.lhs.true.i230, label %sg_set_buf.exit.do.body5.i237_crit_edge, !prof !53

sg_set_buf.exit.do.body5.i237_crit_edge:          ; preds = %sg_set_buf.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5.i237

land.lhs.true.i230:                               ; preds = %sg_set_buf.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %63 = load ptr, ptr @high_memory, align 4
  %cmp1.i229 = icmp ugt ptr %63, %59
  br i1 %cmp1.i229, label %land.rhs.i236, label %land.lhs.true.i230.do.body5.i237_crit_edge, !prof !53

land.lhs.true.i230.do.body5.i237_crit_edge:       ; preds = %land.lhs.true.i230
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5.i237

land.rhs.i236:                                    ; preds = %land.lhs.true.i230
  %sub.i231 = add i32 %62, 1073741824
  %shr.i232 = lshr i32 %sub.i231, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %64 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i233 = add i32 %64, %shr.i232
  %call.i234 = call i32 @pfn_valid(i32 noundef %add.i233) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i234)
  %tobool.i235 = icmp eq i32 %call.i234, 0
  br i1 %tobool.i235, label %land.rhs.i236.do.body5.i237_crit_edge, label %do.end8.i241, !prof !48

land.rhs.i236.do.body5.i237_crit_edge:            ; preds = %land.rhs.i236
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5.i237

do.body5.i237:                                    ; preds = %land.rhs.i236.do.body5.i237_crit_edge, %land.lhs.true.i230.do.body5.i237_crit_edge, %sg_set_buf.exit.do.body5.i237_crit_edge
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #9, !srcloc !54
  unreachable

do.end8.i241:                                     ; preds = %land.rhs.i236
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %65 = load ptr, ptr @mem_map, align 4
  %add.ptr.i238 = getelementptr %struct.page, ptr %65, i32 %shr.i232
  %66 = ptrtoint ptr %arrayidx98 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx98, align 4
  %68 = ptrtoint ptr %add.ptr.i238 to i32
  %and2.i.i.i239 = and i32 %68, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i239)
  %tobool.not.i.i.i240 = icmp eq i32 %and2.i.i.i239, 0
  br i1 %tobool.not.i.i.i240, label %do.body11.i.i.i245, label %do.body5.i.i.i242, !prof !53

do.body5.i.i.i242:                                ; preds = %do.end8.i241
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #9, !srcloc !55
  unreachable

do.body11.i.i.i245:                               ; preds = %do.end8.i241
  %and.i.i.i.i243 = and i32 %67, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i243)
  %tobool.i.not.i.i.i244 = icmp eq i32 %and.i.i.i.i243, 0
  br i1 %tobool.i.not.i.i.i244, label %sg_set_buf.exit252, label %do.body19.i.i.i246, !prof !53

do.body19.i.i.i246:                               ; preds = %do.body11.i.i.i245
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #9, !srcloc !56
  unreachable

sg_set_buf.exit252:                               ; preds = %do.body11.i.i.i245
  %and.i247 = and i32 %62, 4095
  %and.i.i.i248 = and i32 %67, 3
  %or.i.i.i249 = or i32 %and.i.i.i248, %68
  %69 = ptrtoint ptr %arrayidx98 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %or.i.i.i249, ptr %arrayidx98, align 4
  %offset1.i.i250 = getelementptr inbounds [2 x %struct.scatterlist], ptr %src_sg, i32 0, i32 1, i32 1
  %70 = ptrtoint ptr %offset1.i.i250 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %and.i247, ptr %offset1.i.i250, align 4
  %length.i.i251 = getelementptr inbounds [2 x %struct.scatterlist], ptr %src_sg, i32 0, i32 1, i32 2
  %71 = ptrtoint ptr %length.i.i251 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %61, ptr %length.i.i251, align 4
  %72 = ptrtoint ptr %s_size to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %s_size, align 4
  %74 = ptrtoint ptr %digest_size to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %digest_size, align 4
  %src1.i = getelementptr inbounds %struct.akcipher_request, ptr %call9.i.i, i32 0, i32 1
  %76 = ptrtoint ptr %src1.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %src_sg, ptr %src1.i, align 8
  %dst2.i = getelementptr inbounds %struct.akcipher_request, ptr %call9.i.i, i32 0, i32 2
  %77 = ptrtoint ptr %dst2.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr null, ptr %dst2.i, align 4
  %src_len3.i = getelementptr inbounds %struct.akcipher_request, ptr %call9.i.i, i32 0, i32 3
  %78 = ptrtoint ptr %src_len3.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %73, ptr %src_len3.i, align 32
  %dst_len4.i = getelementptr inbounds %struct.akcipher_request, ptr %call9.i.i, i32 0, i32 4
  %79 = ptrtoint ptr %dst_len4.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %75, ptr %dst_len4.i, align 4
  %80 = ptrtoint ptr %cwait to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 0, ptr %cwait, align 4
  %wait.i.i = getelementptr inbounds %struct.completion, ptr %cwait, i32 0, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.9, ptr noundef nonnull @init_completion.__key) #9
  %complete.i = getelementptr inbounds %struct.crypto_async_request, ptr %call9.i.i, i32 0, i32 1
  %81 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr @crypto_req_done, ptr %complete.i, align 8
  %data2.i = getelementptr inbounds %struct.crypto_async_request, ptr %call9.i.i, i32 0, i32 2
  %82 = ptrtoint ptr %data2.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %cwait, ptr %data2.i, align 4
  %flags.i = getelementptr inbounds %struct.crypto_async_request, ptr %call9.i.i, i32 0, i32 4
  %83 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 1536, ptr %flags.i, align 4
  %84 = ptrtoint ptr %tfm1.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %tfm1.i.i, align 16
  %__crt_alg.i.i253 = getelementptr inbounds %struct.crypto_tfm, ptr %85, i32 0, i32 3
  %86 = ptrtoint ptr %__crt_alg.i.i253 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %__crt_alg.i.i253, align 4
  call void @crypto_stats_get(ptr noundef %87) #9
  %verify.i = getelementptr i8, ptr %87, i32 -124
  %88 = ptrtoint ptr %verify.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %verify.i, align 4
  %call2.i = call i32 %89(ptr noundef nonnull %call9.i.i) #9
  call void @crypto_stats_akcipher_verify(i32 noundef %call2.i, ptr noundef %87) #9
  %90 = zext i32 %call2.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %90, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call2.i, label %sg_set_buf.exit252.error_free_key_crit_edge [
    i32 -115, label %sg_set_buf.exit252.sw.bb.i_crit_edge
    i32 -16, label %sg_set_buf.exit252.sw.bb.i_crit_edge268
  ]

sg_set_buf.exit252.sw.bb.i_crit_edge268:          ; preds = %sg_set_buf.exit252
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

sg_set_buf.exit252.sw.bb.i_crit_edge:             ; preds = %sg_set_buf.exit252
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

sg_set_buf.exit252.error_free_key_crit_edge:      ; preds = %sg_set_buf.exit252
  call void @__sanitizer_cov_trace_pc() #11
  br label %error_free_key

sw.bb.i:                                          ; preds = %sg_set_buf.exit252.sw.bb.i_crit_edge, %sg_set_buf.exit252.sw.bb.i_crit_edge268
  call void @wait_for_completion(ptr noundef nonnull %cwait) #9
  %91 = ptrtoint ptr %cwait to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 0, ptr %cwait, align 4
  %err2.i = getelementptr inbounds %struct.crypto_wait, ptr %cwait, i32 0, i32 1
  %92 = ptrtoint ptr %err2.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %err2.i, align 4
  br label %error_free_key

error_free_key:                                   ; preds = %sw.bb.i, %sg_set_buf.exit252.error_free_key_crit_edge, %if.then90.error_free_key_crit_edge, %if.end66.error_free_key_crit_edge
  %ret.1 = phi i32 [ %call1.i223, %if.end66.error_free_key_crit_edge ], [ %call91, %if.then90.error_free_key_crit_edge ], [ %call2.i, %sg_set_buf.exit252.error_free_key_crit_edge ], [ %93, %sw.bb.i ]
  call void @kfree(ptr noundef nonnull %call9.i) #9
  br label %error_free_tfm

error_free_tfm:                                   ; preds = %error_free_key, %if.end61.error_free_tfm_crit_edge
  %ret.2 = phi i32 [ %ret.1, %error_free_key ], [ -12, %if.end61.error_free_tfm_crit_edge ]
  call void @kfree_sensitive(ptr noundef nonnull %call9.i.i) #9
  call void @crypto_destroy_tfm(ptr noundef %call53, ptr noundef %call53) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.2)
  %cmp105 = icmp sgt i32 %ret.2, 0
  br i1 %cmp105, label %land.rhs, label %error_free_tfm.cleanup_crit_edge

error_free_tfm.cleanup_crit_edge:                 ; preds = %error_free_tfm
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.rhs:                                         ; preds = %error_free_tfm
  %.b214 = load i1, ptr @public_key_verify_signature.__already_done, align 1
  br i1 %.b214, label %land.rhs.cleanup_crit_edge, label %if.then120, !prof !53

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then120:                                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @public_key_verify_signature.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 386, i32 noundef 9, ptr noundef null) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then120, %land.rhs.cleanup_crit_edge, %error_free_tfm.cleanup_crit_edge, %error_free_tfm.thread, %if.then55, %do.end49.cleanup_crit_edge
  %retval.0 = phi i32 [ %9, %if.then55 ], [ %call, %do.end49.cleanup_crit_edge ], [ -12, %error_free_tfm.thread ], [ %ret.2, %error_free_tfm.cleanup_crit_edge ], [ -22, %if.then120 ], [ -22, %land.rhs.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %alg_name) #9
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %src_sg) #9
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %cwait) #9
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @software_key_determine_akcipher(ptr nocapture noundef readonly %encoding, ptr noundef %hash_algo, ptr nocapture noundef readonly %pkey, ptr noundef %alg_name) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strcmp(ptr noundef %encoding, ptr noundef nonnull dereferenceable(6) @.str.3) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end6

if.then:                                          ; preds = %entry
  %tobool.not = icmp eq ptr %hash_algo, null
  %pkey_algo = getelementptr inbounds %struct.public_key, ptr %pkey, i32 0, i32 7
  %0 = ptrtoint ptr %pkey_algo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pkey_algo, align 4
  br i1 %tobool.not, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %call2 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %alg_name, i32 noundef 128, ptr noundef nonnull @.str.4, ptr noundef %1)
  br label %if.end

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %call4 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %alg_name, i32 noundef 128, ptr noundef nonnull @.str.5, ptr noundef %1, ptr noundef nonnull %hash_algo)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then1
  %n.0 = phi i32 [ %call4, %if.else ], [ %call2, %if.then1 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %n.0)
  %cmp5 = icmp sgt i32 %n.0, 127
  %cond = select i1 %cmp5, i32 -22, i32 0
  br label %cleanup

if.end6:                                          ; preds = %entry
  %call7 = tail call i32 @strcmp(ptr noundef %encoding, ptr noundef nonnull dereferenceable(4) @.str.6) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp eq i32 %call7, 0
  br i1 %cmp8, label %if.end6.if.then11_crit_edge, label %lor.lhs.false

if.end6.if.then11_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11

lor.lhs.false:                                    ; preds = %if.end6
  %call9 = tail call i32 @strcmp(ptr noundef %encoding, ptr noundef nonnull dereferenceable(5) @.str.7) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp eq i32 %call9, 0
  br i1 %cmp10, label %lor.lhs.false.if.then11_crit_edge, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false.if.then11_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11

if.then11:                                        ; preds = %lor.lhs.false.if.then11_crit_edge, %if.end6.if.then11_crit_edge
  %pkey_algo12 = getelementptr inbounds %struct.public_key, ptr %pkey, i32 0, i32 7
  %2 = ptrtoint ptr %pkey_algo12 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pkey_algo12, align 4
  %call13 = tail call ptr @strcpy(ptr noundef %alg_name, ptr noundef %3) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %lor.lhs.false.cleanup_crit_edge, %if.end
  %retval.0 = phi i32 [ %cond, %if.end ], [ 0, %if.then11 ], [ -65, %lor.lhs.false.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_akcipher(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cert_sig_digest_update(ptr nocapture noundef readonly %sig, ptr noundef %tfm_pkey) unnamed_addr #0 align 64 {
entry:
  %dgst = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %dgst) #9
  %data = getelementptr inbounds %struct.public_key_signature, ptr %sig, i32 0, i32 8
  %0 = call ptr @memset(ptr %dgst, i32 255, i32 32)
  %1 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %data, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %do.body4, label %do.end9, !prof !48

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22crypto/asymmetric_keys/public_key.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 263, 0\0A.popsection", ""() #9, !srcloc !57
  unreachable

do.end9:                                          ; preds = %entry
  %call = call i32 @sm2_compute_z_digest(ptr noundef %tfm_pkey, ptr noundef nonnull @.str.8, i32 noundef 16, ptr noundef nonnull %dgst) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool10.not = icmp eq i32 %call, 0
  br i1 %tobool10.not, label %if.end12, label %do.end9.cleanup_crit_edge

do.end9.cleanup_crit_edge:                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end12:                                         ; preds = %do.end9
  %hash_algo = getelementptr inbounds %struct.public_key_signature, ptr %sig, i32 0, i32 6
  %3 = ptrtoint ptr %hash_algo to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hash_algo, align 4
  %call13 = call ptr @crypto_alloc_shash(ptr noundef %4, i32 noundef 0, i32 noundef 0) #9
  %cmp.i = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then15, label %if.end8.i.i

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %call13 to i32
  br label %cleanup

if.end8.i.i:                                      ; preds = %if.end12
  %6 = ptrtoint ptr %call13 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %call13, align 128
  %add = add i32 %7, 8
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3520) #12
  %tobool20.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool20.not, label %if.end8.i.i.error_free_tfm_crit_edge, label %if.end22

if.end8.i.i.error_free_tfm_crit_edge:             ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %error_free_tfm

if.end22:                                         ; preds = %if.end8.i.i
  %8 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call13, ptr %call9.i.i, align 128
  %base.i.i.i = getelementptr inbounds %struct.crypto_shash, ptr %call13, i32 0, i32 2
  %9 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %base.i.i.i, align 128
  %and.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %crypto_shash_init.exit, label %if.end22.error_free_desc_crit_edge

if.end22.error_free_desc_crit_edge:               ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %error_free_desc

crypto_shash_init.exit:                           ; preds = %if.end22
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_shash, ptr %call13, i32 0, i32 2, i32 3
  %11 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %__crt_alg.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %12, i32 -256
  %13 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr.i.i.i, align 128
  %call3.i = call i32 %14(ptr noundef nonnull %call9.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp = icmp slt i32 %call3.i, 0
  br i1 %cmp, label %crypto_shash_init.exit.error_free_desc_crit_edge, label %if.end26

crypto_shash_init.exit.error_free_desc_crit_edge: ; preds = %crypto_shash_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %error_free_desc

if.end26:                                         ; preds = %crypto_shash_init.exit
  %call28 = call i32 @crypto_shash_update(ptr noundef nonnull %call9.i.i, ptr noundef nonnull %dgst, i32 noundef 32) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %if.end26.error_free_desc_crit_edge, label %if.end31

if.end26.error_free_desc_crit_edge:               ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %error_free_desc

if.end31:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data, align 4
  %data_size = getelementptr inbounds %struct.public_key_signature, ptr %sig, i32 0, i32 9
  %17 = ptrtoint ptr %data_size to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %data_size, align 4
  %digest = getelementptr inbounds %struct.public_key_signature, ptr %sig, i32 0, i32 2
  %19 = ptrtoint ptr %digest to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %digest, align 4
  %call33 = call i32 @crypto_shash_finup(ptr noundef nonnull %call9.i.i, ptr noundef %16, i32 noundef %18, ptr noundef %20) #9
  br label %error_free_desc

error_free_desc:                                  ; preds = %if.end31, %if.end26.error_free_desc_crit_edge, %crypto_shash_init.exit.error_free_desc_crit_edge, %if.end22.error_free_desc_crit_edge
  %ret.0 = phi i32 [ %call3.i, %crypto_shash_init.exit.error_free_desc_crit_edge ], [ %call28, %if.end26.error_free_desc_crit_edge ], [ %call33, %if.end31 ], [ -126, %if.end22.error_free_desc_crit_edge ]
  call void @kfree(ptr noundef nonnull %call9.i.i) #9
  br label %error_free_tfm

error_free_tfm:                                   ; preds = %error_free_desc, %if.end8.i.i.error_free_tfm_crit_edge
  %ret.1 = phi i32 [ %ret.0, %error_free_desc ], [ -12, %if.end8.i.i.error_free_tfm_crit_edge ]
  %base.i.i = getelementptr inbounds %struct.crypto_shash, ptr %call13, i32 0, i32 2
  call void @crypto_destroy_tfm(ptr noundef %call13, ptr noundef %base.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %error_free_tfm, %if.then15, %do.end9.cleanup_crit_edge
  %retval.0 = phi i32 [ %5, %if.then15 ], [ %ret.1, %error_free_tfm ], [ %call, %do.end9.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %dgst) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_req_done(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @public_key_describe(ptr nocapture noundef readonly %asymmetric_key, ptr noundef %m) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.key, ptr %asymmetric_key, i32 0, i32 17
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %id_type = getelementptr inbounds %struct.public_key, ptr %2, i32 0, i32 6
  %3 = ptrtoint ptr %id_type to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %id_type, align 4
  %pkey_algo = getelementptr inbounds %struct.public_key, ptr %2, i32 0, i32 7
  %5 = ptrtoint ptr %pkey_algo to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pkey_algo, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.10, ptr noundef %4, ptr noundef %6) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @public_key_destroy(ptr noundef %payload0, ptr noundef %payload3) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %payload0, null
  br i1 %tobool.not.i, label %entry.public_key_free.exit_crit_edge, label %if.then.i

entry.public_key_free.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %public_key_free.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %payload0 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %payload0, align 4
  tail call void @kfree(ptr noundef %1) #9
  %params.i = getelementptr inbounds %struct.public_key, ptr %payload0, i32 0, i32 3
  %2 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %params.i, align 4
  tail call void @kfree(ptr noundef %3) #9
  tail call void @kfree(ptr noundef nonnull %payload0) #9
  br label %public_key_free.exit

public_key_free.exit:                             ; preds = %if.then.i, %entry.public_key_free.exit_crit_edge
  tail call void @public_key_signature_free(ptr noundef %payload3) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @software_key_query(ptr nocapture noundef readonly %params, ptr nocapture noundef writeonly %info) #0 align 64 {
entry:
  %alg_name = alloca [128 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %params, align 4
  %2 = getelementptr inbounds %struct.key, ptr %1, i32 0, i32 17
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %alg_name) #9
  %5 = call ptr @memset(ptr %alg_name, i32 255, i32 128)
  %encoding = getelementptr inbounds %struct.kernel_pkey_params, ptr %params, i32 0, i32 1
  %6 = ptrtoint ptr %encoding to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %encoding, align 4
  %hash_algo = getelementptr inbounds %struct.kernel_pkey_params, ptr %params, i32 0, i32 2
  %8 = ptrtoint ptr %hash_algo to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hash_algo, align 4
  %call = call fastcc i32 @software_key_determine_akcipher(ptr noundef %7, ptr noundef %9, ptr noundef %4, ptr noundef nonnull %alg_name)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = call ptr @crypto_alloc_akcipher(ptr noundef nonnull %alg_name, i32 noundef 0, i32 noundef 0) #9
  %cmp.i85 = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i85, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %call3 to i32
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %keylen = getelementptr inbounds %struct.public_key, ptr %4, i32 0, i32 1
  %paramlen = getelementptr inbounds %struct.public_key, ptr %4, i32 0, i32 4
  %11 = ptrtoint ptr %keylen to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %keylen, align 4
  %add = add i32 %12, 8
  %13 = ptrtoint ptr %paramlen to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %paramlen, align 4
  %add8 = add i32 %add, %14
  %call9.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add8, i32 noundef 3264) #12
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %if.end7.error_free_tfm_crit_edge, label %if.end11

if.end7.error_free_tfm_crit_edge:                 ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %error_free_tfm

if.end11:                                         ; preds = %if.end7
  %15 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %4, align 4
  %17 = ptrtoint ptr %keylen to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %keylen, align 4
  %19 = call ptr @memcpy(ptr %call9.i, ptr %16, i32 %18)
  %20 = load i32, ptr %keylen, align 4
  %add.ptr = getelementptr i8, ptr %call9.i, i32 %20
  %algo = getelementptr inbounds %struct.public_key, ptr %4, i32 0, i32 2
  %21 = ptrtoint ptr %algo to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %algo, align 4
  %23 = ptrtoint ptr %add.ptr to i32
  call void @__asan_storeN_noabort(i32 %23, i32 4)
  store i32 %22, ptr %add.ptr, align 1
  %add.ptr.i = getelementptr i8, ptr %add.ptr, i32 4
  %24 = ptrtoint ptr %paramlen to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %paramlen, align 4
  %26 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_storeN_noabort(i32 %26, i32 4)
  store i32 %25, ptr %add.ptr.i, align 1
  %add.ptr.i86 = getelementptr i8, ptr %add.ptr.i, i32 4
  %params18 = getelementptr inbounds %struct.public_key, ptr %4, i32 0, i32 3
  %27 = ptrtoint ptr %params18 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %params18, align 4
  %29 = load i32, ptr %paramlen, align 4
  %30 = call ptr @memcpy(ptr %add.ptr.i86, ptr %28, i32 %29)
  %key_is_private = getelementptr inbounds %struct.public_key, ptr %4, i32 0, i32 5
  %31 = ptrtoint ptr %key_is_private to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %key_is_private, align 4, !range !52
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool20.not = icmp eq i8 %32, 0
  %33 = ptrtoint ptr %keylen to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %keylen, align 4
  %__crt_alg.i.i87 = getelementptr inbounds %struct.crypto_tfm, ptr %call3, i32 0, i32 3
  %35 = ptrtoint ptr %__crt_alg.i.i87 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %__crt_alg.i.i87, align 4
  %. = select i1 %tobool20.not, i32 -112, i32 -108
  %set_pub_key.i = getelementptr i8, ptr %36, i32 %.
  %37 = ptrtoint ptr %set_pub_key.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %.sink = load ptr, ptr %set_pub_key.i, align 4
  %call1.i88 = call i32 %.sink(ptr noundef %call3, ptr noundef nonnull %call9.i, i32 noundef %34) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i88)
  %cmp27 = icmp slt i32 %call1.i88, 0
  br i1 %cmp27, label %if.end11.error_free_key_crit_edge, label %if.end29

if.end11.error_free_key_crit_edge:                ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %error_free_key

if.end29:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  %__crt_alg.i.i89 = getelementptr inbounds %struct.crypto_tfm, ptr %call3, i32 0, i32 3
  %38 = ptrtoint ptr %__crt_alg.i.i89 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %__crt_alg.i.i89, align 4
  %max_size.i = getelementptr i8, ptr %39, i32 -104
  %40 = ptrtoint ptr %max_size.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %max_size.i, align 8
  %call1.i90 = call i32 %41(ptr noundef %call3) #9
  %mul = shl i32 %call1.i90, 3
  %key_size = getelementptr inbounds %struct.kernel_pkey_query, ptr %info, i32 0, i32 1
  %42 = ptrtoint ptr %key_size to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %mul, ptr %key_size, align 4
  %conv = trunc i32 %call1.i90 to i16
  %max_data_size = getelementptr inbounds %struct.kernel_pkey_query, ptr %info, i32 0, i32 2
  %43 = ptrtoint ptr %max_data_size to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %conv, ptr %max_data_size, align 4
  %max_sig_size = getelementptr inbounds %struct.kernel_pkey_query, ptr %info, i32 0, i32 3
  %44 = ptrtoint ptr %max_sig_size to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %conv, ptr %max_sig_size, align 2
  %max_enc_size = getelementptr inbounds %struct.kernel_pkey_query, ptr %info, i32 0, i32 4
  %45 = ptrtoint ptr %max_enc_size to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %conv, ptr %max_enc_size, align 4
  %max_dec_size = getelementptr inbounds %struct.kernel_pkey_query, ptr %info, i32 0, i32 5
  %46 = ptrtoint ptr %max_dec_size to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %conv, ptr %max_dec_size, align 2
  %47 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 9, ptr %info, align 4
  %48 = ptrtoint ptr %key_is_private to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %key_is_private, align 4, !range !52
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool35.not = icmp eq i8 %49, 0
  %spec.store.select = select i1 %tobool35.not, i32 9, i32 15
  %50 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %spec.store.select, ptr %info, align 4
  br label %error_free_key

error_free_key:                                   ; preds = %if.end29, %if.end11.error_free_key_crit_edge
  %ret.1 = phi i32 [ %call1.i88, %if.end11.error_free_key_crit_edge ], [ 0, %if.end29 ]
  call void @kfree(ptr noundef nonnull %call9.i) #9
  br label %error_free_tfm

error_free_tfm:                                   ; preds = %error_free_key, %if.end7.error_free_tfm_crit_edge
  %ret.2 = phi i32 [ %ret.1, %error_free_key ], [ -12, %if.end7.error_free_tfm_crit_edge ]
  call void @crypto_destroy_tfm(ptr noundef %call3, ptr noundef %call3) #9
  br label %cleanup

cleanup:                                          ; preds = %error_free_tfm, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %10, %if.then5 ], [ %ret.2, %error_free_tfm ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %alg_name) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @software_key_eds_op(ptr nocapture noundef readonly %params, ptr noundef %in, ptr noundef %out) #0 align 64 {
entry:
  %cwait = alloca %struct.crypto_wait, align 4
  %in_sg = alloca %struct.scatterlist, align 4
  %out_sg = alloca %struct.scatterlist, align 4
  %alg_name = alloca [128 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %params, align 4
  %2 = getelementptr inbounds %struct.key, ptr %1, i32 0, i32 17
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %cwait) #9
  %5 = call ptr @memset(ptr %cwait, i32 255, i32 60)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %in_sg) #9
  %6 = call ptr @memset(ptr %in_sg, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %out_sg) #9
  %7 = call ptr @memset(ptr %out_sg, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %alg_name) #9
  %8 = call ptr @memset(ptr %alg_name, i32 255, i32 128)
  %encoding = getelementptr inbounds %struct.kernel_pkey_params, ptr %params, i32 0, i32 1
  %9 = ptrtoint ptr %encoding to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %encoding, align 4
  %hash_algo = getelementptr inbounds %struct.kernel_pkey_params, ptr %params, i32 0, i32 2
  %11 = ptrtoint ptr %hash_algo to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hash_algo, align 4
  %call = call fastcc i32 @software_key_determine_akcipher(ptr noundef %10, ptr noundef %12, ptr noundef %4, ptr noundef nonnull %alg_name)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = call ptr @crypto_alloc_akcipher(ptr noundef nonnull %alg_name, i32 noundef 0, i32 noundef 0) #9
  %cmp.i101 = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i101, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %call3 to i32
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %__crt_alg.i.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %call3, i32 0, i32 3
  %14 = ptrtoint ptr %__crt_alg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %__crt_alg.i.i.i, align 4
  %reqsize.i.i = getelementptr i8, ptr %15, i32 -92
  %16 = ptrtoint ptr %reqsize.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %reqsize.i.i, align 4
  %add.i = add i32 %17, 128
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 3264) #12
  %tobool.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not.i, label %if.end7.error_free_tfm_crit_edge, label %if.end10, !prof !48

if.end7.error_free_tfm_crit_edge:                 ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %error_free_tfm

if.end10:                                         ; preds = %if.end7
  %tfm1.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %call9.i.i, i32 0, i32 3
  %18 = ptrtoint ptr %tfm1.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call3, ptr %tfm1.i.i, align 16
  %keylen = getelementptr inbounds %struct.public_key, ptr %4, i32 0, i32 1
  %paramlen = getelementptr inbounds %struct.public_key, ptr %4, i32 0, i32 4
  %19 = ptrtoint ptr %keylen to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %keylen, align 4
  %add = add i32 %20, 8
  %21 = ptrtoint ptr %paramlen to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %paramlen, align 4
  %add11 = add i32 %add, %22
  %call9.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add11, i32 noundef 3264) #12
  %tobool13.not = icmp eq ptr %call9.i, null
  br i1 %tobool13.not, label %if.end10.error_free_req_crit_edge, label %if.end15

if.end10.error_free_req_crit_edge:                ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %error_free_req

if.end15:                                         ; preds = %if.end10
  %23 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %4, align 4
  %25 = ptrtoint ptr %keylen to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %keylen, align 4
  %27 = call ptr @memcpy(ptr %call9.i, ptr %24, i32 %26)
  %28 = load i32, ptr %keylen, align 4
  %add.ptr = getelementptr i8, ptr %call9.i, i32 %28
  %algo = getelementptr inbounds %struct.public_key, ptr %4, i32 0, i32 2
  %29 = ptrtoint ptr %algo to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %algo, align 4
  %31 = ptrtoint ptr %add.ptr to i32
  call void @__asan_storeN_noabort(i32 %31, i32 4)
  store i32 %30, ptr %add.ptr, align 1
  %add.ptr.i = getelementptr i8, ptr %add.ptr, i32 4
  %32 = ptrtoint ptr %paramlen to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %paramlen, align 4
  %34 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_storeN_noabort(i32 %34, i32 4)
  store i32 %33, ptr %add.ptr.i, align 1
  %add.ptr.i107 = getelementptr i8, ptr %add.ptr.i, i32 4
  %params22 = getelementptr inbounds %struct.public_key, ptr %4, i32 0, i32 3
  %35 = ptrtoint ptr %params22 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %params22, align 4
  %37 = load i32, ptr %paramlen, align 4
  %38 = call ptr @memcpy(ptr %add.ptr.i107, ptr %36, i32 %37)
  %key_is_private = getelementptr inbounds %struct.public_key, ptr %4, i32 0, i32 5
  %39 = ptrtoint ptr %key_is_private to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %key_is_private, align 4, !range !52
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool24.not = icmp eq i8 %40, 0
  %41 = ptrtoint ptr %keylen to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %keylen, align 4
  %43 = ptrtoint ptr %__crt_alg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %__crt_alg.i.i.i, align 4
  %. = select i1 %tobool24.not, i32 -112, i32 -108
  %set_pub_key.i = getelementptr i8, ptr %44, i32 %.
  %45 = ptrtoint ptr %set_pub_key.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %.sink = load ptr, ptr %set_pub_key.i, align 4
  %call1.i109 = call i32 %.sink(ptr noundef %call3, ptr noundef nonnull %call9.i, i32 noundef %42) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i109)
  %tobool31.not = icmp eq i32 %call1.i109, 0
  br i1 %tobool31.not, label %if.end33, label %if.end15.error_free_key_crit_edge

if.end15.error_free_key_crit_edge:                ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %error_free_key

if.end33:                                         ; preds = %if.end15
  %in_len = getelementptr inbounds %struct.kernel_pkey_params, ptr %params, i32 0, i32 4
  %46 = ptrtoint ptr %in_len to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %in_len, align 4
  call void @sg_init_one(ptr noundef nonnull %in_sg, ptr noundef %in, i32 noundef %47) #9
  %48 = getelementptr inbounds %struct.kernel_pkey_params, ptr %params, i32 0, i32 5
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %48, align 4
  call void @sg_init_one(ptr noundef nonnull %out_sg, ptr noundef %out, i32 noundef %50) #9
  %51 = ptrtoint ptr %in_len to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %in_len, align 4
  %53 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %48, align 4
  %src1.i = getelementptr inbounds %struct.akcipher_request, ptr %call9.i.i, i32 0, i32 1
  %55 = ptrtoint ptr %src1.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %in_sg, ptr %src1.i, align 8
  %dst2.i = getelementptr inbounds %struct.akcipher_request, ptr %call9.i.i, i32 0, i32 2
  %56 = ptrtoint ptr %dst2.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %out_sg, ptr %dst2.i, align 4
  %src_len3.i = getelementptr inbounds %struct.akcipher_request, ptr %call9.i.i, i32 0, i32 3
  %57 = ptrtoint ptr %src_len3.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %52, ptr %src_len3.i, align 32
  %dst_len4.i = getelementptr inbounds %struct.akcipher_request, ptr %call9.i.i, i32 0, i32 4
  %58 = ptrtoint ptr %dst_len4.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %54, ptr %dst_len4.i, align 4
  %59 = ptrtoint ptr %cwait to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %cwait, align 4
  %wait.i.i = getelementptr inbounds %struct.completion, ptr %cwait, i32 0, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.9, ptr noundef nonnull @init_completion.__key) #9
  %complete.i = getelementptr inbounds %struct.crypto_async_request, ptr %call9.i.i, i32 0, i32 1
  %60 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @crypto_req_done, ptr %complete.i, align 8
  %data2.i = getelementptr inbounds %struct.crypto_async_request, ptr %call9.i.i, i32 0, i32 2
  %61 = ptrtoint ptr %data2.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %cwait, ptr %data2.i, align 4
  %flags.i = getelementptr inbounds %struct.crypto_async_request, ptr %call9.i.i, i32 0, i32 4
  %62 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 1536, ptr %flags.i, align 4
  %op = getelementptr inbounds %struct.kernel_pkey_params, ptr %params, i32 0, i32 6
  %63 = ptrtoint ptr %op to i32
  call void @__asan_load1_noabort(i32 %63)
  %bf.load100 = load i8, ptr %op, align 4
  %64 = zext i8 %bf.load100 to i64
  call void @__sanitizer_cov_trace_switch(i64 %64, ptr @__sancov_gen_cov_switch_values.11)
  switch i8 %bf.load100, label %do.body [
    i8 0, label %sw.bb
    i8 1, label %sw.bb36
    i8 2, label %sw.bb38
  ]

sw.bb:                                            ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  %call35 = call fastcc i32 @crypto_akcipher_encrypt(ptr noundef nonnull %call9.i.i)
  br label %sw.epilog

sw.bb36:                                          ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  %call37 = call fastcc i32 @crypto_akcipher_decrypt(ptr noundef nonnull %call9.i.i)
  br label %sw.epilog

sw.bb38:                                          ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  %call39 = call fastcc i32 @crypto_akcipher_sign(ptr noundef nonnull %call9.i.i)
  br label %sw.epilog

do.body:                                          ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22crypto/asymmetric_keys/public_key.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 236, 0\0A.popsection", ""() #9, !srcloc !58
  unreachable

sw.epilog:                                        ; preds = %sw.bb38, %sw.bb36, %sw.bb
  %ret.1 = phi i32 [ %call39, %sw.bb38 ], [ %call37, %sw.bb36 ], [ %call35, %sw.bb ]
  %65 = zext i32 %ret.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %65, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %ret.1, label %sw.epilog.crypto_wait_req.exit_crit_edge [
    i32 -115, label %sw.epilog.sw.bb.i_crit_edge
    i32 -16, label %sw.epilog.sw.bb.i_crit_edge119
  ]

sw.epilog.sw.bb.i_crit_edge119:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

sw.epilog.sw.bb.i_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

sw.epilog.crypto_wait_req.exit_crit_edge:         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %crypto_wait_req.exit

sw.bb.i:                                          ; preds = %sw.epilog.sw.bb.i_crit_edge, %sw.epilog.sw.bb.i_crit_edge119
  call void @wait_for_completion(ptr noundef nonnull %cwait) #9
  %66 = ptrtoint ptr %cwait to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 0, ptr %cwait, align 4
  %err2.i = getelementptr inbounds %struct.crypto_wait, ptr %cwait, i32 0, i32 1
  %67 = ptrtoint ptr %err2.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %err2.i, align 4
  br label %crypto_wait_req.exit

crypto_wait_req.exit:                             ; preds = %sw.bb.i, %sw.epilog.crypto_wait_req.exit_crit_edge
  %err.addr.0.i = phi i32 [ %ret.1, %sw.epilog.crypto_wait_req.exit_crit_edge ], [ %68, %sw.bb.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.addr.0.i)
  %cmp44 = icmp eq i32 %err.addr.0.i, 0
  br i1 %cmp44, label %if.then45, label %crypto_wait_req.exit.error_free_key_crit_edge

crypto_wait_req.exit.error_free_key_crit_edge:    ; preds = %crypto_wait_req.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %error_free_key

if.then45:                                        ; preds = %crypto_wait_req.exit
  call void @__sanitizer_cov_trace_pc() #11
  %69 = ptrtoint ptr %dst_len4.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %dst_len4.i, align 4
  br label %error_free_key

error_free_key:                                   ; preds = %if.then45, %crypto_wait_req.exit.error_free_key_crit_edge, %if.end15.error_free_key_crit_edge
  %ret.2 = phi i32 [ %call1.i109, %if.end15.error_free_key_crit_edge ], [ %70, %if.then45 ], [ %err.addr.0.i, %crypto_wait_req.exit.error_free_key_crit_edge ]
  call void @kfree(ptr noundef nonnull %call9.i) #9
  br label %error_free_req

error_free_req:                                   ; preds = %error_free_key, %if.end10.error_free_req_crit_edge
  %ret.3 = phi i32 [ %ret.2, %error_free_key ], [ -12, %if.end10.error_free_req_crit_edge ]
  call void @kfree_sensitive(ptr noundef nonnull %call9.i.i) #9
  br label %error_free_tfm

error_free_tfm:                                   ; preds = %error_free_req, %if.end7.error_free_tfm_crit_edge
  %ret.4 = phi i32 [ %ret.3, %error_free_req ], [ -12, %if.end7.error_free_tfm_crit_edge ]
  call void @crypto_destroy_tfm(ptr noundef %call3, ptr noundef %call3) #9
  br label %cleanup

cleanup:                                          ; preds = %error_free_tfm, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %13, %if.then5 ], [ %ret.4, %error_free_tfm ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %alg_name) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %out_sg) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %in_sg) #9
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %cwait) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @public_key_verify_signature_2(ptr nocapture noundef readonly %key, ptr noundef %sig) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.key, ptr %key, i32 0, i32 17
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %call = tail call i32 @public_key_verify_signature(ptr noundef %2, ptr noundef %sig)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sm2_compute_z_digest(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_shash(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_update(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_finup(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pfn_valid(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_stats_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_stats_akcipher_verify(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_sensitive(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @public_key_signature_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_one(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @crypto_akcipher_encrypt(ptr noundef %req) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__crt_alg.i = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %__crt_alg.i, align 4
  %src_len2 = getelementptr inbounds %struct.akcipher_request, ptr %req, i32 0, i32 3
  %4 = ptrtoint ptr %src_len2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %src_len2, align 32
  tail call void @crypto_stats_get(ptr noundef %3) #9
  %encrypt = getelementptr i8, ptr %3, i32 -120
  %6 = ptrtoint ptr %encrypt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %encrypt, align 8
  %call3 = tail call i32 %7(ptr noundef %req) #9
  tail call void @crypto_stats_akcipher_encrypt(i32 noundef %5, i32 noundef %call3, ptr noundef %3) #9
  ret i32 %call3
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @crypto_akcipher_decrypt(ptr noundef %req) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__crt_alg.i = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %__crt_alg.i, align 4
  %src_len2 = getelementptr inbounds %struct.akcipher_request, ptr %req, i32 0, i32 3
  %4 = ptrtoint ptr %src_len2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %src_len2, align 32
  tail call void @crypto_stats_get(ptr noundef %3) #9
  %decrypt = getelementptr i8, ptr %3, i32 -116
  %6 = ptrtoint ptr %decrypt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %decrypt, align 4
  %call3 = tail call i32 %7(ptr noundef %req) #9
  tail call void @crypto_stats_akcipher_decrypt(i32 noundef %5, i32 noundef %call3, ptr noundef %3) #9
  ret i32 %call3
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @crypto_akcipher_sign(ptr noundef %req) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__crt_alg.i = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %__crt_alg.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 -128
  tail call void @crypto_stats_get(ptr noundef %3) #9
  %4 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i.i, align 128
  %call2 = tail call i32 %5(ptr noundef %req) #9
  tail call void @crypto_stats_akcipher_sign(i32 noundef %call2, ptr noundef %3) #9
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_stats_akcipher_encrypt(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_stats_akcipher_decrypt(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_stats_akcipher_sign(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !37}
!llvm.module.flags = !{!39, !40, !41, !42, !43, !44, !45, !46}
!llvm.ident = !{!47}

!0 = !{ptr @__UNIQUE_ID_description226, !1, !"__UNIQUE_ID_description226", i1 false, i1 false}
!1 = !{!"../crypto/asymmetric_keys/public_key.c", i32 24, i32 1}
!2 = !{ptr @__UNIQUE_ID_author227, !3, !"__UNIQUE_ID_author227", i1 false, i1 false}
!3 = !{!"../crypto/asymmetric_keys/public_key.c", i32 25, i32 1}
!4 = !{ptr @__UNIQUE_ID_file228, !5, !"__UNIQUE_ID_file228", i1 false, i1 false}
!5 = !{!"../crypto/asymmetric_keys/public_key.c", i32 26, i32 1}
!6 = !{ptr @__UNIQUE_ID_license229, !5, !"__UNIQUE_ID_license229", i1 false, i1 false}
!7 = !{ptr @__ksymtab_public_key_free, !8, !"__ksymtab_public_key_free", i1 false, i1 false}
!8 = !{!"../crypto/asymmetric_keys/public_key.c", i32 51, i32 1}
!9 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../crypto/asymmetric_keys/public_key.c", i32 361, i32 47}
!11 = distinct !{null, !12, !"__already_done", i1 false, i1 false}
!12 = !{!"../crypto/asymmetric_keys/public_key.c", i32 386, i32 6}
!13 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @__ksymtab_public_key_verify_signature, !15, !"__ksymtab_public_key_verify_signature", i1 false, i1 false}
!15 = !{!"../crypto/asymmetric_keys/public_key.c", i32 390, i32 1}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../crypto/asymmetric_keys/public_key.c", i32 404, i32 12}
!18 = !{ptr @public_key_subtype, !19, !"public_key_subtype", i1 false, i1 false}
!19 = !{!"../crypto/asymmetric_keys/public_key.c", i32 402, i32 31}
!20 = !{ptr @__ksymtab_public_key_subtype, !21, !"__ksymtab_public_key_subtype", i1 false, i1 false}
!21 = !{!"../crypto/asymmetric_keys/public_key.c", i32 412, i32 1}
!22 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../crypto/asymmetric_keys/public_key.c", i32 73, i32 23}
!24 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../crypto/asymmetric_keys/public_key.c", i32 80, i32 10}
!26 = !{ptr @.str.5, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../crypto/asymmetric_keys/public_key.c", i32 84, i32 10}
!28 = !{ptr @.str.6, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../crypto/asymmetric_keys/public_key.c", i32 89, i32 23}
!30 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../crypto/asymmetric_keys/public_key.c", i32 90, i32 23}
!32 = !{ptr @.str.8, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../crypto/asymmetric_keys/public_key.c", i32 265, i32 39}
!34 = !{ptr @init_completion.__key, !35, !"__key", i1 false, i1 false}
!35 = !{!"../include/linux/completion.h", i32 87, i32 2}
!36 = !{ptr @.str.9, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.10, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../crypto/asymmetric_keys/public_key.c", i32 37, i32 17}
!39 = !{i32 1, !"wchar_size", i32 2}
!40 = !{i32 1, !"min_enum_size", i32 4}
!41 = !{i32 8, !"branch-target-enforcement", i32 0}
!42 = !{i32 8, !"sign-return-address", i32 0}
!43 = !{i32 8, !"sign-return-address-all", i32 0}
!44 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!45 = !{i32 7, !"uwtable", i32 1}
!46 = !{i32 7, !"frame-pointer", i32 2}
!47 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!48 = !{!"branch_weights", i32 1, i32 2000}
!49 = !{i64 2153815330, i64 2153815830, i64 2153815367, i64 2153815423, i64 2153815457, i64 2153815481, i64 2153815522, i64 2153815543, i64 2153815571, i64 2153815605}
!50 = !{i64 2153816942, i64 2153817442, i64 2153816979, i64 2153817035, i64 2153817069, i64 2153817093, i64 2153817134, i64 2153817155, i64 2153817183, i64 2153817217}
!51 = !{i64 2153818560, i64 2153819060, i64 2153818597, i64 2153818653, i64 2153818687, i64 2153818711, i64 2153818752, i64 2153818773, i64 2153818801, i64 2153818835}
!52 = !{i8 0, i8 2}
!53 = !{!"branch_weights", i32 2000, i32 1}
!54 = !{i64 2153626938, i64 2153627430, i64 2153626975, i64 2153627031, i64 2153627065, i64 2153627089, i64 2153627130, i64 2153627151, i64 2153627179, i64 2153627213}
!55 = !{i64 2153620619, i64 2153621111, i64 2153620656, i64 2153620712, i64 2153620746, i64 2153620770, i64 2153620811, i64 2153620832, i64 2153620860, i64 2153620894}
!56 = !{i64 2153622229, i64 2153622721, i64 2153622266, i64 2153622322, i64 2153622356, i64 2153622380, i64 2153622421, i64 2153622442, i64 2153622470, i64 2153622504}
!57 = !{i64 2153811891, i64 2153812391, i64 2153811928, i64 2153811984, i64 2153812018, i64 2153812042, i64 2153812083, i64 2153812104, i64 2153812132, i64 2153812166}
!58 = !{i64 2153807708, i64 2153808208, i64 2153807745, i64 2153807801, i64 2153807835, i64 2153807859, i64 2153807900, i64 2153807921, i64 2153807949, i64 2153807983}
