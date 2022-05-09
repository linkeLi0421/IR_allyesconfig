; ModuleID = '/llk/IR_all_yes/crypto/cfb.c_pt.bc'
source_filename = "../crypto/cfb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.crypto_template = type { %struct.list_head, %struct.hlist_head, ptr, ptr, [128 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.skcipher_instance = type { ptr, [124 x i8], %union.anon.43 }
%union.anon.43 = type { %struct.anon.44 }
%struct.anon.44 = type { [128 x i8], %struct.crypto_instance }
%struct.crypto_instance = type { %struct.crypto_alg, ptr, %union.anon.47, [116 x i8], [0 x ptr] }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon.45, ptr, ptr, ptr, ptr, %union.anon.46, [120 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%union.anon.45 = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%union.anon.46 = type { %struct.crypto_istat_akcipher }
%struct.crypto_istat_akcipher = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%union.anon.47 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.skcipher_walk = type { %union.anon.49, %union.anon.49, %struct.scatter_walk, i32, %struct.scatter_walk, i32, %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32 }
%union.anon.49 = type { %struct.anon.50 }
%struct.anon.50 = type { ptr, i32 }
%struct.scatter_walk = type { ptr, i32 }
%struct.skcipher_request = type { i32, ptr, ptr, ptr, %struct.crypto_async_request, [88 x i8], [0 x ptr] }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.anon.51 = type { ptr, ptr }

@crypto_cfb_tmpl = internal global { %struct.crypto_template, [44 x i8] } { %struct.crypto_template { %struct.list_head zeroinitializer, %struct.hlist_head zeroinitializer, ptr null, ptr @crypto_cfb_create, [128 x i8] c"cfb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, [44 x i8] zeroinitializer }, align 32
@__initcall__kmod_cfb__173_248_crypto_cfb_module_init4 = internal global ptr @crypto_cfb_module_init, section ".initcall4.init", align 4
@__exitcall_crypto_cfb_module_exit = internal global ptr @crypto_cfb_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file174 = internal constant [20 x i8] c"cfb.file=crypto/cfb\00", section ".modinfo", align 1
@__UNIQUE_ID_license175 = internal constant [16 x i8] c"cfb.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description176 = internal constant [51 x i8] c"cfb.description=CFB block cipher mode of operation\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace177 = internal constant [14 x i8] c"cfb.alias=cfb\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto178 = internal constant [21 x i8] c"cfb.alias=crypto-cfb\00", section ".modinfo", align 1
@__UNIQUE_ID_import_ns179 = internal constant [30 x i8] c"cfb.import_ns=CRYPTO_INTERNAL\00", section ".modinfo", align 1
@___asan_gen_.1 = private unnamed_addr constant [16 x i8] c"crypto_cfb_tmpl\00", align 1
@___asan_gen_.2 = private constant [16 x i8] c"../crypto/cfb.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 232, i32 31 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @__UNIQUE_ID_alias_crypto178, ptr @__UNIQUE_ID_alias_userspace177, ptr @__UNIQUE_ID_description176, ptr @__UNIQUE_ID_file174, ptr @__UNIQUE_ID_import_ns179, ptr @__UNIQUE_ID_license175, ptr @__exitcall_crypto_cfb_module_exit, ptr @__initcall__kmod_cfb__173_248_crypto_cfb_module_init4, ptr @crypto_cfb_module_exit, ptr @crypto_cfb_tmpl], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crypto_cfb_tmpl to i32), i32 148, i32 192, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @crypto_cfb_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @crypto_unregister_template(ptr noundef nonnull @crypto_cfb_tmpl) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_template(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @crypto_cfb_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @crypto_register_template(ptr noundef nonnull @crypto_cfb_tmpl) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @crypto_cfb_create(ptr noundef %tmpl, ptr noundef %tb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @skcipher_alloc_instance_simple(ptr noundef %tmpl, ptr noundef %tb) #4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %alg.i.i = getelementptr inbounds %struct.skcipher_instance, ptr %call, i32 1, i32 1, i32 4
  %1 = ptrtoint ptr %alg.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %alg.i.i, align 4
  %cra_blocksize = getelementptr inbounds %struct.skcipher_instance, ptr %call, i32 0, i32 2, i32 0, i32 1, i32 0, i32 3
  %3 = ptrtoint ptr %cra_blocksize to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %cra_blocksize, align 4
  %cra_blocksize4 = getelementptr inbounds %struct.crypto_alg, ptr %2, i32 0, i32 3
  %4 = ptrtoint ptr %cra_blocksize4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cra_blocksize4, align 4
  %chunksize = getelementptr inbounds %struct.skcipher_instance, ptr %call, i32 0, i32 2, i32 0, i32 0, i32 32
  %6 = ptrtoint ptr %chunksize to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %chunksize, align 32
  %encrypt = getelementptr inbounds %struct.skcipher_instance, ptr %call, i32 0, i32 2, i32 0, i32 0, i32 4
  %7 = ptrtoint ptr %encrypt to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @crypto_cfb_encrypt, ptr %encrypt, align 4
  %decrypt = getelementptr inbounds %struct.skcipher_instance, ptr %call, i32 0, i32 2, i32 0, i32 0, i32 8
  %8 = ptrtoint ptr %decrypt to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @crypto_cfb_decrypt, ptr %decrypt, align 8
  %call5 = tail call i32 @skcipher_register_instance(ptr noundef %tmpl, ptr noundef %call) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %9 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %call, align 128
  tail call void %10(ptr noundef %call) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %call5, %if.then6 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skcipher_alloc_instance_simple(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @crypto_cfb_encrypt(ptr noundef %req) #2 align 64 {
entry:
  %tmp.i45 = alloca [31 x i8], align 1
  %tmp.i = alloca [16 x i8], align 1
  %walk = alloca %struct.skcipher_walk, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  call void @llvm.lifetime.start.p0(i64 84, ptr nonnull %walk) #4
  %2 = call ptr @memset(ptr %walk, i32 255, i32 84)
  %__crt_ctx.i.i.i.i = getelementptr i8, ptr %1, i32 128
  %3 = ptrtoint ptr %__crt_ctx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %__crt_ctx.i.i.i.i, align 4
  %__crt_alg.i.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %__crt_alg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %__crt_alg.i.i.i, align 4
  %cra_blocksize.i.i.i = getelementptr inbounds %struct.crypto_alg, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cra_blocksize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cra_blocksize.i.i.i, align 4
  %call2 = call i32 @skcipher_walk_virt(ptr noundef nonnull %walk, ptr noundef %req, i1 noundef zeroext false) #4
  %nbytes = getelementptr inbounds %struct.skcipher_walk, ptr %walk, i32 0, i32 3
  %9 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nbytes, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %8)
  %cmp.not60 = icmp ult i32 %10, %8
  br i1 %cmp.not60, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %addr = getelementptr inbounds %struct.anon.51, ptr %walk, i32 0, i32 1
  %addr3 = getelementptr inbounds %struct.skcipher_walk, ptr %walk, i32 0, i32 1, i32 0, i32 1
  %iv5.i = getelementptr inbounds %struct.skcipher_walk, ptr %walk, i32 0, i32 10
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %while.body.lr.ph
  %11 = phi i32 [ %10, %while.body.lr.ph ], [ %36, %if.end.while.body_crit_edge ]
  %12 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %addr, align 4
  %14 = ptrtoint ptr %addr3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %addr3, align 4
  %cmp4 = icmp eq ptr %13, %15
  %16 = ptrtoint ptr %__crt_ctx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__crt_ctx.i.i.i.i, align 4
  %__crt_alg.i.i.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %__crt_alg.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %__crt_alg.i.i.i.i, align 4
  %cra_blocksize.i.i.i.i = getelementptr inbounds %struct.crypto_alg, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %cra_blocksize.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cra_blocksize.i.i.i.i, align 4
  %22 = ptrtoint ptr %iv5.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %iv5.i, align 4
  br i1 %cmp4, label %if.then, label %while.body.do.body.i29_crit_edge

while.body.do.body.i29_crit_edge:                 ; preds = %while.body
  br label %do.body.i29

if.then:                                          ; preds = %while.body
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp.i) #4
  %24 = call ptr @memset(ptr %tmp.i, i32 255, i32 16)
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %if.then
  %nbytes.0.i = phi i32 [ %11, %if.then ], [ %sub.i, %do.body.i.do.body.i_crit_edge ]
  %src.0.i = phi ptr [ %13, %if.then ], [ %add.ptr.i, %do.body.i.do.body.i_crit_edge ]
  %iv.0.i = phi ptr [ %23, %if.then ], [ %src.0.i, %do.body.i.do.body.i_crit_edge ]
  %25 = ptrtoint ptr %__crt_ctx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %__crt_ctx.i.i.i.i, align 4
  call void @crypto_cipher_encrypt_one(ptr noundef %26, ptr noundef nonnull %tmp.i, ptr noundef %iv.0.i) #4
  call void @__crypto_xor(ptr noundef %src.0.i, ptr noundef %src.0.i, ptr noundef nonnull %tmp.i, i32 noundef %21) #4
  %add.ptr.i = getelementptr i8, ptr %src.0.i, i32 %21
  %sub.i = sub i32 %nbytes.0.i, %21
  %cmp.not.i = icmp ult i32 %sub.i, %21
  br i1 %cmp.not.i, label %crypto_cfb_encrypt_inplace.exit, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i

crypto_cfb_encrypt_inplace.exit:                  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  %27 = ptrtoint ptr %iv5.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %iv5.i, align 4
  %29 = call ptr @memcpy(ptr %28, ptr %src.0.i, i32 %21)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp.i) #4
  br label %if.end

do.body.i29:                                      ; preds = %do.body.i29.do.body.i29_crit_edge, %while.body.do.body.i29_crit_edge
  %nbytes.0.i25 = phi i32 [ %sub.i42, %do.body.i29.do.body.i29_crit_edge ], [ %11, %while.body.do.body.i29_crit_edge ]
  %src.0.i26 = phi ptr [ %add.ptr.i41, %do.body.i29.do.body.i29_crit_edge ], [ %13, %while.body.do.body.i29_crit_edge ]
  %dst.0.i = phi ptr [ %add.ptr6.i, %do.body.i29.do.body.i29_crit_edge ], [ %15, %while.body.do.body.i29_crit_edge ]
  %iv.0.i27 = phi ptr [ %dst.0.i, %do.body.i29.do.body.i29_crit_edge ], [ %23, %while.body.do.body.i29_crit_edge ]
  %30 = ptrtoint ptr %__crt_ctx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %__crt_ctx.i.i.i.i, align 4
  call void @crypto_cipher_encrypt_one(ptr noundef %31, ptr noundef %dst.0.i, ptr noundef %iv.0.i27) #4
  call void @__crypto_xor(ptr noundef %dst.0.i, ptr noundef %dst.0.i, ptr noundef %src.0.i26, i32 noundef %21) #4
  %add.ptr.i41 = getelementptr i8, ptr %src.0.i26, i32 %21
  %add.ptr6.i = getelementptr i8, ptr %dst.0.i, i32 %21
  %sub.i42 = sub i32 %nbytes.0.i25, %21
  %cmp.not.i43 = icmp ult i32 %sub.i42, %21
  br i1 %cmp.not.i43, label %crypto_cfb_encrypt_segment.exit, label %do.body.i29.do.body.i29_crit_edge

do.body.i29.do.body.i29_crit_edge:                ; preds = %do.body.i29
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i29

crypto_cfb_encrypt_segment.exit:                  ; preds = %do.body.i29
  call void @__sanitizer_cov_trace_pc() #6
  %32 = ptrtoint ptr %iv5.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %iv5.i, align 4
  %34 = call ptr @memcpy(ptr %33, ptr %dst.0.i, i32 %21)
  br label %if.end

if.end:                                           ; preds = %crypto_cfb_encrypt_segment.exit, %crypto_cfb_encrypt_inplace.exit
  %err.1 = phi i32 [ %sub.i, %crypto_cfb_encrypt_inplace.exit ], [ %sub.i42, %crypto_cfb_encrypt_segment.exit ]
  %call7 = call i32 @skcipher_walk_done(ptr noundef nonnull %walk, i32 noundef %err.1) #4
  %35 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %nbytes, align 4
  %cmp.not = icmp ult i32 %36, %8
  br i1 %cmp.not, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %entry.while.end_crit_edge
  %err.0.lcssa = phi i32 [ %call2, %entry.while.end_crit_edge ], [ %call7, %if.end.while.end_crit_edge ]
  %.lcssa = phi i32 [ %10, %entry.while.end_crit_edge ], [ %36, %if.end.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.lcssa)
  %tobool.not = icmp eq i32 %.lcssa, 0
  br i1 %tobool.not, label %while.end.if.end11_crit_edge, label %if.then9

while.end.if.end11_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end11

if.then9:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #6
  %__crt_alg.i.i.i46 = getelementptr i8, ptr %1, i32 12
  %37 = ptrtoint ptr %__crt_alg.i.i.i46 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %__crt_alg.i.i.i46, align 4
  %cra_alignmask.i.i.i = getelementptr inbounds %struct.crypto_alg, ptr %38, i32 0, i32 5
  %39 = ptrtoint ptr %cra_alignmask.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %cra_alignmask.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 31, ptr nonnull %tmp.i45) #4
  %41 = ptrtoint ptr %tmp.i45 to i32
  %add1.i = add i32 %40, %41
  %neg.i = xor i32 %40, -1
  %and.i = and i32 %add1.i, %neg.i
  %42 = inttoptr i32 %and.i to ptr
  %addr.i47 = getelementptr inbounds %struct.anon.51, ptr %walk, i32 0, i32 1
  %43 = call ptr @memset(ptr %tmp.i45, i32 255, i32 31)
  %44 = ptrtoint ptr %addr.i47 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %addr.i47, align 4
  %addr6.i = getelementptr inbounds %struct.skcipher_walk, ptr %walk, i32 0, i32 1, i32 0, i32 1
  %46 = ptrtoint ptr %addr6.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %addr6.i, align 4
  %iv7.i = getelementptr inbounds %struct.skcipher_walk, ptr %walk, i32 0, i32 10
  %48 = ptrtoint ptr %iv7.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %iv7.i, align 4
  %50 = ptrtoint ptr %__crt_ctx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %__crt_ctx.i.i.i.i, align 4
  call void @crypto_cipher_encrypt_one(ptr noundef %51, ptr noundef %42, ptr noundef %49) #4
  call void @__crypto_xor(ptr noundef %47, ptr noundef %42, ptr noundef %45, i32 noundef %.lcssa) #4
  call void @llvm.lifetime.end.p0(i64 31, ptr nonnull %tmp.i45) #4
  %call10 = call i32 @skcipher_walk_done(ptr noundef nonnull %walk, i32 noundef 0) #4
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %while.end.if.end11_crit_edge
  %err.2 = phi i32 [ %call10, %if.then9 ], [ %err.0.lcssa, %while.end.if.end11_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %walk) #4
  ret i32 %err.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @crypto_cfb_decrypt(ptr noundef %req) #2 align 64 {
entry:
  %tmp.i = alloca [31 x i8], align 1
  %tmp.i.i = alloca [16 x i8], align 1
  %walk = alloca %struct.skcipher_walk, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  call void @llvm.lifetime.start.p0(i64 84, ptr nonnull %walk) #4
  %2 = call ptr @memset(ptr %walk, i32 255, i32 84)
  %__crt_ctx.i.i.i.i = getelementptr i8, ptr %1, i32 128
  %3 = ptrtoint ptr %__crt_ctx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %__crt_ctx.i.i.i.i, align 4
  %__crt_alg.i.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %__crt_alg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %__crt_alg.i.i.i, align 4
  %cra_blocksize.i.i.i = getelementptr inbounds %struct.crypto_alg, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cra_blocksize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cra_blocksize.i.i.i, align 4
  %call2 = call i32 @skcipher_walk_virt(ptr noundef nonnull %walk, ptr noundef %req, i1 noundef zeroext false) #4
  %nbytes = getelementptr inbounds %struct.skcipher_walk, ptr %walk, i32 0, i32 3
  %9 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nbytes, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %8)
  %cmp.not15 = icmp ult i32 %10, %8
  br i1 %cmp.not15, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %addr.i = getelementptr inbounds %struct.anon.51, ptr %walk, i32 0, i32 1
  %addr1.i = getelementptr inbounds %struct.skcipher_walk, ptr %walk, i32 0, i32 1, i32 0, i32 1
  %iv3.i.i = getelementptr inbounds %struct.skcipher_walk, ptr %walk, i32 0, i32 10
  br label %while.body

while.body:                                       ; preds = %crypto_cfb_decrypt_blocks.exit.while.body_crit_edge, %while.body.lr.ph
  %11 = phi i32 [ %10, %while.body.lr.ph ], [ %34, %crypto_cfb_decrypt_blocks.exit.while.body_crit_edge ]
  %12 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %addr.i, align 4
  %14 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %addr1.i, align 4
  %cmp.i = icmp eq ptr %13, %15
  %16 = ptrtoint ptr %__crt_ctx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__crt_ctx.i.i.i.i, align 4
  %__crt_alg.i.i.i.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %__crt_alg.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %__crt_alg.i.i.i.i.i, align 4
  %cra_blocksize.i.i.i.i.i = getelementptr inbounds %struct.crypto_alg, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %cra_blocksize.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cra_blocksize.i.i.i.i.i, align 4
  %22 = ptrtoint ptr %iv3.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %iv3.i.i, align 4
  br i1 %cmp.i, label %if.then.i, label %while.body.do.body.i18.i_crit_edge

while.body.do.body.i18.i_crit_edge:               ; preds = %while.body
  br label %do.body.i18.i

if.then.i:                                        ; preds = %while.body
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp.i.i) #4
  %24 = call ptr @memset(ptr %tmp.i.i, i32 255, i32 16)
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %if.then.i
  %nbytes.0.i.i = phi i32 [ %11, %if.then.i ], [ %sub.i.i, %do.body.i.i.do.body.i.i_crit_edge ]
  %src.0.i.i = phi ptr [ %13, %if.then.i ], [ %add.ptr.i.i11, %do.body.i.i.do.body.i.i_crit_edge ]
  %25 = ptrtoint ptr %__crt_ctx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %__crt_ctx.i.i.i.i, align 4
  call void @crypto_cipher_encrypt_one(ptr noundef %26, ptr noundef nonnull %tmp.i.i, ptr noundef %23) #4
  %27 = call ptr @memcpy(ptr %23, ptr %src.0.i.i, i32 %21)
  call void @__crypto_xor(ptr noundef %src.0.i.i, ptr noundef %src.0.i.i, ptr noundef nonnull %tmp.i.i, i32 noundef %21) #4
  %add.ptr.i.i11 = getelementptr i8, ptr %src.0.i.i, i32 %21
  %sub.i.i = sub i32 %nbytes.0.i.i, %21
  %cmp.not.i.i = icmp ult i32 %sub.i.i, %21
  br i1 %cmp.not.i.i, label %crypto_cfb_decrypt_inplace.exit.i, label %do.body.i.i.do.body.i.i_crit_edge

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i.i

crypto_cfb_decrypt_inplace.exit.i:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp.i.i) #4
  br label %crypto_cfb_decrypt_blocks.exit

do.body.i18.i:                                    ; preds = %do.body.i18.i.do.body.i18.i_crit_edge, %while.body.do.body.i18.i_crit_edge
  %nbytes.0.i15.i = phi i32 [ %sub.i31.i, %do.body.i18.i.do.body.i18.i_crit_edge ], [ %11, %while.body.do.body.i18.i_crit_edge ]
  %src.0.i16.i = phi ptr [ %add.ptr.i30.i, %do.body.i18.i.do.body.i18.i_crit_edge ], [ %13, %while.body.do.body.i18.i_crit_edge ]
  %dst.0.i.i = phi ptr [ %add.ptr6.i.i, %do.body.i18.i.do.body.i18.i_crit_edge ], [ %15, %while.body.do.body.i18.i_crit_edge ]
  %iv.0.i.i = phi ptr [ %src.0.i16.i, %do.body.i18.i.do.body.i18.i_crit_edge ], [ %23, %while.body.do.body.i18.i_crit_edge ]
  %28 = ptrtoint ptr %__crt_ctx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %__crt_ctx.i.i.i.i, align 4
  call void @crypto_cipher_encrypt_one(ptr noundef %29, ptr noundef %dst.0.i.i, ptr noundef %iv.0.i.i) #4
  call void @__crypto_xor(ptr noundef %dst.0.i.i, ptr noundef %dst.0.i.i, ptr noundef %src.0.i16.i, i32 noundef %21) #4
  %add.ptr.i30.i = getelementptr i8, ptr %src.0.i16.i, i32 %21
  %add.ptr6.i.i = getelementptr i8, ptr %dst.0.i.i, i32 %21
  %sub.i31.i = sub i32 %nbytes.0.i15.i, %21
  %cmp.not.i32.i = icmp ult i32 %sub.i31.i, %21
  br i1 %cmp.not.i32.i, label %crypto_cfb_decrypt_segment.exit.i, label %do.body.i18.i.do.body.i18.i_crit_edge

do.body.i18.i.do.body.i18.i_crit_edge:            ; preds = %do.body.i18.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i18.i

crypto_cfb_decrypt_segment.exit.i:                ; preds = %do.body.i18.i
  call void @__sanitizer_cov_trace_pc() #6
  %30 = ptrtoint ptr %iv3.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %iv3.i.i, align 4
  %32 = call ptr @memcpy(ptr %31, ptr %src.0.i16.i, i32 %21)
  br label %crypto_cfb_decrypt_blocks.exit

crypto_cfb_decrypt_blocks.exit:                   ; preds = %crypto_cfb_decrypt_segment.exit.i, %crypto_cfb_decrypt_inplace.exit.i
  %retval.0.i = phi i32 [ %sub.i.i, %crypto_cfb_decrypt_inplace.exit.i ], [ %sub.i31.i, %crypto_cfb_decrypt_segment.exit.i ]
  %call4 = call i32 @skcipher_walk_done(ptr noundef nonnull %walk, i32 noundef %retval.0.i) #4
  %33 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %nbytes, align 4
  %cmp.not = icmp ult i32 %34, %8
  br i1 %cmp.not, label %crypto_cfb_decrypt_blocks.exit.while.end_crit_edge, label %crypto_cfb_decrypt_blocks.exit.while.body_crit_edge

crypto_cfb_decrypt_blocks.exit.while.body_crit_edge: ; preds = %crypto_cfb_decrypt_blocks.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

crypto_cfb_decrypt_blocks.exit.while.end_crit_edge: ; preds = %crypto_cfb_decrypt_blocks.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.end:                                        ; preds = %crypto_cfb_decrypt_blocks.exit.while.end_crit_edge, %entry.while.end_crit_edge
  %err.0.lcssa = phi i32 [ %call2, %entry.while.end_crit_edge ], [ %call4, %crypto_cfb_decrypt_blocks.exit.while.end_crit_edge ]
  %.lcssa = phi i32 [ %10, %entry.while.end_crit_edge ], [ %34, %crypto_cfb_decrypt_blocks.exit.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.lcssa)
  %tobool.not = icmp eq i32 %.lcssa, 0
  br i1 %tobool.not, label %while.end.if.end_crit_edge, label %if.then

while.end.if.end_crit_edge:                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #6
  %__crt_alg.i.i.i12 = getelementptr i8, ptr %1, i32 12
  %35 = ptrtoint ptr %__crt_alg.i.i.i12 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %__crt_alg.i.i.i12, align 4
  %cra_alignmask.i.i.i = getelementptr inbounds %struct.crypto_alg, ptr %36, i32 0, i32 5
  %37 = ptrtoint ptr %cra_alignmask.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %cra_alignmask.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 31, ptr nonnull %tmp.i) #4
  %39 = ptrtoint ptr %tmp.i to i32
  %add1.i = add i32 %38, %39
  %neg.i = xor i32 %38, -1
  %and.i = and i32 %add1.i, %neg.i
  %40 = inttoptr i32 %and.i to ptr
  %addr.i13 = getelementptr inbounds %struct.anon.51, ptr %walk, i32 0, i32 1
  %41 = call ptr @memset(ptr %tmp.i, i32 255, i32 31)
  %42 = ptrtoint ptr %addr.i13 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %addr.i13, align 4
  %addr6.i = getelementptr inbounds %struct.skcipher_walk, ptr %walk, i32 0, i32 1, i32 0, i32 1
  %44 = ptrtoint ptr %addr6.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %addr6.i, align 4
  %iv7.i = getelementptr inbounds %struct.skcipher_walk, ptr %walk, i32 0, i32 10
  %46 = ptrtoint ptr %iv7.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %iv7.i, align 4
  %48 = ptrtoint ptr %__crt_ctx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %__crt_ctx.i.i.i.i, align 4
  call void @crypto_cipher_encrypt_one(ptr noundef %49, ptr noundef %40, ptr noundef %47) #4
  call void @__crypto_xor(ptr noundef %45, ptr noundef %40, ptr noundef %43, i32 noundef %.lcssa) #4
  call void @llvm.lifetime.end.p0(i64 31, ptr nonnull %tmp.i) #4
  %call6 = call i32 @skcipher_walk_done(ptr noundef nonnull %walk, i32 noundef 0) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end.if.end_crit_edge
  %err.1 = phi i32 [ %call6, %if.then ], [ %err.0.lcssa, %while.end.if.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %walk) #4
  ret i32 %err.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skcipher_register_instance(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skcipher_walk_virt(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skcipher_walk_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_cipher_encrypt_one(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__crypto_xor(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_template(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !12, !14}
!llvm.module.flags = !{!16, !17, !18, !19, !20, !21, !22, !23}
!llvm.ident = !{!24}

!0 = !{ptr @__initcall__kmod_cfb__173_248_crypto_cfb_module_init4, !1, !"__initcall__kmod_cfb__173_248_crypto_cfb_module_init4", i1 false, i1 false}
!1 = !{!"../crypto/cfb.c", i32 248, i32 1}
!2 = !{ptr @__exitcall_crypto_cfb_module_exit, !3, !"__exitcall_crypto_cfb_module_exit", i1 false, i1 false}
!3 = !{!"../crypto/cfb.c", i32 249, i32 1}
!4 = !{ptr @__UNIQUE_ID_file174, !5, !"__UNIQUE_ID_file174", i1 false, i1 false}
!5 = !{!"../crypto/cfb.c", i32 251, i32 1}
!6 = !{ptr @__UNIQUE_ID_license175, !5, !"__UNIQUE_ID_license175", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_description176, !8, !"__UNIQUE_ID_description176", i1 false, i1 false}
!8 = !{!"../crypto/cfb.c", i32 252, i32 1}
!9 = !{ptr @__UNIQUE_ID_alias_userspace177, !10, !"__UNIQUE_ID_alias_userspace177", i1 false, i1 false}
!10 = !{!"../crypto/cfb.c", i32 253, i32 1}
!11 = !{ptr @__UNIQUE_ID_alias_crypto178, !10, !"__UNIQUE_ID_alias_crypto178", i1 false, i1 false}
!12 = !{ptr @__UNIQUE_ID_import_ns179, !13, !"__UNIQUE_ID_import_ns179", i1 false, i1 false}
!13 = !{!"../crypto/cfb.c", i32 254, i32 1}
!14 = !{ptr @crypto_cfb_tmpl, !15, !"crypto_cfb_tmpl", i1 false, i1 false}
!15 = !{!"../crypto/cfb.c", i32 232, i32 31}
!16 = !{i32 1, !"wchar_size", i32 2}
!17 = !{i32 1, !"min_enum_size", i32 4}
!18 = !{i32 8, !"branch-target-enforcement", i32 0}
!19 = !{i32 8, !"sign-return-address", i32 0}
!20 = !{i32 8, !"sign-return-address-all", i32 0}
!21 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!22 = !{i32 7, !"uwtable", i32 1}
!23 = !{i32 7, !"frame-pointer", i32 2}
!24 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
