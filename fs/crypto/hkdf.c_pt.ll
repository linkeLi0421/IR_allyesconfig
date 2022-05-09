; ModuleID = '/llk/IR_all_yes/fs/crypto/hkdf.c_pt.bc'
source_filename = "../fs/crypto/hkdf.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.crypto_shash = type { i32, [124 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }

@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"hmac(sha512)\00", [19 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Error allocating hmac(sha512): %ld\00", [61 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fs/crypto/hkdf.c\00", [47 x i8] zeroinitializer }, align 32
@hkdf_extract.default_salt = internal constant { [64 x i8], [32 x i8] } zeroinitializer, align 32
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 75, i32 32 }
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 77, i32 3 }
@___asan_gen_.14 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 82, i32 6 }
@___asan_gen_.17 = private unnamed_addr constant [13 x i8] c"default_salt\00", align 1
@___asan_gen_.18 = private constant [20 x i8] c"../fs/crypto/hkdf.c\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 51, i32 18 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @hkdf_extract.default_salt], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hkdf_extract.default_salt to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fscrypt_init_hkdf(ptr nocapture noundef writeonly %hkdf, ptr noundef %master_key, i32 noundef %master_key_size) local_unnamed_addr #0 align 64 {
entry:
  %prk = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %prk) #4
  %0 = call ptr @memset(ptr %prk, i32 255, i32 64)
  %call = tail call ptr @crypto_alloc_shash(ptr noundef nonnull @.str, i32 noundef 0, i32 noundef 0) #4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %1 = ptrtoint ptr %call to i32
  tail call void (ptr, ptr, ptr, ...) @fscrypt_msg(ptr noundef null, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef %1) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_shash, ptr %call, i32 0, i32 2, i32 3
  %2 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %__crt_alg.i.i, align 4
  %digestsize.i = getelementptr i8, ptr %3, i32 -128
  %4 = ptrtoint ptr %digestsize.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %digestsize.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %5)
  %cmp.not = icmp eq i32 %5, 64
  br i1 %cmp.not, label %if.end27, label %do.end, !prof !20

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 82, i32 noundef 9, ptr noundef null) #4
  br label %err_free_tfm

if.end27:                                         ; preds = %if.end
  %call.i = tail call i32 @crypto_shash_setkey(ptr noundef %call, ptr noundef nonnull @hkdf_extract.default_salt, i32 noundef 64) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %hkdf_extract.exit, label %if.end27.err_free_tfm_crit_edge

if.end27.err_free_tfm_crit_edge:                  ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_free_tfm

hkdf_extract.exit:                                ; preds = %if.end27
  %call1.i = call i32 @crypto_shash_tfm_digest(ptr noundef %call, ptr noundef %master_key, i32 noundef %master_key_size, ptr noundef nonnull %prk) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool29.not = icmp eq i32 %call1.i, 0
  br i1 %tobool29.not, label %if.end31, label %hkdf_extract.exit.err_free_tfm_crit_edge

hkdf_extract.exit.err_free_tfm_crit_edge:         ; preds = %hkdf_extract.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_free_tfm

if.end31:                                         ; preds = %hkdf_extract.exit
  %call33 = call i32 @crypto_shash_setkey(ptr noundef %call, ptr noundef nonnull %prk, i32 noundef 64) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end36, label %if.end31.err_free_tfm_crit_edge

if.end31.err_free_tfm_crit_edge:                  ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_free_tfm

if.end36:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #6
  %6 = ptrtoint ptr %hkdf to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call, ptr %hkdf, align 4
  br label %out

err_free_tfm:                                     ; preds = %if.end31.err_free_tfm_crit_edge, %hkdf_extract.exit.err_free_tfm_crit_edge, %if.end27.err_free_tfm_crit_edge, %do.end
  %err.0 = phi i32 [ -22, %do.end ], [ %call1.i, %hkdf_extract.exit.err_free_tfm_crit_edge ], [ %call33, %if.end31.err_free_tfm_crit_edge ], [ %call.i, %if.end27.err_free_tfm_crit_edge ]
  %base.i.i = getelementptr inbounds %struct.crypto_shash, ptr %call, i32 0, i32 2
  call void @crypto_destroy_tfm(ptr noundef %call, ptr noundef %base.i.i) #4
  br label %out

out:                                              ; preds = %err_free_tfm, %if.end36
  %err.1 = phi i32 [ %err.0, %err_free_tfm ], [ 0, %if.end36 ]
  %7 = call ptr @memset(ptr %prk, i32 0, i32 64)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %prk) #4, !srcloc !21
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then
  %retval.0 = phi i32 [ %1, %if.then ], [ %err.1, %out ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %prk) #4
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_shash(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @fscrypt_msg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fscrypt_hkdf_expand(ptr nocapture noundef readonly %hkdf, i8 noundef zeroext %context, ptr noundef %info, i32 noundef %infolen, ptr noundef %okm, i32 noundef %okmlen) local_unnamed_addr #0 align 64 {
entry:
  %__desc_desc = alloca [376 x i8], align 8
  %prefix = alloca [9 x i8], align 8
  %counter = alloca i8, align 1
  %tmp = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 376, ptr nonnull %__desc_desc) #4
  %0 = call ptr @memset(ptr %__desc_desc, i32 255, i32 376)
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %prefix) #4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %counter) #4
  %1 = ptrtoint ptr %counter to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 1, ptr %counter, align 1
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %tmp) #4
  %2 = call ptr @memset(ptr %tmp, i32 255, i32 64)
  call void @__sanitizer_cov_trace_const_cmp4(i32 16320, i32 %okmlen)
  %cmp = icmp ugt i32 %okmlen, 16320
  br i1 %cmp, label %do.end, label %if.end22, !prof !22

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 128, i32 noundef 9, ptr noundef null) #4
  br label %cleanup

if.end22:                                         ; preds = %entry
  %3 = getelementptr inbounds [9 x i8], ptr %prefix, i32 0, i32 8
  %4 = ptrtoint ptr %hkdf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hkdf, align 4
  %6 = ptrtoint ptr %__desc_desc to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %__desc_desc, align 8
  %7 = ptrtoint ptr %prefix to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 7382353557505209344, ptr %prefix, align 8
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %context, ptr %3, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %okmlen)
  %cmp24116.not = icmp eq i32 %okmlen, 0
  br i1 %cmp24116.not, label %if.end22.if.end73_crit_edge, label %if.end22.for.body_crit_edge

if.end22.for.body_crit_edge:                      ; preds = %if.end22
  br label %for.body

if.end22.if.end73_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end73

for.body:                                         ; preds = %if.end63.for.body_crit_edge, %if.end22.for.body_crit_edge
  %prev.0119 = phi ptr [ %arrayidx64, %if.end63.for.body_crit_edge ], [ null, %if.end22.for.body_crit_edge ]
  %i.0117 = phi i32 [ %add, %if.end63.for.body_crit_edge ], [ 0, %if.end22.for.body_crit_edge ]
  %9 = ptrtoint ptr %__desc_desc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %__desc_desc, align 8
  %base.i.i.i = getelementptr inbounds %struct.crypto_shash, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %base.i.i.i, align 128
  %and.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %crypto_shash_init.exit, label %for.body.if.then72_crit_edge

for.body.if.then72_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then72

crypto_shash_init.exit:                           ; preds = %for.body
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_shash, ptr %10, i32 0, i32 2, i32 3
  %13 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %__crt_alg.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %14, i32 -256
  %15 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %add.ptr.i.i.i, align 128
  %call3.i = call i32 %16(ptr noundef nonnull %__desc_desc) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool25.not = icmp eq i32 %call3.i, 0
  br i1 %tobool25.not, label %if.end27, label %crypto_shash_init.exit.if.then72_crit_edge

crypto_shash_init.exit.if.then72_crit_edge:       ; preds = %crypto_shash_init.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then72

if.end27:                                         ; preds = %crypto_shash_init.exit
  %tobool28.not = icmp eq ptr %prev.0119, null
  br i1 %tobool28.not, label %if.end27.if.end34_crit_edge, label %if.then29

if.end27.if.end34_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end34

if.then29:                                        ; preds = %if.end27
  %call30 = call i32 @crypto_shash_update(ptr noundef nonnull %__desc_desc, ptr noundef nonnull %prev.0119, i32 noundef 64) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.then29.if.end34_crit_edge, label %if.then29.if.then72_crit_edge

if.then29.if.then72_crit_edge:                    ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then72

if.then29.if.end34_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end34

if.end34:                                         ; preds = %if.then29.if.end34_crit_edge, %if.end27.if.end34_crit_edge
  %call36 = call i32 @crypto_shash_update(ptr noundef nonnull %__desc_desc, ptr noundef nonnull %prefix, i32 noundef 9) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end39, label %if.end34.if.then72_crit_edge

if.end34.if.then72_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then72

if.end39:                                         ; preds = %if.end34
  %call40 = call i32 @crypto_shash_update(ptr noundef nonnull %__desc_desc, ptr noundef %info, i32 noundef %infolen) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %do.end46, label %if.end39.if.then72_crit_edge

if.end39.if.then72_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then72

do.end46:                                         ; preds = %if.end39
  %sub = sub i32 %okmlen, %i.0117
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %sub)
  %cmp47 = icmp ult i32 %sub, 64
  br i1 %cmp47, label %if.then48, label %if.else

if.then48:                                        ; preds = %do.end46
  %call50 = call i32 @crypto_shash_finup(ptr noundef nonnull %__desc_desc, ptr noundef nonnull %counter, i32 noundef 1, ptr noundef nonnull %tmp) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end53, label %if.then48.if.then72_crit_edge

if.then48.if.then72_crit_edge:                    ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then72

if.end53:                                         ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx54 = getelementptr i8, ptr %okm, i32 %i.0117
  %17 = call ptr @memcpy(ptr %arrayidx54, ptr %tmp, i32 %sub)
  %18 = call ptr @memset(ptr %tmp, i32 0, i32 64)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %tmp) #4, !srcloc !21
  br label %if.end63

if.else:                                          ; preds = %do.end46
  %arrayidx58 = getelementptr i8, ptr %okm, i32 %i.0117
  %call59 = call i32 @crypto_shash_finup(ptr noundef nonnull %__desc_desc, ptr noundef nonnull %counter, i32 noundef 1, ptr noundef %arrayidx58) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.else.if.end63_crit_edge, label %if.else.if.then72_crit_edge

if.else.if.then72_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then72

if.else.if.end63_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end63

if.end63:                                         ; preds = %if.else.if.end63_crit_edge, %if.end53
  %19 = ptrtoint ptr %counter to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %counter, align 1
  %inc = add i8 %20, 1
  store i8 %inc, ptr %counter, align 1
  %arrayidx64 = getelementptr i8, ptr %okm, i32 %i.0117
  %add = add i32 %i.0117, 64
  %cmp24 = icmp ult i32 %add, %okmlen
  br i1 %cmp24, label %if.end63.for.body_crit_edge, label %if.end63.if.end73_crit_edge

if.end63.if.end73_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end73

if.end63.for.body_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

if.then72:                                        ; preds = %if.else.if.then72_crit_edge, %if.then48.if.then72_crit_edge, %if.end39.if.then72_crit_edge, %if.end34.if.then72_crit_edge, %if.then29.if.then72_crit_edge, %crypto_shash_init.exit.if.then72_crit_edge, %for.body.if.then72_crit_edge
  %err.0.ph = phi i32 [ %call59, %if.else.if.then72_crit_edge ], [ %call50, %if.then48.if.then72_crit_edge ], [ %call40, %if.end39.if.then72_crit_edge ], [ %call36, %if.end34.if.then72_crit_edge ], [ %call30, %if.then29.if.then72_crit_edge ], [ %call3.i, %crypto_shash_init.exit.if.then72_crit_edge ], [ -126, %for.body.if.then72_crit_edge ]
  %21 = call ptr @memset(ptr %okm, i32 0, i32 %okmlen)
  call void asm sideeffect "", "r,~{memory}"(ptr %okm) #4, !srcloc !21
  br label %if.end73

if.end73:                                         ; preds = %if.then72, %if.end63.if.end73_crit_edge, %if.end22.if.end73_crit_edge
  %err.0115 = phi i32 [ %err.0.ph, %if.then72 ], [ 0, %if.end22.if.end73_crit_edge ], [ 0, %if.end63.if.end73_crit_edge ]
  %22 = ptrtoint ptr %__desc_desc to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %__desc_desc, align 8
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 128
  %add.i = add i32 %25, 8
  %26 = call ptr @memset(ptr %__desc_desc, i32 0, i32 %add.i)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %__desc_desc) #4, !srcloc !21
  br label %cleanup

cleanup:                                          ; preds = %if.end73, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %err.0115, %if.end73 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %tmp) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %counter) #4
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %prefix) #4
  call void @llvm.lifetime.end.p0(i64 376, ptr nonnull %__desc_desc) #4
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_update(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_finup(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fscrypt_destroy_hkdf(ptr nocapture noundef readonly %hkdf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hkdf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hkdf, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_shash, ptr %1, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %1, ptr noundef %base.i.i) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_tfm_digest(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9}
!llvm.module.flags = !{!11, !12, !13, !14, !15, !16, !17, !18}
!llvm.ident = !{!19}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/crypto/hkdf.c", i32 75, i32 32}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/crypto/hkdf.c", i32 77, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../fs/crypto/hkdf.c", i32 82, i32 6}
!7 = distinct !{null, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../fs/crypto/hkdf.c", i32 133, i32 17}
!9 = !{ptr @hkdf_extract.default_salt, !10, !"default_salt", i1 false, i1 false}
!10 = !{!"../fs/crypto/hkdf.c", i32 51, i32 18}
!11 = !{i32 1, !"wchar_size", i32 2}
!12 = !{i32 1, !"min_enum_size", i32 4}
!13 = !{i32 8, !"branch-target-enforcement", i32 0}
!14 = !{i32 8, !"sign-return-address", i32 0}
!15 = !{i32 8, !"sign-return-address-all", i32 0}
!16 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!17 = !{i32 7, !"uwtable", i32 1}
!18 = !{i32 7, !"frame-pointer", i32 2}
!19 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!20 = !{!"branch_weights", i32 2000, i32 1}
!21 = !{i64 2149246725}
!22 = !{!"branch_weights", i32 1, i32 2000}
