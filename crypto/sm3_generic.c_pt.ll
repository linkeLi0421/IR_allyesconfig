; ModuleID = '/llk/IR_all_yes/crypto/sm3_generic.c_pt.bc'
source_filename = "../crypto/sm3_generic.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+sm3_zero_message_hash\22, \22a\22\09"
module asm "\09.weak\09__crc_sm3_zero_message_hash\09\09\09\09"
module asm "\09.long\09__crc_sm3_zero_message_hash\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sm3_zero_message_hash:\09\09\09\09\09"
module asm "\09.asciz \09\22sm3_zero_message_hash\22\09\09\09\09\09"
module asm "__kstrtabns_sm3_zero_message_hash:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+crypto_sm3_update\22, \22a\22\09"
module asm "\09.weak\09__crc_crypto_sm3_update\09\09\09\09"
module asm "\09.long\09__crc_crypto_sm3_update\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_sm3_update:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_sm3_update\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_sm3_update:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+crypto_sm3_final\22, \22a\22\09"
module asm "\09.weak\09__crc_crypto_sm3_final\09\09\09\09"
module asm "\09.long\09__crc_crypto_sm3_final\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_sm3_final:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_sm3_final\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_sm3_final:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+crypto_sm3_finup\22, \22a\22\09"
module asm "\09.weak\09__crc_crypto_sm3_finup\09\09\09\09"
module asm "\09.long\09__crc_crypto_sm3_finup\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_sm3_finup:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_sm3_finup\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_sm3_finup:\09\09\09\09\09"
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
%struct.sm3_state = type { [8 x i32], i64, [64 x i8] }

@sm3_zero_message_hash = dso_local constant { [32 x i8], [32 x i8] } { [32 x i8] c"\1A\B2\1D\83U\CF\A1\7F\8Ea\19H1\E8\1A\8F\22\BE\C8\C7(\FE\FBt~\D05\EBP\82\AA+", [32 x i8] zeroinitializer }, align 32
@__kstrtab_sm3_zero_message_hash = external dso_local constant [0 x i8], align 1
@__kstrtabns_sm3_zero_message_hash = external dso_local constant [0 x i8], align 1
@__ksymtab_sm3_zero_message_hash = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sm3_zero_message_hash to i32), ptr @__kstrtab_sm3_zero_message_hash, ptr @__kstrtabns_sm3_zero_message_hash }, section "___ksymtab_gpl+sm3_zero_message_hash", align 4
@__kstrtab_crypto_sm3_update = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_sm3_update = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_sm3_update = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_sm3_update to i32), ptr @__kstrtab_crypto_sm3_update, ptr @__kstrtabns_crypto_sm3_update }, section "___ksymtab+crypto_sm3_update", align 4
@__kstrtab_crypto_sm3_final = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_sm3_final = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_sm3_final = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_sm3_final to i32), ptr @__kstrtab_crypto_sm3_final, ptr @__kstrtabns_crypto_sm3_final }, section "___ksymtab+crypto_sm3_final", align 4
@__kstrtab_crypto_sm3_finup = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_sm3_finup = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_sm3_finup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_sm3_finup to i32), ptr @__kstrtab_crypto_sm3_finup, ptr @__kstrtabns_crypto_sm3_finup }, section "___ksymtab+crypto_sm3_finup", align 4
@sm3_alg = internal global %struct.shash_alg { ptr @sm3_base_init, ptr @crypto_sm3_update, ptr @crypto_sm3_final, ptr @crypto_sm3_finup, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 104, [84 x i8] undef, i32 32, i32 0, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 64, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"sm3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"sm3-generic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.68 zeroinitializer, [120 x i8] undef } }, align 128
@__initcall__kmod_sm3_generic__226_192_sm3_generic_mod_init4 = internal global ptr @sm3_generic_mod_init, section ".initcall4.init", align 4
@__exitcall_sm3_generic_mod_fini = internal global ptr @sm3_generic_mod_fini, section ".exitcall.exit", align 4
@__UNIQUE_ID_file227 = internal constant [36 x i8] c"sm3_generic.file=crypto/sm3_generic\00", section ".modinfo", align 1
@__UNIQUE_ID_license228 = internal constant [27 x i8] c"sm3_generic.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description229 = internal constant [50 x i8] c"sm3_generic.description=SM3 Secure Hash Algorithm\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace230 = internal constant [22 x i8] c"sm3_generic.alias=sm3\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto231 = internal constant [29 x i8] c"sm3_generic.alias=crypto-sm3\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace232 = internal constant [30 x i8] c"sm3_generic.alias=sm3-generic\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto233 = internal constant [37 x i8] c"sm3_generic.alias=crypto-sm3-generic\00", section ".modinfo", align 1
@___asan_gen_.1 = private unnamed_addr constant [22 x i8] c"sm3_zero_message_hash\00", align 1
@___asan_gen_.2 = private constant [24 x i8] c"../crypto/sm3_generic.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 21, i32 10 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @__UNIQUE_ID_alias_crypto231, ptr @__UNIQUE_ID_alias_crypto233, ptr @__UNIQUE_ID_alias_userspace230, ptr @__UNIQUE_ID_alias_userspace232, ptr @__UNIQUE_ID_description229, ptr @__UNIQUE_ID_file227, ptr @__UNIQUE_ID_license228, ptr @__exitcall_sm3_generic_mod_fini, ptr @__initcall__kmod_sm3_generic__226_192_sm3_generic_mod_init4, ptr @__ksymtab_crypto_sm3_final, ptr @__ksymtab_crypto_sm3_finup, ptr @__ksymtab_crypto_sm3_update, ptr @__ksymtab_sm3_zero_message_hash, ptr @sm3_generic_mod_fini, ptr @sm3_zero_message_hash], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm3_zero_message_hash to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @crypto_sm3_update(ptr nocapture noundef %desc, ptr nocapture noundef readonly %data, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  br i1 %cmp.i, label %if.then.i, label %entry.if.end17.i_crit_edge, !prof !36

entry.if.end17.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i)
  %tobool6.not.i = icmp eq i32 %conv.i, 0
  br i1 %tobool6.not.i, label %if.then.i.if.end.i_crit_edge, label %if.then7.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then7.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i = sub nuw nsw i32 64, %conv.i
  %buffer.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 6
  %add.ptr.i = getelementptr i8, ptr %buffer.i, i32 %conv.i
  %3 = call ptr @memcpy(ptr %add.ptr.i, ptr %data, i32 %sub.i)
  %add.ptr8.i = getelementptr i8, ptr %data, i32 %sub.i
  %sub9.i = sub i32 %len, %sub.i
  tail call fastcc void @sm3_generic_block_fn(ptr noundef %__ctx.i.i, ptr noundef %buffer.i, i32 noundef 1) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then7.i, %if.then.i.if.end.i_crit_edge
  %len.addr.0.i = phi i32 [ %sub9.i, %if.then7.i ], [ %len, %if.then.i.if.end.i_crit_edge ]
  %data.addr.0.i = phi ptr [ %add.ptr8.i, %if.then7.i ], [ %data, %if.then.i.if.end.i_crit_edge ]
  %rem12.i = and i32 %len.addr.0.i, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %len.addr.0.i)
  %tobool13.not.i = icmp ult i32 %len.addr.0.i, 64
  br i1 %tobool13.not.i, label %if.end.i.if.end17.i_crit_edge, label %if.then14.i

if.end.i.if.end17.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17.i

if.then14.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %div1.i = lshr i32 %len.addr.0.i, 6
  tail call fastcc void @sm3_generic_block_fn(ptr noundef %__ctx.i.i, ptr noundef %data.addr.0.i, i32 noundef %div1.i) #6
  %mul.i = and i32 %len.addr.0.i, -64
  %add.ptr15.i = getelementptr i8, ptr %data.addr.0.i, i32 %mul.i
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.then14.i, %if.end.i.if.end17.i_crit_edge, %entry.if.end17.i_crit_edge
  %len.addr.1.i = phi i32 [ %len, %entry.if.end17.i_crit_edge ], [ %rem12.i, %if.then14.i ], [ %rem12.i, %if.end.i.if.end17.i_crit_edge ]
  %partial.0.i = phi i32 [ %conv.i, %entry.if.end17.i_crit_edge ], [ 0, %if.then14.i ], [ 0, %if.end.i.if.end17.i_crit_edge ]
  %data.addr.2.i = phi ptr [ %data, %entry.if.end17.i_crit_edge ], [ %add.ptr15.i, %if.then14.i ], [ %data.addr.0.i, %if.end.i.if.end17.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.addr.1.i)
  %tobool18.not.i = icmp eq i32 %len.addr.1.i, 0
  br i1 %tobool18.not.i, label %if.end17.i.sm3_base_do_update.exit_crit_edge, label %if.then19.i

if.end17.i.sm3_base_do_update.exit_crit_edge:     ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sm3_base_do_update.exit

if.then19.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #8
  %buffer20.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 6
  %add.ptr22.i = getelementptr i8, ptr %buffer20.i, i32 %partial.0.i
  %4 = call ptr @memcpy(ptr %add.ptr22.i, ptr %data.addr.2.i, i32 %len.addr.1.i)
  br label %sm3_base_do_update.exit

sm3_base_do_update.exit:                          ; preds = %if.then19.i, %if.end17.i.sm3_base_do_update.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sm3_generic_block_fn(ptr nocapture noundef %sst, ptr nocapture noundef readonly %src, i32 noundef %blocks) unnamed_addr #0 align 64 {
entry:
  %w.i = alloca [68 x i32], align 4
  %wt.i = alloca [64 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %blocks)
  %tobool.not2 = icmp eq i32 %blocks, 0
  br i1 %tobool.not2, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %0 = getelementptr inbounds i8, ptr %w.i, i32 64
  %arrayidx.1.i.i = getelementptr inbounds i32, ptr %w.i, i32 1
  %arrayidx.2.i.i = getelementptr inbounds i32, ptr %w.i, i32 2
  %arrayidx.3.i.i = getelementptr inbounds i32, ptr %w.i, i32 3
  %arrayidx.4.i.i = getelementptr inbounds i32, ptr %w.i, i32 4
  %arrayidx.5.i.i = getelementptr inbounds i32, ptr %w.i, i32 5
  %arrayidx.6.i.i = getelementptr inbounds i32, ptr %w.i, i32 6
  %arrayidx.7.i.i = getelementptr inbounds i32, ptr %w.i, i32 7
  %arrayidx.8.i.i = getelementptr inbounds i32, ptr %w.i, i32 8
  %arrayidx.9.i.i = getelementptr inbounds i32, ptr %w.i, i32 9
  %arrayidx.10.i.i = getelementptr inbounds i32, ptr %w.i, i32 10
  %arrayidx.11.i.i = getelementptr inbounds i32, ptr %w.i, i32 11
  %arrayidx.12.i.i = getelementptr inbounds i32, ptr %w.i, i32 12
  %arrayidx.13.i.i = getelementptr inbounds i32, ptr %w.i, i32 13
  %arrayidx.14.i.i = getelementptr inbounds i32, ptr %w.i, i32 14
  %arrayidx.15.i.i = getelementptr inbounds i32, ptr %w.i, i32 15
  %arrayidx1.i.i = getelementptr i32, ptr %sst, i32 1
  %arrayidx2.i.i = getelementptr i32, ptr %sst, i32 2
  %arrayidx3.i.i = getelementptr i32, ptr %sst, i32 3
  %arrayidx4.i7.i = getelementptr i32, ptr %sst, i32 4
  %arrayidx5.i.i = getelementptr i32, ptr %sst, i32 5
  %arrayidx6.i8.i = getelementptr i32, ptr %sst, i32 6
  %arrayidx7.i.i = getelementptr i32, ptr %sst, i32 7
  br label %while.body

while.body:                                       ; preds = %sm3_transform.exit.while.body_crit_edge, %while.body.lr.ph
  %blocks.addr.04 = phi i32 [ %blocks, %while.body.lr.ph ], [ %dec, %sm3_transform.exit.while.body_crit_edge ]
  %src.addr.03 = phi ptr [ %src, %while.body.lr.ph ], [ %add.ptr, %sm3_transform.exit.while.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 272, ptr nonnull %w.i) #6
  %1 = call ptr @memset(ptr %0, i32 255, i32 208)
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %wt.i) #6
  %2 = call ptr @memset(ptr %wt.i, i32 255, i32 256)
  %3 = ptrtoint ptr %src.addr.03 to i32
  call void @__asan_loadN_noabort(i32 %3, i32 4)
  %4 = load i32, ptr %src.addr.03, align 1
  %5 = ptrtoint ptr %w.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %w.i, align 4
  %add.ptr.1.i.i = getelementptr i32, ptr %src.addr.03, i32 1
  %6 = ptrtoint ptr %add.ptr.1.i.i to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %add.ptr.1.i.i, align 1
  %8 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %arrayidx.1.i.i, align 4
  %add.ptr.2.i.i = getelementptr i32, ptr %src.addr.03, i32 2
  %9 = ptrtoint ptr %add.ptr.2.i.i to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %add.ptr.2.i.i, align 1
  %11 = ptrtoint ptr %arrayidx.2.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %arrayidx.2.i.i, align 4
  %add.ptr.3.i.i = getelementptr i32, ptr %src.addr.03, i32 3
  %12 = ptrtoint ptr %add.ptr.3.i.i to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %add.ptr.3.i.i, align 1
  %14 = ptrtoint ptr %arrayidx.3.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %arrayidx.3.i.i, align 4
  %add.ptr.4.i.i = getelementptr i32, ptr %src.addr.03, i32 4
  %15 = ptrtoint ptr %add.ptr.4.i.i to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load i32, ptr %add.ptr.4.i.i, align 1
  %17 = ptrtoint ptr %arrayidx.4.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %arrayidx.4.i.i, align 4
  %add.ptr.5.i.i = getelementptr i32, ptr %src.addr.03, i32 5
  %18 = ptrtoint ptr %add.ptr.5.i.i to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load i32, ptr %add.ptr.5.i.i, align 1
  %20 = ptrtoint ptr %arrayidx.5.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.5.i.i, align 4
  %add.ptr.6.i.i = getelementptr i32, ptr %src.addr.03, i32 6
  %21 = ptrtoint ptr %add.ptr.6.i.i to i32
  call void @__asan_loadN_noabort(i32 %21, i32 4)
  %22 = load i32, ptr %add.ptr.6.i.i, align 1
  %23 = ptrtoint ptr %arrayidx.6.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx.6.i.i, align 4
  %add.ptr.7.i.i = getelementptr i32, ptr %src.addr.03, i32 7
  %24 = ptrtoint ptr %add.ptr.7.i.i to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %25 = load i32, ptr %add.ptr.7.i.i, align 1
  %26 = ptrtoint ptr %arrayidx.7.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %arrayidx.7.i.i, align 4
  %add.ptr.8.i.i = getelementptr i32, ptr %src.addr.03, i32 8
  %27 = ptrtoint ptr %add.ptr.8.i.i to i32
  call void @__asan_loadN_noabort(i32 %27, i32 4)
  %28 = load i32, ptr %add.ptr.8.i.i, align 1
  %29 = ptrtoint ptr %arrayidx.8.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %arrayidx.8.i.i, align 4
  %add.ptr.9.i.i = getelementptr i32, ptr %src.addr.03, i32 9
  %30 = ptrtoint ptr %add.ptr.9.i.i to i32
  call void @__asan_loadN_noabort(i32 %30, i32 4)
  %31 = load i32, ptr %add.ptr.9.i.i, align 1
  %32 = ptrtoint ptr %arrayidx.9.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %arrayidx.9.i.i, align 4
  %add.ptr.10.i.i = getelementptr i32, ptr %src.addr.03, i32 10
  %33 = ptrtoint ptr %add.ptr.10.i.i to i32
  call void @__asan_loadN_noabort(i32 %33, i32 4)
  %34 = load i32, ptr %add.ptr.10.i.i, align 1
  %35 = ptrtoint ptr %arrayidx.10.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %arrayidx.10.i.i, align 4
  %add.ptr.11.i.i = getelementptr i32, ptr %src.addr.03, i32 11
  %36 = ptrtoint ptr %add.ptr.11.i.i to i32
  call void @__asan_loadN_noabort(i32 %36, i32 4)
  %37 = load i32, ptr %add.ptr.11.i.i, align 1
  %38 = ptrtoint ptr %arrayidx.11.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %arrayidx.11.i.i, align 4
  %add.ptr.12.i.i = getelementptr i32, ptr %src.addr.03, i32 12
  %39 = ptrtoint ptr %add.ptr.12.i.i to i32
  call void @__asan_loadN_noabort(i32 %39, i32 4)
  %40 = load i32, ptr %add.ptr.12.i.i, align 1
  %41 = ptrtoint ptr %arrayidx.12.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %arrayidx.12.i.i, align 4
  %add.ptr.13.i.i = getelementptr i32, ptr %src.addr.03, i32 13
  %42 = ptrtoint ptr %add.ptr.13.i.i to i32
  call void @__asan_loadN_noabort(i32 %42, i32 4)
  %43 = load i32, ptr %add.ptr.13.i.i, align 1
  %44 = ptrtoint ptr %arrayidx.13.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %arrayidx.13.i.i, align 4
  %add.ptr.14.i.i = getelementptr i32, ptr %src.addr.03, i32 14
  %45 = ptrtoint ptr %add.ptr.14.i.i to i32
  call void @__asan_loadN_noabort(i32 %45, i32 4)
  %46 = load i32, ptr %add.ptr.14.i.i, align 1
  %47 = ptrtoint ptr %arrayidx.14.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %arrayidx.14.i.i, align 4
  %add.ptr.15.i.i = getelementptr i32, ptr %src.addr.03, i32 15
  %48 = ptrtoint ptr %add.ptr.15.i.i to i32
  call void @__asan_loadN_noabort(i32 %48, i32 4)
  %49 = load i32, ptr %add.ptr.15.i.i, align 1
  %50 = ptrtoint ptr %arrayidx.15.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %arrayidx.15.i.i, align 4
  br label %for.body3.i.i

for.body3.i.i:                                    ; preds = %for.body3.i.i.for.body3.i.i_crit_edge, %while.body
  %i.159.i.i = phi i32 [ %inc21.i.i, %for.body3.i.i.for.body3.i.i_crit_edge ], [ 16, %while.body ]
  %sub.i.i = add nsw i32 %i.159.i.i, -16
  %arrayidx4.i.i = getelementptr i32, ptr %w.i, i32 %sub.i.i
  %51 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx4.i.i, align 4
  %sub5.i.i = add nsw i32 %i.159.i.i, -9
  %arrayidx6.i.i = getelementptr i32, ptr %w.i, i32 %sub5.i.i
  %53 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx6.i.i, align 4
  %xor.i.i = xor i32 %54, %52
  %sub7.i.i = add nsw i32 %i.159.i.i, -3
  %arrayidx8.i.i = getelementptr i32, ptr %w.i, i32 %sub7.i.i
  %55 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx8.i.i, align 4
  %or.i.i.i = call i32 @llvm.fshl.i32(i32 %56, i32 %56, i32 15) #6
  %xor10.i.i = xor i32 %xor.i.i, %or.i.i.i
  %or.i.i.i.i = call i32 @llvm.fshl.i32(i32 %xor10.i.i, i32 %xor10.i.i, i32 15) #6
  %or.i5.i.i.i = call i32 @llvm.fshl.i32(i32 %xor10.i.i, i32 %xor10.i.i, i32 23) #6
  %sub12.i.i = add nsw i32 %i.159.i.i, -13
  %arrayidx13.i.i = getelementptr i32, ptr %w.i, i32 %sub12.i.i
  %57 = ptrtoint ptr %arrayidx13.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx13.i.i, align 4
  %or.i57.i.i = call i32 @llvm.fshl.i32(i32 %58, i32 %58, i32 7) #6
  %sub16.i.i = add nsw i32 %i.159.i.i, -6
  %arrayidx17.i.i = getelementptr i32, ptr %w.i, i32 %sub16.i.i
  %59 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx17.i.i, align 4
  %xor.i.i.i = xor i32 %or.i57.i.i, %xor10.i.i
  %xor2.i.i.i = xor i32 %xor.i.i.i, %60
  %xor15.i.i = xor i32 %xor2.i.i.i, %or.i.i.i.i
  %xor18.i.i = xor i32 %xor15.i.i, %or.i5.i.i.i
  %arrayidx19.i.i = getelementptr i32, ptr %w.i, i32 %i.159.i.i
  %61 = ptrtoint ptr %arrayidx19.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %xor18.i.i, ptr %arrayidx19.i.i, align 4
  %inc21.i.i = add nuw nsw i32 %i.159.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc21.i.i, 68
  br i1 %exitcond.not.i.i, label %for.body3.i.i.for.body25.i.i_crit_edge, label %for.body3.i.i.for.body3.i.i_crit_edge

for.body3.i.i.for.body3.i.i_crit_edge:            ; preds = %for.body3.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body3.i.i

for.body3.i.i.for.body25.i.i_crit_edge:           ; preds = %for.body3.i.i
  br label %for.body25.i.i

for.body25.i.i:                                   ; preds = %for.body25.i.i.for.body25.i.i_crit_edge, %for.body3.i.i.for.body25.i.i_crit_edge
  %i.260.i.i = phi i32 [ %inc31.i.i, %for.body25.i.i.for.body25.i.i_crit_edge ], [ 0, %for.body3.i.i.for.body25.i.i_crit_edge ]
  %arrayidx26.i.i = getelementptr i32, ptr %w.i, i32 %i.260.i.i
  %62 = ptrtoint ptr %arrayidx26.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx26.i.i, align 4
  %add.i.i = add nuw nsw i32 %i.260.i.i, 4
  %arrayidx27.i.i = getelementptr i32, ptr %w.i, i32 %add.i.i
  %64 = ptrtoint ptr %arrayidx27.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx27.i.i, align 4
  %xor28.i.i = xor i32 %65, %63
  %arrayidx29.i.i = getelementptr i32, ptr %wt.i, i32 %i.260.i.i
  %66 = ptrtoint ptr %arrayidx29.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %xor28.i.i, ptr %arrayidx29.i.i, align 4
  %inc31.i.i = add nuw nsw i32 %i.260.i.i, 1
  %exitcond61.not.i.i = icmp eq i32 %inc31.i.i, 64
  br i1 %exitcond61.not.i.i, label %sm3_expand.exit.i, label %for.body25.i.i.for.body25.i.i_crit_edge

for.body25.i.i.for.body25.i.i_crit_edge:          ; preds = %for.body25.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body25.i.i

sm3_expand.exit.i:                                ; preds = %for.body25.i.i
  %67 = ptrtoint ptr %sst to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %sst, align 4
  %69 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx1.i.i, align 4
  %71 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx2.i.i, align 4
  %73 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx3.i.i, align 4
  %75 = ptrtoint ptr %arrayidx4.i7.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %arrayidx4.i7.i, align 4
  %77 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arrayidx5.i.i, align 4
  %79 = ptrtoint ptr %arrayidx6.i8.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %arrayidx6.i8.i, align 4
  %81 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %arrayidx7.i.i, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %gg.exit.i.i.for.body.i.i_crit_edge, %sm3_expand.exit.i
  %i.0132.i.i = phi i32 [ 0, %sm3_expand.exit.i ], [ %inc.i.i, %gg.exit.i.i.for.body.i.i_crit_edge ]
  %h.0131.i.i = phi i32 [ %82, %sm3_expand.exit.i ], [ %g.0130.i.i, %gg.exit.i.i.for.body.i.i_crit_edge ]
  %g.0130.i.i = phi i32 [ %80, %sm3_expand.exit.i ], [ %or.i111.i.i, %gg.exit.i.i.for.body.i.i_crit_edge ]
  %f.0129.i.i = phi i32 [ %78, %sm3_expand.exit.i ], [ %e.0128.i.i, %gg.exit.i.i.for.body.i.i_crit_edge ]
  %e.0128.i.i = phi i32 [ %76, %sm3_expand.exit.i ], [ %xor2.i.i15.i, %gg.exit.i.i.for.body.i.i_crit_edge ]
  %d.0127.i.i = phi i32 [ %74, %sm3_expand.exit.i ], [ %c.0126.i.i, %gg.exit.i.i.for.body.i.i_crit_edge ]
  %c.0126.i.i = phi i32 [ %72, %sm3_expand.exit.i ], [ %or.i110.i.i, %gg.exit.i.i.for.body.i.i_crit_edge ]
  %b.0125.i.i = phi i32 [ %70, %sm3_expand.exit.i ], [ %a.0124.i.i, %gg.exit.i.i.for.body.i.i_crit_edge ]
  %a.0124.i.i = phi i32 [ %68, %sm3_expand.exit.i ], [ %add16118.i.i, %gg.exit.i.i.for.body.i.i_crit_edge ]
  %w.addr.0123.i.i = phi ptr [ %w.i, %sm3_expand.exit.i ], [ %incdec.ptr21.i.i, %gg.exit.i.i.for.body.i.i_crit_edge ]
  %wt.addr.0122.i.i = phi ptr [ %wt.i, %sm3_expand.exit.i ], [ %incdec.ptr120.i.i, %gg.exit.i.i.for.body.i.i_crit_edge ]
  %or.i.i9.i = call i32 @llvm.fshl.i32(i32 %a.0124.i.i, i32 %a.0124.i.i, i32 12) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %i.0132.i.i)
  %cmp.i.i.i = icmp ult i32 %i.0132.i.i, 16
  %cond.i.i.i = select i1 %cmp.i.i.i, i32 2043430169, i32 2055708042
  %or.i97.i.i = call i32 @llvm.fshl.i32(i32 %cond.i.i.i, i32 %cond.i.i.i, i32 %i.0132.i.i) #6
  %add.i10.i = add i32 %e.0128.i.i, %or.i97.i.i
  %add10.i.i = add i32 %add.i10.i, %or.i.i9.i
  %or.i98.i.i = call i32 @llvm.fshl.i32(i32 %add10.i.i, i32 %add10.i.i, i32 7) #6
  %xor.i11.i = xor i32 %or.i98.i.i, %or.i.i9.i
  br i1 %cmp.i.i.i, label %cond.true.i106.i.i, label %cond.false.i108.i.i

cond.true.i106.i.i:                               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %xor.i.i12.i = xor i32 %b.0125.i.i, %c.0126.i.i
  %xor1.i.i.i = xor i32 %xor.i.i12.i, %a.0124.i.i
  %83 = ptrtoint ptr %wt.addr.0122.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %wt.addr.0122.i.i, align 4
  %add14114.i.i = add i32 %xor.i11.i, %d.0127.i.i
  %add15115.i.i = add i32 %add14114.i.i, %xor1.i.i.i
  %add16116.i.i = add i32 %add15115.i.i, %84
  %xor.i104.i.i = xor i32 %f.0129.i.i, %g.0130.i.i
  %xor1.i105.i.i = xor i32 %xor.i104.i.i, %e.0128.i.i
  br label %gg.exit.i.i

cond.false.i108.i.i:                              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %and211.i.i.i = or i32 %b.0125.i.i, %c.0126.i.i
  %or.i101.i.i = and i32 %and211.i.i.i, %a.0124.i.i
  %and3.i.i.i = and i32 %b.0125.i.i, %c.0126.i.i
  %or4.i.i.i = or i32 %or.i101.i.i, %and3.i.i.i
  %85 = ptrtoint ptr %wt.addr.0122.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %wt.addr.0122.i.i, align 4
  %add14.i.i = add i32 %xor.i11.i, %d.0127.i.i
  %add15.i.i = add i32 %add14.i.i, %or4.i.i.i
  %add16.i.i = add i32 %add15.i.i, %86
  %and.i.i.i = and i32 %e.0128.i.i, %f.0129.i.i
  %neg.i.i.i = xor i32 %e.0128.i.i, -1
  %and2.i.i.i = and i32 %g.0130.i.i, %neg.i.i.i
  %or.i107.i.i = or i32 %and2.i.i.i, %and.i.i.i
  br label %gg.exit.i.i

gg.exit.i.i:                                      ; preds = %cond.false.i108.i.i, %cond.true.i106.i.i
  %add16118.i.i = phi i32 [ %add16116.i.i, %cond.true.i106.i.i ], [ %add16.i.i, %cond.false.i108.i.i ]
  %cond.i109.i.i = phi i32 [ %xor1.i105.i.i, %cond.true.i106.i.i ], [ %or.i107.i.i, %cond.false.i108.i.i ]
  %incdec.ptr120.i.i = getelementptr i32, ptr %wt.addr.0122.i.i, i32 1
  %87 = ptrtoint ptr %w.addr.0123.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %w.addr.0123.i.i, align 4
  %add18.i.i = add i32 %or.i98.i.i, %h.0131.i.i
  %add19.i.i = add i32 %add18.i.i, %cond.i109.i.i
  %add20.i.i = add i32 %add19.i.i, %88
  %incdec.ptr21.i.i = getelementptr i32, ptr %w.addr.0123.i.i, i32 1
  %or.i110.i.i = call i32 @llvm.fshl.i32(i32 %b.0125.i.i, i32 %b.0125.i.i, i32 9) #6
  %or.i111.i.i = call i32 @llvm.fshl.i32(i32 %f.0129.i.i, i32 %f.0129.i.i, i32 19) #6
  %or.i.i.i13.i = call i32 @llvm.fshl.i32(i32 %add20.i.i, i32 %add20.i.i, i32 9) #6
  %xor.i112.i.i = xor i32 %or.i.i.i13.i, %add20.i.i
  %or.i5.i.i14.i = call i32 @llvm.fshl.i32(i32 %add20.i.i, i32 %add20.i.i, i32 17) #6
  %xor2.i.i15.i = xor i32 %xor.i112.i.i, %or.i5.i.i14.i
  %inc.i.i = add nuw nsw i32 %i.0132.i.i, 1
  %exitcond.not.i16.i = icmp eq i32 %inc.i.i, 64
  br i1 %exitcond.not.i16.i, label %sm3_transform.exit, label %gg.exit.i.i.for.body.i.i_crit_edge

gg.exit.i.i.for.body.i.i_crit_edge:               ; preds = %gg.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

sm3_transform.exit:                               ; preds = %gg.exit.i.i
  %dec = add i32 %blocks.addr.04, -1
  %xor26.i.i = xor i32 %add16118.i.i, %68
  %89 = ptrtoint ptr %sst to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %xor26.i.i, ptr %sst, align 4
  %xor29.i.i = xor i32 %a.0124.i.i, %70
  %90 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %xor29.i.i, ptr %arrayidx1.i.i, align 4
  %xor32.i.i = xor i32 %or.i110.i.i, %72
  %91 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %xor32.i.i, ptr %arrayidx2.i.i, align 4
  %xor35.i.i = xor i32 %c.0126.i.i, %74
  %92 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %xor35.i.i, ptr %arrayidx3.i.i, align 4
  %xor38.i.i = xor i32 %xor2.i.i15.i, %76
  %93 = ptrtoint ptr %arrayidx4.i7.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %xor38.i.i, ptr %arrayidx4.i7.i, align 4
  %xor41.i.i = xor i32 %e.0128.i.i, %78
  %94 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %xor41.i.i, ptr %arrayidx5.i.i, align 4
  %xor44.i.i = xor i32 %or.i111.i.i, %80
  %95 = ptrtoint ptr %arrayidx6.i8.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %xor44.i.i, ptr %arrayidx6.i8.i, align 4
  %xor47.i.i = xor i32 %g.0130.i.i, %82
  %96 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %xor47.i.i, ptr %arrayidx7.i.i, align 4
  %97 = call ptr @memset(ptr %w.i, i32 0, i32 272)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %w.i) #6, !srcloc !37
  %98 = call ptr @memset(ptr %wt.i, i32 0, i32 256)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %wt.i) #6, !srcloc !37
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %wt.i) #6
  call void @llvm.lifetime.end.p0(i64 272, ptr nonnull %w.i) #6
  %add.ptr = getelementptr i8, ptr %src.addr.03, i32 64
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %sm3_transform.exit.while.end_crit_edge, label %sm3_transform.exit.while.body_crit_edge

sm3_transform.exit.while.body_crit_edge:          ; preds = %sm3_transform.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

sm3_transform.exit.while.end_crit_edge:           ; preds = %sm3_transform.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %sm3_transform.exit.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @crypto_sm3_final(ptr noundef %desc, ptr nocapture noundef writeonly %out) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 0, i32 2
  %buffer.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 6
  %count.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 5
  %0 = ptrtoint ptr %count.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %count.i, align 8
  %2 = trunc i64 %1 to i32
  %conv.i = and i32 %2, 63
  %inc.i = add nuw nsw i32 %conv.i, 1
  %arrayidx.i = getelementptr %struct.sm3_state, ptr %__ctx.i.i, i32 0, i32 2, i32 %conv.i
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -128, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 55, i32 %conv.i)
  %cmp.i = icmp ugt i32 %conv.i, 55
  br i1 %cmp.i, label %if.then.i, label %entry.sm3_base_do_finalize.exit_crit_edge

entry.sm3_base_do_finalize.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sm3_base_do_finalize.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr5.i = getelementptr i8, ptr %buffer.i, i32 %inc.i
  %sub.i = xor i32 %conv.i, 63
  %4 = call ptr @memset(ptr %add.ptr5.i, i32 0, i32 %sub.i)
  tail call fastcc void @sm3_generic_block_fn(ptr noundef %__ctx.i.i, ptr noundef %buffer.i, i32 noundef 1) #6
  br label %sm3_base_do_finalize.exit

sm3_base_do_finalize.exit:                        ; preds = %if.then.i, %entry.sm3_base_do_finalize.exit_crit_edge
  %partial.0.i = phi i32 [ 0, %if.then.i ], [ %inc.i, %entry.sm3_base_do_finalize.exit_crit_edge ]
  %add.ptr.i = getelementptr %struct.shash_desc, ptr %desc, i32 13
  %add.ptr10.i = getelementptr i8, ptr %buffer.i, i32 %partial.0.i
  %sub11.i = sub nuw nsw i32 56, %partial.0.i
  %5 = call ptr @memset(ptr %add.ptr10.i, i32 0, i32 %sub11.i)
  %6 = ptrtoint ptr %count.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %count.i, align 8
  %shl.i = shl i64 %7, 3
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %shl.i, ptr %add.ptr.i, align 8
  tail call fastcc void @sm3_generic_block_fn(ptr noundef %__ctx.i.i, ptr noundef %buffer.i, i32 noundef 1) #6
  %9 = ptrtoint ptr %__ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %__ctx.i.i, align 4
  %incdec.ptr.i = getelementptr i32, ptr %out, i32 1
  %11 = ptrtoint ptr %out to i32
  call void @__asan_storeN_noabort(i32 %11, i32 4)
  store i32 %10, ptr %out, align 1
  %arrayidx.1.i = getelementptr %struct.shash_desc, ptr %desc, i32 1, i32 1
  %12 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.1.i, align 4
  %incdec.ptr.1.i = getelementptr i32, ptr %out, i32 2
  %14 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_storeN_noabort(i32 %14, i32 4)
  store i32 %13, ptr %incdec.ptr.i, align 1
  %arrayidx.2.i = getelementptr %struct.shash_desc, ptr %desc, i32 2
  %15 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.2.i, align 4
  %incdec.ptr.2.i = getelementptr i32, ptr %out, i32 3
  %17 = ptrtoint ptr %incdec.ptr.1.i to i32
  call void @__asan_storeN_noabort(i32 %17, i32 4)
  store i32 %16, ptr %incdec.ptr.1.i, align 1
  %arrayidx.3.i = getelementptr %struct.shash_desc, ptr %desc, i32 2, i32 1
  %18 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.3.i, align 4
  %incdec.ptr.3.i = getelementptr i32, ptr %out, i32 4
  %20 = ptrtoint ptr %incdec.ptr.2.i to i32
  call void @__asan_storeN_noabort(i32 %20, i32 4)
  store i32 %19, ptr %incdec.ptr.2.i, align 1
  %arrayidx.4.i = getelementptr %struct.shash_desc, ptr %desc, i32 3
  %21 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.4.i, align 4
  %incdec.ptr.4.i = getelementptr i32, ptr %out, i32 5
  %23 = ptrtoint ptr %incdec.ptr.3.i to i32
  call void @__asan_storeN_noabort(i32 %23, i32 4)
  store i32 %22, ptr %incdec.ptr.3.i, align 1
  %arrayidx.5.i = getelementptr %struct.shash_desc, ptr %desc, i32 3, i32 1
  %24 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.5.i, align 4
  %incdec.ptr.5.i = getelementptr i32, ptr %out, i32 6
  %26 = ptrtoint ptr %incdec.ptr.4.i to i32
  call void @__asan_storeN_noabort(i32 %26, i32 4)
  store i32 %25, ptr %incdec.ptr.4.i, align 1
  %arrayidx.6.i = getelementptr %struct.shash_desc, ptr %desc, i32 4
  %27 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.6.i, align 4
  %incdec.ptr.6.i = getelementptr i32, ptr %out, i32 7
  %29 = ptrtoint ptr %incdec.ptr.5.i to i32
  call void @__asan_storeN_noabort(i32 %29, i32 4)
  store i32 %28, ptr %incdec.ptr.5.i, align 1
  %arrayidx.7.i = getelementptr %struct.shash_desc, ptr %desc, i32 4, i32 1
  %30 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.7.i, align 4
  %32 = ptrtoint ptr %incdec.ptr.6.i to i32
  call void @__asan_storeN_noabort(i32 %32, i32 4)
  store i32 %31, ptr %incdec.ptr.6.i, align 1
  %33 = call ptr @memset(ptr %__ctx.i.i, i32 0, i32 104)
  tail call void asm sideeffect "", "r,~{memory}"(ptr %__ctx.i.i) #6, !srcloc !37
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @crypto_sm3_finup(ptr noundef %desc, ptr nocapture noundef readonly %data, i32 noundef %len, ptr nocapture noundef writeonly %hash) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  br i1 %cmp.i, label %if.then.i, label %entry.if.end17.i_crit_edge, !prof !36

entry.if.end17.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i)
  %tobool6.not.i = icmp eq i32 %conv.i, 0
  br i1 %tobool6.not.i, label %if.then.i.if.end.i_crit_edge, label %if.then7.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then7.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i = sub nuw nsw i32 64, %conv.i
  %buffer.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 6
  %add.ptr.i = getelementptr i8, ptr %buffer.i, i32 %conv.i
  %3 = call ptr @memcpy(ptr %add.ptr.i, ptr %data, i32 %sub.i)
  %add.ptr8.i = getelementptr i8, ptr %data, i32 %sub.i
  %sub9.i = sub i32 %len, %sub.i
  tail call fastcc void @sm3_generic_block_fn(ptr noundef %__ctx.i.i, ptr noundef %buffer.i, i32 noundef 1) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then7.i, %if.then.i.if.end.i_crit_edge
  %len.addr.0.i = phi i32 [ %sub9.i, %if.then7.i ], [ %len, %if.then.i.if.end.i_crit_edge ]
  %data.addr.0.i = phi ptr [ %add.ptr8.i, %if.then7.i ], [ %data, %if.then.i.if.end.i_crit_edge ]
  %rem12.i = and i32 %len.addr.0.i, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %len.addr.0.i)
  %tobool13.not.i = icmp ult i32 %len.addr.0.i, 64
  br i1 %tobool13.not.i, label %if.end.i.if.end17.i_crit_edge, label %if.then14.i

if.end.i.if.end17.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17.i

if.then14.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %div1.i = lshr i32 %len.addr.0.i, 6
  tail call fastcc void @sm3_generic_block_fn(ptr noundef %__ctx.i.i, ptr noundef %data.addr.0.i, i32 noundef %div1.i) #6
  %mul.i = and i32 %len.addr.0.i, -64
  %add.ptr15.i = getelementptr i8, ptr %data.addr.0.i, i32 %mul.i
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.then14.i, %if.end.i.if.end17.i_crit_edge, %entry.if.end17.i_crit_edge
  %len.addr.1.i = phi i32 [ %len, %entry.if.end17.i_crit_edge ], [ %rem12.i, %if.then14.i ], [ %rem12.i, %if.end.i.if.end17.i_crit_edge ]
  %partial.0.i = phi i32 [ %conv.i, %entry.if.end17.i_crit_edge ], [ 0, %if.then14.i ], [ 0, %if.end.i.if.end17.i_crit_edge ]
  %data.addr.2.i = phi ptr [ %data, %entry.if.end17.i_crit_edge ], [ %add.ptr15.i, %if.then14.i ], [ %data.addr.0.i, %if.end.i.if.end17.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.addr.1.i)
  %tobool18.not.i = icmp eq i32 %len.addr.1.i, 0
  br i1 %tobool18.not.i, label %if.end17.i.sm3_base_do_update.exit_crit_edge, label %if.then19.i

if.end17.i.sm3_base_do_update.exit_crit_edge:     ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sm3_base_do_update.exit

if.then19.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #8
  %buffer20.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 6
  %add.ptr22.i = getelementptr i8, ptr %buffer20.i, i32 %partial.0.i
  %4 = call ptr @memcpy(ptr %add.ptr22.i, ptr %data.addr.2.i, i32 %len.addr.1.i)
  br label %sm3_base_do_update.exit

sm3_base_do_update.exit:                          ; preds = %if.then19.i, %if.end17.i.sm3_base_do_update.exit_crit_edge
  %buffer.i.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 6
  %5 = ptrtoint ptr %count.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %count.i, align 8
  %7 = trunc i64 %6 to i32
  %conv.i.i = and i32 %7, 63
  %inc.i.i = add nuw nsw i32 %conv.i.i, 1
  %arrayidx.i.i = getelementptr %struct.sm3_state, ptr %__ctx.i.i, i32 0, i32 2, i32 %conv.i.i
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -128, ptr %arrayidx.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 55, i32 %conv.i.i)
  %cmp.i.i = icmp ugt i32 %conv.i.i, 55
  br i1 %cmp.i.i, label %if.then.i.i, label %sm3_base_do_update.exit.crypto_sm3_final.exit_crit_edge

sm3_base_do_update.exit.crypto_sm3_final.exit_crit_edge: ; preds = %sm3_base_do_update.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %crypto_sm3_final.exit

if.then.i.i:                                      ; preds = %sm3_base_do_update.exit
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr5.i.i = getelementptr i8, ptr %buffer.i.i, i32 %inc.i.i
  %sub.i.i = xor i32 %conv.i.i, 63
  %9 = call ptr @memset(ptr %add.ptr5.i.i, i32 0, i32 %sub.i.i)
  tail call fastcc void @sm3_generic_block_fn(ptr noundef %__ctx.i.i, ptr noundef %buffer.i.i, i32 noundef 1) #6
  br label %crypto_sm3_final.exit

crypto_sm3_final.exit:                            ; preds = %if.then.i.i, %sm3_base_do_update.exit.crypto_sm3_final.exit_crit_edge
  %partial.0.i.i = phi i32 [ 0, %if.then.i.i ], [ %inc.i.i, %sm3_base_do_update.exit.crypto_sm3_final.exit_crit_edge ]
  %add.ptr.i.i = getelementptr %struct.shash_desc, ptr %desc, i32 13
  %add.ptr10.i.i = getelementptr i8, ptr %buffer.i.i, i32 %partial.0.i.i
  %sub11.i.i = sub nuw nsw i32 56, %partial.0.i.i
  %10 = call ptr @memset(ptr %add.ptr10.i.i, i32 0, i32 %sub11.i.i)
  %11 = ptrtoint ptr %count.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %count.i, align 8
  %shl.i.i = shl i64 %12, 3
  %13 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %shl.i.i, ptr %add.ptr.i.i, align 8
  tail call fastcc void @sm3_generic_block_fn(ptr noundef %__ctx.i.i, ptr noundef %buffer.i.i, i32 noundef 1) #6
  %14 = ptrtoint ptr %__ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %__ctx.i.i, align 4
  %incdec.ptr.i.i = getelementptr i32, ptr %hash, i32 1
  %16 = ptrtoint ptr %hash to i32
  call void @__asan_storeN_noabort(i32 %16, i32 4)
  store i32 %15, ptr %hash, align 1
  %arrayidx.1.i.i = getelementptr %struct.shash_desc, ptr %desc, i32 1, i32 1
  %17 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.1.i.i, align 4
  %incdec.ptr.1.i.i = getelementptr i32, ptr %hash, i32 2
  %19 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_storeN_noabort(i32 %19, i32 4)
  store i32 %18, ptr %incdec.ptr.i.i, align 1
  %arrayidx.2.i.i = getelementptr %struct.shash_desc, ptr %desc, i32 2
  %20 = ptrtoint ptr %arrayidx.2.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.2.i.i, align 4
  %incdec.ptr.2.i.i = getelementptr i32, ptr %hash, i32 3
  %22 = ptrtoint ptr %incdec.ptr.1.i.i to i32
  call void @__asan_storeN_noabort(i32 %22, i32 4)
  store i32 %21, ptr %incdec.ptr.1.i.i, align 1
  %arrayidx.3.i.i = getelementptr %struct.shash_desc, ptr %desc, i32 2, i32 1
  %23 = ptrtoint ptr %arrayidx.3.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.3.i.i, align 4
  %incdec.ptr.3.i.i = getelementptr i32, ptr %hash, i32 4
  %25 = ptrtoint ptr %incdec.ptr.2.i.i to i32
  call void @__asan_storeN_noabort(i32 %25, i32 4)
  store i32 %24, ptr %incdec.ptr.2.i.i, align 1
  %arrayidx.4.i.i = getelementptr %struct.shash_desc, ptr %desc, i32 3
  %26 = ptrtoint ptr %arrayidx.4.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.4.i.i, align 4
  %incdec.ptr.4.i.i = getelementptr i32, ptr %hash, i32 5
  %28 = ptrtoint ptr %incdec.ptr.3.i.i to i32
  call void @__asan_storeN_noabort(i32 %28, i32 4)
  store i32 %27, ptr %incdec.ptr.3.i.i, align 1
  %arrayidx.5.i.i = getelementptr %struct.shash_desc, ptr %desc, i32 3, i32 1
  %29 = ptrtoint ptr %arrayidx.5.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx.5.i.i, align 4
  %incdec.ptr.5.i.i = getelementptr i32, ptr %hash, i32 6
  %31 = ptrtoint ptr %incdec.ptr.4.i.i to i32
  call void @__asan_storeN_noabort(i32 %31, i32 4)
  store i32 %30, ptr %incdec.ptr.4.i.i, align 1
  %arrayidx.6.i.i = getelementptr %struct.shash_desc, ptr %desc, i32 4
  %32 = ptrtoint ptr %arrayidx.6.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx.6.i.i, align 4
  %incdec.ptr.6.i.i = getelementptr i32, ptr %hash, i32 7
  %34 = ptrtoint ptr %incdec.ptr.5.i.i to i32
  call void @__asan_storeN_noabort(i32 %34, i32 4)
  store i32 %33, ptr %incdec.ptr.5.i.i, align 1
  %arrayidx.7.i.i = getelementptr %struct.shash_desc, ptr %desc, i32 4, i32 1
  %35 = ptrtoint ptr %arrayidx.7.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx.7.i.i, align 4
  %37 = ptrtoint ptr %incdec.ptr.6.i.i to i32
  call void @__asan_storeN_noabort(i32 %37, i32 4)
  store i32 %36, ptr %incdec.ptr.6.i.i, align 1
  %38 = call ptr @memset(ptr %__ctx.i.i, i32 0, i32 104)
  tail call void asm sideeffect "", "r,~{memory}"(ptr %__ctx.i.i) #6, !srcloc !37
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sm3_generic_mod_fini() #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @crypto_unregister_shash(ptr noundef nonnull @sm3_alg) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_shash(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sm3_generic_mod_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @crypto_register_shash(ptr noundef nonnull @sm3_alg) #6
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @sm3_base_init(ptr nocapture noundef writeonly %desc) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %__ctx.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 0, i32 2
  %0 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1937774191, ptr %__ctx.i, align 8
  %arrayidx2 = getelementptr %struct.shash_desc, ptr %desc, i32 1, i32 1
  %1 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1226093241, ptr %arrayidx2, align 4
  %arrayidx4 = getelementptr %struct.shash_desc, ptr %desc, i32 2
  %2 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 388252375, ptr %arrayidx4, align 8
  %arrayidx6 = getelementptr %struct.shash_desc, ptr %desc, i32 2, i32 1
  %3 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -628488704, ptr %arrayidx6, align 4
  %arrayidx8 = getelementptr %struct.shash_desc, ptr %desc, i32 3
  %4 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1452330820, ptr %arrayidx8, align 8
  %arrayidx10 = getelementptr %struct.shash_desc, ptr %desc, i32 3, i32 1
  %5 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 372324522, ptr %arrayidx10, align 4
  %arrayidx12 = getelementptr %struct.shash_desc, ptr %desc, i32 4
  %6 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -477237683, ptr %arrayidx12, align 8
  %arrayidx14 = getelementptr %struct.shash_desc, ptr %desc, i32 4, i32 1
  %7 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1325724082, ptr %arrayidx14, align 4
  %count = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 5
  %8 = ptrtoint ptr %count to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 0, ptr %count, align 8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_shash(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

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

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !17, !19, !21, !22, !24, !25}
!llvm.module.flags = !{!27, !28, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!35}

!0 = !{ptr @sm3_zero_message_hash, !1, !"sm3_zero_message_hash", i1 false, i1 false}
!1 = !{!"../crypto/sm3_generic.c", i32 21, i32 10}
!2 = !{ptr @__ksymtab_sm3_zero_message_hash, !3, !"__ksymtab_sm3_zero_message_hash", i1 false, i1 false}
!3 = !{!"../crypto/sm3_generic.c", i32 27, i32 1}
!4 = !{ptr @__ksymtab_crypto_sm3_update, !5, !"__ksymtab_crypto_sm3_update", i1 false, i1 false}
!5 = !{!"../crypto/sm3_generic.c", i32 150, i32 1}
!6 = !{ptr @__ksymtab_crypto_sm3_final, !7, !"__ksymtab_crypto_sm3_final", i1 false, i1 false}
!7 = !{!"../crypto/sm3_generic.c", i32 157, i32 1}
!8 = !{ptr @__ksymtab_crypto_sm3_finup, !9, !"__ksymtab_crypto_sm3_finup", i1 false, i1 false}
!9 = !{!"../crypto/sm3_generic.c", i32 165, i32 1}
!10 = !{ptr @__initcall__kmod_sm3_generic__226_192_sm3_generic_mod_init4, !11, !"__initcall__kmod_sm3_generic__226_192_sm3_generic_mod_init4", i1 false, i1 false}
!11 = !{!"../crypto/sm3_generic.c", i32 192, i32 1}
!12 = !{ptr @__exitcall_sm3_generic_mod_fini, !13, !"__exitcall_sm3_generic_mod_fini", i1 false, i1 false}
!13 = !{!"../crypto/sm3_generic.c", i32 193, i32 1}
!14 = !{ptr @__UNIQUE_ID_file227, !15, !"__UNIQUE_ID_file227", i1 false, i1 false}
!15 = !{!"../crypto/sm3_generic.c", i32 195, i32 1}
!16 = !{ptr @__UNIQUE_ID_license228, !15, !"__UNIQUE_ID_license228", i1 false, i1 false}
!17 = !{ptr @__UNIQUE_ID_description229, !18, !"__UNIQUE_ID_description229", i1 false, i1 false}
!18 = !{!"../crypto/sm3_generic.c", i32 196, i32 1}
!19 = !{ptr @__UNIQUE_ID_alias_userspace230, !20, !"__UNIQUE_ID_alias_userspace230", i1 false, i1 false}
!20 = !{!"../crypto/sm3_generic.c", i32 198, i32 1}
!21 = !{ptr @__UNIQUE_ID_alias_crypto231, !20, !"__UNIQUE_ID_alias_crypto231", i1 false, i1 false}
!22 = !{ptr @__UNIQUE_ID_alias_userspace232, !23, !"__UNIQUE_ID_alias_userspace232", i1 false, i1 false}
!23 = !{!"../crypto/sm3_generic.c", i32 199, i32 1}
!24 = !{ptr @__UNIQUE_ID_alias_crypto233, !23, !"__UNIQUE_ID_alias_crypto233", i1 false, i1 false}
!25 = !{ptr @sm3_alg, !26, !"sm3_alg", i1 false, i1 false}
!26 = !{!"../crypto/sm3_generic.c", i32 167, i32 25}
!27 = !{i32 1, !"wchar_size", i32 2}
!28 = !{i32 1, !"min_enum_size", i32 4}
!29 = !{i32 8, !"branch-target-enforcement", i32 0}
!30 = !{i32 8, !"sign-return-address", i32 0}
!31 = !{i32 8, !"sign-return-address-all", i32 0}
!32 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!33 = !{i32 7, !"uwtable", i32 1}
!34 = !{i32 7, !"frame-pointer", i32 2}
!35 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!36 = !{!"branch_weights", i32 1, i32 2000}
!37 = !{i64 2149224138}
