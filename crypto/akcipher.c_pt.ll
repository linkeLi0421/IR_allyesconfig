; ModuleID = '/llk/IR_all_yes/crypto/akcipher.c_pt.bc'
source_filename = "../crypto/akcipher.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+crypto_grab_akcipher\22, \22a\22\09"
module asm "\09.weak\09__crc_crypto_grab_akcipher\09\09\09\09"
module asm "\09.long\09__crc_crypto_grab_akcipher\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_grab_akcipher:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_grab_akcipher\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_grab_akcipher:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+crypto_alloc_akcipher\22, \22a\22\09"
module asm "\09.weak\09__crc_crypto_alloc_akcipher\09\09\09\09"
module asm "\09.long\09__crc_crypto_alloc_akcipher\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_alloc_akcipher:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_alloc_akcipher\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_alloc_akcipher:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+crypto_register_akcipher\22, \22a\22\09"
module asm "\09.weak\09__crc_crypto_register_akcipher\09\09\09\09"
module asm "\09.long\09__crc_crypto_register_akcipher\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_register_akcipher:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_register_akcipher\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_register_akcipher:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+crypto_unregister_akcipher\22, \22a\22\09"
module asm "\09.weak\09__crc_crypto_unregister_akcipher\09\09\09\09"
module asm "\09.long\09__crc_crypto_unregister_akcipher\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_unregister_akcipher:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_unregister_akcipher\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_unregister_akcipher:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+akcipher_register_instance\22, \22a\22\09"
module asm "\09.weak\09__crc_akcipher_register_instance\09\09\09\09"
module asm "\09.long\09__crc_akcipher_register_instance\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_akcipher_register_instance:\09\09\09\09\09"
module asm "\09.asciz \09\22akcipher_register_instance\22\09\09\09\09\09"
module asm "__kstrtabns_akcipher_register_instance:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.crypto_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.crypto_spawn = type { %struct.list_head, ptr, %union.anon.96, ptr, i32, i8, i8 }
%struct.list_head = type { ptr, ptr }
%union.anon.96 = type { ptr }
%struct.akcipher_alg = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [88 x i8], %struct.crypto_alg }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon.94, ptr, ptr, ptr, ptr, %union.anon.95, [120 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%union.anon.94 = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%union.anon.95 = type { %struct.crypto_istat_akcipher }
%struct.crypto_istat_akcipher = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.akcipher_instance = type { ptr, [124 x i8], %union.anon.98 }
%union.anon.98 = type { %struct.anon.99 }
%struct.anon.99 = type { [128 x i8], %struct.crypto_instance }
%struct.crypto_instance = type { %struct.crypto_alg, ptr, %union.anon.97, [116 x i8], [0 x ptr] }
%union.anon.97 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.crypto_report_akcipher = type { [64 x i8] }

@crypto_akcipher_type = internal constant { %struct.crypto_type, [52 x i8] } { %struct.crypto_type { ptr null, ptr @crypto_alg_extsize, ptr null, ptr @crypto_akcipher_init_tfm, ptr @crypto_akcipher_show, ptr @crypto_akcipher_report, ptr @crypto_akcipher_free_instance, i32 13, i32 -16, i32 15, i32 0 }, [52 x i8] zeroinitializer }, align 32
@__kstrtab_crypto_grab_akcipher = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_grab_akcipher = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_grab_akcipher = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_grab_akcipher to i32), ptr @__kstrtab_crypto_grab_akcipher, ptr @__kstrtabns_crypto_grab_akcipher }, section "___ksymtab_gpl+crypto_grab_akcipher", align 4
@__kstrtab_crypto_alloc_akcipher = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_alloc_akcipher = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_alloc_akcipher = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_alloc_akcipher to i32), ptr @__kstrtab_crypto_alloc_akcipher, ptr @__kstrtabns_crypto_alloc_akcipher }, section "___ksymtab_gpl+crypto_alloc_akcipher", align 4
@__kstrtab_crypto_register_akcipher = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_register_akcipher = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_register_akcipher = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_register_akcipher to i32), ptr @__kstrtab_crypto_register_akcipher, ptr @__kstrtabns_crypto_register_akcipher }, section "___ksymtab_gpl+crypto_register_akcipher", align 4
@__kstrtab_crypto_unregister_akcipher = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_unregister_akcipher = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_unregister_akcipher = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_unregister_akcipher to i32), ptr @__kstrtab_crypto_unregister_akcipher, ptr @__kstrtabns_crypto_unregister_akcipher }, section "___ksymtab_gpl+crypto_unregister_akcipher", align 4
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"crypto/akcipher.c\00", [46 x i8] zeroinitializer }, align 32
@__kstrtab_akcipher_register_instance = external dso_local constant [0 x i8], align 1
@__kstrtabns_akcipher_register_instance = external dso_local constant [0 x i8], align 1
@__ksymtab_akcipher_register_instance = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @akcipher_register_instance to i32), ptr @__kstrtab_akcipher_register_instance, ptr @__kstrtabns_akcipher_register_instance }, section "___ksymtab_gpl+akcipher_register_instance", align 4
@__UNIQUE_ID_file271 = internal constant [30 x i8] c"akcipher.file=crypto/akcipher\00", section ".modinfo", align 1
@__UNIQUE_ID_license272 = internal constant [21 x i8] c"akcipher.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description273 = internal constant [52 x i8] c"akcipher.description=Generic public key cipher type\00", section ".modinfo", align 1
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"type         : akcipher\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"akcipher\00", [23 x i8] zeroinitializer }, align 32
@___asan_gen_.3 = private unnamed_addr constant [21 x i8] c"crypto_akcipher_type\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 79, i32 33 }
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 150, i32 6 }
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 47, i32 14 }
@___asan_gen_.12 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.13 = private constant [21 x i8] c"../crypto/akcipher.c\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 30, i32 26 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @__UNIQUE_ID_description273, ptr @__UNIQUE_ID_file271, ptr @__UNIQUE_ID_license272, ptr @__ksymtab_akcipher_register_instance, ptr @__ksymtab_crypto_alloc_akcipher, ptr @__ksymtab_crypto_grab_akcipher, ptr @__ksymtab_crypto_register_akcipher, ptr @__ksymtab_crypto_unregister_akcipher, ptr @crypto_akcipher_type, ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crypto_akcipher_type to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @crypto_grab_akcipher(ptr noundef %spawn, ptr noundef %inst, ptr noundef %name, i32 noundef %type, i32 noundef %mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %frontend = getelementptr inbounds %struct.crypto_spawn, ptr %spawn, i32 0, i32 3
  %0 = ptrtoint ptr %frontend to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @crypto_akcipher_type, ptr %frontend, align 4
  %call = tail call i32 @crypto_grab_spawn(ptr noundef %spawn, ptr noundef %inst, ptr noundef %name, i32 noundef %type, i32 noundef %mask) #4
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_grab_spawn(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @crypto_alloc_akcipher(ptr noundef %alg_name, i32 noundef %type, i32 noundef %mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @crypto_alloc_tfm_node(ptr noundef %alg_name, ptr noundef nonnull @crypto_akcipher_type, i32 noundef %type, i32 noundef %mask, i32 noundef -1) #4
  ret ptr %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @crypto_register_akcipher(ptr noundef %alg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %alg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %alg, align 128
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %2 = ptrtoint ptr %alg to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @akcipher_default_op, ptr %alg, align 128
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %verify = getelementptr inbounds %struct.akcipher_alg, ptr %alg, i32 0, i32 1
  %3 = ptrtoint ptr %verify to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %verify, align 4
  %tobool3.not = icmp eq ptr %4, null
  br i1 %tobool3.not, label %if.then4, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %5 = ptrtoint ptr %verify to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @akcipher_default_op, ptr %verify, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  %encrypt = getelementptr inbounds %struct.akcipher_alg, ptr %alg, i32 0, i32 2
  %6 = ptrtoint ptr %encrypt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %encrypt, align 8
  %tobool7.not = icmp eq ptr %7, null
  br i1 %tobool7.not, label %if.then8, label %if.end6.if.end10_crit_edge

if.end6.if.end10_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  %8 = ptrtoint ptr %encrypt to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @akcipher_default_op, ptr %encrypt, align 8
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end6.if.end10_crit_edge
  %decrypt = getelementptr inbounds %struct.akcipher_alg, ptr %alg, i32 0, i32 3
  %9 = ptrtoint ptr %decrypt to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %decrypt, align 4
  %tobool11.not = icmp eq ptr %10, null
  br i1 %tobool11.not, label %if.then12, label %if.end10.if.end14_crit_edge

if.end10.if.end14_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end14

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  %11 = ptrtoint ptr %decrypt to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @akcipher_default_op, ptr %decrypt, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.end10.if.end14_crit_edge
  %base1 = getelementptr inbounds %struct.akcipher_alg, ptr %alg, i32 0, i32 11
  %cra_type.i = getelementptr inbounds %struct.akcipher_alg, ptr %alg, i32 0, i32 11, i32 10
  %12 = ptrtoint ptr %cra_type.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @crypto_akcipher_type, ptr %cra_type.i, align 8
  %cra_flags.i = getelementptr inbounds %struct.akcipher_alg, ptr %alg, i32 0, i32 11, i32 2
  %13 = ptrtoint ptr %cra_flags.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cra_flags.i, align 16
  %and.i = and i32 %14, -16
  %or.i = or i32 %and.i, 13
  store i32 %or.i, ptr %cra_flags.i, align 16
  %call = tail call i32 @crypto_register_alg(ptr noundef %base1) #4
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @akcipher_default_op(ptr nocapture noundef readnone %req) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -38
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_alg(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @crypto_unregister_akcipher(ptr noundef %alg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.akcipher_alg, ptr %alg, i32 0, i32 11
  tail call void @crypto_unregister_alg(ptr noundef %base) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_alg(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @akcipher_register_instance(ptr noundef %tmpl, ptr noundef %inst) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %inst, align 128
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !32

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 150, i32 noundef 9, ptr noundef null) #4
  br label %return

if.end23:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %cra_type.i = getelementptr inbounds %struct.akcipher_instance, ptr %inst, i32 0, i32 2, i32 0, i32 1, i32 0, i32 10
  %2 = ptrtoint ptr %cra_type.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @crypto_akcipher_type, ptr %cra_type.i, align 8
  %cra_flags.i = getelementptr inbounds %struct.akcipher_instance, ptr %inst, i32 0, i32 2, i32 0, i32 1, i32 0, i32 2
  %3 = ptrtoint ptr %cra_flags.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cra_flags.i, align 16
  %and.i = and i32 %4, -16
  %or.i = or i32 %and.i, 13
  store i32 %or.i, ptr %cra_flags.i, align 16
  %base.i = getelementptr inbounds %struct.akcipher_instance, ptr %inst, i32 0, i32 2, i32 0, i32 1
  %call24 = tail call i32 @crypto_register_instance(ptr noundef %tmpl, ptr noundef %base.i) #4
  br label %return

return:                                           ; preds = %if.end23, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call24, %if.end23 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_instance(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_alg_extsize(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @crypto_akcipher_init_tfm(ptr noundef %tfm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_alg.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 3
  %0 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_alg.i, align 4
  %exit = getelementptr i8, ptr %1, i32 -96
  %2 = ptrtoint ptr %exit to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %exit, align 32
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %exit2 = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 2
  %4 = ptrtoint ptr %exit2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @crypto_akcipher_exit_tfm, ptr %exit2, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %init = getelementptr i8, ptr %1, i32 -100
  %5 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %init, align 4
  %tobool3.not = icmp eq ptr %6, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.then4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %call6 = tail call i32 %6(ptr noundef %tfm) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.then4 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @crypto_akcipher_show(ptr noundef %m, ptr nocapture noundef readnone %alg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.1) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @crypto_akcipher_report(ptr noundef %skb, ptr nocapture noundef readnone %alg) #0 align 64 {
entry:
  %rakcipher = alloca %struct.crypto_report_akcipher, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %rakcipher) #4
  %0 = call ptr @memset(ptr %rakcipher, i32 0, i32 64)
  %call = call i32 @strscpy(ptr noundef nonnull %rakcipher, ptr noundef nonnull @.str.2, i32 noundef 64) #4
  %call1 = call i32 @nla_put(ptr noundef %skb, i32 noundef 9, i32 noundef 64, ptr noundef nonnull %rakcipher) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %rakcipher) #4
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @crypto_akcipher_free_instance(ptr noundef %inst) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %inst, i32 -256
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 128
  tail call void %1(ptr noundef %add.ptr.i) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @crypto_akcipher_exit_tfm(ptr noundef %tfm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_alg.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 3
  %0 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_alg.i, align 4
  %exit = getelementptr i8, ptr %1, i32 -96
  %2 = ptrtoint ptr %exit to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %exit, align 32
  tail call void %3(ptr noundef %tfm) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_tfm_node(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !17, !19, !21}
!llvm.module.flags = !{!23, !24, !25, !26, !27, !28, !29, !30}
!llvm.ident = !{!31}

!0 = !{ptr @__ksymtab_crypto_grab_akcipher, !1, !"__ksymtab_crypto_grab_akcipher", i1 false, i1 false}
!1 = !{!"../crypto/akcipher.c", i32 100, i32 1}
!2 = !{ptr @__ksymtab_crypto_alloc_akcipher, !3, !"__ksymtab_crypto_alloc_akcipher", i1 false, i1 false}
!3 = !{!"../crypto/akcipher.c", i32 107, i32 1}
!4 = !{ptr @__ksymtab_crypto_register_akcipher, !5, !"__ksymtab_crypto_register_akcipher", i1 false, i1 false}
!5 = !{!"../crypto/akcipher.c", i32 139, i32 1}
!6 = !{ptr @__ksymtab_crypto_unregister_akcipher, !7, !"__ksymtab_crypto_unregister_akcipher", i1 false, i1 false}
!7 = !{!"../crypto/akcipher.c", i32 145, i32 1}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../crypto/akcipher.c", i32 150, i32 6}
!10 = !{ptr @__ksymtab_akcipher_register_instance, !11, !"__ksymtab_akcipher_register_instance", i1 false, i1 false}
!11 = !{!"../crypto/akcipher.c", i32 155, i32 1}
!12 = !{ptr @__UNIQUE_ID_file271, !13, !"__UNIQUE_ID_file271", i1 false, i1 false}
!13 = !{!"../crypto/akcipher.c", i32 157, i32 1}
!14 = !{ptr @__UNIQUE_ID_license272, !13, !"__UNIQUE_ID_license272", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_description273, !16, !"__UNIQUE_ID_description273", i1 false, i1 false}
!16 = !{!"../crypto/akcipher.c", i32 158, i32 1}
!17 = !{ptr @crypto_akcipher_type, !18, !"crypto_akcipher_type", i1 false, i1 false}
!18 = !{!"../crypto/akcipher.c", i32 79, i32 33}
!19 = !{ptr @.str.1, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../crypto/akcipher.c", i32 47, i32 14}
!21 = !{ptr @.str.2, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../crypto/akcipher.c", i32 30, i32 26}
!23 = !{i32 1, !"wchar_size", i32 2}
!24 = !{i32 1, !"min_enum_size", i32 4}
!25 = !{i32 8, !"branch-target-enforcement", i32 0}
!26 = !{i32 8, !"sign-return-address", i32 0}
!27 = !{i32 8, !"sign-return-address-all", i32 0}
!28 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!29 = !{i32 7, !"uwtable", i32 1}
!30 = !{i32 7, !"frame-pointer", i32 2}
!31 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!32 = !{!"branch_weights", i32 1, i32 2000}
