; ModuleID = '/llk/IR_all_yes/crypto/sha1_generic.c_pt.bc'
source_filename = "../crypto/sha1_generic.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+sha1_zero_message_hash\22, \22a\22\09"
module asm "\09.weak\09__crc_sha1_zero_message_hash\09\09\09\09"
module asm "\09.long\09__crc_sha1_zero_message_hash\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sha1_zero_message_hash:\09\09\09\09\09"
module asm "\09.asciz \09\22sha1_zero_message_hash\22\09\09\09\09\09"
module asm "__kstrtabns_sha1_zero_message_hash:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+crypto_sha1_update\22, \22a\22\09"
module asm "\09.weak\09__crc_crypto_sha1_update\09\09\09\09"
module asm "\09.long\09__crc_crypto_sha1_update\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_sha1_update:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_sha1_update\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_sha1_update:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+crypto_sha1_finup\22, \22a\22\09"
module asm "\09.weak\09__crc_crypto_sha1_finup\09\09\09\09"
module asm "\09.long\09__crc_crypto_sha1_finup\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_sha1_finup:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_sha1_finup\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_sha1_finup:\09\09\09\09\09"
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
%struct.sha1_state = type { [5 x i32], i64, [64 x i8] }

@sha1_zero_message_hash = dso_local constant { [20 x i8], [44 x i8] } { [20 x i8] c"\DA9\A3\EE^kK\0D2U\BF\EF\95`\18\90\AF\D8\07\09", [44 x i8] zeroinitializer }, align 32
@__kstrtab_sha1_zero_message_hash = external dso_local constant [0 x i8], align 1
@__kstrtabns_sha1_zero_message_hash = external dso_local constant [0 x i8], align 1
@__ksymtab_sha1_zero_message_hash = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sha1_zero_message_hash to i32), ptr @__kstrtab_sha1_zero_message_hash, ptr @__kstrtabns_sha1_zero_message_hash }, section "___ksymtab_gpl+sha1_zero_message_hash", align 4
@__kstrtab_crypto_sha1_update = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_sha1_update = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_sha1_update = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_sha1_update to i32), ptr @__kstrtab_crypto_sha1_update, ptr @__kstrtabns_crypto_sha1_update }, section "___ksymtab+crypto_sha1_update", align 4
@__kstrtab_crypto_sha1_finup = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_sha1_finup = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_sha1_finup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_sha1_finup to i32), ptr @__kstrtab_crypto_sha1_finup, ptr @__kstrtabns_crypto_sha1_finup }, section "___ksymtab+crypto_sha1_finup", align 4
@alg = internal global %struct.shash_alg { ptr @sha1_base_init, ptr @crypto_sha1_update, ptr @sha1_final, ptr @crypto_sha1_finup, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 96, [84 x i8] undef, i32 20, i32 0, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 64, i32 0, i32 0, i32 100, %struct.refcount_struct zeroinitializer, [128 x i8] c"sha1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"sha1-generic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.68 zeroinitializer, [120 x i8] undef } }, align 128
@__initcall__kmod_sha1_generic__226_89_sha1_generic_mod_init4 = internal global ptr @sha1_generic_mod_init, section ".initcall4.init", align 4
@__exitcall_sha1_generic_mod_fini = internal global ptr @sha1_generic_mod_fini, section ".exitcall.exit", align 4
@__UNIQUE_ID_file227 = internal constant [38 x i8] c"sha1_generic.file=crypto/sha1_generic\00", section ".modinfo", align 1
@__UNIQUE_ID_license228 = internal constant [25 x i8] c"sha1_generic.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description229 = internal constant [52 x i8] c"sha1_generic.description=SHA1 Secure Hash Algorithm\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace230 = internal constant [24 x i8] c"sha1_generic.alias=sha1\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto231 = internal constant [31 x i8] c"sha1_generic.alias=crypto-sha1\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace232 = internal constant [32 x i8] c"sha1_generic.alias=sha1-generic\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto233 = internal constant [39 x i8] c"sha1_generic.alias=crypto-sha1-generic\00", section ".modinfo", align 1
@___asan_gen_.1 = private unnamed_addr constant [23 x i8] c"sha1_zero_message_hash\00", align 1
@___asan_gen_.2 = private constant [25 x i8] c"../crypto/sha1_generic.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 23, i32 10 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @__UNIQUE_ID_alias_crypto231, ptr @__UNIQUE_ID_alias_crypto233, ptr @__UNIQUE_ID_alias_userspace230, ptr @__UNIQUE_ID_alias_userspace232, ptr @__UNIQUE_ID_description229, ptr @__UNIQUE_ID_file227, ptr @__UNIQUE_ID_license228, ptr @__exitcall_sha1_generic_mod_fini, ptr @__initcall__kmod_sha1_generic__226_89_sha1_generic_mod_init4, ptr @__ksymtab_crypto_sha1_finup, ptr @__ksymtab_crypto_sha1_update, ptr @__ksymtab_sha1_zero_message_hash, ptr @sha1_generic_mod_fini, ptr @sha1_zero_message_hash], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sha1_zero_message_hash to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @crypto_sha1_update(ptr noundef %desc, ptr noundef %data, i32 noundef %len) #0 align 64 {
entry:
  %temp.i = alloca [16 x i32], align 4
  %temp.i.i = alloca [16 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 0, i32 2
  %count.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 4
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
  br i1 %cmp.i, label %if.then.i, label %entry.if.end17.i_crit_edge, !prof !34

entry.if.end17.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i)
  %tobool6.not.i = icmp eq i32 %conv.i, 0
  br i1 %tobool6.not.i, label %if.then.i.if.end.i_crit_edge, label %if.then7.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then7.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %sub.i = sub nuw nsw i32 64, %conv.i
  %buffer.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 5
  %add.ptr.i = getelementptr i8, ptr %buffer.i, i32 %conv.i
  %3 = call ptr @memcpy(ptr %add.ptr.i, ptr %data, i32 %sub.i)
  %add.ptr8.i = getelementptr i8, ptr %data, i32 %sub.i
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %temp.i.i) #5
  %4 = call ptr @memset(ptr %temp.i.i, i32 255, i32 64)
  call void @sha1_transform(ptr noundef %__ctx.i.i, ptr noundef %buffer.i, ptr noundef nonnull %temp.i.i) #5
  %sub9.i = sub i32 %len, %sub.i
  %5 = call ptr @memset(ptr %temp.i.i, i32 0, i32 64)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %temp.i.i) #5, !srcloc !35
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %temp.i.i) #5
  br label %if.end.i

if.end.i:                                         ; preds = %if.then7.i, %if.then.i.if.end.i_crit_edge
  %len.addr.0.i = phi i32 [ %sub9.i, %if.then7.i ], [ %len, %if.then.i.if.end.i_crit_edge ]
  %data.addr.0.i = phi ptr [ %add.ptr8.i, %if.then7.i ], [ %data, %if.then.i.if.end.i_crit_edge ]
  %rem12.i = and i32 %len.addr.0.i, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %len.addr.0.i)
  %tobool13.not.i = icmp ult i32 %len.addr.0.i, 64
  br i1 %tobool13.not.i, label %if.end.i.if.end17.i_crit_edge, label %if.then14.i

if.end.i.if.end17.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17.i

if.then14.i:                                      ; preds = %if.end.i
  %div1.i = lshr i32 %len.addr.0.i, 6
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %temp.i) #5
  %6 = call ptr @memset(ptr %temp.i, i32 255, i32 64)
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.then14.i
  %blocks.addr.06.i = phi i32 [ %dec.i, %while.body.i.while.body.i_crit_edge ], [ %div1.i, %if.then14.i ]
  %src.addr.05.i = phi ptr [ %add.ptr.i1, %while.body.i.while.body.i_crit_edge ], [ %data.addr.0.i, %if.then14.i ]
  %dec.i = add nsw i32 %blocks.addr.06.i, -1
  call void @sha1_transform(ptr noundef %__ctx.i.i, ptr noundef %src.addr.05.i, ptr noundef nonnull %temp.i) #5
  %add.ptr.i1 = getelementptr i8, ptr %src.addr.05.i, i32 64
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %sha1_generic_block_fn.exit, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

sha1_generic_block_fn.exit:                       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %7 = call ptr @memset(ptr %temp.i, i32 0, i32 64)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %temp.i) #5, !srcloc !35
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %temp.i) #5
  %mul.i = and i32 %len.addr.0.i, -64
  %add.ptr15.i = getelementptr i8, ptr %data.addr.0.i, i32 %mul.i
  br label %if.end17.i

if.end17.i:                                       ; preds = %sha1_generic_block_fn.exit, %if.end.i.if.end17.i_crit_edge, %entry.if.end17.i_crit_edge
  %len.addr.1.i = phi i32 [ %len, %entry.if.end17.i_crit_edge ], [ %rem12.i, %sha1_generic_block_fn.exit ], [ %rem12.i, %if.end.i.if.end17.i_crit_edge ]
  %partial.0.i = phi i32 [ %conv.i, %entry.if.end17.i_crit_edge ], [ 0, %sha1_generic_block_fn.exit ], [ 0, %if.end.i.if.end17.i_crit_edge ]
  %data.addr.2.i = phi ptr [ %data, %entry.if.end17.i_crit_edge ], [ %add.ptr15.i, %sha1_generic_block_fn.exit ], [ %data.addr.0.i, %if.end.i.if.end17.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.addr.1.i)
  %tobool18.not.i = icmp eq i32 %len.addr.1.i, 0
  br i1 %tobool18.not.i, label %if.end17.i.sha1_base_do_update.exit_crit_edge, label %if.then19.i

if.end17.i.sha1_base_do_update.exit_crit_edge:    ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sha1_base_do_update.exit

if.then19.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #7
  %buffer20.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 5
  %add.ptr22.i = getelementptr i8, ptr %buffer20.i, i32 %partial.0.i
  %8 = call ptr @memcpy(ptr %add.ptr22.i, ptr %data.addr.2.i, i32 %len.addr.1.i)
  br label %sha1_base_do_update.exit

sha1_base_do_update.exit:                         ; preds = %if.then19.i, %if.end17.i.sha1_base_do_update.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @crypto_sha1_finup(ptr noundef %desc, ptr noundef %data, i32 noundef %len, ptr nocapture noundef writeonly %out) #0 align 64 {
entry:
  %temp.i = alloca [16 x i32], align 4
  %temp.i.i = alloca [16 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 0, i32 2
  %count.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 4
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
  br i1 %cmp.i, label %if.then.i, label %entry.if.end17.i_crit_edge, !prof !34

entry.if.end17.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i)
  %tobool6.not.i = icmp eq i32 %conv.i, 0
  br i1 %tobool6.not.i, label %if.then.i.if.end.i_crit_edge, label %if.then7.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then7.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %sub.i = sub nuw nsw i32 64, %conv.i
  %buffer.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 5
  %add.ptr.i = getelementptr i8, ptr %buffer.i, i32 %conv.i
  %3 = call ptr @memcpy(ptr %add.ptr.i, ptr %data, i32 %sub.i)
  %add.ptr8.i = getelementptr i8, ptr %data, i32 %sub.i
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %temp.i.i) #5
  %4 = call ptr @memset(ptr %temp.i.i, i32 255, i32 64)
  call void @sha1_transform(ptr noundef %__ctx.i.i, ptr noundef %buffer.i, ptr noundef nonnull %temp.i.i) #5
  %sub9.i = sub i32 %len, %sub.i
  %5 = call ptr @memset(ptr %temp.i.i, i32 0, i32 64)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %temp.i.i) #5, !srcloc !35
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %temp.i.i) #5
  br label %if.end.i

if.end.i:                                         ; preds = %if.then7.i, %if.then.i.if.end.i_crit_edge
  %len.addr.0.i = phi i32 [ %sub9.i, %if.then7.i ], [ %len, %if.then.i.if.end.i_crit_edge ]
  %data.addr.0.i = phi ptr [ %add.ptr8.i, %if.then7.i ], [ %data, %if.then.i.if.end.i_crit_edge ]
  %rem12.i = and i32 %len.addr.0.i, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %len.addr.0.i)
  %tobool13.not.i = icmp ult i32 %len.addr.0.i, 64
  br i1 %tobool13.not.i, label %if.end.i.if.end17.i_crit_edge, label %if.then14.i

if.end.i.if.end17.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17.i

if.then14.i:                                      ; preds = %if.end.i
  %div1.i = lshr i32 %len.addr.0.i, 6
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %temp.i) #5
  %6 = call ptr @memset(ptr %temp.i, i32 255, i32 64)
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.then14.i
  %blocks.addr.06.i = phi i32 [ %dec.i, %while.body.i.while.body.i_crit_edge ], [ %div1.i, %if.then14.i ]
  %src.addr.05.i = phi ptr [ %add.ptr.i3, %while.body.i.while.body.i_crit_edge ], [ %data.addr.0.i, %if.then14.i ]
  %dec.i = add nsw i32 %blocks.addr.06.i, -1
  call void @sha1_transform(ptr noundef %__ctx.i.i, ptr noundef %src.addr.05.i, ptr noundef nonnull %temp.i) #5
  %add.ptr.i3 = getelementptr i8, ptr %src.addr.05.i, i32 64
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %sha1_generic_block_fn.exit, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

sha1_generic_block_fn.exit:                       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %7 = call ptr @memset(ptr %temp.i, i32 0, i32 64)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %temp.i) #5, !srcloc !35
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %temp.i) #5
  %mul.i = and i32 %len.addr.0.i, -64
  %add.ptr15.i = getelementptr i8, ptr %data.addr.0.i, i32 %mul.i
  br label %if.end17.i

if.end17.i:                                       ; preds = %sha1_generic_block_fn.exit, %if.end.i.if.end17.i_crit_edge, %entry.if.end17.i_crit_edge
  %len.addr.1.i = phi i32 [ %len, %entry.if.end17.i_crit_edge ], [ %rem12.i, %sha1_generic_block_fn.exit ], [ %rem12.i, %if.end.i.if.end17.i_crit_edge ]
  %partial.0.i = phi i32 [ %conv.i, %entry.if.end17.i_crit_edge ], [ 0, %sha1_generic_block_fn.exit ], [ 0, %if.end.i.if.end17.i_crit_edge ]
  %data.addr.2.i = phi ptr [ %data, %entry.if.end17.i_crit_edge ], [ %add.ptr15.i, %sha1_generic_block_fn.exit ], [ %data.addr.0.i, %if.end.i.if.end17.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.addr.1.i)
  %tobool18.not.i = icmp eq i32 %len.addr.1.i, 0
  br i1 %tobool18.not.i, label %if.end17.i.sha1_base_do_update.exit_crit_edge, label %if.then19.i

if.end17.i.sha1_base_do_update.exit_crit_edge:    ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sha1_base_do_update.exit

if.then19.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #7
  %buffer20.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 5
  %add.ptr22.i = getelementptr i8, ptr %buffer20.i, i32 %partial.0.i
  %8 = call ptr @memcpy(ptr %add.ptr22.i, ptr %data.addr.2.i, i32 %len.addr.1.i)
  br label %sha1_base_do_update.exit

sha1_base_do_update.exit:                         ; preds = %if.then19.i, %if.end17.i.sha1_base_do_update.exit_crit_edge
  %call1 = call i32 @sha1_final(ptr noundef %desc, ptr noundef %out)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sha1_final(ptr noundef %desc, ptr nocapture noundef writeonly %out) #0 align 64 {
entry:
  %temp.i1.i = alloca [16 x i32], align 4
  %temp.i.i = alloca [16 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 0, i32 2
  %buffer.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 5
  %count.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 4
  %0 = ptrtoint ptr %count.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %count.i, align 8
  %2 = trunc i64 %1 to i32
  %conv.i = and i32 %2, 63
  %inc.i = add nuw nsw i32 %conv.i, 1
  %arrayidx.i = getelementptr %struct.sha1_state, ptr %__ctx.i.i, i32 0, i32 2, i32 %conv.i
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -128, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 55, i32 %conv.i)
  %cmp.i = icmp ugt i32 %conv.i, 55
  br i1 %cmp.i, label %if.then.i, label %entry.sha1_base_do_finalize.exit_crit_edge

entry.sha1_base_do_finalize.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sha1_base_do_finalize.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr5.i = getelementptr i8, ptr %buffer.i, i32 %inc.i
  %sub.i = xor i32 %conv.i, 63
  %4 = call ptr @memset(ptr %add.ptr5.i, i32 0, i32 %sub.i)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %temp.i.i) #5
  %5 = call ptr @memset(ptr %temp.i.i, i32 255, i32 64)
  call void @sha1_transform(ptr noundef %__ctx.i.i, ptr noundef %buffer.i, ptr noundef nonnull %temp.i.i) #5
  %6 = call ptr @memset(ptr %temp.i.i, i32 0, i32 64)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %temp.i.i) #5, !srcloc !35
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %temp.i.i) #5
  br label %sha1_base_do_finalize.exit

sha1_base_do_finalize.exit:                       ; preds = %if.then.i, %entry.sha1_base_do_finalize.exit_crit_edge
  %partial.0.i = phi i32 [ 0, %if.then.i ], [ %inc.i, %entry.sha1_base_do_finalize.exit_crit_edge ]
  %add.ptr.i = getelementptr %struct.shash_desc, ptr %desc, i32 12
  %add.ptr10.i = getelementptr i8, ptr %buffer.i, i32 %partial.0.i
  %sub11.i = sub nuw nsw i32 56, %partial.0.i
  %7 = call ptr @memset(ptr %add.ptr10.i, i32 0, i32 %sub11.i)
  %8 = ptrtoint ptr %count.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %count.i, align 8
  %shl.i = shl i64 %9, 3
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %shl.i, ptr %add.ptr.i, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %temp.i1.i) #5
  %11 = call ptr @memset(ptr %temp.i1.i, i32 255, i32 64)
  call void @sha1_transform(ptr noundef %__ctx.i.i, ptr noundef %buffer.i, ptr noundef nonnull %temp.i1.i) #5
  %12 = call ptr @memset(ptr %temp.i1.i, i32 0, i32 64)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %temp.i1.i) #5, !srcloc !35
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %temp.i1.i) #5
  %13 = ptrtoint ptr %__ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %__ctx.i.i, align 4
  %incdec.ptr.i = getelementptr i32, ptr %out, i32 1
  %15 = ptrtoint ptr %out to i32
  call void @__asan_storeN_noabort(i32 %15, i32 4)
  store i32 %14, ptr %out, align 1
  %arrayidx.1.i = getelementptr %struct.shash_desc, ptr %desc, i32 1, i32 1
  %16 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.1.i, align 4
  %incdec.ptr.1.i = getelementptr i32, ptr %out, i32 2
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_storeN_noabort(i32 %18, i32 4)
  store i32 %17, ptr %incdec.ptr.i, align 1
  %arrayidx.2.i = getelementptr %struct.shash_desc, ptr %desc, i32 2
  %19 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.2.i, align 4
  %incdec.ptr.2.i = getelementptr i32, ptr %out, i32 3
  %21 = ptrtoint ptr %incdec.ptr.1.i to i32
  call void @__asan_storeN_noabort(i32 %21, i32 4)
  store i32 %20, ptr %incdec.ptr.1.i, align 1
  %arrayidx.3.i = getelementptr %struct.shash_desc, ptr %desc, i32 2, i32 1
  %22 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.3.i, align 4
  %incdec.ptr.3.i = getelementptr i32, ptr %out, i32 4
  %24 = ptrtoint ptr %incdec.ptr.2.i to i32
  call void @__asan_storeN_noabort(i32 %24, i32 4)
  store i32 %23, ptr %incdec.ptr.2.i, align 1
  %arrayidx.4.i = getelementptr %struct.shash_desc, ptr %desc, i32 3
  %25 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.4.i, align 4
  %27 = ptrtoint ptr %incdec.ptr.3.i to i32
  call void @__asan_storeN_noabort(i32 %27, i32 4)
  store i32 %26, ptr %incdec.ptr.3.i, align 1
  %28 = call ptr @memset(ptr %__ctx.i.i, i32 0, i32 96)
  call void asm sideeffect "", "r,~{memory}"(ptr %__ctx.i.i) #5, !srcloc !35
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sha1_generic_mod_fini() #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @crypto_unregister_shash(ptr noundef nonnull @alg) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_shash(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sha1_generic_mod_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @crypto_register_shash(ptr noundef nonnull @alg) #5
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sha1_transform(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @sha1_base_init(ptr nocapture noundef writeonly %desc) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
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
  %arrayidx8 = getelementptr %struct.shash_desc, ptr %desc, i32 3
  %4 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1009589776, ptr %arrayidx8, align 8
  %count = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 4
  %5 = ptrtoint ptr %count to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 0, ptr %count, align 8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_shash(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

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
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !17, !19, !20, !22, !23}
!llvm.module.flags = !{!25, !26, !27, !28, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{ptr @sha1_zero_message_hash, !1, !"sha1_zero_message_hash", i1 false, i1 false}
!1 = !{!"../crypto/sha1_generic.c", i32 23, i32 10}
!2 = !{ptr @__ksymtab_sha1_zero_message_hash, !3, !"__ksymtab_sha1_zero_message_hash", i1 false, i1 false}
!3 = !{!"../crypto/sha1_generic.c", i32 28, i32 1}
!4 = !{ptr @__ksymtab_crypto_sha1_update, !5, !"__ksymtab_crypto_sha1_update", i1 false, i1 false}
!5 = !{!"../crypto/sha1_generic.c", i32 47, i32 1}
!6 = !{ptr @__ksymtab_crypto_sha1_finup, !7, !"__ksymtab_crypto_sha1_finup", i1 false, i1 false}
!7 = !{!"../crypto/sha1_generic.c", i32 61, i32 1}
!8 = !{ptr @__initcall__kmod_sha1_generic__226_89_sha1_generic_mod_init4, !9, !"__initcall__kmod_sha1_generic__226_89_sha1_generic_mod_init4", i1 false, i1 false}
!9 = !{!"../crypto/sha1_generic.c", i32 89, i32 1}
!10 = !{ptr @__exitcall_sha1_generic_mod_fini, !11, !"__exitcall_sha1_generic_mod_fini", i1 false, i1 false}
!11 = !{!"../crypto/sha1_generic.c", i32 90, i32 1}
!12 = !{ptr @__UNIQUE_ID_file227, !13, !"__UNIQUE_ID_file227", i1 false, i1 false}
!13 = !{!"../crypto/sha1_generic.c", i32 92, i32 1}
!14 = !{ptr @__UNIQUE_ID_license228, !13, !"__UNIQUE_ID_license228", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_description229, !16, !"__UNIQUE_ID_description229", i1 false, i1 false}
!16 = !{!"../crypto/sha1_generic.c", i32 93, i32 1}
!17 = !{ptr @__UNIQUE_ID_alias_userspace230, !18, !"__UNIQUE_ID_alias_userspace230", i1 false, i1 false}
!18 = !{!"../crypto/sha1_generic.c", i32 95, i32 1}
!19 = !{ptr @__UNIQUE_ID_alias_crypto231, !18, !"__UNIQUE_ID_alias_crypto231", i1 false, i1 false}
!20 = !{ptr @__UNIQUE_ID_alias_userspace232, !21, !"__UNIQUE_ID_alias_userspace232", i1 false, i1 false}
!21 = !{!"../crypto/sha1_generic.c", i32 96, i32 1}
!22 = !{ptr @__UNIQUE_ID_alias_crypto233, !21, !"__UNIQUE_ID_alias_crypto233", i1 false, i1 false}
!23 = !{ptr @alg, !24, !"alg", i1 false, i1 false}
!24 = !{!"../crypto/sha1_generic.c", i32 63, i32 25}
!25 = !{i32 1, !"wchar_size", i32 2}
!26 = !{i32 1, !"min_enum_size", i32 4}
!27 = !{i32 8, !"branch-target-enforcement", i32 0}
!28 = !{i32 8, !"sign-return-address", i32 0}
!29 = !{i32 8, !"sign-return-address-all", i32 0}
!30 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!31 = !{i32 7, !"uwtable", i32 1}
!32 = !{i32 7, !"frame-pointer", i32 2}
!33 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!34 = !{!"branch_weights", i32 1, i32 2000}
!35 = !{i64 2149222322}
