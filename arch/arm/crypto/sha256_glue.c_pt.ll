; ModuleID = '/llk/IR_all_yes/arch/arm/crypto/sha256_glue.c_pt.bc'
source_filename = "../arch/arm/crypto/sha256_glue.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+crypto_sha256_arm_update\22, \22a\22\09"
module asm "\09.weak\09__crc_crypto_sha256_arm_update\09\09\09\09"
module asm "\09.long\09__crc_crypto_sha256_arm_update\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_sha256_arm_update:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_sha256_arm_update\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_sha256_arm_update:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+crypto_sha256_arm_finup\22, \22a\22\09"
module asm "\09.weak\09__crc_crypto_sha256_arm_finup\09\09\09\09"
module asm "\09.long\09__crc_crypto_sha256_arm_finup\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_sha256_arm_finup:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_sha256_arm_finup\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_sha256_arm_finup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.shash_alg = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [84 x i8], i32, i32, [120 x i8], %struct.crypto_alg }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon, ptr, ptr, ptr, ptr, %union.anon.68, [120 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%union.anon = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%union.anon.68 = type { %struct.crypto_istat_akcipher }
%struct.crypto_istat_akcipher = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.shash_desc = type { ptr, [4 x i8], [0 x ptr] }
%struct.sha256_state = type { [8 x i32], i64, [64 x i8] }
%struct.crypto_shash = type { i32, [124 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }

@__kstrtab_crypto_sha256_arm_update = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_sha256_arm_update = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_sha256_arm_update = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_sha256_arm_update to i32), ptr @__kstrtab_crypto_sha256_arm_update, ptr @__kstrtabns_crypto_sha256_arm_update }, section "___ksymtab+crypto_sha256_arm_update", align 4
@__kstrtab_crypto_sha256_arm_finup = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_sha256_arm_finup = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_sha256_arm_finup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_sha256_arm_finup to i32), ptr @__kstrtab_crypto_sha256_arm_finup, ptr @__kstrtabns_crypto_sha256_arm_finup }, section "___ksymtab+crypto_sha256_arm_finup", align 4
@algs = internal global [2 x %struct.shash_alg] [%struct.shash_alg { ptr @sha256_base_init, ptr @crypto_sha256_arm_update, ptr @crypto_sha256_arm_final, ptr @crypto_sha256_arm_finup, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 104, [84 x i8] undef, i32 32, i32 0, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 64, i32 0, i32 0, i32 150, %struct.refcount_struct zeroinitializer, [128 x i8] c"sha256\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"sha256-asm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.68 zeroinitializer, [120 x i8] undef } }, %struct.shash_alg { ptr @sha224_base_init, ptr @crypto_sha256_arm_update, ptr @crypto_sha256_arm_final, ptr @crypto_sha256_arm_finup, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 104, [84 x i8] undef, i32 28, i32 0, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 64, i32 0, i32 0, i32 150, %struct.refcount_struct zeroinitializer, [128 x i8] c"sha224\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"sha224-asm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.68 zeroinitializer, [120 x i8] undef } }], align 128
@elf_hwcap = external dso_local local_unnamed_addr global i32, align 4
@sha256_neon_algs = external dso_local global [2 x %struct.shash_alg], align 128
@__initcall__kmod_sha256_arm__227_114_sha256_mod_init6 = internal global ptr @sha256_mod_init, section ".initcall6.init", align 4
@__exitcall_sha256_mod_fini = internal global ptr @sha256_mod_fini, section ".exitcall.exit", align 4
@__UNIQUE_ID_file228 = internal constant [43 x i8] c"sha256_arm.file=arch/arm/crypto/sha256-arm\00", section ".modinfo", align 1
@__UNIQUE_ID_license229 = internal constant [23 x i8] c"sha256_arm.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description230 = internal constant [74 x i8] c"sha256_arm.description=SHA256 Secure Hash Algorithm (ARM), including NEON\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace231 = internal constant [24 x i8] c"sha256_arm.alias=sha256\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto232 = internal constant [31 x i8] c"sha256_arm.alias=crypto-sha256\00", section ".modinfo", align 1
@llvm.compiler.used = appending global [10 x ptr] [ptr @__UNIQUE_ID_alias_crypto232, ptr @__UNIQUE_ID_alias_userspace231, ptr @__UNIQUE_ID_description230, ptr @__UNIQUE_ID_file228, ptr @__UNIQUE_ID_license229, ptr @__exitcall_sha256_mod_fini, ptr @__initcall__kmod_sha256_arm__227_114_sha256_mod_init6, ptr @__ksymtab_crypto_sha256_arm_finup, ptr @__ksymtab_crypto_sha256_arm_update, ptr @sha256_mod_fini], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @crypto_sha256_arm_update(ptr noundef %desc, ptr noundef %data, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 0, i32 2
  %count.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 5
  %0 = ptrtoint ptr %count.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %count.i, align 8
  %2 = trunc i64 %1 to i32
  %conv.i = and i32 %2, 63
  %conv1.i = zext i32 %len to i64
  %add.i = add i64 %1, %conv1.i
  store i64 %add.i, ptr %count.i, align 8
  %add3.i = add i32 %conv.i, %len
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %add3.i)
  %cmp.i = icmp ugt i32 %add3.i, 63
  br i1 %cmp.i, label %if.then.i, label %entry.if.end17.i_crit_edge, !prof !27

entry.if.end17.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end17.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i)
  %tobool6.not.i = icmp eq i32 %conv.i, 0
  br i1 %tobool6.not.i, label %if.then.i.if.end.i_crit_edge, label %if.then7.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

if.then7.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  %sub.i = sub nuw nsw i32 64, %conv.i
  %buf.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 6
  %add.ptr.i = getelementptr i8, ptr %buf.i, i32 %conv.i
  %3 = call ptr @memcpy(ptr %add.ptr.i, ptr %data, i32 %sub.i)
  %add.ptr8.i = getelementptr i8, ptr %data, i32 %sub.i
  %sub9.i = sub i32 %len, %sub.i
  tail call void @sha256_block_data_order(ptr noundef %__ctx.i.i, ptr noundef %buf.i, i32 noundef 1) #4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then7.i, %if.then.i.if.end.i_crit_edge
  %len.addr.0.i = phi i32 [ %sub9.i, %if.then7.i ], [ %len, %if.then.i.if.end.i_crit_edge ]
  %data.addr.0.i = phi ptr [ %add.ptr8.i, %if.then7.i ], [ %data, %if.then.i.if.end.i_crit_edge ]
  %rem12.i = and i32 %len.addr.0.i, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %len.addr.0.i)
  %tobool13.not.i = icmp ult i32 %len.addr.0.i, 64
  br i1 %tobool13.not.i, label %if.end.i.if.end17.i_crit_edge, label %if.then14.i

if.end.i.if.end17.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end17.i

if.then14.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %div1.i = lshr i32 %len.addr.0.i, 6
  tail call void @sha256_block_data_order(ptr noundef %__ctx.i.i, ptr noundef %data.addr.0.i, i32 noundef %div1.i) #4
  %mul.i = and i32 %len.addr.0.i, -64
  %add.ptr15.i = getelementptr i8, ptr %data.addr.0.i, i32 %mul.i
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.then14.i, %if.end.i.if.end17.i_crit_edge, %entry.if.end17.i_crit_edge
  %len.addr.1.i = phi i32 [ %len, %entry.if.end17.i_crit_edge ], [ %rem12.i, %if.then14.i ], [ %rem12.i, %if.end.i.if.end17.i_crit_edge ]
  %partial.0.i = phi i32 [ %conv.i, %entry.if.end17.i_crit_edge ], [ 0, %if.then14.i ], [ 0, %if.end.i.if.end17.i_crit_edge ]
  %data.addr.2.i = phi ptr [ %data, %entry.if.end17.i_crit_edge ], [ %add.ptr15.i, %if.then14.i ], [ %data.addr.0.i, %if.end.i.if.end17.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.addr.1.i)
  %tobool18.not.i = icmp eq i32 %len.addr.1.i, 0
  br i1 %tobool18.not.i, label %if.end17.i.sha256_base_do_update.exit_crit_edge, label %if.then19.i

if.end17.i.sha256_base_do_update.exit_crit_edge:  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sha256_base_do_update.exit

if.then19.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #6
  %buf20.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 6
  %add.ptr22.i = getelementptr i8, ptr %buf20.i, i32 %partial.0.i
  %4 = call ptr @memcpy(ptr %add.ptr22.i, ptr %data.addr.2.i, i32 %len.addr.1.i)
  br label %sha256_base_do_update.exit

sha256_base_do_update.exit:                       ; preds = %if.then19.i, %if.end17.i.sha256_base_do_update.exit_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sha256_block_data_order(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @crypto_sha256_arm_finup(ptr noundef %desc, ptr noundef %data, i32 noundef %len, ptr nocapture noundef writeonly %out) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 0, i32 2
  %count.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 5
  %0 = ptrtoint ptr %count.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %count.i, align 8
  %2 = trunc i64 %1 to i32
  %conv.i = and i32 %2, 63
  %conv1.i = zext i32 %len to i64
  %add.i = add i64 %1, %conv1.i
  store i64 %add.i, ptr %count.i, align 8
  %add3.i = add i32 %conv.i, %len
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %add3.i)
  %cmp.i = icmp ugt i32 %add3.i, 63
  br i1 %cmp.i, label %if.then.i, label %entry.if.end17.i_crit_edge, !prof !27

entry.if.end17.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end17.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i)
  %tobool6.not.i = icmp eq i32 %conv.i, 0
  br i1 %tobool6.not.i, label %if.then.i.if.end.i_crit_edge, label %if.then7.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

if.then7.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  %sub.i = sub nuw nsw i32 64, %conv.i
  %buf.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 6
  %add.ptr.i = getelementptr i8, ptr %buf.i, i32 %conv.i
  %3 = call ptr @memcpy(ptr %add.ptr.i, ptr %data, i32 %sub.i)
  %add.ptr8.i = getelementptr i8, ptr %data, i32 %sub.i
  %sub9.i = sub i32 %len, %sub.i
  tail call void @sha256_block_data_order(ptr noundef %__ctx.i.i, ptr noundef %buf.i, i32 noundef 1) #4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then7.i, %if.then.i.if.end.i_crit_edge
  %len.addr.0.i = phi i32 [ %sub9.i, %if.then7.i ], [ %len, %if.then.i.if.end.i_crit_edge ]
  %data.addr.0.i = phi ptr [ %add.ptr8.i, %if.then7.i ], [ %data, %if.then.i.if.end.i_crit_edge ]
  %rem12.i = and i32 %len.addr.0.i, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %len.addr.0.i)
  %tobool13.not.i = icmp ult i32 %len.addr.0.i, 64
  br i1 %tobool13.not.i, label %if.end.i.if.end17.i_crit_edge, label %if.then14.i

if.end.i.if.end17.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end17.i

if.then14.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %div1.i = lshr i32 %len.addr.0.i, 6
  tail call void @sha256_block_data_order(ptr noundef %__ctx.i.i, ptr noundef %data.addr.0.i, i32 noundef %div1.i) #4
  %mul.i = and i32 %len.addr.0.i, -64
  %add.ptr15.i = getelementptr i8, ptr %data.addr.0.i, i32 %mul.i
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.then14.i, %if.end.i.if.end17.i_crit_edge, %entry.if.end17.i_crit_edge
  %len.addr.1.i = phi i32 [ %len, %entry.if.end17.i_crit_edge ], [ %rem12.i, %if.then14.i ], [ %rem12.i, %if.end.i.if.end17.i_crit_edge ]
  %partial.0.i = phi i32 [ %conv.i, %entry.if.end17.i_crit_edge ], [ 0, %if.then14.i ], [ 0, %if.end.i.if.end17.i_crit_edge ]
  %data.addr.2.i = phi ptr [ %data, %entry.if.end17.i_crit_edge ], [ %add.ptr15.i, %if.then14.i ], [ %data.addr.0.i, %if.end.i.if.end17.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.addr.1.i)
  %tobool18.not.i = icmp eq i32 %len.addr.1.i, 0
  br i1 %tobool18.not.i, label %if.end17.i.sha256_base_do_update.exit_crit_edge, label %if.then19.i

if.end17.i.sha256_base_do_update.exit_crit_edge:  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sha256_base_do_update.exit

if.then19.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #6
  %buf20.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 6
  %add.ptr22.i = getelementptr i8, ptr %buf20.i, i32 %partial.0.i
  %4 = call ptr @memcpy(ptr %add.ptr22.i, ptr %data.addr.2.i, i32 %len.addr.1.i)
  br label %sha256_base_do_update.exit

sha256_base_do_update.exit:                       ; preds = %if.then19.i, %if.end17.i.sha256_base_do_update.exit_crit_edge
  %buf.i.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 6
  %5 = ptrtoint ptr %count.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %count.i, align 8
  %7 = trunc i64 %6 to i32
  %conv.i.i = and i32 %7, 63
  %inc.i.i = add nuw nsw i32 %conv.i.i, 1
  %arrayidx.i.i = getelementptr %struct.sha256_state, ptr %__ctx.i.i, i32 0, i32 2, i32 %conv.i.i
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -128, ptr %arrayidx.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 55, i32 %conv.i.i)
  %cmp.i.i = icmp ugt i32 %conv.i.i, 55
  br i1 %cmp.i.i, label %if.then.i.i, label %sha256_base_do_update.exit.sha256_base_do_finalize.exit.i_crit_edge

sha256_base_do_update.exit.sha256_base_do_finalize.exit.i_crit_edge: ; preds = %sha256_base_do_update.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %sha256_base_do_finalize.exit.i

if.then.i.i:                                      ; preds = %sha256_base_do_update.exit
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr5.i.i = getelementptr i8, ptr %buf.i.i, i32 %inc.i.i
  %sub.i.i = xor i32 %conv.i.i, 63
  %9 = call ptr @memset(ptr %add.ptr5.i.i, i32 0, i32 %sub.i.i)
  tail call void @sha256_block_data_order(ptr noundef %__ctx.i.i, ptr noundef %buf.i.i, i32 noundef 1) #4
  br label %sha256_base_do_finalize.exit.i

sha256_base_do_finalize.exit.i:                   ; preds = %if.then.i.i, %sha256_base_do_update.exit.sha256_base_do_finalize.exit.i_crit_edge
  %partial.0.i.i = phi i32 [ 0, %if.then.i.i ], [ %inc.i.i, %sha256_base_do_update.exit.sha256_base_do_finalize.exit.i_crit_edge ]
  %add.ptr.i.i = getelementptr %struct.shash_desc, ptr %desc, i32 13
  %add.ptr10.i.i = getelementptr i8, ptr %buf.i.i, i32 %partial.0.i.i
  %sub11.i.i = sub nuw nsw i32 56, %partial.0.i.i
  %10 = call ptr @memset(ptr %add.ptr10.i.i, i32 0, i32 %sub11.i.i)
  %11 = ptrtoint ptr %count.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %count.i, align 8
  %shl.i.i = shl i64 %12, 3
  %13 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %shl.i.i, ptr %add.ptr.i.i, align 8
  tail call void @sha256_block_data_order(ptr noundef %__ctx.i.i, ptr noundef %buf.i.i, i32 noundef 1) #4
  %14 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %desc, align 8
  %__crt_alg.i.i.i.i = getelementptr inbounds %struct.crypto_shash, ptr %15, i32 0, i32 2, i32 3
  %16 = ptrtoint ptr %__crt_alg.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__crt_alg.i.i.i.i, align 4
  %digestsize.i.i.i = getelementptr i8, ptr %17, i32 -128
  %18 = ptrtoint ptr %digestsize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %digestsize.i.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp.not1.i.i = icmp eq i32 %19, 0
  br i1 %cmp.not1.i.i, label %sha256_base_do_finalize.exit.i.crypto_sha256_arm_final.exit_crit_edge, label %sha256_base_do_finalize.exit.i.for.body.i.i_crit_edge

sha256_base_do_finalize.exit.i.for.body.i.i_crit_edge: ; preds = %sha256_base_do_finalize.exit.i
  br label %for.body.i.i

sha256_base_do_finalize.exit.i.crypto_sha256_arm_final.exit_crit_edge: ; preds = %sha256_base_do_finalize.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %crypto_sha256_arm_final.exit

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %sha256_base_do_finalize.exit.i.for.body.i.i_crit_edge
  %i.04.i.i = phi i32 [ %inc.i5.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %sha256_base_do_finalize.exit.i.for.body.i.i_crit_edge ]
  %digest.03.i.i = phi ptr [ %incdec.ptr.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %out, %sha256_base_do_finalize.exit.i.for.body.i.i_crit_edge ]
  %digest_size.02.i.i = phi i32 [ %sub.i6.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %19, %sha256_base_do_finalize.exit.i.for.body.i.i_crit_edge ]
  %arrayidx.i4.i = getelementptr [8 x i32], ptr %__ctx.i.i, i32 0, i32 %i.04.i.i
  %20 = ptrtoint ptr %arrayidx.i4.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.i4.i, align 4
  %incdec.ptr.i.i = getelementptr i32, ptr %digest.03.i.i, i32 1
  %22 = ptrtoint ptr %digest.03.i.i to i32
  call void @__asan_storeN_noabort(i32 %22, i32 4)
  store i32 %21, ptr %digest.03.i.i, align 1
  %inc.i5.i = add i32 %i.04.i.i, 1
  %sub.i6.i = add i32 %digest_size.02.i.i, -4
  %cmp.not.i.i = icmp eq i32 %sub.i6.i, 0
  br i1 %cmp.not.i.i, label %for.body.i.i.crypto_sha256_arm_final.exit_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i.i

for.body.i.i.crypto_sha256_arm_final.exit_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %crypto_sha256_arm_final.exit

crypto_sha256_arm_final.exit:                     ; preds = %for.body.i.i.crypto_sha256_arm_final.exit_crit_edge, %sha256_base_do_finalize.exit.i.crypto_sha256_arm_final.exit_crit_edge
  %23 = call ptr @memset(ptr %__ctx.i.i, i32 0, i32 104)
  tail call void asm sideeffect "", "r,~{memory}"(ptr %__ctx.i.i) #4, !srcloc !28
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @crypto_sha256_arm_final(ptr noundef %desc, ptr nocapture noundef writeonly %out) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 0, i32 2
  %buf.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 6
  %count.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 5
  %0 = ptrtoint ptr %count.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %count.i, align 8
  %2 = trunc i64 %1 to i32
  %conv.i = and i32 %2, 63
  %inc.i = add nuw nsw i32 %conv.i, 1
  %arrayidx.i = getelementptr %struct.sha256_state, ptr %__ctx.i.i, i32 0, i32 2, i32 %conv.i
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -128, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 55, i32 %conv.i)
  %cmp.i = icmp ugt i32 %conv.i, 55
  br i1 %cmp.i, label %if.then.i, label %entry.sha256_base_do_finalize.exit_crit_edge

entry.sha256_base_do_finalize.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sha256_base_do_finalize.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr5.i = getelementptr i8, ptr %buf.i, i32 %inc.i
  %sub.i = xor i32 %conv.i, 63
  %4 = call ptr @memset(ptr %add.ptr5.i, i32 0, i32 %sub.i)
  tail call void @sha256_block_data_order(ptr noundef %__ctx.i.i, ptr noundef %buf.i, i32 noundef 1) #4
  br label %sha256_base_do_finalize.exit

sha256_base_do_finalize.exit:                     ; preds = %if.then.i, %entry.sha256_base_do_finalize.exit_crit_edge
  %partial.0.i = phi i32 [ 0, %if.then.i ], [ %inc.i, %entry.sha256_base_do_finalize.exit_crit_edge ]
  %add.ptr.i = getelementptr %struct.shash_desc, ptr %desc, i32 13
  %add.ptr10.i = getelementptr i8, ptr %buf.i, i32 %partial.0.i
  %sub11.i = sub nuw nsw i32 56, %partial.0.i
  %5 = call ptr @memset(ptr %add.ptr10.i, i32 0, i32 %sub11.i)
  %6 = ptrtoint ptr %count.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %count.i, align 8
  %shl.i = shl i64 %7, 3
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %shl.i, ptr %add.ptr.i, align 8
  tail call void @sha256_block_data_order(ptr noundef %__ctx.i.i, ptr noundef %buf.i, i32 noundef 1) #4
  %9 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %desc, align 8
  %__crt_alg.i.i.i = getelementptr inbounds %struct.crypto_shash, ptr %10, i32 0, i32 2, i32 3
  %11 = ptrtoint ptr %__crt_alg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %__crt_alg.i.i.i, align 4
  %digestsize.i.i = getelementptr i8, ptr %12, i32 -128
  %13 = ptrtoint ptr %digestsize.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %digestsize.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp.not1.i = icmp eq i32 %14, 0
  br i1 %cmp.not1.i, label %sha256_base_do_finalize.exit.sha256_base_finish.exit_crit_edge, label %sha256_base_do_finalize.exit.for.body.i_crit_edge

sha256_base_do_finalize.exit.for.body.i_crit_edge: ; preds = %sha256_base_do_finalize.exit
  br label %for.body.i

sha256_base_do_finalize.exit.sha256_base_finish.exit_crit_edge: ; preds = %sha256_base_do_finalize.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %sha256_base_finish.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %sha256_base_do_finalize.exit.for.body.i_crit_edge
  %i.04.i = phi i32 [ %inc.i5, %for.body.i.for.body.i_crit_edge ], [ 0, %sha256_base_do_finalize.exit.for.body.i_crit_edge ]
  %digest.03.i = phi ptr [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ], [ %out, %sha256_base_do_finalize.exit.for.body.i_crit_edge ]
  %digest_size.02.i = phi i32 [ %sub.i6, %for.body.i.for.body.i_crit_edge ], [ %14, %sha256_base_do_finalize.exit.for.body.i_crit_edge ]
  %arrayidx.i4 = getelementptr [8 x i32], ptr %__ctx.i.i, i32 0, i32 %i.04.i
  %15 = ptrtoint ptr %arrayidx.i4 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.i4, align 4
  %incdec.ptr.i = getelementptr i32, ptr %digest.03.i, i32 1
  %17 = ptrtoint ptr %digest.03.i to i32
  call void @__asan_storeN_noabort(i32 %17, i32 4)
  store i32 %16, ptr %digest.03.i, align 1
  %inc.i5 = add i32 %i.04.i, 1
  %sub.i6 = add i32 %digest_size.02.i, -4
  %cmp.not.i = icmp eq i32 %sub.i6, 0
  br i1 %cmp.not.i, label %for.body.i.sha256_base_finish.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

for.body.i.sha256_base_finish.exit_crit_edge:     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sha256_base_finish.exit

sha256_base_finish.exit:                          ; preds = %for.body.i.sha256_base_finish.exit_crit_edge, %sha256_base_do_finalize.exit.sha256_base_finish.exit_crit_edge
  %18 = call ptr @memset(ptr %__ctx.i.i, i32 0, i32 104)
  tail call void asm sideeffect "", "r,~{memory}"(ptr %__ctx.i.i) #4, !srcloc !28
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sha256_mod_fini() #2 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @crypto_unregister_shashes(ptr noundef nonnull @algs, i32 noundef 2) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @elf_hwcap to i32))
  %0 = load i32, ptr @elf_hwcap, align 4
  %and = and i32 %0, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @crypto_unregister_shashes(ptr noundef nonnull @sha256_neon_algs, i32 noundef 2) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_shashes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sha256_mod_init() #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @crypto_register_shashes(ptr noundef nonnull @algs, i32 noundef 2) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @elf_hwcap to i32))
  %0 = load i32, ptr @elf_hwcap, align 4
  %and = and i32 %0, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then1

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then1:                                         ; preds = %if.end
  %call2 = tail call i32 @crypto_register_shashes(ptr noundef nonnull @sha256_neon_algs, i32 noundef 2) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.then4, label %if.then1.cleanup_crit_edge

if.then1.cleanup_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then4:                                         ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @crypto_unregister_shashes(ptr noundef nonnull @algs, i32 noundef 2) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.then1.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call2, %if.then4 ], [ %call2, %if.then1.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @sha256_base_init(ptr nocapture noundef writeonly %desc) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  %__ctx.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 0, i32 2
  %0 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1779033703, ptr %__ctx.i, align 8
  %arrayidx2.i = getelementptr %struct.shash_desc, ptr %desc, i32 1, i32 1
  %1 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1150833019, ptr %arrayidx2.i, align 4
  %arrayidx4.i = getelementptr %struct.shash_desc, ptr %desc, i32 2
  %2 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1013904242, ptr %arrayidx4.i, align 8
  %arrayidx6.i = getelementptr %struct.shash_desc, ptr %desc, i32 2, i32 1
  %3 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1521486534, ptr %arrayidx6.i, align 4
  %arrayidx8.i = getelementptr %struct.shash_desc, ptr %desc, i32 3
  %4 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1359893119, ptr %arrayidx8.i, align 8
  %arrayidx10.i = getelementptr %struct.shash_desc, ptr %desc, i32 3, i32 1
  %5 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1694144372, ptr %arrayidx10.i, align 4
  %arrayidx12.i = getelementptr %struct.shash_desc, ptr %desc, i32 4
  %6 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 528734635, ptr %arrayidx12.i, align 8
  %arrayidx14.i = getelementptr %struct.shash_desc, ptr %desc, i32 4, i32 1
  %7 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1541459225, ptr %arrayidx14.i, align 4
  %count.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 5
  %8 = ptrtoint ptr %count.i to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 0, ptr %count.i, align 8
  ret i32 0
}

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @sha224_base_init(ptr nocapture noundef writeonly %desc) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  %__ctx.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 0, i32 2
  %0 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1056596264, ptr %__ctx.i, align 8
  %arrayidx2.i = getelementptr %struct.shash_desc, ptr %desc, i32 1, i32 1
  %1 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 914150663, ptr %arrayidx2.i, align 4
  %arrayidx4.i = getelementptr %struct.shash_desc, ptr %desc, i32 2
  %2 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 812702999, ptr %arrayidx4.i, align 8
  %arrayidx6.i = getelementptr %struct.shash_desc, ptr %desc, i32 2, i32 1
  %3 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -150054599, ptr %arrayidx6.i, align 4
  %arrayidx8.i = getelementptr %struct.shash_desc, ptr %desc, i32 3
  %4 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -4191439, ptr %arrayidx8.i, align 8
  %arrayidx10.i = getelementptr %struct.shash_desc, ptr %desc, i32 3, i32 1
  %5 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1750603025, ptr %arrayidx10.i, align 4
  %arrayidx12.i = getelementptr %struct.shash_desc, ptr %desc, i32 4
  %6 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1694076839, ptr %arrayidx12.i, align 8
  %arrayidx14.i = getelementptr %struct.shash_desc, ptr %desc, i32 4, i32 1
  %7 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1090891868, ptr %arrayidx14.i, align 4
  %count.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 5
  %8 = ptrtoint ptr %count.i to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 0, ptr %count.i, align 8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_shashes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !16}
!llvm.module.flags = !{!18, !19, !20, !21, !22, !23, !24, !25}
!llvm.ident = !{!26}

!0 = !{ptr @__ksymtab_crypto_sha256_arm_update, !1, !"__ksymtab_crypto_sha256_arm_update", i1 false, i1 false}
!1 = !{!"../arch/arm/crypto/sha256_glue.c", i32 39, i32 1}
!2 = !{ptr @__ksymtab_crypto_sha256_arm_finup, !3, !"__ksymtab_crypto_sha256_arm_finup", i1 false, i1 false}
!3 = !{!"../arch/arm/crypto/sha256_glue.c", i32 55, i32 1}
!4 = !{ptr @__initcall__kmod_sha256_arm__227_114_sha256_mod_init6, !5, !"__initcall__kmod_sha256_arm__227_114_sha256_mod_init6", i1 false, i1 false}
!5 = !{!"../arch/arm/crypto/sha256_glue.c", i32 114, i32 1}
!6 = !{ptr @__exitcall_sha256_mod_fini, !7, !"__exitcall_sha256_mod_fini", i1 false, i1 false}
!7 = !{!"../arch/arm/crypto/sha256_glue.c", i32 115, i32 1}
!8 = !{ptr @__UNIQUE_ID_file228, !9, !"__UNIQUE_ID_file228", i1 false, i1 false}
!9 = !{!"../arch/arm/crypto/sha256_glue.c", i32 117, i32 1}
!10 = !{ptr @__UNIQUE_ID_license229, !9, !"__UNIQUE_ID_license229", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_description230, !12, !"__UNIQUE_ID_description230", i1 false, i1 false}
!12 = !{!"../arch/arm/crypto/sha256_glue.c", i32 118, i32 1}
!13 = !{ptr @__UNIQUE_ID_alias_userspace231, !14, !"__UNIQUE_ID_alias_userspace231", i1 false, i1 false}
!14 = !{!"../arch/arm/crypto/sha256_glue.c", i32 120, i32 1}
!15 = !{ptr @__UNIQUE_ID_alias_crypto232, !14, !"__UNIQUE_ID_alias_crypto232", i1 false, i1 false}
!16 = !{ptr @algs, !17, !"algs", i1 false, i1 false}
!17 = !{!"../arch/arm/crypto/sha256_glue.c", i32 57, i32 25}
!18 = !{i32 1, !"wchar_size", i32 2}
!19 = !{i32 1, !"min_enum_size", i32 4}
!20 = !{i32 8, !"branch-target-enforcement", i32 0}
!21 = !{i32 8, !"sign-return-address", i32 0}
!22 = !{i32 8, !"sign-return-address-all", i32 0}
!23 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!24 = !{i32 7, !"uwtable", i32 1}
!25 = !{i32 7, !"frame-pointer", i32 2}
!26 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!27 = !{!"branch_weights", i32 1, i32 2000}
!28 = !{i64 2149223149}
