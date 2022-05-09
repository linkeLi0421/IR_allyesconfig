; ModuleID = '/llk/IR_all_yes/arch/arm/crypto/sha512-glue.c_pt.bc'
source_filename = "../arch/arm/crypto/sha512-glue.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.sha512_state = type { [8 x i64], [2 x i64], [128 x i8] }
%struct.crypto_shash = type { i32, [124 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }

@__UNIQUE_ID_description173 = internal constant [71 x i8] c"sha512_arm.description=Accelerated SHA-384/SHA-512 secure hash for ARM\00", section ".modinfo", align 1
@__UNIQUE_ID_author174 = internal constant [61 x i8] c"sha512_arm.author=Ard Biesheuvel <ard.biesheuvel@linaro.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_file175 = internal constant [43 x i8] c"sha512_arm.file=arch/arm/crypto/sha512-arm\00", section ".modinfo", align 1
@__UNIQUE_ID_license176 = internal constant [26 x i8] c"sha512_arm.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace177 = internal constant [24 x i8] c"sha512_arm.alias=sha384\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto178 = internal constant [31 x i8] c"sha512_arm.alias=crypto-sha384\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace179 = internal constant [24 x i8] c"sha512_arm.alias=sha512\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto180 = internal constant [31 x i8] c"sha512_arm.alias=crypto-sha512\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace181 = internal constant [28 x i8] c"sha512_arm.alias=sha384-arm\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto182 = internal constant [35 x i8] c"sha512_arm.alias=crypto-sha384-arm\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace183 = internal constant [28 x i8] c"sha512_arm.alias=sha512-arm\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto184 = internal constant [35 x i8] c"sha512_arm.alias=crypto-sha512-arm\00", section ".modinfo", align 1
@sha512_arm_algs = internal global [2 x %struct.shash_alg] [%struct.shash_alg { ptr @sha384_base_init, ptr @sha512_arm_update, ptr @sha512_arm_final, ptr @sha512_arm_finup, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 208, [84 x i8] undef, i32 48, i32 0, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 128, i32 0, i32 0, i32 250, %struct.refcount_struct zeroinitializer, [128 x i8] c"sha384\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"sha384-arm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.44 zeroinitializer, [120 x i8] undef } }, %struct.shash_alg { ptr @sha512_base_init, ptr @sha512_arm_update, ptr @sha512_arm_final, ptr @sha512_arm_finup, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 208, [84 x i8] undef, i32 64, i32 0, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 128, i32 0, i32 0, i32 250, %struct.refcount_struct zeroinitializer, [128 x i8] c"sha512\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"sha512-arm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.44 zeroinitializer, [120 x i8] undef } }], align 128
@elf_hwcap = external dso_local local_unnamed_addr global i32, align 4
@sha512_neon_algs = external dso_local global [2 x %struct.shash_alg], align 128
@__initcall__kmod_sha512_arm__185_115_sha512_arm_mod_init6 = internal global ptr @sha512_arm_mod_init, section ".initcall6.init", align 4
@__exitcall_sha512_arm_mod_fini = internal global ptr @sha512_arm_mod_fini, section ".exitcall.exit", align 4
@llvm.compiler.used = appending global [15 x ptr] [ptr @__UNIQUE_ID_alias_crypto178, ptr @__UNIQUE_ID_alias_crypto180, ptr @__UNIQUE_ID_alias_crypto182, ptr @__UNIQUE_ID_alias_crypto184, ptr @__UNIQUE_ID_alias_userspace177, ptr @__UNIQUE_ID_alias_userspace179, ptr @__UNIQUE_ID_alias_userspace181, ptr @__UNIQUE_ID_alias_userspace183, ptr @__UNIQUE_ID_author174, ptr @__UNIQUE_ID_description173, ptr @__UNIQUE_ID_file175, ptr @__UNIQUE_ID_license176, ptr @__exitcall_sha512_arm_mod_fini, ptr @__initcall__kmod_sha512_arm__185_115_sha512_arm_mod_init6, ptr @sha512_arm_mod_fini], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sha512_arm_update(ptr noundef %desc, ptr noundef %data, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 0, i32 2
  %count.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 9
  %0 = ptrtoint ptr %count.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %count.i, align 8
  %2 = trunc i64 %1 to i32
  %conv.i = and i32 %2, 127
  %conv1.i = zext i32 %len to i64
  %add.i = add i64 %1, %conv1.i
  store i64 %add.i, ptr %count.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %conv1.i)
  %cmp.i = icmp ult i64 %add.i, %conv1.i
  br i1 %cmp.i, label %if.then.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx9.i = getelementptr %struct.shash_desc, ptr %desc, i32 10
  %3 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %arrayidx9.i, align 8
  %inc.i = add i64 %4, 1
  store i64 %inc.i, ptr %arrayidx9.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %add10.i = add i32 %conv.i, %len
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %add10.i)
  %cmp11.i = icmp ugt i32 %add10.i, 127
  br i1 %cmp11.i, label %if.then14.i, label %if.end.i.if.end27.i_crit_edge, !prof !34

if.end.i.if.end27.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end27.i

if.then14.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i)
  %tobool15.not.i = icmp eq i32 %conv.i, 0
  br i1 %tobool15.not.i, label %if.then14.i.if.end21.i_crit_edge, label %if.then16.i

if.then14.i.if.end21.i_crit_edge:                 ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21.i

if.then16.i:                                      ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #7
  %sub.i = sub nuw nsw i32 128, %conv.i
  %buf.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 11
  %add.ptr.i = getelementptr i8, ptr %buf.i, i32 %conv.i
  %5 = call ptr @memcpy(ptr %add.ptr.i, ptr %data, i32 %sub.i)
  %add.ptr17.i = getelementptr i8, ptr %data, i32 %sub.i
  %sub18.i = sub i32 %len, %sub.i
  tail call void @sha512_block_data_order(ptr noundef %__ctx.i.i, ptr noundef %buf.i, i32 noundef 1) #5
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then16.i, %if.then14.i.if.end21.i_crit_edge
  %len.addr.0.i = phi i32 [ %sub18.i, %if.then16.i ], [ %len, %if.then14.i.if.end21.i_crit_edge ]
  %data.addr.0.i = phi ptr [ %add.ptr17.i, %if.then16.i ], [ %data, %if.then14.i.if.end21.i_crit_edge ]
  %rem22.i = and i32 %len.addr.0.i, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %len.addr.0.i)
  %tobool23.not.i = icmp ult i32 %len.addr.0.i, 128
  br i1 %tobool23.not.i, label %if.end21.i.if.end27.i_crit_edge, label %if.then24.i

if.end21.i.if.end27.i_crit_edge:                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end27.i

if.then24.i:                                      ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #7
  %div1.i = lshr i32 %len.addr.0.i, 7
  tail call void @sha512_block_data_order(ptr noundef %__ctx.i.i, ptr noundef %data.addr.0.i, i32 noundef %div1.i) #5
  %mul.i = and i32 %len.addr.0.i, -128
  %add.ptr25.i = getelementptr i8, ptr %data.addr.0.i, i32 %mul.i
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.then24.i, %if.end21.i.if.end27.i_crit_edge, %if.end.i.if.end27.i_crit_edge
  %len.addr.1.i = phi i32 [ %len, %if.end.i.if.end27.i_crit_edge ], [ %rem22.i, %if.then24.i ], [ %rem22.i, %if.end21.i.if.end27.i_crit_edge ]
  %partial.0.i = phi i32 [ %conv.i, %if.end.i.if.end27.i_crit_edge ], [ 0, %if.then24.i ], [ 0, %if.end21.i.if.end27.i_crit_edge ]
  %data.addr.2.i = phi ptr [ %data, %if.end.i.if.end27.i_crit_edge ], [ %add.ptr25.i, %if.then24.i ], [ %data.addr.0.i, %if.end21.i.if.end27.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.addr.1.i)
  %tobool28.not.i = icmp eq i32 %len.addr.1.i, 0
  br i1 %tobool28.not.i, label %if.end27.i.sha512_base_do_update.exit_crit_edge, label %if.then29.i

if.end27.i.sha512_base_do_update.exit_crit_edge:  ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sha512_base_do_update.exit

if.then29.i:                                      ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #7
  %buf30.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 11
  %add.ptr32.i = getelementptr i8, ptr %buf30.i, i32 %partial.0.i
  %6 = call ptr @memcpy(ptr %add.ptr32.i, ptr %data.addr.2.i, i32 %len.addr.1.i)
  br label %sha512_base_do_update.exit

sha512_base_do_update.exit:                       ; preds = %if.then29.i, %if.end27.i.sha512_base_do_update.exit_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sha512_block_data_order(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sha512_arm_finup(ptr noundef %desc, ptr noundef %data, i32 noundef %len, ptr nocapture noundef writeonly %out) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 0, i32 2
  %count.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 9
  %0 = ptrtoint ptr %count.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %count.i, align 8
  %2 = trunc i64 %1 to i32
  %conv.i = and i32 %2, 127
  %conv1.i = zext i32 %len to i64
  %add.i = add i64 %1, %conv1.i
  store i64 %add.i, ptr %count.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %conv1.i)
  %cmp.i = icmp ult i64 %add.i, %conv1.i
  br i1 %cmp.i, label %if.then.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx9.i = getelementptr %struct.shash_desc, ptr %desc, i32 10
  %3 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %arrayidx9.i, align 8
  %inc.i = add i64 %4, 1
  store i64 %inc.i, ptr %arrayidx9.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %add10.i = add i32 %conv.i, %len
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %add10.i)
  %cmp11.i = icmp ugt i32 %add10.i, 127
  br i1 %cmp11.i, label %if.then14.i, label %if.end.i.if.end27.i_crit_edge, !prof !34

if.end.i.if.end27.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end27.i

if.then14.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i)
  %tobool15.not.i = icmp eq i32 %conv.i, 0
  br i1 %tobool15.not.i, label %if.then14.i.if.end21.i_crit_edge, label %if.then16.i

if.then14.i.if.end21.i_crit_edge:                 ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21.i

if.then16.i:                                      ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #7
  %sub.i = sub nuw nsw i32 128, %conv.i
  %buf.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 11
  %add.ptr.i = getelementptr i8, ptr %buf.i, i32 %conv.i
  %5 = call ptr @memcpy(ptr %add.ptr.i, ptr %data, i32 %sub.i)
  %add.ptr17.i = getelementptr i8, ptr %data, i32 %sub.i
  %sub18.i = sub i32 %len, %sub.i
  tail call void @sha512_block_data_order(ptr noundef %__ctx.i.i, ptr noundef %buf.i, i32 noundef 1) #5
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then16.i, %if.then14.i.if.end21.i_crit_edge
  %len.addr.0.i = phi i32 [ %sub18.i, %if.then16.i ], [ %len, %if.then14.i.if.end21.i_crit_edge ]
  %data.addr.0.i = phi ptr [ %add.ptr17.i, %if.then16.i ], [ %data, %if.then14.i.if.end21.i_crit_edge ]
  %rem22.i = and i32 %len.addr.0.i, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %len.addr.0.i)
  %tobool23.not.i = icmp ult i32 %len.addr.0.i, 128
  br i1 %tobool23.not.i, label %if.end21.i.if.end27.i_crit_edge, label %if.then24.i

if.end21.i.if.end27.i_crit_edge:                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end27.i

if.then24.i:                                      ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #7
  %div1.i = lshr i32 %len.addr.0.i, 7
  tail call void @sha512_block_data_order(ptr noundef %__ctx.i.i, ptr noundef %data.addr.0.i, i32 noundef %div1.i) #5
  %mul.i = and i32 %len.addr.0.i, -128
  %add.ptr25.i = getelementptr i8, ptr %data.addr.0.i, i32 %mul.i
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.then24.i, %if.end21.i.if.end27.i_crit_edge, %if.end.i.if.end27.i_crit_edge
  %len.addr.1.i = phi i32 [ %len, %if.end.i.if.end27.i_crit_edge ], [ %rem22.i, %if.then24.i ], [ %rem22.i, %if.end21.i.if.end27.i_crit_edge ]
  %partial.0.i = phi i32 [ %conv.i, %if.end.i.if.end27.i_crit_edge ], [ 0, %if.then24.i ], [ 0, %if.end21.i.if.end27.i_crit_edge ]
  %data.addr.2.i = phi ptr [ %data, %if.end.i.if.end27.i_crit_edge ], [ %add.ptr25.i, %if.then24.i ], [ %data.addr.0.i, %if.end21.i.if.end27.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.addr.1.i)
  %tobool28.not.i = icmp eq i32 %len.addr.1.i, 0
  br i1 %tobool28.not.i, label %if.end27.i.sha512_base_do_update.exit_crit_edge, label %if.then29.i

if.end27.i.sha512_base_do_update.exit_crit_edge:  ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sha512_base_do_update.exit

if.then29.i:                                      ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #7
  %buf30.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 11
  %add.ptr32.i = getelementptr i8, ptr %buf30.i, i32 %partial.0.i
  %6 = call ptr @memcpy(ptr %add.ptr32.i, ptr %data.addr.2.i, i32 %len.addr.1.i)
  br label %sha512_base_do_update.exit

sha512_base_do_update.exit:                       ; preds = %if.then29.i, %if.end27.i.sha512_base_do_update.exit_crit_edge
  %buf.i.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 11
  %7 = ptrtoint ptr %count.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %count.i, align 8
  %9 = trunc i64 %8 to i32
  %conv.i.i = and i32 %9, 127
  %inc.i.i = add nuw nsw i32 %conv.i.i, 1
  %arrayidx2.i.i = getelementptr %struct.sha512_state, ptr %__ctx.i.i, i32 0, i32 2, i32 %conv.i.i
  %10 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -128, ptr %arrayidx2.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 111, i32 %conv.i.i)
  %cmp.i.i = icmp ugt i32 %conv.i.i, 111
  br i1 %cmp.i.i, label %if.then.i.i, label %sha512_base_do_update.exit.sha512_base_do_finalize.exit.i_crit_edge

sha512_base_do_update.exit.sha512_base_do_finalize.exit.i_crit_edge: ; preds = %sha512_base_do_update.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %sha512_base_do_finalize.exit.i

if.then.i.i:                                      ; preds = %sha512_base_do_update.exit
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr6.i.i = getelementptr i8, ptr %buf.i.i, i32 %inc.i.i
  %sub.i.i = xor i32 %conv.i.i, 127
  %11 = call ptr @memset(ptr %add.ptr6.i.i, i32 0, i32 %sub.i.i)
  tail call void @sha512_block_data_order(ptr noundef %__ctx.i.i, ptr noundef %buf.i.i, i32 noundef 1) #5
  br label %sha512_base_do_finalize.exit.i

sha512_base_do_finalize.exit.i:                   ; preds = %if.then.i.i, %sha512_base_do_update.exit.sha512_base_do_finalize.exit.i_crit_edge
  %partial.0.i.i = phi i32 [ 0, %if.then.i.i ], [ %inc.i.i, %sha512_base_do_update.exit.sha512_base_do_finalize.exit.i_crit_edge ]
  %add.ptr.i.i = getelementptr %struct.shash_desc, ptr %desc, i32 25
  %add.ptr11.i.i = getelementptr i8, ptr %buf.i.i, i32 %partial.0.i.i
  %sub12.i.i = sub nuw nsw i32 112, %partial.0.i.i
  %12 = call ptr @memset(ptr %add.ptr11.i.i, i32 0, i32 %sub12.i.i)
  %arrayidx14.i.i = getelementptr %struct.shash_desc, ptr %desc, i32 10
  %13 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %arrayidx14.i.i, align 8
  %15 = ptrtoint ptr %count.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %count.i, align 8
  %or.i.i = tail call i64 @llvm.fshl.i64(i64 %14, i64 %16, i64 3) #5
  %17 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %or.i.i, ptr %add.ptr.i.i, align 8
  %shl20.i.i = shl i64 %16, 3
  %arrayidx21.i.i = getelementptr %struct.shash_desc, ptr %desc, i32 26
  %18 = ptrtoint ptr %arrayidx21.i.i to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %shl20.i.i, ptr %arrayidx21.i.i, align 8
  tail call void @sha512_block_data_order(ptr noundef %__ctx.i.i, ptr noundef %buf.i.i, i32 noundef 1) #5
  %19 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %desc, align 8
  %__crt_alg.i.i.i.i = getelementptr inbounds %struct.crypto_shash, ptr %20, i32 0, i32 2, i32 3
  %21 = ptrtoint ptr %__crt_alg.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %__crt_alg.i.i.i.i, align 4
  %digestsize.i.i.i = getelementptr i8, ptr %22, i32 -128
  %23 = ptrtoint ptr %digestsize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %digestsize.i.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp.not1.i.i = icmp eq i32 %24, 0
  br i1 %cmp.not1.i.i, label %sha512_base_do_finalize.exit.i.sha512_arm_final.exit_crit_edge, label %sha512_base_do_finalize.exit.i.for.body.i.i_crit_edge

sha512_base_do_finalize.exit.i.for.body.i.i_crit_edge: ; preds = %sha512_base_do_finalize.exit.i
  br label %for.body.i.i

sha512_base_do_finalize.exit.i.sha512_arm_final.exit_crit_edge: ; preds = %sha512_base_do_finalize.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sha512_arm_final.exit

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %sha512_base_do_finalize.exit.i.for.body.i.i_crit_edge
  %i.04.i.i = phi i32 [ %inc.i4.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %sha512_base_do_finalize.exit.i.for.body.i.i_crit_edge ]
  %digest.03.i.i = phi ptr [ %incdec.ptr.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %out, %sha512_base_do_finalize.exit.i.for.body.i.i_crit_edge ]
  %digest_size.02.i.i = phi i32 [ %sub.i5.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %24, %sha512_base_do_finalize.exit.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr [8 x i64], ptr %__ctx.i.i, i32 0, i32 %i.04.i.i
  %25 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %arrayidx.i.i, align 8
  %incdec.ptr.i.i = getelementptr i64, ptr %digest.03.i.i, i32 1
  %27 = ptrtoint ptr %digest.03.i.i to i32
  call void @__asan_storeN_noabort(i32 %27, i32 8)
  store i64 %26, ptr %digest.03.i.i, align 1
  %inc.i4.i = add i32 %i.04.i.i, 1
  %sub.i5.i = add i32 %digest_size.02.i.i, -8
  %cmp.not.i.i = icmp eq i32 %sub.i5.i, 0
  br i1 %cmp.not.i.i, label %for.body.i.i.sha512_arm_final.exit_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i

for.body.i.i.sha512_arm_final.exit_crit_edge:     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sha512_arm_final.exit

sha512_arm_final.exit:                            ; preds = %for.body.i.i.sha512_arm_final.exit_crit_edge, %sha512_base_do_finalize.exit.i.sha512_arm_final.exit_crit_edge
  %28 = call ptr @memset(ptr %__ctx.i.i, i32 0, i32 208)
  tail call void asm sideeffect "", "r,~{memory}"(ptr %__ctx.i.i) #5, !srcloc !35
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sha512_arm_final(ptr noundef %desc, ptr nocapture noundef writeonly %out) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 0, i32 2
  %buf.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 11
  %count.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 9
  %0 = ptrtoint ptr %count.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %count.i, align 8
  %2 = trunc i64 %1 to i32
  %conv.i = and i32 %2, 127
  %inc.i = add nuw nsw i32 %conv.i, 1
  %arrayidx2.i = getelementptr %struct.sha512_state, ptr %__ctx.i.i, i32 0, i32 2, i32 %conv.i
  %3 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -128, ptr %arrayidx2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 111, i32 %conv.i)
  %cmp.i = icmp ugt i32 %conv.i, 111
  br i1 %cmp.i, label %if.then.i, label %entry.sha512_base_do_finalize.exit_crit_edge

entry.sha512_base_do_finalize.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sha512_base_do_finalize.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr6.i = getelementptr i8, ptr %buf.i, i32 %inc.i
  %sub.i = xor i32 %conv.i, 127
  %4 = call ptr @memset(ptr %add.ptr6.i, i32 0, i32 %sub.i)
  tail call void @sha512_block_data_order(ptr noundef %__ctx.i.i, ptr noundef %buf.i, i32 noundef 1) #5
  br label %sha512_base_do_finalize.exit

sha512_base_do_finalize.exit:                     ; preds = %if.then.i, %entry.sha512_base_do_finalize.exit_crit_edge
  %partial.0.i = phi i32 [ 0, %if.then.i ], [ %inc.i, %entry.sha512_base_do_finalize.exit_crit_edge ]
  %add.ptr.i = getelementptr %struct.shash_desc, ptr %desc, i32 25
  %add.ptr11.i = getelementptr i8, ptr %buf.i, i32 %partial.0.i
  %sub12.i = sub nuw nsw i32 112, %partial.0.i
  %5 = call ptr @memset(ptr %add.ptr11.i, i32 0, i32 %sub12.i)
  %arrayidx14.i = getelementptr %struct.shash_desc, ptr %desc, i32 10
  %6 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %arrayidx14.i, align 8
  %8 = ptrtoint ptr %count.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %count.i, align 8
  %or.i = tail call i64 @llvm.fshl.i64(i64 %7, i64 %9, i64 3) #5
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %or.i, ptr %add.ptr.i, align 8
  %shl20.i = shl i64 %9, 3
  %arrayidx21.i = getelementptr %struct.shash_desc, ptr %desc, i32 26
  %11 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %shl20.i, ptr %arrayidx21.i, align 8
  tail call void @sha512_block_data_order(ptr noundef %__ctx.i.i, ptr noundef %buf.i, i32 noundef 1) #5
  %12 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %desc, align 8
  %__crt_alg.i.i.i = getelementptr inbounds %struct.crypto_shash, ptr %13, i32 0, i32 2, i32 3
  %14 = ptrtoint ptr %__crt_alg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %__crt_alg.i.i.i, align 4
  %digestsize.i.i = getelementptr i8, ptr %15, i32 -128
  %16 = ptrtoint ptr %digestsize.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %digestsize.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp.not1.i = icmp eq i32 %17, 0
  br i1 %cmp.not1.i, label %sha512_base_do_finalize.exit.sha512_base_finish.exit_crit_edge, label %sha512_base_do_finalize.exit.for.body.i_crit_edge

sha512_base_do_finalize.exit.for.body.i_crit_edge: ; preds = %sha512_base_do_finalize.exit
  br label %for.body.i

sha512_base_do_finalize.exit.sha512_base_finish.exit_crit_edge: ; preds = %sha512_base_do_finalize.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %sha512_base_finish.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %sha512_base_do_finalize.exit.for.body.i_crit_edge
  %i.04.i = phi i32 [ %inc.i4, %for.body.i.for.body.i_crit_edge ], [ 0, %sha512_base_do_finalize.exit.for.body.i_crit_edge ]
  %digest.03.i = phi ptr [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ], [ %out, %sha512_base_do_finalize.exit.for.body.i_crit_edge ]
  %digest_size.02.i = phi i32 [ %sub.i5, %for.body.i.for.body.i_crit_edge ], [ %17, %sha512_base_do_finalize.exit.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [8 x i64], ptr %__ctx.i.i, i32 0, i32 %i.04.i
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %arrayidx.i, align 8
  %incdec.ptr.i = getelementptr i64, ptr %digest.03.i, i32 1
  %20 = ptrtoint ptr %digest.03.i to i32
  call void @__asan_storeN_noabort(i32 %20, i32 8)
  store i64 %19, ptr %digest.03.i, align 1
  %inc.i4 = add i32 %i.04.i, 1
  %sub.i5 = add i32 %digest_size.02.i, -8
  %cmp.not.i = icmp eq i32 %sub.i5, 0
  br i1 %cmp.not.i, label %for.body.i.sha512_base_finish.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.body.i.sha512_base_finish.exit_crit_edge:     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sha512_base_finish.exit

sha512_base_finish.exit:                          ; preds = %for.body.i.sha512_base_finish.exit_crit_edge, %sha512_base_do_finalize.exit.sha512_base_finish.exit_crit_edge
  %21 = call ptr @memset(ptr %__ctx.i.i, i32 0, i32 208)
  tail call void asm sideeffect "", "r,~{memory}"(ptr %__ctx.i.i) #5, !srcloc !35
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sha512_arm_mod_fini() #2 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @crypto_unregister_shashes(ptr noundef nonnull @sha512_arm_algs, i32 noundef 2) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @elf_hwcap to i32))
  %0 = load i32, ptr @elf_hwcap, align 4
  %and = and i32 %0, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @crypto_unregister_shashes(ptr noundef nonnull @sha512_neon_algs, i32 noundef 2) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_shashes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sha512_arm_mod_init() #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @crypto_register_shashes(ptr noundef nonnull @sha512_arm_algs, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @elf_hwcap to i32))
  %0 = load i32, ptr @elf_hwcap, align 4
  %and = and i32 %0, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.then2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then2:                                         ; preds = %if.end
  %call3 = tail call i32 @crypto_register_shashes(ptr noundef nonnull @sha512_neon_algs, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then2.cleanup_crit_edge, label %err_unregister

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

err_unregister:                                   ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @crypto_unregister_shashes(ptr noundef nonnull @sha512_arm_algs, i32 noundef 2) #5
  br label %cleanup

cleanup:                                          ; preds = %err_unregister, %if.then2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %err_unregister ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.then2.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @sha384_base_init(ptr nocapture noundef writeonly %desc) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %__ctx.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 0, i32 2
  %0 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -3766243637369397544, ptr %__ctx.i, align 8
  %arrayidx2 = getelementptr %struct.shash_desc, ptr %desc, i32 2
  %1 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 7105036623409894663, ptr %arrayidx2, align 8
  %arrayidx4 = getelementptr %struct.shash_desc, ptr %desc, i32 3
  %2 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -7973340178411365097, ptr %arrayidx4, align 8
  %arrayidx6 = getelementptr %struct.shash_desc, ptr %desc, i32 4
  %3 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 1526699215303891257, ptr %arrayidx6, align 8
  %arrayidx8 = getelementptr %struct.shash_desc, ptr %desc, i32 5
  %4 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 7436329637833083697, ptr %arrayidx8, align 8
  %arrayidx10 = getelementptr %struct.shash_desc, ptr %desc, i32 6
  %5 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 -8163818279084223215, ptr %arrayidx10, align 8
  %arrayidx12 = getelementptr %struct.shash_desc, ptr %desc, i32 7
  %6 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 -2662702644619276377, ptr %arrayidx12, align 8
  %arrayidx14 = getelementptr %struct.shash_desc, ptr %desc, i32 8
  %7 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 5167115440072839076, ptr %arrayidx14, align 8
  %count = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 9
  %8 = call ptr @memset(ptr %count, i32 0, i32 16)
  ret i32 0
}

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @sha512_base_init(ptr nocapture noundef writeonly %desc) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %__ctx.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 0, i32 2
  %0 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 7640891576956012808, ptr %__ctx.i, align 8
  %arrayidx2 = getelementptr %struct.shash_desc, ptr %desc, i32 2
  %1 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -4942790177534073029, ptr %arrayidx2, align 8
  %arrayidx4 = getelementptr %struct.shash_desc, ptr %desc, i32 3
  %2 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 4354685564936845355, ptr %arrayidx4, align 8
  %arrayidx6 = getelementptr %struct.shash_desc, ptr %desc, i32 4
  %3 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 -6534734903238641935, ptr %arrayidx6, align 8
  %arrayidx8 = getelementptr %struct.shash_desc, ptr %desc, i32 5
  %4 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 5840696475078001361, ptr %arrayidx8, align 8
  %arrayidx10 = getelementptr %struct.shash_desc, ptr %desc, i32 6
  %5 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 -7276294671716946913, ptr %arrayidx10, align 8
  %arrayidx12 = getelementptr %struct.shash_desc, ptr %desc, i32 7
  %6 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 2270897969802886507, ptr %arrayidx12, align 8
  %arrayidx14 = getelementptr %struct.shash_desc, ptr %desc, i32 8
  %7 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 6620516959819538809, ptr %arrayidx14, align 8
  %count = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 9
  %8 = call ptr @memset(ptr %count, i32 0, i32 16)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_shashes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.fshl.i64(i64, i64, i64) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !13, !15, !16, !18, !19, !21, !23}
!llvm.module.flags = !{!25, !26, !27, !28, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{ptr @__UNIQUE_ID_description173, !1, !"__UNIQUE_ID_description173", i1 false, i1 false}
!1 = !{!"../arch/arm/crypto/sha512-glue.c", i32 19, i32 1}
!2 = !{ptr @__UNIQUE_ID_author174, !3, !"__UNIQUE_ID_author174", i1 false, i1 false}
!3 = !{!"../arch/arm/crypto/sha512-glue.c", i32 20, i32 1}
!4 = !{ptr @__UNIQUE_ID_file175, !5, !"__UNIQUE_ID_file175", i1 false, i1 false}
!5 = !{!"../arch/arm/crypto/sha512-glue.c", i32 21, i32 1}
!6 = !{ptr @__UNIQUE_ID_license176, !5, !"__UNIQUE_ID_license176", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_alias_userspace177, !8, !"__UNIQUE_ID_alias_userspace177", i1 false, i1 false}
!8 = !{!"../arch/arm/crypto/sha512-glue.c", i32 23, i32 1}
!9 = !{ptr @__UNIQUE_ID_alias_crypto178, !8, !"__UNIQUE_ID_alias_crypto178", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias_userspace179, !11, !"__UNIQUE_ID_alias_userspace179", i1 false, i1 false}
!11 = !{!"../arch/arm/crypto/sha512-glue.c", i32 24, i32 1}
!12 = !{ptr @__UNIQUE_ID_alias_crypto180, !11, !"__UNIQUE_ID_alias_crypto180", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_alias_userspace181, !14, !"__UNIQUE_ID_alias_userspace181", i1 false, i1 false}
!14 = !{!"../arch/arm/crypto/sha512-glue.c", i32 25, i32 1}
!15 = !{ptr @__UNIQUE_ID_alias_crypto182, !14, !"__UNIQUE_ID_alias_crypto182", i1 false, i1 false}
!16 = !{ptr @__UNIQUE_ID_alias_userspace183, !17, !"__UNIQUE_ID_alias_userspace183", i1 false, i1 false}
!17 = !{!"../arch/arm/crypto/sha512-glue.c", i32 26, i32 1}
!18 = !{ptr @__UNIQUE_ID_alias_crypto184, !17, !"__UNIQUE_ID_alias_crypto184", i1 false, i1 false}
!19 = !{ptr @__initcall__kmod_sha512_arm__185_115_sha512_arm_mod_init6, !20, !"__initcall__kmod_sha512_arm__185_115_sha512_arm_mod_init6", i1 false, i1 false}
!20 = !{!"../arch/arm/crypto/sha512-glue.c", i32 115, i32 1}
!21 = !{ptr @__exitcall_sha512_arm_mod_fini, !22, !"__exitcall_sha512_arm_mod_fini", i1 false, i1 false}
!22 = !{!"../arch/arm/crypto/sha512-glue.c", i32 116, i32 1}
!23 = !{ptr @sha512_arm_algs, !24, !"sha512_arm_algs", i1 false, i1 false}
!24 = !{!"../arch/arm/crypto/sha512-glue.c", i32 52, i32 25}
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
!35 = !{i64 2149222903}
