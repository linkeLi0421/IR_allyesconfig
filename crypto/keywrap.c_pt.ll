; ModuleID = '/llk/IR_all_yes/crypto/keywrap.c_pt.bc'
source_filename = "../crypto/keywrap.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.crypto_template = type { %struct.list_head, %struct.hlist_head, ptr, ptr, [128 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.skcipher_instance = type { ptr, [124 x i8], %union.anon.71 }
%union.anon.71 = type { %struct.anon.72 }
%struct.anon.72 = type { [128 x i8], %struct.crypto_instance }
%struct.crypto_instance = type { %struct.crypto_alg, ptr, %union.anon.75, [116 x i8], [0 x ptr] }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon.73, ptr, ptr, ptr, ptr, %union.anon.74, [120 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%union.anon.73 = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%union.anon.74 = type { %struct.crypto_istat_akcipher }
%struct.crypto_istat_akcipher = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%union.anon.75 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.crypto_kw_block = type { i64, i64 }
%struct.scatter_walk = type { ptr, i32 }
%struct.skcipher_request = type { i32, ptr, ptr, ptr, %struct.crypto_async_request, [88 x i8], [0 x ptr] }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }

@crypto_kw_tmpl = internal global { %struct.crypto_template, [44 x i8] } { %struct.crypto_template { %struct.list_head zeroinitializer, %struct.hlist_head zeroinitializer, ptr null, ptr @crypto_kw_create, [128 x i8] c"kw\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, [44 x i8] zeroinitializer }, align 32
@__initcall__kmod_keywrap__239_313_crypto_kw_init4 = internal global ptr @crypto_kw_init, section ".initcall4.init", align 4
@__exitcall_crypto_kw_exit = internal global ptr @crypto_kw_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file240 = internal constant [28 x i8] c"keywrap.file=crypto/keywrap\00", section ".modinfo", align 1
@__UNIQUE_ID_license241 = internal constant [29 x i8] c"keywrap.license=Dual BSD/GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author242 = internal constant [53 x i8] c"keywrap.author=Stephan Mueller <smueller@chronox.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description243 = internal constant [60 x i8] c"keywrap.description=Key Wrapping (RFC3394 / NIST SP800-38F)\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace244 = internal constant [17 x i8] c"keywrap.alias=kw\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto245 = internal constant [24 x i8] c"keywrap.alias=crypto-kw\00", section ".modinfo", align 1
@__UNIQUE_ID_import_ns246 = internal constant [34 x i8] c"keywrap.import_ns=CRYPTO_INTERNAL\00", section ".modinfo", align 1
@___asan_gen_.1 = private unnamed_addr constant [15 x i8] c"crypto_kw_tmpl\00", align 1
@___asan_gen_.2 = private constant [20 x i8] c"../crypto/keywrap.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 297, i32 31 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @__UNIQUE_ID_alias_crypto245, ptr @__UNIQUE_ID_alias_userspace244, ptr @__UNIQUE_ID_author242, ptr @__UNIQUE_ID_description243, ptr @__UNIQUE_ID_file240, ptr @__UNIQUE_ID_import_ns246, ptr @__UNIQUE_ID_license241, ptr @__exitcall_crypto_kw_exit, ptr @__initcall__kmod_keywrap__239_313_crypto_kw_init4, ptr @crypto_kw_exit, ptr @crypto_kw_tmpl], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crypto_kw_tmpl to i32), i32 148, i32 192, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @crypto_kw_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @crypto_unregister_template(ptr noundef nonnull @crypto_kw_tmpl) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_template(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @crypto_kw_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @crypto_register_template(ptr noundef nonnull @crypto_kw_tmpl) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @crypto_kw_create(ptr noundef %tmpl, ptr noundef %tb) #2 align 64 {
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
  %cra_blocksize = getelementptr inbounds %struct.crypto_alg, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %cra_blocksize to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cra_blocksize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %4)
  %cmp.not = icmp eq i32 %4, 16
  br i1 %cmp.not, label %if.end5, label %if.end.out_free_inst_crit_edge

if.end.out_free_inst_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_free_inst

if.end5:                                          ; preds = %if.end
  %cra_blocksize6 = getelementptr inbounds %struct.skcipher_instance, ptr %call, i32 0, i32 2, i32 0, i32 1, i32 0, i32 3
  %5 = ptrtoint ptr %cra_blocksize6 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 8, ptr %cra_blocksize6, align 4
  %cra_alignmask = getelementptr inbounds %struct.skcipher_instance, ptr %call, i32 0, i32 2, i32 0, i32 1, i32 0, i32 5
  %6 = ptrtoint ptr %cra_alignmask to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %cra_alignmask, align 4
  %ivsize = getelementptr inbounds %struct.skcipher_instance, ptr %call, i32 0, i32 2, i32 0, i32 0, i32 28
  %7 = ptrtoint ptr %ivsize to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 8, ptr %ivsize, align 4
  %encrypt = getelementptr inbounds %struct.skcipher_instance, ptr %call, i32 0, i32 2, i32 0, i32 0, i32 4
  %8 = ptrtoint ptr %encrypt to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @crypto_kw_encrypt, ptr %encrypt, align 4
  %decrypt = getelementptr inbounds %struct.skcipher_instance, ptr %call, i32 0, i32 2, i32 0, i32 0, i32 8
  %9 = ptrtoint ptr %decrypt to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @crypto_kw_decrypt, ptr %decrypt, align 8
  %call8 = tail call i32 @skcipher_register_instance(ptr noundef %tmpl, ptr noundef %call) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.end5.cleanup_crit_edge, label %if.end5.out_free_inst_crit_edge

if.end5.out_free_inst_crit_edge:                  ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_free_inst

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

out_free_inst:                                    ; preds = %if.end5.out_free_inst_crit_edge, %if.end.out_free_inst_crit_edge
  %err.0 = phi i32 [ -22, %if.end.out_free_inst_crit_edge ], [ %call8, %if.end5.out_free_inst_crit_edge ]
  %10 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %call, align 128
  tail call void %11(ptr noundef %call) #4
  br label %cleanup

cleanup:                                          ; preds = %out_free_inst, %if.end5.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %err.0, %out_free_inst ], [ 0, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skcipher_alloc_instance_simple(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @crypto_kw_encrypt(ptr nocapture noundef readonly %req) #2 align 64 {
entry:
  %block = alloca %struct.crypto_kw_block, align 8
  %src_walk = alloca %struct.scatter_walk, align 4
  %dst_walk = alloca %struct.scatter_walk, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__crt_ctx.i.i.i = getelementptr i8, ptr %1, i32 128
  %2 = ptrtoint ptr %__crt_ctx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %__crt_ctx.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %block) #4
  %4 = getelementptr inbounds %struct.crypto_kw_block, ptr %block, i32 0, i32 1
  %5 = getelementptr inbounds i8, ptr %block, i32 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 -1, ptr %5, align 8
  %7 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %req, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %8)
  %cmp = icmp ugt i32 %8, 15
  %rem = and i32 %8, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool.not = icmp eq i32 %rem, 0
  %or.cond = and i1 %cmp, %tobool.not
  br i1 %or.cond, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = ptrtoint ptr %block to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 -6438275382588823898, ptr %block, align 8
  %src3 = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 2
  %10 = ptrtoint ptr %src3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %src3, align 8
  %dst4 = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 3
  %12 = ptrtoint ptr %dst4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dst4, align 4
  %14 = getelementptr inbounds %struct.scatter_walk, ptr %src_walk, i32 0, i32 1
  %15 = getelementptr inbounds %struct.scatter_walk, ptr %dst_walk, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %while.end.for.body_crit_edge, %if.end
  %i.039 = phi i32 [ 0, %if.end ], [ %inc12, %while.end.for.body_crit_edge ]
  %t.038 = phi i64 [ 1, %if.end ], [ %t.1.lcssa, %while.end.for.body_crit_edge ]
  %dst.037 = phi ptr [ %13, %if.end ], [ %30, %while.end.for.body_crit_edge ]
  %src.036 = phi ptr [ %11, %if.end ], [ %30, %while.end.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %src_walk) #4
  %16 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %14, align 4, !annotation !27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dst_walk) #4
  %17 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %15, align 4, !annotation !27
  %18 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %req, align 128
  %20 = ptrtoint ptr %src_walk to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %src.036, ptr %src_walk, align 4
  %offset.i = getelementptr inbounds %struct.scatterlist, ptr %src.036, i32 0, i32 1
  %21 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %offset.i, align 4
  %23 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %14, align 4
  %24 = ptrtoint ptr %dst_walk to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %dst.037, ptr %dst_walk, align 4
  %offset.i31 = getelementptr inbounds %struct.scatterlist, ptr %dst.037, i32 0, i32 1
  %25 = ptrtoint ptr %offset.i31 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %offset.i31, align 4
  store i32 %26, ptr %15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool7.not33 = icmp eq i32 %19, 0
  br i1 %tobool7.not33, label %for.body.while.end_crit_edge, label %for.body.while.body_crit_edge

for.body.while.body_crit_edge:                    ; preds = %for.body
  br label %while.body

for.body.while.end_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %for.body.while.body_crit_edge
  %nbytes.035 = phi i32 [ %sub, %while.body.while.body_crit_edge ], [ %19, %for.body.while.body_crit_edge ]
  %t.134 = phi i64 [ %inc, %while.body.while.body_crit_edge ], [ %t.038, %for.body.while.body_crit_edge ]
  call void @scatterwalk_copychunks(ptr noundef %4, ptr noundef nonnull %src_walk, i32 noundef 8, i32 noundef 0) #4
  call void @crypto_cipher_encrypt_one(ptr noundef %3, ptr noundef nonnull %block, ptr noundef nonnull %block) #4
  %27 = ptrtoint ptr %block to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %block, align 8
  %xor = xor i64 %28, %t.134
  store i64 %xor, ptr %block, align 8
  %inc = add i64 %t.134, 1
  call void @scatterwalk_copychunks(ptr noundef %4, ptr noundef nonnull %dst_walk, i32 noundef 8, i32 noundef 1) #4
  %sub = add i32 %nbytes.035, -8
  %tobool7.not = icmp eq i32 %sub, 0
  br i1 %tobool7.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %for.body.while.end_crit_edge
  %t.1.lcssa = phi i64 [ %t.038, %for.body.while.end_crit_edge ], [ %inc, %while.body.while.end_crit_edge ]
  %29 = ptrtoint ptr %dst4 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dst4, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dst_walk) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %src_walk) #4
  %inc12 = add nuw nsw i32 %i.039, 1
  %exitcond.not = icmp eq i32 %inc12, 6
  br i1 %exitcond.not, label %for.end, label %while.end.for.body_crit_edge

while.end.for.body_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #6
  %iv = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 1
  %31 = ptrtoint ptr %iv to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %iv, align 4
  %33 = ptrtoint ptr %block to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %block, align 8
  %35 = ptrtoint ptr %32 to i32
  call void @__asan_storeN_noabort(i32 %35, i32 8)
  store i64 %34, ptr %32, align 1
  %36 = call ptr @memset(ptr %block, i32 0, i32 16)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %block) #4, !srcloc !28
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %block) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @crypto_kw_decrypt(ptr nocapture noundef readonly %req) #2 align 64 {
entry:
  %block = alloca %struct.crypto_kw_block, align 8
  %src_walk = alloca %struct.scatter_walk, align 4
  %dst_walk = alloca %struct.scatter_walk, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__crt_ctx.i.i.i = getelementptr i8, ptr %1, i32 128
  %2 = ptrtoint ptr %__crt_ctx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %__crt_ctx.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %block) #4
  %4 = getelementptr inbounds %struct.crypto_kw_block, ptr %block, i32 0, i32 1
  %5 = getelementptr inbounds i8, ptr %block, i32 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 -1, ptr %5, align 8
  %7 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %req, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %8)
  %cmp = icmp ugt i32 %8, 15
  %rem = and i32 %8, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool.not = icmp eq i32 %rem, 0
  %or.cond = and i1 %cmp, %tobool.not
  br i1 %or.cond, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %shr = lshr i32 %8, 3
  %mul = mul nuw i32 %shr, 6
  %conv = zext i32 %mul to i64
  %iv = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 1
  %9 = ptrtoint ptr %iv to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %iv, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_loadN_noabort(i32 %11, i32 8)
  %12 = load i64, ptr %10, align 1
  %13 = ptrtoint ptr %block to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %12, ptr %block, align 8
  %src5 = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 2
  %14 = ptrtoint ptr %src5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %src5, align 8
  %dst6 = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 3
  %16 = ptrtoint ptr %dst6 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dst6, align 4
  %18 = getelementptr inbounds %struct.scatter_walk, ptr %src_walk, i32 0, i32 1
  %19 = getelementptr inbounds %struct.scatter_walk, ptr %dst_walk, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %while.end.for.body_crit_edge, %if.end
  %i.073 = phi i32 [ 0, %if.end ], [ %inc, %while.end.for.body_crit_edge ]
  %t.072 = phi i64 [ %conv, %if.end ], [ %t.1.lcssa, %while.end.for.body_crit_edge ]
  %dst.071 = phi ptr [ %17, %if.end ], [ %41, %while.end.for.body_crit_edge ]
  %src.070 = phi ptr [ %15, %if.end ], [ %41, %while.end.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %src_walk) #4
  %20 = ptrtoint ptr %src_walk to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 -1 to ptr), ptr %src_walk, align 4, !annotation !27
  %21 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %18, align 4, !annotation !27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dst_walk) #4
  %22 = ptrtoint ptr %dst_walk to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 -1 to ptr), ptr %dst_walk, align 4, !annotation !27
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -1, ptr %19, align 4, !annotation !27
  %24 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %req, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool10.not66 = icmp eq i32 %25, 0
  br i1 %tobool10.not66, label %for.body.while.end_crit_edge, label %while.body.lr.ph

for.body.while.end_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.body.lr.ph:                                 ; preds = %for.body
  %tobool8.not25.i = icmp eq ptr %src.070, null
  %tobool8.not25.i43 = icmp eq ptr %dst.071, null
  br label %while.body

while.body:                                       ; preds = %crypto_kw_scatterlist_ff.exit60.while.body_crit_edge, %while.body.lr.ph
  %nbytes.068 = phi i32 [ %25, %while.body.lr.ph ], [ %.pre, %crypto_kw_scatterlist_ff.exit60.while.body_crit_edge ]
  %t.167 = phi i64 [ %t.072, %while.body.lr.ph ], [ %dec, %crypto_kw_scatterlist_ff.exit60.while.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %nbytes.068)
  %cmp.i = icmp ult i32 %nbytes.068, 8
  br i1 %cmp.i, label %do.body2.i, label %do.end7.i, !prof !29

do.body2.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22crypto/keywrap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 109, 0\0A.popsection", ""() #4, !srcloc !30
  unreachable

do.end7.i:                                        ; preds = %while.body
  br i1 %tobool8.not25.i, label %do.end7.i.do.end7.i44_crit_edge, label %while.body.preheader.i

do.end7.i.do.end7.i44_crit_edge:                  ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end7.i44

while.body.preheader.i:                           ; preds = %do.end7.i
  %sub.i = add i32 %nbytes.068, -8
  br label %while.body.i

while.body.i:                                     ; preds = %if.end11.i.while.body.i_crit_edge, %while.body.preheader.i
  %skip.027.i = phi i32 [ %sub13.i, %if.end11.i.while.body.i_crit_edge ], [ %sub.i, %while.body.preheader.i ]
  %sg.addr.026.i = phi ptr [ %call.i, %if.end11.i.while.body.i_crit_edge ], [ %src.070, %while.body.preheader.i ]
  %length.i = getelementptr inbounds %struct.scatterlist, ptr %sg.addr.026.i, i32 0, i32 2
  %26 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %length.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %skip.027.i, i32 %27)
  %cmp9.i = icmp ult i32 %skip.027.i, %27
  br i1 %cmp9.i, label %if.then10.i, label %if.end11.i

if.then10.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #6
  %28 = ptrtoint ptr %src_walk to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %sg.addr.026.i, ptr %src_walk, align 4
  %offset.i.i = getelementptr inbounds %struct.scatterlist, ptr %sg.addr.026.i, i32 0, i32 1
  %29 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %offset.i.i, align 4
  %add.i.i = add i32 %30, %skip.027.i
  %31 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %add.i.i, ptr %18, align 4
  br label %do.end7.i44

if.end11.i:                                       ; preds = %while.body.i
  %sub13.i = sub i32 %skip.027.i, %27
  %call.i = call ptr @sg_next(ptr noundef nonnull %sg.addr.026.i) #4
  %tobool8.not.i = icmp eq ptr %call.i, null
  br i1 %tobool8.not.i, label %if.end11.i.do.end7.i44_crit_edge, label %if.end11.i.while.body.i_crit_edge

if.end11.i.while.body.i_crit_edge:                ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i

if.end11.i.do.end7.i44_crit_edge:                 ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end7.i44

do.end7.i44:                                      ; preds = %if.end11.i.do.end7.i44_crit_edge, %if.then10.i, %do.end7.i.do.end7.i44_crit_edge
  call void @scatterwalk_copychunks(ptr noundef %4, ptr noundef nonnull %src_walk, i32 noundef 8, i32 noundef 0) #4
  %32 = ptrtoint ptr %block to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %block, align 8
  %xor = xor i64 %33, %t.167
  store i64 %xor, ptr %block, align 8
  %dec = add i64 %t.167, -1
  call void @crypto_cipher_decrypt_one(ptr noundef %3, ptr noundef nonnull %block, ptr noundef nonnull %block) #4
  %.pre = add i32 %nbytes.068, -8
  br i1 %tobool8.not25.i43, label %do.end7.i44.crypto_kw_scatterlist_ff.exit60_crit_edge, label %do.end7.i44.while.body.i51_crit_edge

do.end7.i44.while.body.i51_crit_edge:             ; preds = %do.end7.i44
  br label %while.body.i51

do.end7.i44.crypto_kw_scatterlist_ff.exit60_crit_edge: ; preds = %do.end7.i44
  call void @__sanitizer_cov_trace_pc() #6
  br label %crypto_kw_scatterlist_ff.exit60

while.body.i51:                                   ; preds = %if.end11.i59.while.body.i51_crit_edge, %do.end7.i44.while.body.i51_crit_edge
  %skip.027.i47 = phi i32 [ %sub13.i56, %if.end11.i59.while.body.i51_crit_edge ], [ %.pre, %do.end7.i44.while.body.i51_crit_edge ]
  %sg.addr.026.i48 = phi ptr [ %call.i57, %if.end11.i59.while.body.i51_crit_edge ], [ %dst.071, %do.end7.i44.while.body.i51_crit_edge ]
  %length.i49 = getelementptr inbounds %struct.scatterlist, ptr %sg.addr.026.i48, i32 0, i32 2
  %34 = ptrtoint ptr %length.i49 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %length.i49, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %skip.027.i47, i32 %35)
  %cmp9.i50 = icmp ult i32 %skip.027.i47, %35
  br i1 %cmp9.i50, label %if.then10.i55, label %if.end11.i59

if.then10.i55:                                    ; preds = %while.body.i51
  call void @__sanitizer_cov_trace_pc() #6
  %36 = ptrtoint ptr %dst_walk to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %sg.addr.026.i48, ptr %dst_walk, align 4
  %offset.i.i52 = getelementptr inbounds %struct.scatterlist, ptr %sg.addr.026.i48, i32 0, i32 1
  %37 = ptrtoint ptr %offset.i.i52 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %offset.i.i52, align 4
  %add.i.i54 = add i32 %38, %skip.027.i47
  %39 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %add.i.i54, ptr %19, align 4
  br label %crypto_kw_scatterlist_ff.exit60

if.end11.i59:                                     ; preds = %while.body.i51
  %sub13.i56 = sub i32 %skip.027.i47, %35
  %call.i57 = call ptr @sg_next(ptr noundef nonnull %sg.addr.026.i48) #4
  %tobool8.not.i58 = icmp eq ptr %call.i57, null
  br i1 %tobool8.not.i58, label %if.end11.i59.crypto_kw_scatterlist_ff.exit60_crit_edge, label %if.end11.i59.while.body.i51_crit_edge

if.end11.i59.while.body.i51_crit_edge:            ; preds = %if.end11.i59
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i51

if.end11.i59.crypto_kw_scatterlist_ff.exit60_crit_edge: ; preds = %if.end11.i59
  call void @__sanitizer_cov_trace_pc() #6
  br label %crypto_kw_scatterlist_ff.exit60

crypto_kw_scatterlist_ff.exit60:                  ; preds = %if.end11.i59.crypto_kw_scatterlist_ff.exit60_crit_edge, %if.then10.i55, %do.end7.i44.crypto_kw_scatterlist_ff.exit60_crit_edge
  call void @scatterwalk_copychunks(ptr noundef %4, ptr noundef nonnull %dst_walk, i32 noundef 8, i32 noundef 1) #4
  %tobool10.not = icmp eq i32 %.pre, 0
  br i1 %tobool10.not, label %crypto_kw_scatterlist_ff.exit60.while.end_crit_edge, label %crypto_kw_scatterlist_ff.exit60.while.body_crit_edge

crypto_kw_scatterlist_ff.exit60.while.body_crit_edge: ; preds = %crypto_kw_scatterlist_ff.exit60
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

crypto_kw_scatterlist_ff.exit60.while.end_crit_edge: ; preds = %crypto_kw_scatterlist_ff.exit60
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.end:                                        ; preds = %crypto_kw_scatterlist_ff.exit60.while.end_crit_edge, %for.body.while.end_crit_edge
  %t.1.lcssa = phi i64 [ %t.072, %for.body.while.end_crit_edge ], [ %dec, %crypto_kw_scatterlist_ff.exit60.while.end_crit_edge ]
  %40 = ptrtoint ptr %dst6 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dst6, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dst_walk) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %src_walk) #4
  %inc = add nuw nsw i32 %i.073, 1
  %exitcond.not = icmp eq i32 %inc, 6
  br i1 %exitcond.not, label %for.end, label %while.end.for.body_crit_edge

while.end.for.body_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #6
  %42 = ptrtoint ptr %block to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %block, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -6438275382588823898, i64 %43)
  %cmp16.not = icmp eq i64 %43, -6438275382588823898
  %spec.select = select i1 %cmp16.not, i32 0, i32 -74
  %44 = call ptr @memset(ptr %block, i32 0, i32 16)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %block) #4, !srcloc !28
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %for.end ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %block) #4
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skcipher_register_instance(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @scatterwalk_copychunks(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_cipher_encrypt_one(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_cipher_decrypt_one(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_template(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

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

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !14, !16}
!llvm.module.flags = !{!18, !19, !20, !21, !22, !23, !24, !25}
!llvm.ident = !{!26}

!0 = !{ptr @__initcall__kmod_keywrap__239_313_crypto_kw_init4, !1, !"__initcall__kmod_keywrap__239_313_crypto_kw_init4", i1 false, i1 false}
!1 = !{!"../crypto/keywrap.c", i32 313, i32 1}
!2 = !{ptr @__exitcall_crypto_kw_exit, !3, !"__exitcall_crypto_kw_exit", i1 false, i1 false}
!3 = !{!"../crypto/keywrap.c", i32 314, i32 1}
!4 = !{ptr @__UNIQUE_ID_file240, !5, !"__UNIQUE_ID_file240", i1 false, i1 false}
!5 = !{!"../crypto/keywrap.c", i32 316, i32 1}
!6 = !{ptr @__UNIQUE_ID_license241, !5, !"__UNIQUE_ID_license241", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author242, !8, !"__UNIQUE_ID_author242", i1 false, i1 false}
!8 = !{!"../crypto/keywrap.c", i32 317, i32 1}
!9 = !{ptr @__UNIQUE_ID_description243, !10, !"__UNIQUE_ID_description243", i1 false, i1 false}
!10 = !{!"../crypto/keywrap.c", i32 318, i32 1}
!11 = !{ptr @__UNIQUE_ID_alias_userspace244, !12, !"__UNIQUE_ID_alias_userspace244", i1 false, i1 false}
!12 = !{!"../crypto/keywrap.c", i32 319, i32 1}
!13 = !{ptr @__UNIQUE_ID_alias_crypto245, !12, !"__UNIQUE_ID_alias_crypto245", i1 false, i1 false}
!14 = !{ptr @__UNIQUE_ID_import_ns246, !15, !"__UNIQUE_ID_import_ns246", i1 false, i1 false}
!15 = !{!"../crypto/keywrap.c", i32 320, i32 1}
!16 = !{ptr @crypto_kw_tmpl, !17, !"crypto_kw_tmpl", i1 false, i1 false}
!17 = !{!"../crypto/keywrap.c", i32 297, i32 31}
!18 = !{i32 1, !"wchar_size", i32 2}
!19 = !{i32 1, !"min_enum_size", i32 4}
!20 = !{i32 8, !"branch-target-enforcement", i32 0}
!21 = !{i32 8, !"sign-return-address", i32 0}
!22 = !{i32 8, !"sign-return-address-all", i32 0}
!23 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!24 = !{i32 7, !"uwtable", i32 1}
!25 = !{i32 7, !"frame-pointer", i32 2}
!26 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!27 = !{!"auto-init"}
!28 = !{i64 2149018350}
!29 = !{!"branch_weights", i32 1, i32 2000}
!30 = !{i64 2153940366, i64 2153940847, i64 2153940403, i64 2153940459, i64 2153940493, i64 2153940517, i64 2153940558, i64 2153940579, i64 2153940607, i64 2153940641}
