; ModuleID = '/llk/IR_all_yes/crypto/asymmetric_keys/signature.c_pt.bc'
source_filename = "../crypto/asymmetric_keys/signature.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+public_key_signature_free\22, \22a\22\09"
module asm "\09.weak\09__crc_public_key_signature_free\09\09\09\09"
module asm "\09.long\09__crc_public_key_signature_free\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_public_key_signature_free:\09\09\09\09\09"
module asm "\09.asciz \09\22public_key_signature_free\22\09\09\09\09\09"
module asm "__kstrtabns_public_key_signature_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+query_asymmetric_key\22, \22a\22\09"
module asm "\09.weak\09__crc_query_asymmetric_key\09\09\09\09"
module asm "\09.long\09__crc_query_asymmetric_key\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_query_asymmetric_key:\09\09\09\09\09"
module asm "\09.asciz \09\22query_asymmetric_key\22\09\09\09\09\09"
module asm "__kstrtabns_query_asymmetric_key:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+encrypt_blob\22, \22a\22\09"
module asm "\09.weak\09__crc_encrypt_blob\09\09\09\09"
module asm "\09.long\09__crc_encrypt_blob\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_encrypt_blob:\09\09\09\09\09"
module asm "\09.asciz \09\22encrypt_blob\22\09\09\09\09\09"
module asm "__kstrtabns_encrypt_blob:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+decrypt_blob\22, \22a\22\09"
module asm "\09.weak\09__crc_decrypt_blob\09\09\09\09"
module asm "\09.long\09__crc_decrypt_blob\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_decrypt_blob:\09\09\09\09\09"
module asm "\09.asciz \09\22decrypt_blob\22\09\09\09\09\09"
module asm "__kstrtabns_decrypt_blob:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+create_signature\22, \22a\22\09"
module asm "\09.weak\09__crc_create_signature\09\09\09\09"
module asm "\09.long\09__crc_create_signature\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_create_signature:\09\09\09\09\09"
module asm "\09.asciz \09\22create_signature\22\09\09\09\09\09"
module asm "__kstrtabns_create_signature:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+verify_signature\22, \22a\22\09"
module asm "\09.weak\09__crc_verify_signature\09\09\09\09"
module asm "\09.long\09__crc_verify_signature\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_verify_signature:\09\09\09\09\09"
module asm "\09.asciz \09\22verify_signature\22\09\09\09\09\09"
module asm "__kstrtabns_verify_signature:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.key_type = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.lock_class_key }
%struct.list_head = type { ptr, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.public_key_signature = type { [3 x ptr], ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, i32 }
%struct.key = type { %struct.refcount_struct, i32, %union.anon, ptr, %struct.rw_semaphore, ptr, ptr, %union.anon.2, i64, %struct.kuid_t, %struct.kgid_t, i32, i16, i16, i16, i32, %union.anon.3, %union.anon.63, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%union.anon = type { %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%union.anon.2 = type { i64 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.3 = type { %struct.keyring_index_key }
%struct.keyring_index_key = type { i32, %union.anon.4, ptr, ptr, ptr }
%union.anon.4 = type { i32 }
%union.anon.63 = type { %union.key_payload }
%union.key_payload = type { [4 x ptr] }
%struct.asymmetric_key_subtype = type { ptr, ptr, i16, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_pkey_params = type { ptr, ptr, ptr, ptr, i32, %union.anon.65, i8 }
%union.anon.65 = type { i32 }

@__kstrtab_public_key_signature_free = external dso_local constant [0 x i8], align 1
@__kstrtabns_public_key_signature_free = external dso_local constant [0 x i8], align 1
@__ksymtab_public_key_signature_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @public_key_signature_free to i32), ptr @__kstrtab_public_key_signature_free, ptr @__kstrtabns_public_key_signature_free }, section "___ksymtab_gpl+public_key_signature_free", align 4
@key_type_asymmetric = external dso_local global %struct.key_type, align 4
@__kstrtab_query_asymmetric_key = external dso_local constant [0 x i8], align 1
@__kstrtabns_query_asymmetric_key = external dso_local constant [0 x i8], align 1
@__ksymtab_query_asymmetric_key = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @query_asymmetric_key to i32), ptr @__kstrtab_query_asymmetric_key, ptr @__kstrtabns_query_asymmetric_key }, section "___ksymtab_gpl+query_asymmetric_key", align 4
@__kstrtab_encrypt_blob = external dso_local constant [0 x i8], align 1
@__kstrtabns_encrypt_blob = external dso_local constant [0 x i8], align 1
@__ksymtab_encrypt_blob = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @encrypt_blob to i32), ptr @__kstrtab_encrypt_blob, ptr @__kstrtabns_encrypt_blob }, section "___ksymtab_gpl+encrypt_blob", align 4
@__kstrtab_decrypt_blob = external dso_local constant [0 x i8], align 1
@__kstrtabns_decrypt_blob = external dso_local constant [0 x i8], align 1
@__ksymtab_decrypt_blob = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @decrypt_blob to i32), ptr @__kstrtab_decrypt_blob, ptr @__kstrtabns_decrypt_blob }, section "___ksymtab_gpl+decrypt_blob", align 4
@__kstrtab_create_signature = external dso_local constant [0 x i8], align 1
@__kstrtabns_create_signature = external dso_local constant [0 x i8], align 1
@__ksymtab_create_signature = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @create_signature to i32), ptr @__kstrtab_create_signature, ptr @__kstrtabns_create_signature }, section "___ksymtab_gpl+create_signature", align 4
@__kstrtab_verify_signature = external dso_local constant [0 x i8], align 1
@__kstrtabns_verify_signature = external dso_local constant [0 x i8], align 1
@__ksymtab_verify_signature = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @verify_signature to i32), ptr @__kstrtab_verify_signature, ptr @__kstrtabns_verify_signature }, section "___ksymtab_gpl+verify_signature", align 4
@llvm.compiler.used = appending global [6 x ptr] [ptr @__ksymtab_create_signature, ptr @__ksymtab_decrypt_blob, ptr @__ksymtab_encrypt_blob, ptr @__ksymtab_public_key_signature_free, ptr @__ksymtab_query_asymmetric_key, ptr @__ksymtab_verify_signature], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @public_key_signature_free(ptr noundef %sig) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %sig, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %for.body.preheader

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

for.body.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %0 = ptrtoint ptr %sig to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sig, align 4
  tail call void @kfree(ptr noundef %1) #2
  %arrayidx.1 = getelementptr [3 x ptr], ptr %sig, i32 0, i32 1
  %2 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.1, align 4
  tail call void @kfree(ptr noundef %3) #2
  %arrayidx.2 = getelementptr [3 x ptr], ptr %sig, i32 0, i32 2
  %4 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.2, align 4
  tail call void @kfree(ptr noundef %5) #2
  %s = getelementptr inbounds %struct.public_key_signature, ptr %sig, i32 0, i32 1
  %6 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s, align 4
  tail call void @kfree(ptr noundef %7) #2
  %digest = getelementptr inbounds %struct.public_key_signature, ptr %sig, i32 0, i32 2
  %8 = ptrtoint ptr %digest to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %digest, align 4
  tail call void @kfree(ptr noundef %9) #2
  tail call void @kfree(ptr noundef nonnull %sig) #2
  br label %if.end

if.end:                                           ; preds = %for.body.preheader, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @query_asymmetric_key(ptr noundef %params, ptr noundef %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %params, align 4
  %type = getelementptr inbounds %struct.key, ptr %1, i32 0, i32 16, i32 0, i32 2
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %type, align 8
  %cmp.not = icmp eq ptr %3, @key_type_asymmetric
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx.i = getelementptr %struct.key, ptr %1, i32 0, i32 17, i32 0, i32 0, i32 1
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %6 = getelementptr inbounds %struct.key, ptr %1, i32 0, i32 17
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %tobool2.not = icmp eq ptr %8, null
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end4

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end4:                                          ; preds = %lor.lhs.false
  %query = getelementptr inbounds %struct.asymmetric_key_subtype, ptr %5, i32 0, i32 5
  %9 = ptrtoint ptr %query to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %query, align 4
  %tobool5.not = icmp eq ptr %10, null
  br i1 %tobool5.not, label %if.end4.cleanup_crit_edge, label %if.end7

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end7:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #4
  %call9 = tail call i32 %10(ptr noundef %params, ptr noundef %info) #2
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end4.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %if.end7 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -524, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @encrypt_blob(ptr noundef %params, ptr noundef %data, ptr noundef %enc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %op = getelementptr inbounds %struct.kernel_pkey_params, ptr %params, i32 0, i32 6
  %0 = ptrtoint ptr %op to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %op, align 4
  %call = tail call i32 @asymmetric_key_eds_op(ptr noundef %params, ptr noundef %data, ptr noundef %enc) #2
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asymmetric_key_eds_op(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @decrypt_blob(ptr noundef %params, ptr noundef %enc, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %op = getelementptr inbounds %struct.kernel_pkey_params, ptr %params, i32 0, i32 6
  %0 = ptrtoint ptr %op to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %op, align 4
  %call = tail call i32 @asymmetric_key_eds_op(ptr noundef %params, ptr noundef %enc, ptr noundef %data) #2
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @create_signature(ptr noundef %params, ptr noundef %data, ptr noundef %enc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %op = getelementptr inbounds %struct.kernel_pkey_params, ptr %params, i32 0, i32 6
  %0 = ptrtoint ptr %op to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 2, ptr %op, align 4
  %call = tail call i32 @asymmetric_key_eds_op(ptr noundef %params, ptr noundef %data, ptr noundef %enc) #2
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @verify_signature(ptr noundef %key, ptr noundef %sig) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.key, ptr %key, i32 0, i32 16, i32 0, i32 2
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %type, align 8
  %cmp.not = icmp eq ptr %1, @key_type_asymmetric
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx.i = getelementptr %struct.key, ptr %key, i32 0, i32 17, i32 0, i32 0, i32 1
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %4 = getelementptr inbounds %struct.key, ptr %key, i32 0, i32 17
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %tobool1.not = icmp eq ptr %6, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end3

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end3:                                          ; preds = %lor.lhs.false
  %verify_signature = getelementptr inbounds %struct.asymmetric_key_subtype, ptr %3, i32 0, i32 7
  %7 = ptrtoint ptr %verify_signature to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %verify_signature, align 4
  %tobool4.not = icmp eq ptr %8, null
  br i1 %tobool4.not, label %if.end3.cleanup_crit_edge, label %if.end6

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #4
  %call8 = tail call i32 %8(ptr noundef %key, ptr noundef %sig) #2
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end3.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %if.end6 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -524, %if.end3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = !{ptr @__ksymtab_public_key_signature_free, !1, !"__ksymtab_public_key_signature_free", i1 false, i1 false}
!1 = !{!"../crypto/asymmetric_keys/signature.c", i32 35, i32 1}
!2 = !{ptr @__ksymtab_query_asymmetric_key, !3, !"__ksymtab_query_asymmetric_key", i1 false, i1 false}
!3 = !{!"../crypto/asymmetric_keys/signature.c", i32 65, i32 1}
!4 = !{ptr @__ksymtab_encrypt_blob, !5, !"__ksymtab_encrypt_blob", i1 false, i1 false}
!5 = !{!"../crypto/asymmetric_keys/signature.c", i32 86, i32 1}
!6 = !{ptr @__ksymtab_decrypt_blob, !7, !"__ksymtab_decrypt_blob", i1 false, i1 false}
!7 = !{!"../crypto/asymmetric_keys/signature.c", i32 107, i32 1}
!8 = !{ptr @__ksymtab_create_signature, !9, !"__ksymtab_create_signature", i1 false, i1 false}
!9 = !{!"../crypto/asymmetric_keys/signature.c", i32 128, i32 1}
!10 = !{ptr @__ksymtab_verify_signature, !11, !"__ksymtab_verify_signature", i1 false, i1 false}
!11 = !{!"../crypto/asymmetric_keys/signature.c", i32 159, i32 1}
!12 = !{i32 1, !"wchar_size", i32 2}
!13 = !{i32 1, !"min_enum_size", i32 4}
!14 = !{i32 8, !"branch-target-enforcement", i32 0}
!15 = !{i32 8, !"sign-return-address", i32 0}
!16 = !{i32 8, !"sign-return-address-all", i32 0}
!17 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!18 = !{i32 7, !"uwtable", i32 1}
!19 = !{i32 7, !"frame-pointer", i32 2}
!20 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
