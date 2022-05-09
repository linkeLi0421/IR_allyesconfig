; ModuleID = '/llk/IR_all_yes/crypto/nhpoly1305.c_pt.bc'
source_filename = "../crypto/nhpoly1305.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+crypto_nhpoly1305_setkey\22, \22a\22\09"
module asm "\09.weak\09__crc_crypto_nhpoly1305_setkey\09\09\09\09"
module asm "\09.long\09__crc_crypto_nhpoly1305_setkey\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_nhpoly1305_setkey:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_nhpoly1305_setkey\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_nhpoly1305_setkey:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+crypto_nhpoly1305_init\22, \22a\22\09"
module asm "\09.weak\09__crc_crypto_nhpoly1305_init\09\09\09\09"
module asm "\09.long\09__crc_crypto_nhpoly1305_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_nhpoly1305_init:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_nhpoly1305_init\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_nhpoly1305_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+crypto_nhpoly1305_update_helper\22, \22a\22\09"
module asm "\09.weak\09__crc_crypto_nhpoly1305_update_helper\09\09\09\09"
module asm "\09.long\09__crc_crypto_nhpoly1305_update_helper\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_nhpoly1305_update_helper:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_nhpoly1305_update_helper\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_nhpoly1305_update_helper:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+crypto_nhpoly1305_update\22, \22a\22\09"
module asm "\09.weak\09__crc_crypto_nhpoly1305_update\09\09\09\09"
module asm "\09.long\09__crc_crypto_nhpoly1305_update\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_nhpoly1305_update:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_nhpoly1305_update\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_nhpoly1305_update:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+crypto_nhpoly1305_final_helper\22, \22a\22\09"
module asm "\09.weak\09__crc_crypto_nhpoly1305_final_helper\09\09\09\09"
module asm "\09.long\09__crc_crypto_nhpoly1305_final_helper\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_nhpoly1305_final_helper:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_nhpoly1305_final_helper\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_nhpoly1305_final_helper:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+crypto_nhpoly1305_final\22, \22a\22\09"
module asm "\09.weak\09__crc_crypto_nhpoly1305_final\09\09\09\09"
module asm "\09.long\09__crc_crypto_nhpoly1305_final\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_nhpoly1305_final:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_nhpoly1305_final\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_nhpoly1305_final:\09\09\09\09\09"
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
%struct.crypto_shash = type { i32, [124 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.nhpoly1305_key = type { %struct.poly1305_core_key, [268 x i32] }
%struct.poly1305_core_key = type { %struct.poly1305_key, %struct.poly1305_key }
%struct.poly1305_key = type { %union.anon.47 }
%union.anon.47 = type { [3 x i64] }
%struct.shash_desc = type { ptr, [4 x i8], [0 x ptr] }
%struct.nhpoly1305_state = type { %struct.poly1305_state, [16 x i8], i32, i32, [4 x i64] }
%struct.poly1305_state = type { %union.anon.48 }
%union.anon.48 = type { [3 x i64] }

@__kstrtab_crypto_nhpoly1305_setkey = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_nhpoly1305_setkey = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_nhpoly1305_setkey = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_nhpoly1305_setkey to i32), ptr @__kstrtab_crypto_nhpoly1305_setkey, ptr @__kstrtabns_crypto_nhpoly1305_setkey }, section "___ksymtab+crypto_nhpoly1305_setkey", align 4
@__kstrtab_crypto_nhpoly1305_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_nhpoly1305_init = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_nhpoly1305_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_nhpoly1305_init to i32), ptr @__kstrtab_crypto_nhpoly1305_init, ptr @__kstrtabns_crypto_nhpoly1305_init }, section "___ksymtab+crypto_nhpoly1305_init", align 4
@__kstrtab_crypto_nhpoly1305_update_helper = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_nhpoly1305_update_helper = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_nhpoly1305_update_helper = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_nhpoly1305_update_helper to i32), ptr @__kstrtab_crypto_nhpoly1305_update_helper, ptr @__kstrtabns_crypto_nhpoly1305_update_helper }, section "___ksymtab+crypto_nhpoly1305_update_helper", align 4
@__kstrtab_crypto_nhpoly1305_update = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_nhpoly1305_update = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_nhpoly1305_update = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_nhpoly1305_update to i32), ptr @__kstrtab_crypto_nhpoly1305_update, ptr @__kstrtabns_crypto_nhpoly1305_update }, section "___ksymtab+crypto_nhpoly1305_update", align 4
@__kstrtab_crypto_nhpoly1305_final_helper = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_nhpoly1305_final_helper = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_nhpoly1305_final_helper = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_nhpoly1305_final_helper to i32), ptr @__kstrtab_crypto_nhpoly1305_final_helper, ptr @__kstrtabns_crypto_nhpoly1305_final_helper }, section "___ksymtab+crypto_nhpoly1305_final_helper", align 4
@__kstrtab_crypto_nhpoly1305_final = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_nhpoly1305_final = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_nhpoly1305_final = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_nhpoly1305_final to i32), ptr @__kstrtab_crypto_nhpoly1305_final, ptr @__kstrtabns_crypto_nhpoly1305_final }, section "___ksymtab+crypto_nhpoly1305_final", align 4
@nhpoly1305_alg = internal global %struct.shash_alg { ptr @crypto_nhpoly1305_init, ptr @crypto_nhpoly1305_update, ptr @crypto_nhpoly1305_final, ptr null, ptr null, ptr null, ptr null, ptr @crypto_nhpoly1305_setkey, ptr null, ptr null, i32 80, [84 x i8] undef, i32 16, i32 0, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 0, i32 1120, i32 0, i32 100, %struct.refcount_struct zeroinitializer, [128 x i8] c"nhpoly1305\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"nhpoly1305-generic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.44 zeroinitializer, [120 x i8] undef } }, align 128
@__initcall__kmod_nhpoly1305__182_248_nhpoly1305_mod_init4 = internal global ptr @nhpoly1305_mod_init, section ".initcall4.init", align 4
@__exitcall_nhpoly1305_mod_exit = internal global ptr @nhpoly1305_mod_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description183 = internal constant [72 x i8] c"nhpoly1305.description=NHPoly1305 \CE\B5-almost-\E2\88\86-universal hash function\00", section ".modinfo", align 1
@__UNIQUE_ID_file184 = internal constant [34 x i8] c"nhpoly1305.file=crypto/nhpoly1305\00", section ".modinfo", align 1
@__UNIQUE_ID_license185 = internal constant [26 x i8] c"nhpoly1305.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author186 = internal constant [53 x i8] c"nhpoly1305.author=Eric Biggers <ebiggers@google.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace187 = internal constant [28 x i8] c"nhpoly1305.alias=nhpoly1305\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto188 = internal constant [35 x i8] c"nhpoly1305.alias=crypto-nhpoly1305\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace189 = internal constant [36 x i8] c"nhpoly1305.alias=nhpoly1305-generic\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto190 = internal constant [43 x i8] c"nhpoly1305.alias=crypto-nhpoly1305-generic\00", section ".modinfo", align 1
@llvm.compiler.used = appending global [17 x ptr] [ptr @__UNIQUE_ID_alias_crypto188, ptr @__UNIQUE_ID_alias_crypto190, ptr @__UNIQUE_ID_alias_userspace187, ptr @__UNIQUE_ID_alias_userspace189, ptr @__UNIQUE_ID_author186, ptr @__UNIQUE_ID_description183, ptr @__UNIQUE_ID_file184, ptr @__UNIQUE_ID_license185, ptr @__exitcall_nhpoly1305_mod_exit, ptr @__initcall__kmod_nhpoly1305__182_248_nhpoly1305_mod_init4, ptr @__ksymtab_crypto_nhpoly1305_final, ptr @__ksymtab_crypto_nhpoly1305_final_helper, ptr @__ksymtab_crypto_nhpoly1305_init, ptr @__ksymtab_crypto_nhpoly1305_setkey, ptr @__ksymtab_crypto_nhpoly1305_update, ptr @__ksymtab_crypto_nhpoly1305_update_helper, ptr @nhpoly1305_mod_exit], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @crypto_nhpoly1305_setkey(ptr noundef %tfm, ptr noundef %key, i32 noundef %keylen) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_shash, ptr %tfm, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1088, i32 %keylen)
  %cmp.not = icmp eq i32 %keylen, 1088
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @poly1305_core_setkey(ptr noundef %__crt_ctx.i.i, ptr noundef %key) #7
  %add.ptr = getelementptr i8, ptr %key, i32 16
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end
  %i.011 = phi i32 [ 0, %if.end ], [ %inc, %for.body.for.body_crit_edge ]
  %mul = shl i32 %i.011, 2
  %add.ptr2 = getelementptr i8, ptr %add.ptr, i32 %mul
  %0 = ptrtoint ptr %add.ptr2 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %add.ptr2, align 1
  %2 = tail call i32 @llvm.bswap.i32(i32 %1) #7
  %arrayidx = getelementptr %struct.nhpoly1305_key, ptr %__crt_ctx.i.i, i32 0, i32 1, i32 %i.011
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %i.011, 1
  %exitcond.not = icmp eq i32 %inc, 268
  br i1 %exitcond.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @poly1305_core_setkey(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @crypto_nhpoly1305_init(ptr nocapture noundef writeonly %desc) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 0, i32 2
  %0 = call ptr @memset(ptr %__ctx.i, i32 0, i32 24)
  %buflen = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 6
  %1 = ptrtoint ptr %buflen to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %buflen, align 8
  %nh_remaining = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 6, i32 1
  %2 = ptrtoint ptr %nh_remaining to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %nh_remaining, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @crypto_nhpoly1305_update_helper(ptr noundef %desc, ptr noundef %src, i32 noundef %srclen, ptr nocapture noundef readonly %nh_fn) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 0, i32 2
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc, align 8
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_shash, ptr %1, i32 1
  %buflen = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 6
  %2 = ptrtoint ptr %buflen to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %buflen, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end11_crit_edge, label %if.then

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then:                                          ; preds = %entry
  %sub = sub i32 16, %3
  %4 = tail call i32 @llvm.umin.i32(i32 %sub, i32 %srclen)
  %arrayidx = getelementptr %struct.nhpoly1305_state, ptr %__ctx.i, i32 0, i32 1, i32 %3
  %5 = call ptr @memcpy(ptr %arrayidx, ptr %src, i32 %4)
  %6 = ptrtoint ptr %buflen to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %buflen, align 8
  %add = add i32 %7, %4
  store i32 %add, ptr %buflen, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %add)
  %cmp6 = icmp ult i32 %add, 16
  br i1 %cmp6, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %buffer = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 4
  tail call fastcc void @nhpoly1305_units(ptr noundef %__ctx.i, ptr noundef %__crt_ctx.i.i, ptr noundef %buffer, i32 noundef 16, ptr noundef %nh_fn)
  %8 = ptrtoint ptr %buflen to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %buflen, align 8
  %add.ptr = getelementptr i8, ptr %src, i32 %4
  %sub10 = sub i32 %srclen, %4
  br label %if.end11

if.end11:                                         ; preds = %if.end, %entry.if.end11_crit_edge
  %srclen.addr.0 = phi i32 [ %sub10, %if.end ], [ %srclen, %entry.if.end11_crit_edge ]
  %src.addr.0 = phi ptr [ %add.ptr, %if.end ], [ %src, %entry.if.end11_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %srclen.addr.0)
  %cmp12 = icmp ugt i32 %srclen.addr.0, 15
  br i1 %cmp12, label %if.then13, label %if.end11.if.end16_crit_edge

if.end11.if.end16_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %and = and i32 %srclen.addr.0, -16
  tail call fastcc void @nhpoly1305_units(ptr noundef %__ctx.i, ptr noundef %__crt_ctx.i.i, ptr noundef %src.addr.0, i32 noundef %and, ptr noundef %nh_fn)
  %add.ptr14 = getelementptr i8, ptr %src.addr.0, i32 %and
  %sub15 = and i32 %srclen.addr.0, 15
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %if.end11.if.end16_crit_edge
  %srclen.addr.1 = phi i32 [ %sub15, %if.then13 ], [ %srclen.addr.0, %if.end11.if.end16_crit_edge ]
  %src.addr.1 = phi ptr [ %add.ptr14, %if.then13 ], [ %src.addr.0, %if.end11.if.end16_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %srclen.addr.1)
  %tobool17.not = icmp eq i32 %srclen.addr.1, 0
  br i1 %tobool17.not, label %if.end16.cleanup_crit_edge, label %if.then18

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then18:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %buffer19 = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 4
  %9 = call ptr @memcpy(ptr %buffer19, ptr %src.addr.1, i32 %srclen.addr.1)
  %10 = ptrtoint ptr %buflen to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %srclen.addr.1, ptr %buflen, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then18, %if.end16.cleanup_crit_edge, %if.then.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nhpoly1305_units(ptr noundef %state, ptr noundef %key, ptr noundef %src, i32 noundef %srclen, ptr nocapture noundef readonly %nh_fn) unnamed_addr #0 align 64 {
entry:
  %tmp_hash = alloca [4 x i64], align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %nh_remaining = getelementptr inbounds %struct.nhpoly1305_state, ptr %state, i32 0, i32 3
  %0 = getelementptr inbounds [4 x i64], ptr %tmp_hash, i32 0, i32 1
  %1 = getelementptr inbounds [4 x i64], ptr %tmp_hash, i32 0, i32 2
  %2 = getelementptr inbounds [4 x i64], ptr %tmp_hash, i32 0, i32 3
  %nh_key = getelementptr inbounds %struct.nhpoly1305_key, ptr %key, i32 0, i32 1
  %nh_hash = getelementptr %struct.nhpoly1305_state, ptr %state, i32 0, i32 4
  %arrayidx17.1 = getelementptr %struct.nhpoly1305_state, ptr %state, i32 0, i32 4, i32 1
  %arrayidx17.2 = getelementptr %struct.nhpoly1305_state, ptr %state, i32 0, i32 4, i32 2
  %arrayidx17.3 = getelementptr %struct.nhpoly1305_state, ptr %state, i32 0, i32 4, i32 3
  br label %do.body

do.body:                                          ; preds = %if.end24.do.body_crit_edge, %entry
  %srclen.addr.0 = phi i32 [ %srclen, %entry ], [ %sub25, %if.end24.do.body_crit_edge ]
  %src.addr.0 = phi ptr [ %src, %entry ], [ %add.ptr, %if.end24.do.body_crit_edge ]
  %3 = ptrtoint ptr %nh_remaining to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %nh_remaining, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %5 = call i32 @llvm.umin.i32(i32 %srclen.addr.0, i32 1024)
  call void %nh_fn(ptr noundef %nh_key, ptr noundef %src.addr.0, i32 noundef %5, ptr noundef %nh_hash) #7
  %sub = sub nuw nsw i32 1024, %5
  %6 = ptrtoint ptr %nh_remaining to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %sub, ptr %nh_remaining, align 4
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tmp_hash) #7
  %sub5 = sub i32 1024, %4
  %7 = call i32 @llvm.umin.i32(i32 %srclen.addr.0, i32 %4)
  %div54 = lshr i32 %sub5, 2
  %arrayidx = getelementptr %struct.nhpoly1305_key, ptr %key, i32 0, i32 1, i32 %div54
  %8 = call ptr @memset(ptr %tmp_hash, i32 255, i32 32)
  call void %nh_fn(ptr noundef %arrayidx, ptr noundef %src.addr.0, i32 noundef %7, ptr noundef nonnull %tmp_hash) #7
  %9 = ptrtoint ptr %tmp_hash to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %tmp_hash, align 8
  %11 = call i64 @llvm.bswap.i64(i64 %10)
  %12 = ptrtoint ptr %nh_hash to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %nh_hash, align 8
  %14 = call i64 @llvm.bswap.i64(i64 %13) #7
  %add.i = add i64 %14, %11
  %15 = call i64 @llvm.bswap.i64(i64 %add.i) #7
  %16 = ptrtoint ptr %nh_hash to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %15, ptr %nh_hash, align 8
  %17 = ptrtoint ptr %0 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %0, align 8
  %19 = call i64 @llvm.bswap.i64(i64 %18)
  %20 = ptrtoint ptr %arrayidx17.1 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %arrayidx17.1, align 8
  %22 = call i64 @llvm.bswap.i64(i64 %21) #7
  %add.i.1 = add i64 %22, %19
  %23 = call i64 @llvm.bswap.i64(i64 %add.i.1) #7
  %24 = ptrtoint ptr %arrayidx17.1 to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %23, ptr %arrayidx17.1, align 8
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %1, align 8
  %27 = call i64 @llvm.bswap.i64(i64 %26)
  %28 = ptrtoint ptr %arrayidx17.2 to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %arrayidx17.2, align 8
  %30 = call i64 @llvm.bswap.i64(i64 %29) #7
  %add.i.2 = add i64 %30, %27
  %31 = call i64 @llvm.bswap.i64(i64 %add.i.2) #7
  %32 = ptrtoint ptr %arrayidx17.2 to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %31, ptr %arrayidx17.2, align 8
  %33 = ptrtoint ptr %2 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %2, align 8
  %35 = call i64 @llvm.bswap.i64(i64 %34)
  %36 = ptrtoint ptr %arrayidx17.3 to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %arrayidx17.3, align 8
  %38 = call i64 @llvm.bswap.i64(i64 %37) #7
  %add.i.3 = add i64 %38, %35
  %39 = call i64 @llvm.bswap.i64(i64 %add.i.3) #7
  %40 = ptrtoint ptr %arrayidx17.3 to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %39, ptr %arrayidx17.3, align 8
  %41 = ptrtoint ptr %nh_remaining to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %nh_remaining, align 4
  %sub20 = sub i32 %42, %7
  store i32 %sub20, ptr %nh_remaining, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tmp_hash) #7
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %43 = phi i32 [ %sub20, %if.else ], [ %sub, %if.then ]
  %bytes.0 = phi i32 [ %7, %if.else ], [ %5, %if.then ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp22 = icmp eq i32 %43, 0
  br i1 %cmp22, label %if.then23, label %if.end.if.end24_crit_edge

if.end.if.end24_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

if.then23:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @poly1305_core_blocks(ptr noundef %state, ptr noundef %key, ptr noundef %nh_hash, i32 noundef 2, i32 noundef 1) #7
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.end.if.end24_crit_edge
  %add.ptr = getelementptr i8, ptr %src.addr.0, i32 %bytes.0
  %sub25 = sub i32 %srclen.addr.0, %bytes.0
  %tobool.not = icmp eq i32 %sub25, 0
  br i1 %tobool.not, label %do.end, label %if.end24.do.body_crit_edge

if.end24.do.body_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.end:                                           ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @crypto_nhpoly1305_update(ptr noundef %desc, ptr noundef %src, i32 noundef %srclen) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 0, i32 2
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc, align 8
  %__crt_ctx.i.i.i = getelementptr inbounds %struct.crypto_shash, ptr %1, i32 1
  %buflen.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 6
  %2 = ptrtoint ptr %buflen.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %buflen.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %entry.if.end11.i_crit_edge, label %if.then.i

entry.if.end11.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i

if.then.i:                                        ; preds = %entry
  %sub.i = sub i32 16, %3
  %4 = tail call i32 @llvm.umin.i32(i32 %sub.i, i32 %srclen) #7
  %arrayidx.i = getelementptr %struct.nhpoly1305_state, ptr %__ctx.i.i, i32 0, i32 1, i32 %3
  %5 = call ptr @memcpy(ptr %arrayidx.i, ptr %src, i32 %4)
  %6 = ptrtoint ptr %buflen.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %buflen.i, align 8
  %add.i = add i32 %7, %4
  store i32 %add.i, ptr %buflen.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %add.i)
  %cmp6.i = icmp ult i32 %add.i, 16
  br i1 %cmp6.i, label %if.then.i.crypto_nhpoly1305_update_helper.exit_crit_edge, label %if.end.i

if.then.i.crypto_nhpoly1305_update_helper.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %crypto_nhpoly1305_update_helper.exit

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %buffer.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 4
  tail call fastcc void @nhpoly1305_units(ptr noundef %__ctx.i.i, ptr noundef %__crt_ctx.i.i.i, ptr noundef %buffer.i, i32 noundef 16, ptr noundef nonnull @nh_generic) #7
  %8 = ptrtoint ptr %buflen.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %buflen.i, align 8
  %add.ptr.i = getelementptr i8, ptr %src, i32 %4
  %sub10.i = sub i32 %srclen, %4
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.end.i, %entry.if.end11.i_crit_edge
  %srclen.addr.0.i = phi i32 [ %sub10.i, %if.end.i ], [ %srclen, %entry.if.end11.i_crit_edge ]
  %src.addr.0.i = phi ptr [ %add.ptr.i, %if.end.i ], [ %src, %entry.if.end11.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %srclen.addr.0.i)
  %cmp12.i = icmp ugt i32 %srclen.addr.0.i, 15
  br i1 %cmp12.i, label %if.then13.i, label %if.end11.i.if.end16.i_crit_edge

if.end11.i.if.end16.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16.i

if.then13.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  %and.i = and i32 %srclen.addr.0.i, -16
  tail call fastcc void @nhpoly1305_units(ptr noundef %__ctx.i.i, ptr noundef %__crt_ctx.i.i.i, ptr noundef %src.addr.0.i, i32 noundef %and.i, ptr noundef nonnull @nh_generic) #7
  %add.ptr14.i = getelementptr i8, ptr %src.addr.0.i, i32 %and.i
  %sub15.i = and i32 %srclen.addr.0.i, 15
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then13.i, %if.end11.i.if.end16.i_crit_edge
  %srclen.addr.1.i = phi i32 [ %sub15.i, %if.then13.i ], [ %srclen.addr.0.i, %if.end11.i.if.end16.i_crit_edge ]
  %src.addr.1.i = phi ptr [ %add.ptr14.i, %if.then13.i ], [ %src.addr.0.i, %if.end11.i.if.end16.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %srclen.addr.1.i)
  %tobool17.not.i = icmp eq i32 %srclen.addr.1.i, 0
  br i1 %tobool17.not.i, label %if.end16.i.crypto_nhpoly1305_update_helper.exit_crit_edge, label %if.then18.i

if.end16.i.crypto_nhpoly1305_update_helper.exit_crit_edge: ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %crypto_nhpoly1305_update_helper.exit

if.then18.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #9
  %buffer19.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 4
  %9 = call ptr @memcpy(ptr %buffer19.i, ptr %src.addr.1.i, i32 %srclen.addr.1.i)
  %10 = ptrtoint ptr %buflen.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %srclen.addr.1.i, ptr %buflen.i, align 8
  br label %crypto_nhpoly1305_update_helper.exit

crypto_nhpoly1305_update_helper.exit:             ; preds = %if.then18.i, %if.end16.i.crypto_nhpoly1305_update_helper.exit_crit_edge, %if.then.i.crypto_nhpoly1305_update_helper.exit_crit_edge
  ret i32 0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nh_generic(ptr nocapture noundef readonly %key, ptr nocapture noundef readonly %message, i32 noundef %message_len, ptr nocapture noundef writeonly %hash) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %message_len)
  %tobool.not138 = icmp eq i32 %message_len, 0
  br i1 %tobool.not138, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %key.addr.0145 = phi ptr [ %arrayidx15, %while.body.while.body_crit_edge ], [ %key, %entry.while.body_crit_edge ]
  %message.addr.0144 = phi ptr [ %add.ptr79, %while.body.while.body_crit_edge ], [ %message, %entry.while.body_crit_edge ]
  %message_len.addr.0143 = phi i32 [ %sub, %while.body.while.body_crit_edge ], [ %message_len, %entry.while.body_crit_edge ]
  %sums.sroa.0.0142 = phi i64 [ %add50, %while.body.while.body_crit_edge ], [ 0, %entry.while.body_crit_edge ]
  %sums.sroa.18.0141 = phi i64 [ %add77, %while.body.while.body_crit_edge ], [ 0, %entry.while.body_crit_edge ]
  %sums.sroa.13.0140 = phi i64 [ %add68, %while.body.while.body_crit_edge ], [ 0, %entry.while.body_crit_edge ]
  %sums.sroa.8.0139 = phi i64 [ %add59, %while.body.while.body_crit_edge ], [ 0, %entry.while.body_crit_edge ]
  %0 = ptrtoint ptr %message.addr.0144 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %message.addr.0144, align 1
  %2 = tail call i32 @llvm.bswap.i32(i32 %1) #7
  %add.ptr4 = getelementptr i8, ptr %message.addr.0144, i32 4
  %3 = ptrtoint ptr %add.ptr4 to i32
  call void @__asan_loadN_noabort(i32 %3, i32 4)
  %4 = load i32, ptr %add.ptr4, align 1
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #7
  %add.ptr6 = getelementptr i8, ptr %message.addr.0144, i32 8
  %6 = ptrtoint ptr %add.ptr6 to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %add.ptr6, align 1
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #7
  %add.ptr8 = getelementptr i8, ptr %message.addr.0144, i32 12
  %9 = ptrtoint ptr %add.ptr8 to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %add.ptr8, align 1
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #7
  %12 = ptrtoint ptr %key.addr.0145 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %key.addr.0145, align 4
  %add = add i32 %13, %2
  %conv = zext i32 %add to i64
  %arrayidx10 = getelementptr i32, ptr %key.addr.0145, i32 2
  %14 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx10, align 4
  %add11 = add i32 %15, %8
  %conv12 = zext i32 %add11 to i64
  %mul = mul nuw i64 %conv12, %conv
  %add14 = add i64 %mul, %sums.sroa.0.0142
  %arrayidx15 = getelementptr i32, ptr %key.addr.0145, i32 4
  %16 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx15, align 4
  %add16 = add i32 %17, %2
  %conv17 = zext i32 %add16 to i64
  %arrayidx18 = getelementptr i32, ptr %key.addr.0145, i32 6
  %18 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx18, align 4
  %add19 = add i32 %19, %8
  %conv20 = zext i32 %add19 to i64
  %mul21 = mul nuw i64 %conv20, %conv17
  %add23 = add i64 %mul21, %sums.sroa.8.0139
  %arrayidx24 = getelementptr i32, ptr %key.addr.0145, i32 8
  %20 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx24, align 4
  %add25 = add i32 %21, %2
  %conv26 = zext i32 %add25 to i64
  %arrayidx27 = getelementptr i32, ptr %key.addr.0145, i32 10
  %22 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx27, align 4
  %add28 = add i32 %23, %8
  %conv29 = zext i32 %add28 to i64
  %mul30 = mul nuw i64 %conv29, %conv26
  %add32 = add i64 %mul30, %sums.sroa.13.0140
  %arrayidx33 = getelementptr i32, ptr %key.addr.0145, i32 12
  %24 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx33, align 4
  %add34 = add i32 %25, %2
  %conv35 = zext i32 %add34 to i64
  %arrayidx36 = getelementptr i32, ptr %key.addr.0145, i32 14
  %26 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx36, align 4
  %add37 = add i32 %27, %8
  %conv38 = zext i32 %add37 to i64
  %mul39 = mul nuw i64 %conv38, %conv35
  %add41 = add i64 %mul39, %sums.sroa.18.0141
  %arrayidx42 = getelementptr i32, ptr %key.addr.0145, i32 1
  %28 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx42, align 4
  %add43 = add i32 %29, %5
  %conv44 = zext i32 %add43 to i64
  %arrayidx45 = getelementptr i32, ptr %key.addr.0145, i32 3
  %30 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx45, align 4
  %add46 = add i32 %31, %11
  %conv47 = zext i32 %add46 to i64
  %mul48 = mul nuw i64 %conv47, %conv44
  %add50 = add i64 %add14, %mul48
  %arrayidx51 = getelementptr i32, ptr %key.addr.0145, i32 5
  %32 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx51, align 4
  %add52 = add i32 %33, %5
  %conv53 = zext i32 %add52 to i64
  %arrayidx54 = getelementptr i32, ptr %key.addr.0145, i32 7
  %34 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx54, align 4
  %add55 = add i32 %35, %11
  %conv56 = zext i32 %add55 to i64
  %mul57 = mul nuw i64 %conv56, %conv53
  %add59 = add i64 %add23, %mul57
  %arrayidx60 = getelementptr i32, ptr %key.addr.0145, i32 9
  %36 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx60, align 4
  %add61 = add i32 %37, %5
  %conv62 = zext i32 %add61 to i64
  %arrayidx63 = getelementptr i32, ptr %key.addr.0145, i32 11
  %38 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx63, align 4
  %add64 = add i32 %39, %11
  %conv65 = zext i32 %add64 to i64
  %mul66 = mul nuw i64 %conv65, %conv62
  %add68 = add i64 %add32, %mul66
  %arrayidx69 = getelementptr i32, ptr %key.addr.0145, i32 13
  %40 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx69, align 4
  %add70 = add i32 %41, %5
  %conv71 = zext i32 %add70 to i64
  %arrayidx72 = getelementptr i32, ptr %key.addr.0145, i32 15
  %42 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx72, align 4
  %add73 = add i32 %43, %11
  %conv74 = zext i32 %add73 to i64
  %mul75 = mul nuw i64 %conv74, %conv71
  %add77 = add i64 %add41, %mul75
  %add.ptr79 = getelementptr i8, ptr %message.addr.0144, i32 16
  %sub = add i32 %message_len.addr.0143, -16
  %tobool.not = icmp eq i32 %sub, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %sums.sroa.8.0.lcssa = phi i64 [ 0, %entry.while.end_crit_edge ], [ %add59, %while.body.while.end_crit_edge ]
  %sums.sroa.13.0.lcssa = phi i64 [ 0, %entry.while.end_crit_edge ], [ %add68, %while.body.while.end_crit_edge ]
  %sums.sroa.18.0.lcssa = phi i64 [ 0, %entry.while.end_crit_edge ], [ %add77, %while.body.while.end_crit_edge ]
  %sums.sroa.0.0.lcssa = phi i64 [ 0, %entry.while.end_crit_edge ], [ %add50, %while.body.while.end_crit_edge ]
  %44 = tail call i64 @llvm.bswap.i64(i64 %sums.sroa.0.0.lcssa)
  %45 = ptrtoint ptr %hash to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %44, ptr %hash, align 8
  %46 = tail call i64 @llvm.bswap.i64(i64 %sums.sroa.8.0.lcssa)
  %arrayidx83 = getelementptr i64, ptr %hash, i32 1
  %47 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 %46, ptr %arrayidx83, align 8
  %48 = tail call i64 @llvm.bswap.i64(i64 %sums.sroa.13.0.lcssa)
  %arrayidx85 = getelementptr i64, ptr %hash, i32 2
  %49 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 %48, ptr %arrayidx85, align 8
  %50 = tail call i64 @llvm.bswap.i64(i64 %sums.sroa.18.0.lcssa)
  %arrayidx87 = getelementptr i64, ptr %hash, i32 3
  %51 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %50, ptr %arrayidx87, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @crypto_nhpoly1305_final_helper(ptr noundef %desc, ptr noundef %dst, ptr nocapture noundef readonly %nh_fn) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 0, i32 2
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc, align 8
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_shash, ptr %1, i32 1
  %buflen = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 6
  %2 = ptrtoint ptr %buflen to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %buflen, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %buffer = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 4
  %arrayidx = getelementptr %struct.nhpoly1305_state, ptr %__ctx.i, i32 0, i32 1, i32 %3
  %sub = sub i32 16, %3
  %4 = call ptr @memset(ptr %arrayidx, i32 0, i32 %sub)
  tail call fastcc void @nhpoly1305_units(ptr noundef %__ctx.i, ptr noundef %__crt_ctx.i.i, ptr noundef %buffer, i32 noundef 16, ptr noundef %nh_fn)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %nh_remaining = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 6, i32 1
  %5 = ptrtoint ptr %nh_remaining to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %nh_remaining, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool5.not = icmp eq i32 %6, 0
  br i1 %tobool5.not, label %if.end.if.end7_crit_edge, label %if.then6

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %nh_hash.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 7
  tail call void @poly1305_core_blocks(ptr noundef %__ctx.i, ptr noundef %__crt_ctx.i.i, ptr noundef %nh_hash.i, i32 noundef 2, i32 noundef 1) #7
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end.if.end7_crit_edge
  tail call void @poly1305_core_emit(ptr noundef %__ctx.i, ptr noundef null, ptr noundef %dst) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @poly1305_core_emit(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @crypto_nhpoly1305_final(ptr noundef %desc, ptr noundef %dst) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 0, i32 2
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc, align 8
  %__crt_ctx.i.i.i = getelementptr inbounds %struct.crypto_shash, ptr %1, i32 1
  %buflen.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 6
  %2 = ptrtoint ptr %buflen.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %buflen.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %buffer.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 4
  %arrayidx.i = getelementptr %struct.nhpoly1305_state, ptr %__ctx.i.i, i32 0, i32 1, i32 %3
  %sub.i = sub i32 16, %3
  %4 = call ptr @memset(ptr %arrayidx.i, i32 0, i32 %sub.i)
  tail call fastcc void @nhpoly1305_units(ptr noundef %__ctx.i.i, ptr noundef %__crt_ctx.i.i.i, ptr noundef %buffer.i, i32 noundef 16, ptr noundef nonnull @nh_generic) #7
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %nh_remaining.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 6, i32 1
  %5 = ptrtoint ptr %nh_remaining.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %nh_remaining.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool5.not.i = icmp eq i32 %6, 0
  br i1 %tobool5.not.i, label %if.end.i.crypto_nhpoly1305_final_helper.exit_crit_edge, label %if.then6.i

if.end.i.crypto_nhpoly1305_final_helper.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %crypto_nhpoly1305_final_helper.exit

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %nh_hash.i.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 7
  tail call void @poly1305_core_blocks(ptr noundef %__ctx.i.i, ptr noundef %__crt_ctx.i.i.i, ptr noundef %nh_hash.i.i, i32 noundef 2, i32 noundef 1) #7
  br label %crypto_nhpoly1305_final_helper.exit

crypto_nhpoly1305_final_helper.exit:              ; preds = %if.then6.i, %if.end.i.crypto_nhpoly1305_final_helper.exit_crit_edge
  tail call void @poly1305_core_emit(ptr noundef %__ctx.i.i, ptr noundef null, ptr noundef %dst) #7
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @nhpoly1305_mod_exit() #5 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @crypto_unregister_shash(ptr noundef nonnull @nhpoly1305_alg) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_shash(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @nhpoly1305_mod_init() #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @crypto_register_shash(ptr noundef nonnull @nhpoly1305_alg) #7
  ret i32 %call
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @poly1305_core_blocks(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_shash(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !21, !23, !25, !26, !28, !29}
!llvm.module.flags = !{!31, !32, !33, !34, !35, !36, !37, !38}
!llvm.ident = !{!39}

!0 = !{ptr @__ksymtab_crypto_nhpoly1305_setkey, !1, !"__ksymtab_crypto_nhpoly1305_setkey", i1 false, i1 false}
!1 = !{!"../crypto/nhpoly1305.c", i32 142, i32 1}
!2 = !{ptr @__ksymtab_crypto_nhpoly1305_init, !3, !"__ksymtab_crypto_nhpoly1305_init", i1 false, i1 false}
!3 = !{!"../crypto/nhpoly1305.c", i32 153, i32 1}
!4 = !{ptr @__ksymtab_crypto_nhpoly1305_update_helper, !5, !"__ksymtab_crypto_nhpoly1305_update_helper", i1 false, i1 false}
!5 = !{!"../crypto/nhpoly1305.c", i32 189, i32 1}
!6 = !{ptr @__ksymtab_crypto_nhpoly1305_update, !7, !"__ksymtab_crypto_nhpoly1305_update", i1 false, i1 false}
!7 = !{!"../crypto/nhpoly1305.c", i32 196, i32 1}
!8 = !{ptr @__ksymtab_crypto_nhpoly1305_final_helper, !9, !"__ksymtab_crypto_nhpoly1305_final_helper", i1 false, i1 false}
!9 = !{!"../crypto/nhpoly1305.c", i32 216, i32 1}
!10 = !{ptr @__ksymtab_crypto_nhpoly1305_final, !11, !"__ksymtab_crypto_nhpoly1305_final", i1 false, i1 false}
!11 = !{!"../crypto/nhpoly1305.c", i32 222, i32 1}
!12 = !{ptr @__initcall__kmod_nhpoly1305__182_248_nhpoly1305_mod_init4, !13, !"__initcall__kmod_nhpoly1305__182_248_nhpoly1305_mod_init4", i1 false, i1 false}
!13 = !{!"../crypto/nhpoly1305.c", i32 248, i32 1}
!14 = !{ptr @__exitcall_nhpoly1305_mod_exit, !15, !"__exitcall_nhpoly1305_mod_exit", i1 false, i1 false}
!15 = !{!"../crypto/nhpoly1305.c", i32 249, i32 1}
!16 = !{ptr @__UNIQUE_ID_description183, !17, !"__UNIQUE_ID_description183", i1 false, i1 false}
!17 = !{!"../crypto/nhpoly1305.c", i32 251, i32 1}
!18 = !{ptr @__UNIQUE_ID_file184, !19, !"__UNIQUE_ID_file184", i1 false, i1 false}
!19 = !{!"../crypto/nhpoly1305.c", i32 252, i32 1}
!20 = !{ptr @__UNIQUE_ID_license185, !19, !"__UNIQUE_ID_license185", i1 false, i1 false}
!21 = !{ptr @__UNIQUE_ID_author186, !22, !"__UNIQUE_ID_author186", i1 false, i1 false}
!22 = !{!"../crypto/nhpoly1305.c", i32 253, i32 1}
!23 = !{ptr @__UNIQUE_ID_alias_userspace187, !24, !"__UNIQUE_ID_alias_userspace187", i1 false, i1 false}
!24 = !{!"../crypto/nhpoly1305.c", i32 254, i32 1}
!25 = !{ptr @__UNIQUE_ID_alias_crypto188, !24, !"__UNIQUE_ID_alias_crypto188", i1 false, i1 false}
!26 = !{ptr @__UNIQUE_ID_alias_userspace189, !27, !"__UNIQUE_ID_alias_userspace189", i1 false, i1 false}
!27 = !{!"../crypto/nhpoly1305.c", i32 255, i32 1}
!28 = !{ptr @__UNIQUE_ID_alias_crypto190, !27, !"__UNIQUE_ID_alias_crypto190", i1 false, i1 false}
!29 = !{ptr @nhpoly1305_alg, !30, !"nhpoly1305_alg", i1 false, i1 false}
!30 = !{!"../crypto/nhpoly1305.c", i32 224, i32 25}
!31 = !{i32 1, !"wchar_size", i32 2}
!32 = !{i32 1, !"min_enum_size", i32 4}
!33 = !{i32 8, !"branch-target-enforcement", i32 0}
!34 = !{i32 8, !"sign-return-address", i32 0}
!35 = !{i32 8, !"sign-return-address-all", i32 0}
!36 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!37 = !{i32 7, !"uwtable", i32 1}
!38 = !{i32 7, !"frame-pointer", i32 2}
!39 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
