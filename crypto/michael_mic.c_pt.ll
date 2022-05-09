; ModuleID = '/llk/IR_all_yes/crypto/michael_mic.c_pt.bc'
source_filename = "../crypto/michael_mic.c"
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
%struct.crypto_shash = type { i32, [124 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.shash_desc = type { ptr, [4 x i8], [0 x ptr] }

@alg = internal global %struct.shash_alg { ptr @michael_init, ptr @michael_update, ptr @michael_final, ptr null, ptr null, ptr null, ptr null, ptr @michael_setkey, ptr null, ptr null, i32 16, [84 x i8] undef, i32 8, i32 0, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 8, i32 8, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"michael_mic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"michael_mic-generic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.44 zeroinitializer, [120 x i8] undef } }, align 128
@__initcall__kmod_michael_mic__173_170_michael_mic_init4 = internal global ptr @michael_mic_init, section ".initcall4.init", align 4
@__exitcall_michael_mic_exit = internal global ptr @michael_mic_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file174 = internal constant [36 x i8] c"michael_mic.file=crypto/michael_mic\00", section ".modinfo", align 1
@__UNIQUE_ID_license175 = internal constant [27 x i8] c"michael_mic.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description176 = internal constant [36 x i8] c"michael_mic.description=Michael MIC\00", section ".modinfo", align 1
@__UNIQUE_ID_author177 = internal constant [43 x i8] c"michael_mic.author=Jouni Malinen <j@w1.fi>\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace178 = internal constant [30 x i8] c"michael_mic.alias=michael_mic\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto179 = internal constant [37 x i8] c"michael_mic.alias=crypto-michael_mic\00", section ".modinfo", align 1
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@llvm.compiler.used = appending global [9 x ptr] [ptr @__UNIQUE_ID_alias_crypto179, ptr @__UNIQUE_ID_alias_userspace178, ptr @__UNIQUE_ID_author177, ptr @__UNIQUE_ID_description176, ptr @__UNIQUE_ID_file174, ptr @__UNIQUE_ID_license175, ptr @__exitcall_michael_mic_exit, ptr @__initcall__kmod_michael_mic__173_170_michael_mic_init4, ptr @michael_mic_exit], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @michael_mic_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @crypto_unregister_shash(ptr noundef nonnull @alg) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_shash(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @michael_mic_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @crypto_register_shash(ptr noundef nonnull @alg) #6
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @michael_init(ptr nocapture noundef %desc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc, align 8
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_shash, ptr %1, i32 1
  %pending_len = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 1, i32 1
  %2 = ptrtoint ptr %pending_len to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %pending_len, align 4
  %3 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %__crt_ctx.i.i, align 4
  %l2 = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 2
  %5 = ptrtoint ptr %l2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %l2, align 4
  %r = getelementptr inbounds %struct.crypto_shash, ptr %1, i32 1, i32 1
  %6 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %r, align 4
  %r3 = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 2, i32 1
  %8 = ptrtoint ptr %r3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %r3, align 4
  ret i32 0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @michael_update(ptr nocapture noundef %desc, ptr nocapture noundef readonly %data, i32 noundef %len) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 0, i32 2
  %pending_len = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 1, i32 1
  %0 = ptrtoint ptr %pending_len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pending_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end40_crit_edge, label %if.then

entry.if.end40_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end40

if.then:                                          ; preds = %entry
  %sub = sub i32 4, %1
  %2 = tail call i32 @llvm.umin.i32(i32 %sub, i32 %len)
  %add.ptr = getelementptr i8, ptr %__ctx.i, i32 %1
  %3 = call ptr @memcpy(ptr %add.ptr, ptr %data, i32 %2)
  %4 = ptrtoint ptr %pending_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pending_len, align 4
  %add = add i32 %5, %2
  store i32 %add, ptr %pending_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %add)
  %cmp8 = icmp ult i32 %add, 4
  br i1 %cmp8, label %if.then.cleanup83_crit_edge, label %if.end10

if.then.cleanup83_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup83

if.end10:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %sub6 = sub i32 %len, %2
  %add.ptr5 = getelementptr i8, ptr %data, i32 %2
  %6 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %__ctx.i, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %l = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 2
  %9 = ptrtoint ptr %l to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %l, align 4
  %xor = xor i32 %10, %8
  %or.i = tail call i32 @llvm.fshl.i32(i32 %xor, i32 %xor, i32 17) #6
  %r = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 2, i32 1
  %11 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %r, align 4
  %xor14 = xor i32 %12, %or.i
  %add17 = add i32 %xor14, %xor
  %and.i = shl i32 %add17, 8
  %shl.i = and i32 %and.i, -16711936
  %and1.i = lshr i32 %add17, 8
  %shr.i = and i32 %and1.i, 16711935
  %or.i142 = or i32 %shl.i, %shr.i
  %xor21 = xor i32 %or.i142, %xor14
  %add24 = add i32 %xor21, %add17
  %or.i143 = tail call i32 @llvm.fshl.i32(i32 %add24, i32 %add24, i32 3) #6
  %xor28 = xor i32 %or.i143, %xor21
  %add31 = add i32 %xor28, %add24
  %or.i144 = tail call i32 @llvm.fshl.i32(i32 %add31, i32 %add31, i32 30) #6
  %xor35 = xor i32 %or.i144, %xor28
  %13 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %xor35, ptr %r, align 4
  %add38 = add i32 %xor35, %add31
  %14 = ptrtoint ptr %l to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %add38, ptr %l, align 4
  %15 = ptrtoint ptr %pending_len to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %pending_len, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.end10, %entry.if.end40_crit_edge
  %data.addr.0 = phi ptr [ %data, %entry.if.end40_crit_edge ], [ %add.ptr5, %if.end10 ]
  %len.addr.0 = phi i32 [ %len, %entry.if.end40_crit_edge ], [ %sub6, %if.end10 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %len.addr.0)
  %cmp41153 = icmp ugt i32 %len.addr.0, 3
  br i1 %cmp41153, label %while.body.lr.ph, label %if.end40.while.end_crit_edge

if.end40.while.end_crit_edge:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end40
  %l43 = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 2
  %r48 = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 2, i32 1
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %len.addr.1155 = phi i32 [ %len.addr.0, %while.body.lr.ph ], [ %sub77, %while.body.while.body_crit_edge ]
  %data.addr.1154 = phi ptr [ %data.addr.0, %while.body.lr.ph ], [ %add.ptr76, %while.body.while.body_crit_edge ]
  %16 = ptrtoint ptr %data.addr.1154 to i32
  call void @__asan_loadN_noabort(i32 %16, i32 4)
  %17 = load i32, ptr %data.addr.1154, align 1
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #6
  %19 = ptrtoint ptr %l43 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %l43, align 4
  %xor44 = xor i32 %20, %18
  %or.i145 = tail call i32 @llvm.fshl.i32(i32 %xor44, i32 %xor44, i32 17) #6
  %21 = ptrtoint ptr %r48 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %r48, align 4
  %xor49 = xor i32 %22, %or.i145
  %add52 = add i32 %xor49, %xor44
  %and.i146 = shl i32 %add52, 8
  %shl.i147 = and i32 %and.i146, -16711936
  %and1.i148 = lshr i32 %add52, 8
  %shr.i149 = and i32 %and1.i148, 16711935
  %or.i150 = or i32 %shl.i147, %shr.i149
  %xor56 = xor i32 %or.i150, %xor49
  %add59 = add i32 %xor56, %add52
  %or.i151 = tail call i32 @llvm.fshl.i32(i32 %add59, i32 %add59, i32 3) #6
  %xor63 = xor i32 %or.i151, %xor56
  %add66 = add i32 %xor63, %add59
  %or.i152 = tail call i32 @llvm.fshl.i32(i32 %add66, i32 %add66, i32 30) #6
  %xor70 = xor i32 %or.i152, %xor63
  %23 = ptrtoint ptr %r48 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %xor70, ptr %r48, align 4
  %add73 = add i32 %xor70, %add66
  %24 = ptrtoint ptr %l43 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %add73, ptr %l43, align 4
  %add.ptr76 = getelementptr i8, ptr %data.addr.1154, i32 4
  %sub77 = add i32 %len.addr.1155, -4
  %cmp41 = icmp ugt i32 %sub77, 3
  br i1 %cmp41, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.end40.while.end_crit_edge
  %data.addr.1.lcssa = phi ptr [ %data.addr.0, %if.end40.while.end_crit_edge ], [ %add.ptr76, %while.body.while.end_crit_edge ]
  %len.addr.1.lcssa = phi i32 [ %len.addr.0, %if.end40.while.end_crit_edge ], [ %sub77, %while.body.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.addr.1.lcssa)
  %cmp78.not = icmp eq i32 %len.addr.1.lcssa, 0
  br i1 %cmp78.not, label %while.end.cleanup83_crit_edge, label %if.then79

while.end.cleanup83_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup83

if.then79:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %pending_len to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %len.addr.1.lcssa, ptr %pending_len, align 4
  %26 = call ptr @memcpy(ptr %__ctx.i, ptr %data.addr.1.lcssa, i32 %len.addr.1.lcssa)
  br label %cleanup83

cleanup83:                                        ; preds = %if.then79, %while.end.cleanup83_crit_edge, %if.then.cleanup83_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @michael_final(ptr nocapture noundef %desc, ptr nocapture noundef writeonly %out) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 0, i32 2
  %pending_len = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 1, i32 1
  %0 = ptrtoint ptr %pending_len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pending_len, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %entry.do.body_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb4
    i32 3, label %sw.bb13
  ]

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %l = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 2
  %3 = ptrtoint ptr %l to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %l, align 4
  br label %do.body.sink.split

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %__ctx.i, align 1
  %conv = zext i8 %6 to i32
  %or = or i32 %conv, 23040
  %l2 = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 2
  %7 = ptrtoint ptr %l2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %l2, align 4
  br label %do.body.sink.split

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %__ctx.i, align 1
  %conv6 = zext i8 %10 to i32
  %arrayidx7 = getelementptr i8, ptr %__ctx.i, i32 1
  %11 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx7, align 1
  %conv8 = zext i8 %12 to i32
  %shl = shl nuw nsw i32 %conv8, 8
  %or9 = or i32 %shl, %conv6
  %or10 = or i32 %or9, 5898240
  %l11 = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 2
  %13 = ptrtoint ptr %l11 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %l11, align 4
  br label %do.body.sink.split

sw.bb13:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %__ctx.i, align 1
  %conv15 = zext i8 %16 to i32
  %arrayidx16 = getelementptr i8, ptr %__ctx.i, i32 1
  %17 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx16, align 1
  %conv17 = zext i8 %18 to i32
  %shl18 = shl nuw nsw i32 %conv17, 8
  %arrayidx20 = getelementptr i8, ptr %__ctx.i, i32 2
  %19 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx20, align 1
  %conv21 = zext i8 %20 to i32
  %shl22 = shl nuw nsw i32 %conv21, 16
  %or19 = or i32 %shl18, %conv15
  %or23 = or i32 %or19, %shl22
  %or24 = or i32 %or23, 1509949440
  %l25 = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 2
  %21 = ptrtoint ptr %l25 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %l25, align 4
  br label %do.body.sink.split

do.body.sink.split:                               ; preds = %sw.bb13, %sw.bb4, %sw.bb1, %sw.bb
  %.sink142 = phi i32 [ 90, %sw.bb ], [ %8, %sw.bb1 ], [ %14, %sw.bb4 ], [ %22, %sw.bb13 ]
  %.sink = phi i32 [ %4, %sw.bb ], [ %or, %sw.bb1 ], [ %or10, %sw.bb4 ], [ %or24, %sw.bb13 ]
  %l.sink = phi ptr [ %l, %sw.bb ], [ %l2, %sw.bb1 ], [ %l11, %sw.bb4 ], [ %l25, %sw.bb13 ]
  %xor = xor i32 %.sink, %.sink142
  %23 = ptrtoint ptr %l.sink to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %xor, ptr %l.sink, align 4
  br label %do.body

do.body:                                          ; preds = %do.body.sink.split, %entry.do.body_crit_edge
  %l27 = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 2
  %24 = ptrtoint ptr %l27 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %l27, align 4
  %or.i = tail call i32 @llvm.fshl.i32(i32 %25, i32 %25, i32 17) #6
  %r = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 2, i32 1
  %26 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %r, align 4
  %xor29 = xor i32 %27, %or.i
  %add = add i32 %xor29, %25
  %and.i = shl i32 %add, 8
  %shl.i = and i32 %and.i, -16711936
  %and1.i = lshr i32 %add, 8
  %shr.i = and i32 %and1.i, 16711935
  %or.i131 = or i32 %shl.i, %shr.i
  %xor35 = xor i32 %or.i131, %xor29
  %add38 = add i32 %xor35, %add
  %or.i132 = tail call i32 @llvm.fshl.i32(i32 %add38, i32 %add38, i32 3) #6
  %xor42 = xor i32 %or.i132, %xor35
  %add45 = add i32 %xor42, %add38
  %or.i133 = tail call i32 @llvm.fshl.i32(i32 %add45, i32 %add45, i32 30) #6
  %xor49 = xor i32 %or.i133, %xor42
  %add52 = add i32 %xor49, %add45
  %or.i134 = tail call i32 @llvm.fshl.i32(i32 %add52, i32 %add52, i32 17) #6
  %xor57 = xor i32 %or.i134, %xor49
  %add60 = add i32 %xor57, %add52
  %and.i135 = shl i32 %add60, 8
  %shl.i136 = and i32 %and.i135, -16711936
  %and1.i137 = lshr i32 %add60, 8
  %shr.i138 = and i32 %and1.i137, 16711935
  %or.i139 = or i32 %shl.i136, %shr.i138
  %xor64 = xor i32 %or.i139, %xor57
  %add67 = add i32 %xor64, %add60
  %or.i140 = tail call i32 @llvm.fshl.i32(i32 %add67, i32 %add67, i32 3) #6
  %xor71 = xor i32 %or.i140, %xor64
  %add74 = add i32 %xor71, %add67
  %or.i141 = tail call i32 @llvm.fshl.i32(i32 %add74, i32 %add74, i32 30) #6
  %xor78 = xor i32 %or.i141, %xor71
  %28 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %xor78, ptr %r, align 4
  %add81 = add i32 %xor78, %add74
  %29 = ptrtoint ptr %l27 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %add81, ptr %l27, align 4
  %30 = tail call i32 @llvm.bswap.i32(i32 %add81) #6
  %31 = ptrtoint ptr %out to i32
  call void @__asan_storeN_noabort(i32 %31, i32 4)
  store i32 %30, ptr %out, align 1
  %32 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %r, align 4
  %add.ptr = getelementptr i8, ptr %out, i32 4
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #6
  %35 = ptrtoint ptr %add.ptr to i32
  call void @__asan_storeN_noabort(i32 %35, i32 4)
  store i32 %34, ptr %add.ptr, align 1
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @michael_setkey(ptr nocapture noundef writeonly %tfm, ptr nocapture noundef readonly %key, i32 noundef %keylen) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %keylen)
  %cmp.not = icmp eq i32 %keylen, 8
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_shash, ptr %tfm, i32 1
  %0 = ptrtoint ptr %key to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %key, align 1
  %2 = tail call i32 @llvm.bswap.i32(i32 %1) #6
  %3 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %__crt_ctx.i.i, align 4
  %add.ptr = getelementptr i8, ptr %key, i32 4
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %add.ptr, align 1
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #6
  %r = getelementptr inbounds %struct.crypto_shash, ptr %tfm, i32 1, i32 1
  %7 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %r, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_shash(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !14}
!llvm.module.flags = !{!16, !17, !18, !19, !20, !21, !22, !23}
!llvm.ident = !{!24}

!0 = !{ptr @__initcall__kmod_michael_mic__173_170_michael_mic_init4, !1, !"__initcall__kmod_michael_mic__173_170_michael_mic_init4", i1 false, i1 false}
!1 = !{!"../crypto/michael_mic.c", i32 170, i32 1}
!2 = !{ptr @__exitcall_michael_mic_exit, !3, !"__exitcall_michael_mic_exit", i1 false, i1 false}
!3 = !{!"../crypto/michael_mic.c", i32 171, i32 1}
!4 = !{ptr @__UNIQUE_ID_file174, !5, !"__UNIQUE_ID_file174", i1 false, i1 false}
!5 = !{!"../crypto/michael_mic.c", i32 173, i32 1}
!6 = !{ptr @__UNIQUE_ID_license175, !5, !"__UNIQUE_ID_license175", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_description176, !8, !"__UNIQUE_ID_description176", i1 false, i1 false}
!8 = !{!"../crypto/michael_mic.c", i32 174, i32 1}
!9 = !{ptr @__UNIQUE_ID_author177, !10, !"__UNIQUE_ID_author177", i1 false, i1 false}
!10 = !{!"../crypto/michael_mic.c", i32 175, i32 1}
!11 = !{ptr @__UNIQUE_ID_alias_userspace178, !12, !"__UNIQUE_ID_alias_userspace178", i1 false, i1 false}
!12 = !{!"../crypto/michael_mic.c", i32 176, i32 1}
!13 = !{ptr @__UNIQUE_ID_alias_crypto179, !12, !"__UNIQUE_ID_alias_crypto179", i1 false, i1 false}
!14 = !{ptr @alg, !15, !"alg", i1 false, i1 false}
!15 = !{!"../crypto/michael_mic.c", i32 142, i32 25}
!16 = !{i32 1, !"wchar_size", i32 2}
!17 = !{i32 1, !"min_enum_size", i32 4}
!18 = !{i32 8, !"branch-target-enforcement", i32 0}
!19 = !{i32 8, !"sign-return-address", i32 0}
!20 = !{i32 8, !"sign-return-address-all", i32 0}
!21 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!22 = !{i32 7, !"uwtable", i32 1}
!23 = !{i32 7, !"frame-pointer", i32 2}
!24 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
