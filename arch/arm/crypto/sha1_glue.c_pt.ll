; ModuleID = '/llk/IR_all_yes/arch/arm/crypto/sha1_glue.c_pt.bc'
source_filename = "../arch/arm/crypto/sha1_glue.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+sha1_update_arm\22, \22a\22\09"
module asm "\09.weak\09__crc_sha1_update_arm\09\09\09\09"
module asm "\09.long\09__crc_sha1_update_arm\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sha1_update_arm:\09\09\09\09\09"
module asm "\09.asciz \09\22sha1_update_arm\22\09\09\09\09\09"
module asm "__kstrtabns_sha1_update_arm:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+sha1_finup_arm\22, \22a\22\09"
module asm "\09.weak\09__crc_sha1_finup_arm\09\09\09\09"
module asm "\09.long\09__crc_sha1_finup_arm\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sha1_finup_arm:\09\09\09\09\09"
module asm "\09.asciz \09\22sha1_finup_arm\22\09\09\09\09\09"
module asm "__kstrtabns_sha1_finup_arm:\09\09\09\09\09"
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
%struct.sha1_state = type { [5 x i32], i64, [64 x i8] }

@__kstrtab_sha1_update_arm = external dso_local constant [0 x i8], align 1
@__kstrtabns_sha1_update_arm = external dso_local constant [0 x i8], align 1
@__ksymtab_sha1_update_arm = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sha1_update_arm to i32), ptr @__kstrtab_sha1_update_arm, ptr @__kstrtabns_sha1_update_arm }, section "___ksymtab_gpl+sha1_update_arm", align 4
@__kstrtab_sha1_finup_arm = external dso_local constant [0 x i8], align 1
@__kstrtabns_sha1_finup_arm = external dso_local constant [0 x i8], align 1
@__ksymtab_sha1_finup_arm = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sha1_finup_arm to i32), ptr @__kstrtab_sha1_finup_arm, ptr @__kstrtabns_sha1_finup_arm }, section "___ksymtab_gpl+sha1_finup_arm", align 4
@alg = internal global %struct.shash_alg { ptr @sha1_base_init, ptr @sha1_update_arm, ptr @sha1_final, ptr @sha1_finup_arm, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 96, [84 x i8] undef, i32 20, i32 0, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 64, i32 0, i32 0, i32 150, %struct.refcount_struct zeroinitializer, [128 x i8] c"sha1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"sha1-asm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.44 zeroinitializer, [120 x i8] undef } }, align 128
@__initcall__kmod_sha1_arm__174_82_sha1_mod_init6 = internal global ptr @sha1_mod_init, section ".initcall6.init", align 4
@__exitcall_sha1_mod_fini = internal global ptr @sha1_mod_fini, section ".exitcall.exit", align 4
@__UNIQUE_ID_file175 = internal constant [39 x i8] c"sha1_arm.file=arch/arm/crypto/sha1-arm\00", section ".modinfo", align 1
@__UNIQUE_ID_license176 = internal constant [21 x i8] c"sha1_arm.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description177 = internal constant [54 x i8] c"sha1_arm.description=SHA1 Secure Hash Algorithm (ARM)\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace178 = internal constant [20 x i8] c"sha1_arm.alias=sha1\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto179 = internal constant [27 x i8] c"sha1_arm.alias=crypto-sha1\00", section ".modinfo", align 1
@__UNIQUE_ID_author180 = internal constant [53 x i8] c"sha1_arm.author=David McCullough <ucdevel@gmail.com>\00", section ".modinfo", align 1
@llvm.compiler.used = appending global [11 x ptr] [ptr @__UNIQUE_ID_alias_crypto179, ptr @__UNIQUE_ID_alias_userspace178, ptr @__UNIQUE_ID_author180, ptr @__UNIQUE_ID_description177, ptr @__UNIQUE_ID_file175, ptr @__UNIQUE_ID_license176, ptr @__exitcall_sha1_mod_fini, ptr @__initcall__kmod_sha1_arm__174_82_sha1_mod_init6, ptr @__ksymtab_sha1_finup_arm, ptr @__ksymtab_sha1_update_arm, ptr @sha1_mod_fini], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sha1_update_arm(ptr noundef %desc, ptr noundef %data, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
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
  br i1 %cmp.i, label %if.then.i, label %entry.if.end17.i_crit_edge, !prof !29

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
  %buffer.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 5
  %add.ptr.i = getelementptr i8, ptr %buffer.i, i32 %conv.i
  %3 = call ptr @memcpy(ptr %add.ptr.i, ptr %data, i32 %sub.i)
  %add.ptr8.i = getelementptr i8, ptr %data, i32 %sub.i
  %sub9.i = sub i32 %len, %sub.i
  tail call void @sha1_block_data_order(ptr noundef %__ctx.i.i, ptr noundef %buffer.i, i32 noundef 1) #4
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
  tail call void @sha1_block_data_order(ptr noundef %__ctx.i.i, ptr noundef %data.addr.0.i, i32 noundef %div1.i) #4
  %mul.i = and i32 %len.addr.0.i, -64
  %add.ptr15.i = getelementptr i8, ptr %data.addr.0.i, i32 %mul.i
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.then14.i, %if.end.i.if.end17.i_crit_edge, %entry.if.end17.i_crit_edge
  %len.addr.1.i = phi i32 [ %len, %entry.if.end17.i_crit_edge ], [ %rem12.i, %if.then14.i ], [ %rem12.i, %if.end.i.if.end17.i_crit_edge ]
  %partial.0.i = phi i32 [ %conv.i, %entry.if.end17.i_crit_edge ], [ 0, %if.then14.i ], [ 0, %if.end.i.if.end17.i_crit_edge ]
  %data.addr.2.i = phi ptr [ %data, %entry.if.end17.i_crit_edge ], [ %add.ptr15.i, %if.then14.i ], [ %data.addr.0.i, %if.end.i.if.end17.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.addr.1.i)
  %tobool18.not.i = icmp eq i32 %len.addr.1.i, 0
  br i1 %tobool18.not.i, label %if.end17.i.sha1_base_do_update.exit_crit_edge, label %if.then19.i

if.end17.i.sha1_base_do_update.exit_crit_edge:    ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sha1_base_do_update.exit

if.then19.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #6
  %buffer20.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 5
  %add.ptr22.i = getelementptr i8, ptr %buffer20.i, i32 %partial.0.i
  %4 = call ptr @memcpy(ptr %add.ptr22.i, ptr %data.addr.2.i, i32 %len.addr.1.i)
  br label %sha1_base_do_update.exit

sha1_base_do_update.exit:                         ; preds = %if.then19.i, %if.end17.i.sha1_base_do_update.exit_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sha1_block_data_order(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sha1_finup_arm(ptr noundef %desc, ptr noundef %data, i32 noundef %len, ptr nocapture noundef writeonly %out) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
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
  br i1 %cmp.i, label %if.then.i, label %entry.if.end17.i_crit_edge, !prof !29

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
  %buffer.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 5
  %add.ptr.i = getelementptr i8, ptr %buffer.i, i32 %conv.i
  %3 = call ptr @memcpy(ptr %add.ptr.i, ptr %data, i32 %sub.i)
  %add.ptr8.i = getelementptr i8, ptr %data, i32 %sub.i
  %sub9.i = sub i32 %len, %sub.i
  tail call void @sha1_block_data_order(ptr noundef %__ctx.i.i, ptr noundef %buffer.i, i32 noundef 1) #4
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
  tail call void @sha1_block_data_order(ptr noundef %__ctx.i.i, ptr noundef %data.addr.0.i, i32 noundef %div1.i) #4
  %mul.i = and i32 %len.addr.0.i, -64
  %add.ptr15.i = getelementptr i8, ptr %data.addr.0.i, i32 %mul.i
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.then14.i, %if.end.i.if.end17.i_crit_edge, %entry.if.end17.i_crit_edge
  %len.addr.1.i = phi i32 [ %len, %entry.if.end17.i_crit_edge ], [ %rem12.i, %if.then14.i ], [ %rem12.i, %if.end.i.if.end17.i_crit_edge ]
  %partial.0.i = phi i32 [ %conv.i, %entry.if.end17.i_crit_edge ], [ 0, %if.then14.i ], [ 0, %if.end.i.if.end17.i_crit_edge ]
  %data.addr.2.i = phi ptr [ %data, %entry.if.end17.i_crit_edge ], [ %add.ptr15.i, %if.then14.i ], [ %data.addr.0.i, %if.end.i.if.end17.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.addr.1.i)
  %tobool18.not.i = icmp eq i32 %len.addr.1.i, 0
  br i1 %tobool18.not.i, label %if.end17.i.sha1_base_do_update.exit_crit_edge, label %if.then19.i

if.end17.i.sha1_base_do_update.exit_crit_edge:    ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sha1_base_do_update.exit

if.then19.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #6
  %buffer20.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 5
  %add.ptr22.i = getelementptr i8, ptr %buffer20.i, i32 %partial.0.i
  %4 = call ptr @memcpy(ptr %add.ptr22.i, ptr %data.addr.2.i, i32 %len.addr.1.i)
  br label %sha1_base_do_update.exit

sha1_base_do_update.exit:                         ; preds = %if.then19.i, %if.end17.i.sha1_base_do_update.exit_crit_edge
  %buffer.i.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 5
  %5 = ptrtoint ptr %count.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %count.i, align 8
  %7 = trunc i64 %6 to i32
  %conv.i.i = and i32 %7, 63
  %inc.i.i = add nuw nsw i32 %conv.i.i, 1
  %arrayidx.i.i = getelementptr %struct.sha1_state, ptr %__ctx.i.i, i32 0, i32 2, i32 %conv.i.i
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -128, ptr %arrayidx.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 55, i32 %conv.i.i)
  %cmp.i.i = icmp ugt i32 %conv.i.i, 55
  br i1 %cmp.i.i, label %if.then.i.i, label %sha1_base_do_update.exit.sha1_final.exit_crit_edge

sha1_base_do_update.exit.sha1_final.exit_crit_edge: ; preds = %sha1_base_do_update.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %sha1_final.exit

if.then.i.i:                                      ; preds = %sha1_base_do_update.exit
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr5.i.i = getelementptr i8, ptr %buffer.i.i, i32 %inc.i.i
  %sub.i.i = xor i32 %conv.i.i, 63
  %9 = call ptr @memset(ptr %add.ptr5.i.i, i32 0, i32 %sub.i.i)
  tail call void @sha1_block_data_order(ptr noundef %__ctx.i.i, ptr noundef %buffer.i.i, i32 noundef 1) #4
  br label %sha1_final.exit

sha1_final.exit:                                  ; preds = %if.then.i.i, %sha1_base_do_update.exit.sha1_final.exit_crit_edge
  %partial.0.i.i = phi i32 [ 0, %if.then.i.i ], [ %inc.i.i, %sha1_base_do_update.exit.sha1_final.exit_crit_edge ]
  %add.ptr.i.i = getelementptr %struct.shash_desc, ptr %desc, i32 12
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
  tail call void @sha1_block_data_order(ptr noundef %__ctx.i.i, ptr noundef %buffer.i.i, i32 noundef 1) #4
  %14 = ptrtoint ptr %__ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %__ctx.i.i, align 4
  %incdec.ptr.i.i = getelementptr i32, ptr %out, i32 1
  %16 = ptrtoint ptr %out to i32
  call void @__asan_storeN_noabort(i32 %16, i32 4)
  store i32 %15, ptr %out, align 1
  %arrayidx.1.i.i = getelementptr %struct.shash_desc, ptr %desc, i32 1, i32 1
  %17 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.1.i.i, align 4
  %incdec.ptr.1.i.i = getelementptr i32, ptr %out, i32 2
  %19 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_storeN_noabort(i32 %19, i32 4)
  store i32 %18, ptr %incdec.ptr.i.i, align 1
  %arrayidx.2.i.i = getelementptr %struct.shash_desc, ptr %desc, i32 2
  %20 = ptrtoint ptr %arrayidx.2.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.2.i.i, align 4
  %incdec.ptr.2.i.i = getelementptr i32, ptr %out, i32 3
  %22 = ptrtoint ptr %incdec.ptr.1.i.i to i32
  call void @__asan_storeN_noabort(i32 %22, i32 4)
  store i32 %21, ptr %incdec.ptr.1.i.i, align 1
  %arrayidx.3.i.i = getelementptr %struct.shash_desc, ptr %desc, i32 2, i32 1
  %23 = ptrtoint ptr %arrayidx.3.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.3.i.i, align 4
  %incdec.ptr.3.i.i = getelementptr i32, ptr %out, i32 4
  %25 = ptrtoint ptr %incdec.ptr.2.i.i to i32
  call void @__asan_storeN_noabort(i32 %25, i32 4)
  store i32 %24, ptr %incdec.ptr.2.i.i, align 1
  %arrayidx.4.i.i = getelementptr %struct.shash_desc, ptr %desc, i32 3
  %26 = ptrtoint ptr %arrayidx.4.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.4.i.i, align 4
  %28 = ptrtoint ptr %incdec.ptr.3.i.i to i32
  call void @__asan_storeN_noabort(i32 %28, i32 4)
  store i32 %27, ptr %incdec.ptr.3.i.i, align 1
  %29 = call ptr @memset(ptr %__ctx.i.i, i32 0, i32 96)
  tail call void asm sideeffect "", "r,~{memory}"(ptr %__ctx.i.i) #4, !srcloc !30
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sha1_final(ptr noundef %desc, ptr nocapture noundef writeonly %out) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
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
  call void @__sanitizer_cov_trace_pc() #6
  br label %sha1_base_do_finalize.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr5.i = getelementptr i8, ptr %buffer.i, i32 %inc.i
  %sub.i = xor i32 %conv.i, 63
  %4 = call ptr @memset(ptr %add.ptr5.i, i32 0, i32 %sub.i)
  tail call void @sha1_block_data_order(ptr noundef %__ctx.i.i, ptr noundef %buffer.i, i32 noundef 1) #4
  br label %sha1_base_do_finalize.exit

sha1_base_do_finalize.exit:                       ; preds = %if.then.i, %entry.sha1_base_do_finalize.exit_crit_edge
  %partial.0.i = phi i32 [ 0, %if.then.i ], [ %inc.i, %entry.sha1_base_do_finalize.exit_crit_edge ]
  %add.ptr.i = getelementptr %struct.shash_desc, ptr %desc, i32 12
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
  tail call void @sha1_block_data_order(ptr noundef %__ctx.i.i, ptr noundef %buffer.i, i32 noundef 1) #4
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
  %23 = ptrtoint ptr %incdec.ptr.3.i to i32
  call void @__asan_storeN_noabort(i32 %23, i32 4)
  store i32 %22, ptr %incdec.ptr.3.i, align 1
  %24 = call ptr @memset(ptr %__ctx.i.i, i32 0, i32 96)
  tail call void asm sideeffect "", "r,~{memory}"(ptr %__ctx.i.i) #4, !srcloc !30
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sha1_mod_fini() #2 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @crypto_unregister_shash(ptr noundef nonnull @alg) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_shash(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sha1_mod_init() #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @crypto_register_shash(ptr noundef nonnull @alg) #4
  ret i32 %call
}

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @sha1_base_init(ptr nocapture noundef writeonly %desc) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
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
declare dso_local i32 @crypto_register_shash(ptr noundef) local_unnamed_addr #1

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

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !16, !18}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = !{ptr @__ksymtab_sha1_update_arm, !1, !"__ksymtab_sha1_update_arm", i1 false, i1 false}
!1 = !{!"../arch/arm/crypto/sha1_glue.c", i32 36, i32 1}
!2 = !{ptr @__ksymtab_sha1_finup_arm, !3, !"__ksymtab_sha1_finup_arm", i1 false, i1 false}
!3 = !{!"../arch/arm/crypto/sha1_glue.c", i32 51, i32 1}
!4 = !{ptr @__initcall__kmod_sha1_arm__174_82_sha1_mod_init6, !5, !"__initcall__kmod_sha1_arm__174_82_sha1_mod_init6", i1 false, i1 false}
!5 = !{!"../arch/arm/crypto/sha1_glue.c", i32 82, i32 1}
!6 = !{ptr @__exitcall_sha1_mod_fini, !7, !"__exitcall_sha1_mod_fini", i1 false, i1 false}
!7 = !{!"../arch/arm/crypto/sha1_glue.c", i32 83, i32 1}
!8 = !{ptr @__UNIQUE_ID_file175, !9, !"__UNIQUE_ID_file175", i1 false, i1 false}
!9 = !{!"../arch/arm/crypto/sha1_glue.c", i32 85, i32 1}
!10 = !{ptr @__UNIQUE_ID_license176, !9, !"__UNIQUE_ID_license176", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_description177, !12, !"__UNIQUE_ID_description177", i1 false, i1 false}
!12 = !{!"../arch/arm/crypto/sha1_glue.c", i32 86, i32 1}
!13 = !{ptr @__UNIQUE_ID_alias_userspace178, !14, !"__UNIQUE_ID_alias_userspace178", i1 false, i1 false}
!14 = !{!"../arch/arm/crypto/sha1_glue.c", i32 87, i32 1}
!15 = !{ptr @__UNIQUE_ID_alias_crypto179, !14, !"__UNIQUE_ID_alias_crypto179", i1 false, i1 false}
!16 = !{ptr @__UNIQUE_ID_author180, !17, !"__UNIQUE_ID_author180", i1 false, i1 false}
!17 = !{!"../arch/arm/crypto/sha1_glue.c", i32 88, i32 1}
!18 = !{ptr @alg, !19, !"alg", i1 false, i1 false}
!19 = !{!"../arch/arm/crypto/sha1_glue.c", i32 53, i32 25}
!20 = !{i32 1, !"wchar_size", i32 2}
!21 = !{i32 1, !"min_enum_size", i32 4}
!22 = !{i32 8, !"branch-target-enforcement", i32 0}
!23 = !{i32 8, !"sign-return-address", i32 0}
!24 = !{i32 8, !"sign-return-address-all", i32 0}
!25 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!26 = !{i32 7, !"uwtable", i32 1}
!27 = !{i32 7, !"frame-pointer", i32 2}
!28 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!29 = !{!"branch_weights", i32 1, i32 2000}
!30 = !{i64 2149222148}
