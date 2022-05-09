; ModuleID = '/llk/IR_all_yes/crypto/ghash-generic.c_pt.bc'
source_filename = "../crypto/ghash-generic.c"
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
%struct.crypto_shash = type { i32, [124 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.be128 = type { i64, i64 }

@ghash_alg = internal global %struct.shash_alg { ptr @ghash_init, ptr @ghash_update, ptr @ghash_final, ptr null, ptr null, ptr null, ptr null, ptr @ghash_setkey, ptr null, ptr null, i32 20, [84 x i8] undef, i32 16, i32 0, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 16, i32 4, i32 0, i32 100, %struct.refcount_struct zeroinitializer, [128 x i8] c"ghash\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"ghash-generic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon zeroinitializer, ptr null, ptr @ghash_exit_tfm, ptr null, ptr null, %union.anon.44 zeroinitializer, [120 x i8] undef } }, align 128
@__initcall__kmod_ghash_generic__176_178_ghash_mod_init4 = internal global ptr @ghash_mod_init, section ".initcall4.init", align 4
@__exitcall_ghash_mod_exit = internal global ptr @ghash_mod_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file177 = internal constant [40 x i8] c"ghash_generic.file=crypto/ghash-generic\00", section ".modinfo", align 1
@__UNIQUE_ID_license178 = internal constant [26 x i8] c"ghash_generic.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description179 = internal constant [46 x i8] c"ghash_generic.description=GHASH hash function\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace180 = internal constant [26 x i8] c"ghash_generic.alias=ghash\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto181 = internal constant [33 x i8] c"ghash_generic.alias=crypto-ghash\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace182 = internal constant [34 x i8] c"ghash_generic.alias=ghash-generic\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto183 = internal constant [41 x i8] c"ghash_generic.alias=crypto-ghash-generic\00", section ".modinfo", align 1
@llvm.compiler.used = appending global [10 x ptr] [ptr @__UNIQUE_ID_alias_crypto181, ptr @__UNIQUE_ID_alias_crypto183, ptr @__UNIQUE_ID_alias_userspace180, ptr @__UNIQUE_ID_alias_userspace182, ptr @__UNIQUE_ID_description179, ptr @__UNIQUE_ID_file177, ptr @__UNIQUE_ID_license178, ptr @__exitcall_ghash_mod_exit, ptr @__initcall__kmod_ghash_generic__176_178_ghash_mod_init4, ptr @ghash_mod_exit], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ghash_mod_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @crypto_unregister_shash(ptr noundef nonnull @ghash_alg) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_shash(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ghash_mod_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @crypto_register_shash(ptr noundef nonnull @ghash_alg) #6
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @ghash_init(ptr nocapture noundef writeonly %desc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 0, i32 2
  %0 = call ptr @memset(ptr %__ctx.i, i32 0, i32 20)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ghash_update(ptr noundef %desc, ptr nocapture noundef readonly %src, i32 noundef %srclen) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 0, i32 2
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc, align 8
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_shash, ptr %1, i32 1
  %bytes = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 3
  %2 = ptrtoint ptr %bytes to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bytes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end14_crit_edge, label %if.then

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.then:                                          ; preds = %entry
  %4 = tail call i32 @llvm.umin.i32(i32 %3, i32 %srclen)
  %sub5 = sub i32 %3, %4
  %5 = ptrtoint ptr %bytes to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %sub5, ptr %bytes, align 4
  %sub6 = sub i32 %srclen, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool7.not66 = icmp eq i32 %4, 0
  br i1 %tobool7.not66, label %if.then.while.end_crit_edge, label %while.body.preheader

if.then.while.end_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.preheader:                             ; preds = %if.then
  %sub = sub i32 16, %3
  %add.ptr = getelementptr i8, ptr %__ctx.i, i32 %sub
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.preheader
  %pos.069 = phi ptr [ %incdec.ptr8, %while.body.while.body_crit_edge ], [ %add.ptr, %while.body.preheader ]
  %src.addr.068 = phi ptr [ %incdec.ptr, %while.body.while.body_crit_edge ], [ %src, %while.body.preheader ]
  %n.067 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %4, %while.body.preheader ]
  %dec = add i32 %n.067, -1
  %incdec.ptr = getelementptr i8, ptr %src.addr.068, i32 1
  %6 = ptrtoint ptr %src.addr.068 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %src.addr.068, align 1
  %incdec.ptr8 = getelementptr i8, ptr %pos.069, i32 1
  %8 = ptrtoint ptr %pos.069 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %pos.069, align 1
  %xor65 = xor i8 %9, %7
  store i8 %xor65, ptr %pos.069, align 1
  %tobool7.not = icmp eq i32 %dec, 0
  br i1 %tobool7.not, label %while.endthread-pre-split, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.endthread-pre-split:                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %bytes to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pr = load i32, ptr %bytes, align 4
  br label %while.end

while.end:                                        ; preds = %while.endthread-pre-split, %if.then.while.end_crit_edge
  %11 = phi i32 [ %.pr, %while.endthread-pre-split ], [ %sub5, %if.then.while.end_crit_edge ]
  %src.addr.0.lcssa = phi ptr [ %incdec.ptr, %while.endthread-pre-split ], [ %src, %if.then.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool12.not = icmp eq i32 %11, 0
  br i1 %tobool12.not, label %if.then13, label %while.end.if.end14_crit_edge

while.end.if.end14_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.then13:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %__crt_ctx.i.i, align 4
  tail call void @gf128mul_4k_lle(ptr noundef %__ctx.i, ptr noundef %13) #6
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %while.end.if.end14_crit_edge, %entry.if.end14_crit_edge
  %srclen.addr.0 = phi i32 [ %srclen, %entry.if.end14_crit_edge ], [ %sub6, %if.then13 ], [ %sub6, %while.end.if.end14_crit_edge ]
  %src.addr.1 = phi ptr [ %src, %entry.if.end14_crit_edge ], [ %src.addr.0.lcssa, %if.then13 ], [ %src.addr.0.lcssa, %while.end.if.end14_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %srclen.addr.0)
  %cmp1670 = icmp ugt i32 %srclen.addr.0, 15
  br i1 %cmp1670, label %while.body18.lr.ph, label %if.end14.while.end22_crit_edge

if.end14.while.end22_crit_edge:                   ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end22

while.body18.lr.ph:                               ; preds = %if.end14
  %incdec.ptr2.i = getelementptr %struct.shash_desc, ptr %desc, i32 1, i32 1
  %incdec.ptr2.1.i = getelementptr %struct.shash_desc, ptr %desc, i32 2
  %incdec.ptr2.2.i = getelementptr %struct.shash_desc, ptr %desc, i32 2, i32 1
  br label %while.body18

while.body18:                                     ; preds = %while.body18.while.body18_crit_edge, %while.body18.lr.ph
  %src.addr.272 = phi ptr [ %src.addr.1, %while.body18.lr.ph ], [ %add.ptr20, %while.body18.while.body18_crit_edge ]
  %srclen.addr.171 = phi i32 [ %srclen.addr.0, %while.body18.lr.ph ], [ %sub21, %while.body18.while.body18_crit_edge ]
  %incdec.ptr.i = getelementptr i32, ptr %src.addr.272, i32 1
  %14 = ptrtoint ptr %src.addr.272 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %src.addr.272, align 4
  %16 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %__ctx.i, align 4
  %xor.i = xor i32 %17, %15
  store i32 %xor.i, ptr %__ctx.i, align 4
  %incdec.ptr.1.i = getelementptr i32, ptr %src.addr.272, i32 2
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %incdec.ptr.i, align 4
  %20 = ptrtoint ptr %incdec.ptr2.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %incdec.ptr2.i, align 4
  %xor.1.i = xor i32 %21, %19
  store i32 %xor.1.i, ptr %incdec.ptr2.i, align 4
  %incdec.ptr.2.i = getelementptr i32, ptr %src.addr.272, i32 3
  %22 = ptrtoint ptr %incdec.ptr.1.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %incdec.ptr.1.i, align 4
  %24 = ptrtoint ptr %incdec.ptr2.1.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %incdec.ptr2.1.i, align 4
  %xor.2.i = xor i32 %25, %23
  store i32 %xor.2.i, ptr %incdec.ptr2.1.i, align 4
  %26 = ptrtoint ptr %incdec.ptr.2.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %incdec.ptr.2.i, align 4
  %28 = ptrtoint ptr %incdec.ptr2.2.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %incdec.ptr2.2.i, align 4
  %xor.3.i = xor i32 %29, %27
  store i32 %xor.3.i, ptr %incdec.ptr2.2.i, align 4
  %30 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %__crt_ctx.i.i, align 4
  tail call void @gf128mul_4k_lle(ptr noundef %__ctx.i, ptr noundef %31) #6
  %add.ptr20 = getelementptr i8, ptr %src.addr.272, i32 16
  %sub21 = add i32 %srclen.addr.171, -16
  %cmp16 = icmp ugt i32 %sub21, 15
  br i1 %cmp16, label %while.body18.while.body18_crit_edge, label %while.body18.while.end22_crit_edge

while.body18.while.end22_crit_edge:               ; preds = %while.body18
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end22

while.body18.while.body18_crit_edge:              ; preds = %while.body18
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body18

while.end22:                                      ; preds = %while.body18.while.end22_crit_edge, %if.end14.while.end22_crit_edge
  %srclen.addr.1.lcssa = phi i32 [ %srclen.addr.0, %if.end14.while.end22_crit_edge ], [ %sub21, %while.body18.while.end22_crit_edge ]
  %src.addr.2.lcssa = phi ptr [ %src.addr.1, %if.end14.while.end22_crit_edge ], [ %add.ptr20, %while.body18.while.end22_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %srclen.addr.1.lcssa)
  %tobool23.not = icmp eq i32 %srclen.addr.1.lcssa, 0
  br i1 %tobool23.not, label %while.end22.if.end38_crit_edge, label %if.then24

while.end22.if.end38_crit_edge:                   ; preds = %while.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

if.then24:                                        ; preds = %while.end22
  %sub25 = sub nuw nsw i32 16, %srclen.addr.1.lcssa
  %32 = ptrtoint ptr %bytes to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %sub25, ptr %bytes, align 4
  br label %while.body30

while.body30:                                     ; preds = %while.body30.while.body30_crit_edge, %if.then24
  %src.addr.378 = phi ptr [ %src.addr.2.lcssa, %if.then24 ], [ %incdec.ptr31, %while.body30.while.body30_crit_edge ]
  %dst.077 = phi ptr [ %__ctx.i, %if.then24 ], [ %incdec.ptr33, %while.body30.while.body30_crit_edge ]
  %srclen.addr.276 = phi i32 [ %srclen.addr.1.lcssa, %if.then24 ], [ %dec28, %while.body30.while.body30_crit_edge ]
  %dec28 = add i32 %srclen.addr.276, -1
  %incdec.ptr31 = getelementptr i8, ptr %src.addr.378, i32 1
  %33 = ptrtoint ptr %src.addr.378 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %src.addr.378, align 1
  %incdec.ptr33 = getelementptr i8, ptr %dst.077, i32 1
  %35 = ptrtoint ptr %dst.077 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %dst.077, align 1
  %xor3564 = xor i8 %36, %34
  store i8 %xor3564, ptr %dst.077, align 1
  %tobool29.not = icmp eq i32 %dec28, 0
  br i1 %tobool29.not, label %while.body30.if.end38_crit_edge, label %while.body30.while.body30_crit_edge

while.body30.while.body30_crit_edge:              ; preds = %while.body30
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body30

while.body30.if.end38_crit_edge:                  ; preds = %while.body30
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

if.end38:                                         ; preds = %while.body30.if.end38_crit_edge, %while.end22.if.end38_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ghash_final(ptr noundef %desc, ptr nocapture noundef writeonly %dst) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 0, i32 2
  %bytes.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 3
  %0 = ptrtoint ptr %bytes.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bytes.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %entry.ghash_flush.exit_crit_edge, label %while.cond.preheader.i

entry.ghash_flush.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %ghash_flush.exit

while.cond.preheader.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %desc, align 8
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_shash, ptr %3, i32 1
  %4 = ptrtoint ptr %bytes.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %bytes.i, align 4
  %5 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %__crt_ctx.i.i, align 4
  tail call void @gf128mul_4k_lle(ptr noundef %__ctx.i, ptr noundef %6) #6
  br label %ghash_flush.exit

ghash_flush.exit:                                 ; preds = %while.cond.preheader.i, %entry.ghash_flush.exit_crit_edge
  %7 = ptrtoint ptr %bytes.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %bytes.i, align 4
  %8 = call ptr @memcpy(ptr %dst, ptr %__ctx.i, i32 16)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ghash_setkey(ptr nocapture noundef %tfm, ptr nocapture noundef readonly %key, i32 noundef %keylen) #3 align 64 {
entry:
  %k = alloca %struct.be128, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_shash, ptr %tfm, i32 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %k) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %keylen)
  %cmp.not = icmp eq i32 %keylen, 16
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_ctx.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end.do.end_crit_edge, label %if.then1

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kfree_sensitive(ptr noundef nonnull %1) #6
  br label %do.end

do.end:                                           ; preds = %if.then1, %if.end.do.end_crit_edge
  %2 = call ptr @memcpy(ptr %k, ptr %key, i32 16)
  %call4 = call ptr @gf128mul_init_4k_lle(ptr noundef nonnull %k) #6
  %3 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call4, ptr %__crt_ctx.i.i, align 4
  %4 = call ptr @memset(ptr %k, i32 0, i32 16)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %k) #6, !srcloc !26
  %5 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %__crt_ctx.i.i, align 4
  %tobool7.not = icmp eq ptr %6, null
  %. = select i1 %tobool7.not, i32 -12, i32 0
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %., %do.end ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %k) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ghash_exit_tfm(ptr nocapture noundef readonly %tfm) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %0 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_ctx.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kfree_sensitive(ptr noundef nonnull %1) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf128mul_4k_lle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gf128mul_init_4k_lle(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_sensitive(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_shash(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !12, !14, !15}
!llvm.module.flags = !{!17, !18, !19, !20, !21, !22, !23, !24}
!llvm.ident = !{!25}

!0 = !{ptr @__initcall__kmod_ghash_generic__176_178_ghash_mod_init4, !1, !"__initcall__kmod_ghash_generic__176_178_ghash_mod_init4", i1 false, i1 false}
!1 = !{!"../crypto/ghash-generic.c", i32 178, i32 1}
!2 = !{ptr @__exitcall_ghash_mod_exit, !3, !"__exitcall_ghash_mod_exit", i1 false, i1 false}
!3 = !{!"../crypto/ghash-generic.c", i32 179, i32 1}
!4 = !{ptr @__UNIQUE_ID_file177, !5, !"__UNIQUE_ID_file177", i1 false, i1 false}
!5 = !{!"../crypto/ghash-generic.c", i32 181, i32 1}
!6 = !{ptr @__UNIQUE_ID_license178, !5, !"__UNIQUE_ID_license178", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_description179, !8, !"__UNIQUE_ID_description179", i1 false, i1 false}
!8 = !{!"../crypto/ghash-generic.c", i32 182, i32 1}
!9 = !{ptr @__UNIQUE_ID_alias_userspace180, !10, !"__UNIQUE_ID_alias_userspace180", i1 false, i1 false}
!10 = !{!"../crypto/ghash-generic.c", i32 183, i32 1}
!11 = !{ptr @__UNIQUE_ID_alias_crypto181, !10, !"__UNIQUE_ID_alias_crypto181", i1 false, i1 false}
!12 = !{ptr @__UNIQUE_ID_alias_userspace182, !13, !"__UNIQUE_ID_alias_userspace182", i1 false, i1 false}
!13 = !{!"../crypto/ghash-generic.c", i32 184, i32 1}
!14 = !{ptr @__UNIQUE_ID_alias_crypto183, !13, !"__UNIQUE_ID_alias_crypto183", i1 false, i1 false}
!15 = !{ptr @ghash_alg, !16, !"ghash_alg", i1 false, i1 false}
!16 = !{!"../crypto/ghash-generic.c", i32 150, i32 25}
!17 = !{i32 1, !"wchar_size", i32 2}
!18 = !{i32 1, !"min_enum_size", i32 4}
!19 = !{i32 8, !"branch-target-enforcement", i32 0}
!20 = !{i32 8, !"sign-return-address", i32 0}
!21 = !{i32 8, !"sign-return-address-all", i32 0}
!22 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!23 = !{i32 7, !"uwtable", i32 1}
!24 = !{i32 7, !"frame-pointer", i32 2}
!25 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!26 = !{i64 2149218715}
